package mx.core
{
    import flash.display.*;
    import flash.events.*;
    import flash.system.*;
    import flash.text.*;
    import flash.utils.*;
    import mx.events.*;
    import mx.resources.*;

    public class FlexModuleFactory extends MovieClip implements IFlexModuleFactory
    {
        private var appReady:Boolean = false;
        private var timer:Timer = null;
        private var appLoaded:Boolean = false;
        private var rslListLoader:RSLListLoader;
        private var state:int = 0;
        private var errorMessage:String = null;
        private var nextFrameTimer:Timer = null;
        private var lastFrame:int;
        private var mixinList:Array;
        private static const RSL_LOADING_STATE:int = 6;
        private static const INIT_STATE:int = 0;
        private static const RSL_START_LOAD_STATE:int = 1;
        private static const APP_RUNNING_STATE:int = 4;
        private static const APP_LOAD_STATE:int = 2;
        static const VERSION:String = "3.5.0.12683";
        private static const ERROR_STATE:int = 5;
        private static const APP_START_STATE:int = 3;

        public function FlexModuleFactory()
        {
            var _loc_4:int;
            var _loc_5:int;
            var _loc_7:Class;
            var _loc_8:Object;
            var _loc_9:RSLItem;
            var _loc_1:* = info()["rsls"];
            var _loc_2:* = info()["cdRsls"];
            var _loc_3:Array;
            if (_loc_2 && _loc_2.length > 0)
            {
                _loc_7 = Class(getDefinitionByName("mx.core::CrossDomainRSLItem"));
                _loc_4 = _loc_2.length;
                _loc_5 = 0;
                while (_loc_5 < _loc_4)
                {
                    // label
                    _loc_8 = new _loc_7(_loc_2[_loc_5]["rsls"], _loc_2[_loc_5]["policyFiles"], _loc_2[_loc_5]["digests"], _loc_2[_loc_5]["types"], _loc_2[_loc_5]["isSigned"]);
                    _loc_3.push(_loc_8);
                    _loc_5++;
                }// end while
            }// end if
            if (_loc_1 != null && _loc_1.length > 0)
            {
                _loc_4 = _loc_1.length;
                _loc_5 = 0;
                while (_loc_5 < _loc_4)
                {
                    // label
                    _loc_9 = new RSLItem(_loc_1[_loc_5].url);
                    _loc_3.push(_loc_9);
                    _loc_5++;
                }// end while
            }// end if
            rslListLoader = new RSLListLoader(_loc_3);
            mixinList = info()["mixins"];
            stop();
            loaderInfo.addEventListener(Event.COMPLETE, moduleCompleteHandler);
            var _loc_6:* = totalFrames == 1 ? (0) : (1);
            addEventListener(Event.ENTER_FRAME, docFrameListener);
            timer = new Timer(100);
            timer.addEventListener(TimerEvent.TIMER, timerHandler);
            timer.start();
            update();
            return;
        }// end function

        private function update() : void
        {
            var n:int;
            var i:int;
            var c:Class;
            var tf:TextField;
            switch(state)
            {
                case INIT_STATE:
                {
                    if (rslListLoader.isDone())
                    {
                        state = APP_LOAD_STATE;
                    }
                    else
                    {
                        state = RSL_START_LOAD_STATE;
                    }// end else if
                    break;
                }// end case
                case RSL_START_LOAD_STATE:
                {
                    rslListLoader.load(null, rslCompleteHandler, rslErrorHandler, rslErrorHandler, rslErrorHandler);
                    state = RSL_LOADING_STATE;
                    break;
                }// end case
                case RSL_LOADING_STATE:
                {
                    if (rslListLoader.isDone())
                    {
                        state = APP_LOAD_STATE;
                    }// end if
                    break;
                }// end case
                case APP_LOAD_STATE:
                {
                    if (appLoaded)
                    {
                        deferredNextFrame();
                        state = APP_START_STATE;
                    }// end if
                    break;
                }// end case
                case APP_START_STATE:
                {
                    if (appReady)
                    {
                        if (mixinList && mixinList.length > 0)
                        {
                            n = mixinList.length;
                            i;
                            while (i < n)
                            {
                                // label
                                try
                                {
                                    c = Class(getDefinitionByName(mixinList[i]));
                                    var _loc_2:* = c;
                                    _loc_2.c["init"](this);
                                }// end try
                                catch (e:Error)
                                {
                                }// end catch
                                i = i++;
                            }// end while
                        }// end if
                        state = APP_RUNNING_STATE;
                        timer.removeEventListener(TimerEvent.TIMER, timerHandler);
                        timer.reset();
                        dispatchEvent(new Event("ready"));
                        loaderInfo.removeEventListener(Event.COMPLETE, moduleCompleteHandler);
                    }// end if
                    break;
                }// end case
                case ERROR_STATE:
                {
                    if (timer != null)
                    {
                        timer.removeEventListener(TimerEvent.TIMER, timerHandler);
                        timer.reset();
                    }// end if
                    tf = new TextField();
                    tf.text = errorMessage;
                    tf.x = 0;
                    tf.y = 0;
                    tf.autoSize = TextFieldAutoSize.LEFT;
                    addChild(tf);
                    dispatchEvent(new ModuleEvent(ModuleEvent.ERROR, false, false, 0, 0, errorMessage));
                    loaderInfo.removeEventListener(Event.COMPLETE, moduleCompleteHandler);
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            return;
        }// end function

        private function nextFrameTimerHandler(param1:TimerEvent) : void
        {
            if (currentFrame + 1 <= framesLoaded)
            {
                nextFrame();
                nextFrameTimer.removeEventListener(TimerEvent.TIMER, nextFrameTimerHandler);
                nextFrameTimer.reset();
            }// end if
            return;
        }// end function

        public function autorun() : Boolean
        {
            return true;
        }// end function

        private function rslCompleteHandler(param1:Event) : void
        {
            var _loc_2:* = rslListLoader.getItem(rslListLoader.getIndex());
            if (param1.target is LoaderInfo)
            {
                preloadedRSLs[param1.target] = _loc_2.urlRequest.url;
            }// end if
            update();
            return;
        }// end function

        public function get preloadedRSLs() : Dictionary
        {
            return null;
        }// end function

        private function extraFrameListener(param1:Event) : void
        {
            if (lastFrame == currentFrame)
            {
                return;
            }// end if
            lastFrame = currentFrame;
            if (currentFrame + 1 > totalFrames)
            {
                removeEventListener(Event.ENTER_FRAME, extraFrameListener);
            }// end if
            extraFrameHandler();
            return;
        }// end function

        private function deferredNextFrame() : void
        {
            if (currentFrame + 1 <= framesLoaded)
            {
                nextFrame();
            }
            else
            {
                nextFrameTimer = new Timer(100);
                nextFrameTimer.addEventListener(TimerEvent.TIMER, nextFrameTimerHandler);
                nextFrameTimer.start();
            }// end else if
            return;
        }// end function

        private function extraFrameHandler(param1:Event = null) : void
        {
            var c:Class;
            var event:* = param1;
            var frameList:* = info()["frames"];
            if (frameList && frameList[currentLabel])
            {
                try
                {
                    c = Class(getDefinitionByName(frameList[currentLabel]));
                    var _loc_3:* = c;
                    _loc_3.c["frame"](this);
                }// end try
                catch (e:Error)
                {
                }// end if
            }// end catch
            if (currentFrame < totalFrames)
            {
                deferredNextFrame();
            }// end if
            return;
        }// end function

        private function moduleCompleteHandler(param1:Event) : void
        {
            appLoaded = true;
            update();
            return;
        }// end function

        private function installCompiledResourceBundles() : void
        {
            var _loc_1:* = this.info();
            var _loc_2:* = _loc_1["currentDomain"];
            var _loc_3:* = _loc_1["compiledLocales"];
            var _loc_4:* = _loc_1["compiledResourceBundleNames"];
            var _loc_5:* = ResourceManager.getInstance();
            ResourceManager.getInstance().installCompiledResourceBundles(_loc_2, _loc_3, _loc_4);
            if (!_loc_5.localeChain)
            {
                _loc_5.initializeLocaleChain(_loc_3);
            }// end if
            return;
        }// end function

        private function rslErrorHandler(param1:Event) : void
        {
            var _loc_3:String;
            var _loc_4:String;
            var _loc_2:* = rslListLoader.getItem(rslListLoader.getIndex());
            if (param1 is ErrorEvent)
            {
                _loc_3 = ErrorEvent(param1).text;
            }// end if
            if (!_loc_3)
            {
                _loc_3 = "";
            }// end if
            _loc_4 = "RSL " + _loc_2.urlRequest.url + " failed to load. " + _loc_3;
            trace(_loc_4);
            displayError(_loc_4);
            return;
        }// end function

        private function displayError(param1:String) : void
        {
            errorMessage = param1;
            state = ERROR_STATE;
            update();
            return;
        }// end function

        private function timerHandler(param1:TimerEvent) : void
        {
            if (totalFrames > 2 && framesLoaded >= 2 || framesLoaded == totalFrames)
            {
                appLoaded = true;
            }// end if
            update();
            return;
        }// end function

        private function docFrameListener(param1:Event) : void
        {
            if (currentFrame == 2)
            {
                removeEventListener(Event.ENTER_FRAME, docFrameListener);
                if (totalFrames > 2)
                {
                    addEventListener(Event.ENTER_FRAME, extraFrameListener);
                }// end if
                docFrameHandler();
            }// end if
            return;
        }// end function

        public function allowDomain(... args) : void
        {
            return;
        }// end function

        public function allowInsecureDomain(... args) : void
        {
            return;
        }// end function

        public function getDefinitionByName(param1:String) : Object
        {
            var _loc_3:Object;
            var _loc_2:* = info()["currentDomain"] as ApplicationDomain;
            if (_loc_2.hasDefinition(param1))
            {
                _loc_3 = _loc_2.getDefinition(param1);
            }// end if
            return _loc_3;
        }// end function

        public function info() : Object
        {
            return {};
        }// end function

        private function docFrameHandler(param1:Event = null) : void
        {
            Singleton.registerClass("mx.managers::IBrowserManager", Class(getDefinitionByName("mx.managers::BrowserManagerImpl")));
            Singleton.registerClass("mx.managers::ICursorManager", Class(getDefinitionByName("mx.managers::CursorManagerImpl")));
            Singleton.registerClass("mx.managers::IDragManager", Class(getDefinitionByName("mx.managers::DragManagerImpl")));
            Singleton.registerClass("mx.managers::IHistoryManager", Class(getDefinitionByName("mx.managers::HistoryManagerImpl")));
            Singleton.registerClass("mx.managers::ILayoutManager", Class(getDefinitionByName("mx.managers::LayoutManager")));
            Singleton.registerClass("mx.managers::IPopUpManager", Class(getDefinitionByName("mx.managers::PopUpManagerImpl")));
            Singleton.registerClass("mx.resources::IResourceManager", Class(getDefinitionByName("mx.resources::ResourceManagerImpl")));
            Singleton.registerClass("mx.styles::IStyleManager", Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
            Singleton.registerClass("mx.styles::IStyleManager2", Class(getDefinitionByName("mx.styles::StyleManagerImpl")));
            Singleton.registerClass("mx.managers::IToolTipManager2", Class(getDefinitionByName("mx.managers::ToolTipManagerImpl")));
            appReady = true;
            installCompiledResourceBundles();
            update();
            if (currentFrame < totalFrames)
            {
                deferredNextFrame();
            }// end if
            return;
        }// end function

        public function create(... args) : Object
        {
            var _loc_4:String;
            var _loc_5:Number;
            var _loc_6:Number;
            var _loc_2:* = info()["mainClassName"];
            if (_loc_2 == null)
            {
                _loc_4 = loaderInfo.loaderURL;
                _loc_5 = _loc_4.lastIndexOf(".");
                _loc_6 = _loc_4.lastIndexOf("/");
                _loc_2 = _loc_4.substring(_loc_6 + 1, _loc_5);
            }// end if
            var _loc_3:* = Class(getDefinitionByName(_loc_2));
            return _loc_3 ? (new _loc_3) : (null);
        }// end function

    }
}
