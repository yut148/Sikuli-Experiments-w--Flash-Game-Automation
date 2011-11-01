package mx.core
{
    import flash.events.*;
    import flash.net.*;

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

        public function RSLItem(param1:String, param2:String = null)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 91 01 
_as3_initproperty mx.core:RSLItem::url
//d0 
_as3_getlocal <0> 
//d2 
_as3_getlocal <2> 
//68 90 01 
_as3_initproperty rootURL
//47 
_as3_returnvoid 
        }// end function

        public function itemProgressHandler(param1:ProgressEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 85 01 
_as3_findproperty loaded
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//68 85 01 
_as3_initproperty loaded
//5e 84 01 
_as3_findproperty total
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//68 84 01 
_as3_initproperty total
//60 8d 01 
_as3_getlex mx.core:RSLItem::chainedProgressHandler
//20 
_as3_pushnull 
//13 08 00 00 
_as3_ifeq offset: 8
//5d 8d 01 
_as3_findpropstrict mx.core:RSLItem::chainedProgressHandler
//d1 
_as3_getlocal <1> 
//4f 8d 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedProgressHandler(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function itemErrorHandler(param1:ErrorEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 8a 01 
_as3_findproperty errorText
//5d ab 03 
_as3_findpropstrict decodeURI
//d1 
_as3_getlocal <1> 
//66 fc 02 
_as3_getproperty text
//46 ab 03 01 
_as3_callproperty decodeURI(param count:1)
//68 8a 01 
_as3_initproperty errorText
//5e 86 01 
_as3_findproperty completed
//26 
_as3_pushtrue 
//68 86 01 
_as3_initproperty completed
//5e 85 01 
_as3_findproperty loaded
//24 00 
_as3_pushbyte 0
//68 85 01 
_as3_initproperty loaded
//5e 84 01 
_as3_findproperty total
//24 00 
_as3_pushbyte 0
//68 84 01 
_as3_initproperty total
//5d 8f 03 
_as3_findpropstrict trace
//60 8a 01 
_as3_getlex errorText
//4f 8f 03 01 
_as3_callpropvoid trace(param count:1)
//d1 
_as3_getlocal <1> 
//66 ac 03 
_as3_getproperty type
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//60 88 01 
_as3_getlex mx.core:RSLItem::chainedIOErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 0c 00 00 
_as3_iffalse offset: 12
//5d 88 01 
_as3_findpropstrict mx.core:RSLItem::chainedIOErrorHandler
//d1 
_as3_getlocal <1> 
//4f 88 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedIOErrorHandler(param count:1)
//10 4a 00 00 
_as3_jump offset: 74
//d1 
_as3_getlocal <1> 
//66 ac 03 
_as3_getproperty type
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//60 83 01 
_as3_getlex mx.core:RSLItem::chainedSecurityErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 0c 00 00 
_as3_iffalse offset: 12
//5d 83 01 
_as3_findpropstrict mx.core:RSLItem::chainedSecurityErrorHandler
//d1 
_as3_getlocal <1> 
//4f 83 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedSecurityErrorHandler(param count:1)
//10 23 00 00 
_as3_jump offset: 35
//d1 
_as3_getlocal <1> 
//66 ac 03 
_as3_getproperty type
//60 d3 01 
_as3_getlex mx.events::RSLEvent
//66 cd 02 
_as3_getproperty RSL_ERROR
//ab 
_as3_equals 
//2a 
_as3_dup 
//12 07 00 00 
_as3_iffalse offset: 7
//29 
_as3_pop 
//60 87 01 
_as3_getlex mx.core:RSLItem::chainedRSLErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 08 00 00 
_as3_iffalse offset: 8
//5d 87 01 
_as3_findpropstrict mx.core:RSLItem::chainedRSLErrorHandler
//d1 
_as3_getlocal <1> 
//4f 87 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedRSLErrorHandler(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function load(param1:Function, param2:Function, param3:Function, param4:Function, param5:Function) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 8d 01 
_as3_findproperty mx.core:RSLItem::chainedProgressHandler
//d1 
_as3_getlocal <1> 
//68 8d 01 
_as3_initproperty mx.core:RSLItem::chainedProgressHandler
//5e 89 01 
_as3_findproperty mx.core:RSLItem::chainedCompleteHandler
//d2 
_as3_getlocal <2> 
//68 89 01 
_as3_initproperty mx.core:RSLItem::chainedCompleteHandler
//5e 88 01 
_as3_findproperty mx.core:RSLItem::chainedIOErrorHandler
//d3 
_as3_getlocal <3> 
//68 88 01 
_as3_initproperty mx.core:RSLItem::chainedIOErrorHandler
//5e 83 01 
_as3_findproperty mx.core:RSLItem::chainedSecurityErrorHandler
//62 04 
_as3_getlocal <4>
//68 83 01 
_as3_initproperty mx.core:RSLItem::chainedSecurityErrorHandler
//5e 87 01 
_as3_findproperty mx.core:RSLItem::chainedRSLErrorHandler
//62 05 
_as3_getlocal <5>
//68 87 01 
_as3_initproperty mx.core:RSLItem::chainedRSLErrorHandler
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//80 80 02 
_as3_coerce flash.display::Loader
//63 06 
_as3_setlocal <6>
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//63 07 
_as3_setlocal <7>
//5e 8e 01 
_as3_findproperty urlRequest
//5d 1b 
_as3_findpropstrict flash.net::URLRequest
//60 d2 01 
_as3_getlex mx.utils::LoaderUtil
//60 90 01 
_as3_getlex rootURL
//60 91 01 
_as3_getlex mx.core:RSLItem::url
//46 c9 02 02 
_as3_callproperty createAbsoluteURL(param count:2)
//4a 1b 01 
_as3_constructprop flash.net::URLRequest(param count:1)
//68 8e 01 
_as3_initproperty urlRequest
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8b 01 
_as3_getlex itemProgressHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 92 01 
_as3_getlex itemCompleteHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 8c 01 
_as3_getlex itemErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 8c 01 
_as3_getlex itemErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//62 07 
_as3_getlocal <7>
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//61 8f 02 
_as3_setproperty applicationDomain
//62 06 
_as3_getlocal <6>
//60 8e 01 
_as3_getlex urlRequest
//62 07 
_as3_getlocal <7>
//4f 8f 01 02 
_as3_callpropvoid load(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function itemCompleteHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 86 01 
_as3_findproperty completed
//26 
_as3_pushtrue 
//68 86 01 
_as3_initproperty completed
//60 89 01 
_as3_getlex mx.core:RSLItem::chainedCompleteHandler
//20 
_as3_pushnull 
//13 08 00 00 
_as3_ifeq offset: 8
//5d 89 01 
_as3_findpropstrict mx.core:RSLItem::chainedCompleteHandler
//d1 
_as3_getlocal <1> 
//4f 89 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedCompleteHandler(param count:1)
//47 
_as3_returnvoid 
        }// end function

    }
}
