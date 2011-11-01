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

        public function RSLItem(:String, :String = null)
        {
1  0 1361  1 136//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 88 01 
_as3_debugline line number: 136
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 60 00 88 01 
_as3_debug 1, 96, 0, 136
//ef 01 99 03 01 88 01 
_as3_debug 1, 409, 1, 136
//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 8a 01 
_as3_debugline line number: 138
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 8c 01 
_as3_debugline line number: 140
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 91 01 
_as3_initproperty mx.core:RSLItem::url
//f0 8d 01 
_as3_debugline line number: 141
//d0 
_as3_getlocal <0> 
//d2 
_as3_getlocal <2> 
//68 90 01 
_as3_initproperty rootURL
//f0 8e 01 
_as3_debugline line number: 142
//47 
_as3_returnvoid 
        }// end function

        public function itemProgressHandler(getUint:ProgressEvent) : void
        {
1  0 213//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 d5 01 
_as3_debugline line number: 213
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 d5 01 
_as3_debug 1, 635, 0, 213
//f0 d8 01 
_as3_debugline line number: 216
//5e 85 01 
_as3_findproperty loaded
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//68 85 01 
_as3_initproperty loaded
//f0 d9 01 
_as3_debugline line number: 217
//5e 84 01 
_as3_findproperty total
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//68 84 01 
_as3_initproperty total
//f0 dc 01 
_as3_debugline line number: 220
//60 8d 01 
_as3_getlex mx.core:RSLItem::chainedProgressHandler
//20 
_as3_pushnull 
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 dd 01 
_as3_debugline line number: 221
//5d 8d 01 
_as3_findpropstrict mx.core:RSLItem::chainedProgressHandler
//d1 
_as3_getlocal <1> 
//4f 8d 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedProgressHandler(param count:1)
//f0 de 01 
_as3_debugline line number: 222
//47 
_as3_returnvoid 
        }// end function

        public function itemErrorHandler(getUint:ErrorEvent) : void
        {
1  0 239//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 ef 01 
_as3_debugline line number: 239
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 ef 01 
_as3_debug 1, 635, 0, 239
//f0 f1 01 
_as3_debugline line number: 241
//5e 8a 01 
_as3_findproperty mx.core:RSLItem::errorText
//5d ab 03 
_as3_findpropstrict decodeURI
//d1 
_as3_getlocal <1> 
//66 fc 02 
_as3_getproperty text
//46 ab 03 01 
_as3_callproperty decodeURI(param count:1)
//68 8a 01 
_as3_initproperty mx.core:RSLItem::errorText
//f0 f2 01 
_as3_debugline line number: 242
//5e 86 01 
_as3_findproperty mx.core:RSLItem::completed
//26 
_as3_pushtrue 
//68 86 01 
_as3_initproperty mx.core:RSLItem::completed
//f0 f3 01 
_as3_debugline line number: 243
//5e 85 01 
_as3_findproperty loaded
//24 00 
_as3_pushbyte 0
//68 85 01 
_as3_initproperty loaded
//f0 f4 01 
_as3_debugline line number: 244
//5e 84 01 
_as3_findproperty total
//24 00 
_as3_pushbyte 0
//68 84 01 
_as3_initproperty total
//f0 f6 01 
_as3_debugline line number: 246
//5d 8f 03 
_as3_findpropstrict trace
//60 8a 01 
_as3_getlex mx.core:RSLItem::errorText
//4f 8f 03 01 
_as3_callpropvoid trace(param count:1)
//f0 f9 01 
_as3_debugline line number: 249
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
//12 0a 00 00 
_as3_iffalse offset: 10
//29 
_as3_pop 
//f0 fa 01 
_as3_debugline line number: 250
//60 88 01 
_as3_getlex mx.core:RSLItem::chainedIOErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 0f 00 00 
_as3_iffalse offset: 15
//f0 fc 01 
_as3_debugline line number: 252
//5d 88 01 
_as3_findpropstrict mx.core:RSLItem::chainedIOErrorHandler
//d1 
_as3_getlocal <1> 
//4f 88 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedIOErrorHandler(param count:1)
//10 5c 00 00 
_as3_jump offset: 92
//f0 fe 01 
_as3_debugline line number: 254
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
//12 0a 00 00 
_as3_iffalse offset: 10
//29 
_as3_pop 
//f0 ff 01 
_as3_debugline line number: 255
//60 83 01 
_as3_getlex mx.core:RSLItem::chainedSecurityErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 0f 00 00 
_as3_iffalse offset: 15
//f0 81 02 
_as3_debugline line number: 257
//5d 83 01 
_as3_findpropstrict mx.core:RSLItem::chainedSecurityErrorHandler
//d1 
_as3_getlocal <1> 
//4f 83 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedSecurityErrorHandler(param count:1)
//10 2c 00 00 
_as3_jump offset: 44
//f0 83 02 
_as3_debugline line number: 259
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
//12 0a 00 00 
_as3_iffalse offset: 10
//29 
_as3_pop 
//f0 84 02 
_as3_debugline line number: 260
//60 87 01 
_as3_getlex mx.core:RSLItem::chainedRSLErrorHandler
//20 
_as3_pushnull 
//ab 
_as3_equals 
//96 
_as3_not 
//12 0b 00 00 
_as3_iffalse offset: 11
//f0 86 02 
_as3_debugline line number: 262
//5d 87 01 
_as3_findpropstrict mx.core:RSLItem::chainedRSLErrorHandler
//d1 
_as3_getlocal <1> 
//4f 87 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedRSLErrorHandler(param count:1)
//f0 89 02 
_as3_debugline line number: 265
//47 
_as3_returnvoid 
        }// end function

        public function load(getUint:Function, getUint:Function, getUint:Function, getUint:Function, getUint:Function) : void
        {
1  0 1701  1 1701  2 1701  3 1701  4 1701  5 1821  6 183//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 aa 01 
_as3_debugline line number: 170
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 84 04 00 aa 01 
_as3_debug 1, 516, 0, 170
//ef 01 7e 01 aa 01 
_as3_debug 1, 126, 1, 170
//ef 01 82 08 02 aa 01 
_as3_debug 1, 1026, 2, 170
//ef 01 83 08 03 aa 01 
_as3_debug 1, 1027, 3, 170
//ef 01 d6 02 04 aa 01 
_as3_debug 1, 342, 4, 170
//ef 01 f8 03 05 b6 01 
_as3_debug 1, 504, 5, 182
//ef 01 84 08 06 b7 01 
_as3_debug 1, 1028, 6, 183
//f0 b0 01 
_as3_debugline line number: 176
//5e 8d 01 
_as3_findproperty mx.core:RSLItem::chainedProgressHandler
//d1 
_as3_getlocal <1> 
//68 8d 01 
_as3_initproperty mx.core:RSLItem::chainedProgressHandler
//f0 b1 01 
_as3_debugline line number: 177
//5e 89 01 
_as3_findproperty mx.core:RSLItem::chainedCompleteHandler
//d2 
_as3_getlocal <2> 
//68 89 01 
_as3_initproperty mx.core:RSLItem::chainedCompleteHandler
//f0 b2 01 
_as3_debugline line number: 178
//5e 88 01 
_as3_findproperty mx.core:RSLItem::chainedIOErrorHandler
//d3 
_as3_getlocal <3> 
//68 88 01 
_as3_initproperty mx.core:RSLItem::chainedIOErrorHandler
//f0 b3 01 
_as3_debugline line number: 179
//5e 83 01 
_as3_findproperty mx.core:RSLItem::chainedSecurityErrorHandler
//62 04 
_as3_getlocal <4>
//68 83 01 
_as3_initproperty mx.core:RSLItem::chainedSecurityErrorHandler
//f0 b4 01 
_as3_debugline line number: 180
//5e 87 01 
_as3_findproperty mx.core:RSLItem::chainedRSLErrorHandler
//62 05 
_as3_getlocal <5>
//68 87 01 
_as3_initproperty mx.core:RSLItem::chainedRSLErrorHandler
//f0 b6 01 
_as3_debugline line number: 182
//5d 80 02 
_as3_findpropstrict flash.display::Loader
//4a 80 02 00 
_as3_constructprop flash.display::Loader(param count:0)
//80 80 02 
_as3_coerce flash.display::Loader
//63 06 
_as3_setlocal <6>
//f0 b7 01 
_as3_debugline line number: 183
//5d a4 03 
_as3_findpropstrict flash.system::LoaderContext
//4a a4 03 00 
_as3_constructprop flash.system::LoaderContext(param count:0)
//80 a4 03 
_as3_coerce flash.system::LoaderContext
//63 07 
_as3_setlocal <7>
//f0 b8 01 
_as3_debugline line number: 184
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
//f0 bc 01 
_as3_debugline line number: 188
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 bd 01 
_as3_debugline line number: 189
//60 14 
_as3_getlex flash.events::ProgressEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 8b 01 
_as3_getlex itemProgressHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 bf 01 
_as3_debugline line number: 191
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 c0 01 
_as3_debugline line number: 192
//60 04 
_as3_getlex flash.events::Event
//66 e5 02 
_as3_getproperty COMPLETE
//60 92 01 
_as3_getlex itemCompleteHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 c2 01 
_as3_debugline line number: 194
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 c3 01 
_as3_debugline line number: 195
//60 a6 03 
_as3_getlex flash.events::IOErrorEvent
//66 a7 03 
_as3_getproperty IO_ERROR
//60 8c 01 
_as3_getlex itemErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 c5 01 
_as3_debugline line number: 197
//62 06 
_as3_getlocal <6>
//66 a5 03 
_as3_getproperty contentLoaderInfo
//f0 c6 01 
_as3_debugline line number: 198
//60 a8 03 
_as3_getlex flash.events::SecurityErrorEvent
//66 a9 03 
_as3_getproperty SECURITY_ERROR
//60 8c 01 
_as3_getlex itemErrorHandler
//4f ed 02 02 
_as3_callpropvoid addEventListener(param count:2)
//f0 c8 01 
_as3_debugline line number: 200
//62 07 
_as3_getlocal <7>
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//61 8f 02 
_as3_setproperty applicationDomain
//f0 c9 01 
_as3_debugline line number: 201
//62 06 
_as3_getlocal <6>
//60 8e 01 
_as3_getlex urlRequest
//62 07 
_as3_getlocal <7>
//4f 8f 01 02 
_as3_callpropvoid load(param count:2)
//f0 ca 01 
_as3_debugline line number: 202
//47 
_as3_returnvoid 
        }// end function

        public function itemCompleteHandler(getUint:Event) : void
        {
1  0 227//f1 81 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLItem.as"
//f0 e3 01 
_as3_debugline line number: 227
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 e3 01 
_as3_debug 1, 635, 0, 227
//f0 e5 01 
_as3_debugline line number: 229
//5e 86 01 
_as3_findproperty mx.core:RSLItem::completed
//26 
_as3_pushtrue 
//68 86 01 
_as3_initproperty mx.core:RSLItem::completed
//f0 e8 01 
_as3_debugline line number: 232
//60 89 01 
_as3_getlex mx.core:RSLItem::chainedCompleteHandler
//20 
_as3_pushnull 
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 e9 01 
_as3_debugline line number: 233
//5d 89 01 
_as3_findpropstrict mx.core:RSLItem::chainedCompleteHandler
//d1 
_as3_getlocal <1> 
//4f 89 01 01 
_as3_callpropvoid mx.core:RSLItem::chainedCompleteHandler(param count:1)
//f0 ea 01 
_as3_debugline line number: 234
//47 
_as3_returnvoid 
        }// end function

    }
}
