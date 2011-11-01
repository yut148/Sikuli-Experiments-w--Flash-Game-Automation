package ModuleManager.as$26
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.events.*;

    private class ModuleInfo extends EventDispatcher
    {
        private var _error:Boolean = false;
        private var loader:Loader;
        private var factoryInfo:FactoryInfo;
        private var limbo:Dictionary;
        private var _loaded:Boolean = false;
        private var _ready:Boolean = false;
        private var numReferences:int = 0;
        private var _url:String;
        private var _setup:Boolean = false;

        private function ModuleInfo(:String)
        {
            _url = ;
            return;
        }// end function

        private function clearLoader() : void
        {
            if (loader)
            {
                if (loader.contentLoaderInfo)
                {
                    loader.contentLoaderInfo.removeEventListener(Event.INIT, initHandler);
                    loader.contentLoaderInfo.removeEventListener(Event.COMPLETE, completeHandler);
                    loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, progressHandler);
                    loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, errorHandler);
                    loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, errorHandler);
                }// end if
                try
                {
                    if (loader.content)
                    {
                        loader.content.removeEventListener("ready", readyHandler);
                        loader.content.removeEventListener("error", moduleErrorHandler);
                    }// end if
                }// end try
                catch (error:Error)
                {
                }// end catch
                if (_loaded)
                {
                    try
                    {
                        loader.close();
                    }// end try
                    catch (error:Error)
                    {
                    }// end if
                    try
                    {
                    }// end catch
                    loader.unload();
                }// end try
                catch (error:Error)
                {
                }// end catch
                loader = null;
            }// end if
            return;
        }// end function

        public function get size() : int
        {
            if (!limbo)
            {
            }// end if
            return factoryInfo ? (factoryInfo.bytesTotal) : (0);
        }// end function

        public function get loaded() : Boolean
        {
            return !limbo ? (_loaded) : (false);
        }// end function

        public function release() : void
        {
            if (_ready && !limbo)
            {
                limbo = new Dictionary(true);
                limbo[factoryInfo] = 1;
                factoryInfo = null;
            }
            else
            {
                unload();
            }// end else if
            return;
        }// end function

        public function get error() : Boolean
        {
            return !limbo ? (_error) : (false);
        }// end function

        public function get factory() : IFlexModuleFactory
        {
            if (!limbo)
            {
            }// end if
            return factoryInfo ? (factoryInfo.factory) : (null);
        }// end function

        public function completeHandler(_url:Event) : void
        {
            var _loc_2:* = new ModuleEvent(ModuleEvent.PROGRESS, _url.bubbles, _url.cancelable);
            _loc_2.bytesLoaded = loader.contentLoaderInfo.bytesLoaded;
            _loc_2.bytesTotal = loader.contentLoaderInfo.bytesTotal;
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function publish(_url:IFlexModuleFactory) : void
        {
            if (factoryInfo)
            {
                return;
            }// end if
            if (_url.indexOf("published://") != 0)
            {
                return;
            }// end if
            factoryInfo = new FactoryInfo();
            factoryInfo.factory = _url;
            _loaded = true;
            _setup = true;
            _ready = true;
            _error = false;
            dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
            dispatchEvent(new ModuleEvent(ModuleEvent.PROGRESS));
            dispatchEvent(new ModuleEvent(ModuleEvent.READY));
            return;
        }// end function

        public function initHandler(_url:Event) : void
        {
            var moduleEvent:ModuleEvent;
            var event:* = _url;
            factoryInfo = new FactoryInfo();
            try
            {
                factoryInfo.factory = loader.content as IFlexModuleFactory;
            }// end try
            catch (error:Error)
            {
            }// end catch
            if (!factoryInfo.factory)
            {
                moduleEvent = new ModuleEvent(ModuleEvent.ERROR, event.bubbles, event.cancelable);
                moduleEvent.bytesLoaded = 0;
                moduleEvent.bytesTotal = 0;
                moduleEvent.errorText = "SWF is not a loadable module";
                dispatchEvent(moduleEvent);
                return;
            }// end if
            loader.content.addEventListener("ready", readyHandler);
            loader.content.addEventListener("error", moduleErrorHandler);
            try
            {
                factoryInfo.applicationDomain = loader.contentLoaderInfo.applicationDomain;
            }// end try
            catch (error:Error)
            {
            }// end catch
            _setup = true;
            dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
            return;
        }// end function

        public function resurrect() : void
        {
            var _loc_1:Object;
            if (!factoryInfo && limbo)
            {
                for (_loc_1 in limbo)
                {
                    // label
                    factoryInfo = _loc_1 as FactoryInfo;
                    break;
                }// end of for ... in
                limbo = null;
            }// end if
            if (!factoryInfo)
            {
                if (_loaded)
                {
                    dispatchEvent(new ModuleEvent(ModuleEvent.UNLOAD));
                }// end if
                loader = null;
                _loaded = false;
                _setup = false;
                _ready = false;
                _error = false;
            }// end if
            return;
        }// end function

        public function errorHandler(_url:ErrorEvent) : void
        {
            _error = true;
            var _loc_2:* = new ModuleEvent(ModuleEvent.ERROR, _url.bubbles, _url.cancelable);
            _loc_2.bytesLoaded = 0;
            _loc_2.bytesTotal = 0;
            _loc_2.errorText = _url.text;
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function get ready() : Boolean
        {
            return !limbo ? (_ready) : (false);
        }// end function

        private function loadBytes(_url:ApplicationDomain, _url:ByteArray) : void
        {
            var _loc_3:* = new LoaderContext();
            _loc_3.applicationDomain = _url ? (_url) : (new ApplicationDomain(ApplicationDomain.currentDomain));
            if ("allowLoadBytesCodeExecution" in _loc_3)
            {
                _loc_3["allowLoadBytesCodeExecution"] = true;
            }// end if
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.INIT, initHandler);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, errorHandler);
            loader.loadBytes(_url, _loc_3);
            return;
        }// end function

        public function removeReference() : void
        {
            numReferences--;
            if (numReferences == 0)
            {
                release();
            }// end if
            return;
        }// end function

        public function addReference() : void
        {
            numReferences++;
            return;
        }// end function

        public function progressHandler(_url:ProgressEvent) : void
        {
            var _loc_2:* = new ModuleEvent(ModuleEvent.PROGRESS, _url.bubbles, _url.cancelable);
            _loc_2.bytesLoaded = _url.bytesLoaded;
            _loc_2.bytesTotal = _url.bytesTotal;
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function load(_url:ApplicationDomain = null, _url:SecurityDomain = null, _url:ByteArray = null) : void
        {
            if (_loaded)
            {
                return;
            }// end if
            _loaded = true;
            limbo = null;
            if (_url)
            {
                loadBytes(_url, _url);
                return;
            }// end if
            if (_url.indexOf("published://") == 0)
            {
                return;
            }// end if
            var _loc_4:* = new URLRequest(_url);
            var _loc_5:* = new LoaderContext();
            _loc_5.applicationDomain = _url ? (_url) : (new ApplicationDomain(ApplicationDomain.currentDomain));
            _loc_5.securityDomain = _url;
            if (_url == null && Security.sandboxType == Security.REMOTE)
            {
                _loc_5.securityDomain = SecurityDomain.currentDomain;
            }// end if
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.INIT, initHandler);
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeHandler);
            loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, errorHandler);
            loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, errorHandler);
            loader.load(_loc_4, _loc_5);
            return;
        }// end function

        public function get url() : String
        {
            return _url;
        }// end function

        public function get applicationDomain() : ApplicationDomain
        {
            if (!limbo)
            {
            }// end if
            return factoryInfo ? (factoryInfo.applicationDomain) : (null);
        }// end function

        public function moduleErrorHandler(_url:Event) : void
        {
            var _loc_2:ModuleEvent;
            _ready = true;
            factoryInfo.bytesTotal = loader.contentLoaderInfo.bytesTotal;
            clearLoader();
            if (_url is ModuleEvent)
            {
                _loc_2 = ModuleEvent(_url);
            }
            else
            {
                _loc_2 = new ModuleEvent(ModuleEvent.ERROR);
            }// end else if
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function readyHandler(_url:Event) : void
        {
            _ready = true;
            factoryInfo.bytesTotal = loader.contentLoaderInfo.bytesTotal;
            var _loc_2:* = new ModuleEvent(ModuleEvent.READY);
            _loc_2.bytesLoaded = loader.contentLoaderInfo.bytesLoaded;
            _loc_2.bytesTotal = loader.contentLoaderInfo.bytesTotal;
            clearLoader();
            dispatchEvent(_loc_2);
            return;
        }// end function

        public function get setup() : Boolean
        {
            return !limbo ? (_setup) : (false);
        }// end function

        public function unload() : void
        {
            clearLoader();
            if (_loaded)
            {
                dispatchEvent(new ModuleEvent(ModuleEvent.UNLOAD));
            }// end if
            limbo = null;
            factoryInfo = null;
            _loaded = false;
            _setup = false;
            _ready = false;
            _error = false;
            return;
        }// end function

    }
}
