package com.wispagency.display
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;

    public class LoaderInfo extends EventDispatcher
    {
        protected var parentLoader:Loader;
        protected var urlLoader:URLLoader;
        protected var commObject:Object;
        protected var displayLoader:flash.display::Loader;

        public function LoaderInfo(param1:Loader, param2:URLLoader, param3:flash.display::Loader, param4:Object)
        {
            this.parentLoader = param1;
            this.urlLoader = param2;
            this.displayLoader = param3;
            this.commObject = param4;
            return;
        }// end function

        override public function dispatchEvent(param1:Event) : Boolean
        {
            return super.dispatchEvent(param1);
        }// end function

        public function get width() : int
        {
            return this.displayLoader.contentLoaderInfo.width;
        }// end function

        public function get sameDomain() : Boolean
        {
            return this.displayLoader.contentLoaderInfo.sameDomain;
        }// end function

        public function set parentSandboxBridge(param1:Object) : void
        {
            this.displayLoader.contentLoaderInfo["parentSandboxBridge"] = param1;
            return;
        }// end function

        public function get bytesLoaded() : uint
        {
            return this.displayLoader.contentLoaderInfo.bytesLoaded;
        }// end function

        public function get contentType() : String
        {
            return this.displayLoader.contentLoaderInfo.contentType;
        }// end function

        public function get childAllowsParent() : Boolean
        {
            return this.displayLoader.contentLoaderInfo.childAllowsParent;
        }// end function

        public function get bytesTotal() : uint
        {
            return this.displayLoader.contentLoaderInfo.bytesTotal;
        }// end function

        public function get loader() : Loader
        {
            return this.parentLoader;
        }// end function

        public function get loaderURL() : String
        {
            return this.displayLoader.contentLoaderInfo.loaderURL;
        }// end function

        public function get sharedEvents() : EventDispatcher
        {
            return this.displayLoader.contentLoaderInfo.sharedEvents;
        }// end function

        public function get parentSandboxBridge() : Object
        {
            return this.displayLoader.contentLoaderInfo["parentSandboxBridge"];
        }// end function

        public function get height() : int
        {
            return this.displayLoader.contentLoaderInfo.height;
        }// end function

        public function set childSandboxBridge(param1:Object) : void
        {
            this.displayLoader.contentLoaderInfo["childSandboxBridge"] = param1;
            return;
        }// end function

        override public function toString() : String
        {
            return "[Object Wisp LoaderInfo]";
        }// end function

        public function get frameRate() : Number
        {
            return this.displayLoader.contentLoaderInfo.frameRate;
        }// end function

        public function get parentAllowsChild() : Boolean
        {
            return this.displayLoader.contentLoaderInfo.parentAllowsChild;
        }// end function

        public function get parameters() : Object
        {
            return this.displayLoader.contentLoaderInfo.parameters;
        }// end function

        public function get bytes() : ByteArray
        {
            return this.displayLoader.contentLoaderInfo.bytes;
        }// end function

        public function get applicationDomain() : ApplicationDomain
        {
            return this.displayLoader.contentLoaderInfo.applicationDomain;
        }// end function

        public function get swfVersion() : uint
        {
            return this.displayLoader.contentLoaderInfo.swfVersion;
        }// end function

        public function get actionScriptVersion() : uint
        {
            return this.displayLoader.contentLoaderInfo.actionScriptVersion;
        }// end function

        public function get content() : DisplayObject
        {
            return this.displayLoader.contentLoaderInfo.content;
        }// end function

        public function get childSandboxBridge() : Object
        {
            return this.displayLoader.contentLoaderInfo["childSandboxBridge"];
        }// end function

        public function get url() : String
        {
            return this.commObject.url;
        }// end function

        public static function getLoaderInfoByDefinition(param1:Object) : LoaderInfo
        {
            var _loc_2:* = Loader;
            return _loc_2.Loader["getLoaderInfoByDefinition"](param1);
        }// end function

    }
}
