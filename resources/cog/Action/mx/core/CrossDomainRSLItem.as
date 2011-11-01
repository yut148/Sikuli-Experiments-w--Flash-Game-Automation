package mx.core
{
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.events.*;
    import mx.utils.*;

    public class CrossDomainRSLItem extends RSLItem
    {
        private var urlIndex:int = 0;
        private var digests:Array;
        private var hashTypes:Array;
        private var isSigned:Array;
        private var rslUrls:Array;
        private var policyFileUrls:Array;
        private var loadBytesLoader:Loader;
        static const VERSION:String = "3.5.0.12683";

        public function CrossDomainRSLItem(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:String = null)
        {
            super(param1[0], param6);
            this.rslUrls = param1;
            this.policyFileUrls = param2;
            this.digests = param3;
            this.hashTypes = param4;
            this.isSigned = param5;
            return;
        }// end function

        override public function itemCompleteHandler(param1:Event) : void
        {
            completeCdRslLoad(param1.target as URLLoader);
            return;
        }// end function

        private function loadBytesCompleteHandler(param1:Event) : void
        {
            loadBytesLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE, loadBytesCompleteHandler);
            loadBytesLoader = null;
            super.itemCompleteHandler(param1);
            return;
        }// end function

        override public function load(param1:Function, param2:Function, param3:Function, param4:Function, param5:Function) : void
        {
            var _loc_7:ErrorEvent;
            chainedProgressHandler = param1;
            chainedCompleteHandler = param2;
            chainedIOErrorHandler = param3;
            chainedSecurityErrorHandler = param4;
            chainedRSLErrorHandler = param5;
            urlRequest = new URLRequest(LoaderUtil.createAbsoluteURL(rootURL, rslUrls[urlIndex]));
            var _loc_6:* = new URLLoader();
            new URLLoader().dataFormat = URLLoaderDataFormat.BINARY;
            _loc_6.addEventListener(ProgressEvent.PROGRESS, itemProgressHandler);
            _loc_6.addEventListener(Event.COMPLETE, itemCompleteHandler);
            _loc_6.addEventListener(IOErrorEvent.IO_ERROR, itemErrorHandler);
            _loc_6.addEventListener(SecurityErrorEvent.SECURITY_ERROR, itemErrorHandler);
            if (policyFileUrls.length > urlIndex && policyFileUrls[urlIndex] != "")
            {
                Security.loadPolicyFile(policyFileUrls[urlIndex]);
            }// end if
            if (isSigned[urlIndex])
            {
                if (urlRequest.hasOwnProperty("digest"))
                {
                    urlRequest.digest = digests[urlIndex];
                }
                else
                {
                    if (hasFailover())
                    {
                        loadFailover();
                        return;
                    }// end if
                    _loc_7 = new ErrorEvent(RSLEvent.RSL_ERROR);
                    _loc_7.text = "Flex Error #1002: Flash Player 9.0.115 and above is required to support signed RSLs. Problem occurred when trying to load the RSL " + urlRequest.url + ".  Upgrade your Flash Player and try again.";
                    super.itemErrorHandler(_loc_7);
                    return;
                }// end if
            }// end else if
            _loc_6.load(urlRequest);
            return;
        }// end function

        private function completeCdRslLoad(param1:URLLoader) : Boolean
        {
            var _loc_3:Boolean;
            var _loc_4:String;
            var _loc_5:Boolean;
            var _loc_6:ErrorEvent;
            if (param1 == null || param1.data == null || ByteArray(param1.data).bytesAvailable == 0)
            {
                return true;
            }// end if
            loadBytesLoader = new Loader();
            var _loc_2:* = new LoaderContext();
            _loc_2.applicationDomain = ApplicationDomain.currentDomain;
            _loc_2.securityDomain = null;
            if ("allowLoadBytesCodeExecution" in _loc_2)
            {
                _loc_2["allowLoadBytesCodeExecution"] = true;
            }// end if
            if (digests[urlIndex] != null && String(digests[urlIndex]).length > 0)
            {
                _loc_3 = false;
                if (!isSigned[urlIndex])
                {
                    if (hashTypes[urlIndex] == SHA256.TYPE_ID)
                    {
                        _loc_4 = null;
                        if (param1.data != null)
                        {
                            _loc_4 = SHA256.computeDigest(param1.data);
                        }// end if
                        if (_loc_4 == digests[urlIndex])
                        {
                            _loc_3 = true;
                        }// end if
                    }// end if
                }
                else
                {
                    _loc_3 = true;
                }// end else if
                if (true)
                {
                    _loc_5 = hasFailover();
                    _loc_6 = new ErrorEvent(RSLEvent.RSL_ERROR);
                    _loc_6.text = "Flex Error #1001: Digest mismatch with RSL " + urlRequest.url + ". Redeploy the matching RSL or relink your application with the matching library.";
                    itemErrorHandler(_loc_6);
                    return !_loc_5;
                }// end if
            }// end if
            loadBytesLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadBytesCompleteHandler);
            loadBytesLoader.loadBytes(param1.data, _loc_2);
            return true;
        }// end function

        public function hasFailover() : Boolean
        {
            return rslUrls.length > urlIndex + 1;
        }// end function

        override public function itemErrorHandler(param1:ErrorEvent) : void
        {
            if (hasFailover())
            {
                trace(decodeURI(param1.text));
                loadFailover();
            }
            else
            {
                super.itemErrorHandler(param1);
            }// end else if
            return;
        }// end function

        public function loadFailover() : void
        {
            if (urlIndex < rslUrls.length)
            {
                trace("Failed to load RSL " + rslUrls[urlIndex]);
                trace("Failing over to RSL " + rslUrls[urlIndex + 1]);
                urlIndex++;
                url = rslUrls[urlIndex];
                load(chainedProgressHandler, chainedCompleteHandler, chainedIOErrorHandler, chainedSecurityErrorHandler, chainedRSLErrorHandler);
            }// end if
            return;
        }// end function

    }
}
