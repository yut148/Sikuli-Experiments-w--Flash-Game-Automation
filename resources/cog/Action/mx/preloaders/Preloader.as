package mx.preloaders
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.events.*;

    public class Preloader extends Sprite
    {
        private var app:IEventDispatcher = null;
        private var showDisplay:Boolean;
        private var timer:Timer;
        private var rslDone:Boolean = false;
        private var displayClass:IPreloaderDisplay = null;
        private var rslListLoader:RSLListLoader;
        static const VERSION:String = "3.5.0.12683";

        public function Preloader()
        {
            return;
        }// end function

        private function getByteValues() : Object
        {
            var _loc_1:* = root.loaderInfo;
            var _loc_2:* = _loc_1.bytesLoaded;
            var _loc_3:* = _loc_1.bytesTotal;
            var _loc_4:* = rslListLoader ? (rslListLoader.getItemCount()) : (0);
            var _loc_5:int;
            while (_loc_5 < _loc_4)
            {
                // label
                _loc_2 = _loc_2 + rslListLoader.getItem(_loc_5).loaded;
                _loc_3 = _loc_3 + rslListLoader.getItem(_loc_5).total;
                _loc_5++;
            }// end while
            return {loaded:_loc_2, total:_loc_3};
        }// end function

        private function appProgressHandler(param1:Event) : void
        {
            dispatchEvent(new FlexEvent(FlexEvent.INIT_PROGRESS));
            return;
        }// end function

        private function dispatchAppEndEvent(param1:Object = null) : void
        {
            dispatchEvent(new FlexEvent(FlexEvent.INIT_COMPLETE));
            if (!showDisplay)
            {
                displayClassCompleteHandler(null);
            }// end if
            return;
        }// end function

        private function ioErrorHandler(param1:IOErrorEvent) : void
        {
            return;
        }// end function

        private function appCreationCompleteHandler(param1:FlexEvent) : void
        {
            dispatchAppEndEvent();
            return;
        }// end function

        function rslErrorHandler(param1:ErrorEvent) : void
        {
            var _loc_2:* = rslListLoader.getIndex();
            var _loc_3:* = rslListLoader.getItem(_loc_2);
            var _loc_4:* = new RSLEvent(RSLEvent.RSL_ERROR);
            new RSLEvent(RSLEvent.RSL_ERROR).bytesLoaded = 0;
            _loc_4.bytesTotal = 0;
            _loc_4.rslIndex = _loc_2;
            _loc_4.rslTotal = rslListLoader.getItemCount();
            _loc_4.url = _loc_3.urlRequest;
            _loc_4.errorText = decodeURI(param1.text);
            dispatchEvent(_loc_4);
            return;
        }// end function

        public function initialize(param1:Boolean, param2:Class, param3:uint, param4:Number, param5:Object, param6:String, param7:Number, param8:Number, param9:Array = null, param10:Array = null, param11:Array = null, param12:Array = null) : void
        {
            var _loc_13:int;
            var _loc_14:int;
            var _loc_15:RSLItem;
            var _loc_16:ResourceModuleRSLItem;
            if (param9 != null || param10 != null && param11 != null)
            {
                throw new Error("RSLs may only be specified by using libs and sizes or rslList, not both.");
            }// end if
            root.loaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
            if (param9 && param9.length > 0)
            {
                if (param11 == null)
                {
                    param11 = [];
                }// end if
                _loc_13 = param9.length;
                _loc_14 = 0;
                while (_loc_14 < _loc_13)
                {
                    // label
                    _loc_15 = new RSLItem(param9[_loc_14]);
                    param11.push(_loc_15);
                    _loc_14++;
                }// end while
            }// end if
            if (param12 && param12.length > 0)
            {
                _loc_13 = param12.length;
                _loc_14 = 0;
                while (_loc_14 < _loc_13)
                {
                    // label
                    _loc_16 = new ResourceModuleRSLItem(param12[_loc_14]);
                    param11.push(_loc_16);
                    _loc_14++;
                }// end while
            }// end if
            rslListLoader = new RSLListLoader(param11);
            this.showDisplay = param1;
            timer = new Timer(10);
            timer.addEventListener(TimerEvent.TIMER, timerHandler);
            timer.start();
            if (param1)
            {
                displayClass = new param2;
                displayClass.addEventListener(Event.COMPLETE, displayClassCompleteHandler);
                addChild(DisplayObject(displayClass));
                displayClass.backgroundColor = param3;
                displayClass.backgroundAlpha = param4;
                displayClass.backgroundImage = param5;
                displayClass.backgroundSize = param6;
                displayClass.stageWidth = param7;
                displayClass.stageHeight = param8;
                displayClass.initialize();
                displayClass.preloader = this;
            }// end if
            if (rslListLoader.getItemCount() > 0)
            {
                rslListLoader.load(mx_internal::rslProgressHandler, mx_internal::rslCompleteHandler, mx_internal::rslErrorHandler, mx_internal::rslErrorHandler, mx_internal::rslErrorHandler);
            }
            else
            {
                rslDone = true;
            }// end else if
            return;
        }// end function

        function rslProgressHandler(param1:ProgressEvent) : void
        {
            var _loc_2:* = rslListLoader.getIndex();
            var _loc_3:* = rslListLoader.getItem(_loc_2);
            var _loc_4:* = new RSLEvent(RSLEvent.RSL_PROGRESS);
            new RSLEvent(RSLEvent.RSL_PROGRESS).bytesLoaded = param1.bytesLoaded;
            _loc_4.bytesTotal = param1.bytesTotal;
            _loc_4.rslIndex = _loc_2;
            _loc_4.rslTotal = rslListLoader.getItemCount();
            _loc_4.url = _loc_3.urlRequest;
            dispatchEvent(_loc_4);
            return;
        }// end function

        public function registerApplication(param1:IEventDispatcher) : void
        {
            param1.addEventListener("validatePropertiesComplete", appProgressHandler);
            param1.addEventListener("validateSizeComplete", appProgressHandler);
            param1.addEventListener("validateDisplayListComplete", appProgressHandler);
            param1.addEventListener(FlexEvent.CREATION_COMPLETE, appCreationCompleteHandler);
            this.app = param1;
            return;
        }// end function

        function rslCompleteHandler(param1:Event) : void
        {
            var _loc_2:* = rslListLoader.getIndex();
            var _loc_3:* = rslListLoader.getItem(_loc_2);
            var _loc_4:* = new RSLEvent(RSLEvent.RSL_COMPLETE);
            new RSLEvent(RSLEvent.RSL_COMPLETE).bytesLoaded = _loc_3.total;
            _loc_4.bytesTotal = _loc_3.total;
            _loc_4.loaderInfo = param1.target as LoaderInfo;
            _loc_4.rslIndex = _loc_2;
            _loc_4.rslTotal = rslListLoader.getItemCount();
            _loc_4.url = _loc_3.urlRequest;
            dispatchEvent(_loc_4);
            rslDone = _loc_2 + 1 == _loc_4.rslTotal;
            return;
        }// end function

        private function timerHandler(param1:TimerEvent) : void
        {
            if (!root)
            {
                return;
            }// end if
            var _loc_2:* = getByteValues();
            var _loc_3:* = _loc_2.loaded;
            var _loc_4:* = _loc_2.total;
            dispatchEvent(new ProgressEvent(ProgressEvent.PROGRESS, false, false, _loc_3, _loc_4));
            if (rslDone && _loc_3 >= _loc_4 && _loc_4 > 0 || _loc_4 == 0 && _loc_3 > 0 || root is MovieClip && MovieClip(root).totalFrames > 2 && MovieClip(root).framesLoaded >= 2)
            {
                timer.removeEventListener(TimerEvent.TIMER, timerHandler);
                timer.reset();
                dispatchEvent(new Event(Event.COMPLETE));
                dispatchEvent(new FlexEvent(FlexEvent.INIT_PROGRESS));
            }// end if
            return;
        }// end function

        private function displayClassCompleteHandler(param1:Event) : void
        {
            if (displayClass)
            {
                displayClass.removeEventListener(Event.COMPLETE, displayClassCompleteHandler);
            }// end if
            if (root)
            {
                root.loaderInfo.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
            }// end if
            if (app)
            {
                app.removeEventListener("validatePropertiesComplete", appProgressHandler);
                app.removeEventListener("validateSizeComplete", appProgressHandler);
                app.removeEventListener("validateDisplayListComplete", appProgressHandler);
                app.removeEventListener(FlexEvent.CREATION_COMPLETE, appCreationCompleteHandler);
                app = null;
            }// end if
            dispatchEvent(new FlexEvent(FlexEvent.PRELOADER_DONE));
            return;
        }// end function

    }
}
