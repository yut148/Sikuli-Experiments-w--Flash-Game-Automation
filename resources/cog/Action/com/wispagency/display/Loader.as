package com.wispagency.display
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class Loader extends Sprite
    {
        private var realLoader:Loader;
        private var loader:URLLoader;
        private var loaderContext:LoaderContext = null;
        private var loaderInfoReference:LoaderInfo;
        private var commObject:Object;

        public function Loader()
        {
            this.commObject = {url:""};
            this.loader = new URLLoader();
            this.loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, this.handleHttpStatus);
            this.loader.addEventListener(Event.COMPLETE, this.handleLoadComplete);
            this.loader.addEventListener(IOErrorEvent.IO_ERROR, this.handleURLLoadError);
            this.loader.addEventListener(ProgressEvent.PROGRESS, this.handleProgress);
            this.loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.handleSecurityError);
            this.loader.dataFormat = URLLoaderDataFormat.BINARY;
            this.realLoader = new Loader();
            this.realLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, this.handleLoaderComplete);
            this.realLoader.contentLoaderInfo.addEventListener(Event.UNLOAD, this.handleUnload);
            this.realLoader.addEventListener(Event.INIT, this.handleInit);
            this.loaderInfoReference = new LoaderInfo(this, this.loader, this.realLoader, this.commObject);
            addChild(this.realLoader);
            return;
        }// end function

        private function handleUnload(param1:Event) : void
        {
            this.loaderInfoReference.dispatchEvent(param1);
            return;
        }// end function

        private function handleLoadComplete(param1:Event) : void
        {
            this.realLoader.loadBytes(this.loader.data, this.loaderContext);
            return;
        }// end function

        private function handleInit(param1:Event) : void
        {
            this.loaderInfoReference.dispatchEvent(param1);
            return;
        }// end function

        private function handleURLLoadError(param1:IOErrorEvent) : void
        {
            return;
        }// end function

        private function handleSecurityError(param1:Event) : void
        {
            this.loaderInfoReference.dispatchEvent(param1);
            return;
        }// end function

        public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
        {
            this.loaderContext = param2;
            this.commObject.url = "";
            return;
        }// end function

        private function handleHttpStatus(param1:HTTPStatusEvent) : void
        {
            this.contentLoaderInfo.dispatchEvent(param1);
            return;
        }// end function

        override public function toString() : String
        {
            return "[Instance Of Wisp Loader]";
        }// end function

        public function load(param1:URLRequest, param2:LoaderContext = null) : void
        {
            this.loaderContext = param2;
            this.commObject.url = param1.url;
            this.loader.load(param1);
            return;
        }// end function

        private function handleLoaderComplete(param1:Event) : void
        {
            this.loaderInfoReference.dispatchEvent(param1);
            return;
        }// end function

        private function handleProgress(param1:ProgressEvent) : void
        {
            this.loaderInfoReference.dispatchEvent(param1);
            return;
        }// end function

        public function close() : void
        {
            this.commObject.url = "";
            this.loader.close();
            this.realLoader.close();
            return;
        }// end function

        public function get content() : DisplayObject
        {
            return this.realLoader.content;
        }// end function

        public function get contentLoaderInfo() : LoaderInfo
        {
            return this.loaderInfoReference;
        }// end function

        public function unload() : void
        {
            this.commObject.url = "";
            this.close();
            this.realLoader.unload();
            return;
        }// end function

    }
}
