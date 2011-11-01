package modules.loading
{
    import com.wispagency.display.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import mx.events.*;
    import mx.preloaders.*;

    public class MainPreloader extends DownloadProgressBar
    {
        private var uiPreloader:UILoadingBar;
        public var maxNum:int = 98;
        private var progressObj:Object;
        var progress:Number = 0;
        private var loading:MovieClip;
        private const FILES_NUM:int = 3;
        private static var _instance:MainPreloader;

        public function MainPreloader()
        {
            this.progressObj = new Object();
            var _loc_1:* = new Loader();
            _loc_1.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onUILoaderComplete);
            var _loc_2:* = "../../flashresource/CogLoading.swf" + "?" + Math.random();
            _loc_1.load(new URLRequest(_loc_2));
            _instance = this;
            return;
        }// end function

        private function onUILoaderComplete(param1:Event) : void
        {
            var _loc_2:* = param1.currentTarget.loader;
            this.loading = _loc_2.content as MovieClip;
            this.uiPreloader = this.loading["mcBar"] as UILoadingBar;
            addChild(this.loading);
            return;
        }// end function

        public function showProgressValue(param1:Number) : void
        {
            if (this.uiPreloader)
            {
                this.uiPreloader.showProgress(param1);
            }// end if
            return;
        }// end function

        private function onComplete(param1:Event) : void
        {
            return;
        }// end function

        public function showProgress(param1:String, param2:Number) : void
        {
            this.progressObj[param1] = param2;
            if (this.uiPreloader)
            {
                this.uiPreloader.showProgress(this.getProgress());
            }// end if
            return;
        }// end function

        private function flIn(param1:FlexEvent) : void
        {
            return;
        }// end function

        public function showProgressMsg(param1:String) : void
        {
            if (this.uiPreloader)
            {
                this.uiPreloader.showMsg(param1);
            }// end if
            return;
        }// end function

        private function flInC(param1:FlexEvent) : void
        {
            return;
        }// end function

        private function proHandler(param1:ProgressEvent) : void
        {
            var _loc_2:* = param1.bytesLoaded / param1.bytesTotal;
            this.showProgressMsg("Loading the main file ...");
            this.showProgressValue(_loc_2);
            return;
        }// end function

        public function showLoadingInfoProgress(param1:int = 0) : void
        {
            if (param1 == 0)
            {
                addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
            }
            else
            {
                this.showProgressValue(1);
                removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
                if (this.uiPreloader)
                {
                    this.uiPreloader.removeListener();
                }// end if
            }// end else if
            return;
        }// end function

        private function getProgress() : Number
        {
            var _loc_2:String;
            var _loc_1:Number;
            for (_loc_2 in this.progressObj)
            {
                // label
                _loc_1 = _loc_1 + this.progressObj[_loc_2];
            }// end of for ... in
            _loc_1 = _loc_1 / this.FILES_NUM;
            return _loc_1;
        }// end function

        private function ioErrorHandler(param1:IOErrorEvent) : void
        {
            return;
        }// end function

        public function hideLoading() : void
        {
            if (!this.loading)
            {
                return;
            }// end if
            this.loading.visible = false;
            return;
        }// end function

        private function onEnterFrame(param1:Event) : void
        {
            this.progress = this.progress + 1;
            if (this.progress > this.maxNum)
            {
                this.progress = this.maxNum;
            }// end if
            this.showProgressValue(this.progress / 100);
            return;
        }// end function

        override public function set preloader(param1:Sprite) : void
        {
            param1.addEventListener(ProgressEvent.PROGRESS, this.proHandler);
            param1.addEventListener(Event.COMPLETE, this.onComplete);
            param1.addEventListener(IOErrorEvent.IO_ERROR, this.ioErrorHandler);
            param1.addEventListener(FlexEvent.INIT_COMPLETE, this.flInC);
            param1.addEventListener(FlexEvent.INIT_PROGRESS, this.flIn);
            return;
        }// end function

        public function setLoadingConnectURL(param1:String, param2:String) : void
        {
            if (this.uiPreloader)
            {
                this.uiPreloader.setLoadingConnectURL(param1, param2);
            }// end if
            return;
        }// end function

        public static function getInstance() : MainPreloader
        {
            return _instance;
        }// end function

    }
}
