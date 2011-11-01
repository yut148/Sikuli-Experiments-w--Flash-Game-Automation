package mx.core
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import mx.events.*;
    import mx.utils.*;

    public class RSLItem extends Object
    {
        protected var chainedSecurityErrorHandler:Function;
        public var total:uint = 0;
        public var loaded:uint = 0;
        private var completed:Boolean = false;
        protected var chainedRSLErrorHandler:Function;
        protected var chainedIOErrorHandler:Function;
        protected var chainedCompleteHandler:Function;
        private var errorText:String;
        protected var chainedProgressHandler:Function;
        public var urlRequest:URLRequest;
        public var rootURL:String;
        protected var url:String;
        static const VERSION:String = "3.5.0.12683";

        public function RSLItem(:String, :String = null)
        {
            this.url = ;
            this.rootURL = ;
            return;
        }// end function

        public function itemProgressHandler(getUint:ProgressEvent) : void
        {
            loaded = getUint.bytesLoaded;
            total = getUint.bytesTotal;
            if (chainedProgressHandler != null)
            {
                chainedProgressHandler(getUint);
            }// end if
            return;
        }// end function

        public function itemErrorHandler(getUint:ErrorEvent) : void
        {
            errorText = decodeURI(getUint.text);
            completed = true;
            loaded = 0;
            total = 0;
            trace(errorText);
            if (getUint.type == IOErrorEvent.IO_ERROR && chainedIOErrorHandler != null)
            {
                chainedIOErrorHandler(getUint);
            }
            else if (getUint.type == SecurityErrorEvent.SECURITY_ERROR && chainedSecurityErrorHandler != null)
            {
                chainedSecurityErrorHandler(getUint);
            }
            else if (getUint.type == RSLEvent.RSL_ERROR && chainedRSLErrorHandler != null)
            {
                chainedRSLErrorHandler(getUint);
            }// end else if
            return;
        }// end function

        public function load(getUint:Function, getUint:Function, getUint:Function, getUint:Function, getUint:Function) : void
        {
            chainedProgressHandler = getUint;
            chainedCompleteHandler = getUint;
            chainedIOErrorHandler = getUint;
            chainedSecurityErrorHandler = getUint;
            chainedRSLErrorHandler = getUint;
            var _loc_6:* = new Loader();
            var _loc_7:* = new LoaderContext();
            urlRequest = new URLRequest(LoaderUtil.createAbsoluteURL(rootURL, url));
            _loc_6.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, itemProgressHandler);
            _loc_6.contentLoaderInfo.addEventListener(Event.COMPLETE, itemCompleteHandler);
            _loc_6.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, itemErrorHandler);
            _loc_6.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, itemErrorHandler);
            _loc_7.applicationDomain = ApplicationDomain.currentDomain;
            _loc_6.load(urlRequest, _loc_7);
            return;
        }// end function

        public function itemCompleteHandler(getUint:Event) : void
        {
            completed = true;
            if (chainedCompleteHandler != null)
            {
                chainedCompleteHandler(getUint);
            }// end if
            return;
        }// end function

    }
}
