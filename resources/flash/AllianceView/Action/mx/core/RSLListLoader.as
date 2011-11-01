package mx.core
{
    import flash.events.*;

    public class RSLListLoader extends Object
    {
        private var chainedSecurityErrorHandler:Function;
        private var chainedIOErrorHandler:Function;
        private var rslList:Array;
        private var chainedRSLErrorHandler:Function;
        private var chainedCompleteHandler:Function;
        private var currentIndex:int = 0;
        private var chainedProgressHandler:Function;
        static const VERSION:String = "3.5.0.12683";

        public function RSLListLoader(:Array)
        {
1  0 44//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 2c 
_as3_debugline line number: 44
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 9f 03 00 2c 
_as3_debug 1, 415, 0, 44
//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 43 
_as3_debugline line number: 67
//5e 98 01 
_as3_findproperty mx.core:RSLListLoader::rslList
//56 00 
_as3_newarray [array size:0]
//68 98 01 
_as3_initproperty mx.core:RSLListLoader::rslList
//f0 2e 
_as3_debugline line number: 46
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 2f 
_as3_debugline line number: 47
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 98 01 
_as3_initproperty mx.core:RSLListLoader::rslList
//f0 30 
_as3_debugline line number: 48
//47 
_as3_returnvoid 
        }// end function

        private function loadNext() : void
        {
//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 99 01 
_as3_debugline line number: 153
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 9b 01 
_as3_debugline line number: 155
//5d 99 01 
_as3_findpropstrict isDone
//46 99 01 00 
_as3_callproperty isDone(param count:0)
//11 54 00 00 
_as3_iftrue offset: 84
//f0 9d 01 
_as3_debugline line number: 157
//5d 9f 01 
_as3_findpropstrict mx.core:RSLListLoader::currentIndex
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 9f 01 
_as3_getproperty mx.core:RSLListLoader::currentIndex
//c0 
_as3_increment_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 9f 01 
_as3_setproperty mx.core:RSLListLoader::currentIndex
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//f0 a0 01 
_as3_debugline line number: 160
//60 9f 01 
_as3_getlex mx.core:RSLListLoader::currentIndex
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//66 e9 02 
_as3_getproperty length
//0c 2e 00 00 
_as3_ifnlt offset: 46
//f0 a5 01 
_as3_debugline line number: 165
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//60 9f 01 
_as3_getlex mx.core:RSLListLoader::currentIndex
//66 ae 03 
_as3_getproperty {}
//f0 a5 01 
_as3_debugline line number: 165
//60 a0 01 
_as3_getlex mx.core:RSLListLoader::chainedProgressHandler
//f0 a6 01 
_as3_debugline line number: 166
//60 96 01 
_as3_getlex mx.core:RSLListLoader::listCompleteHandler
//f0 a7 01 
_as3_debugline line number: 167
//60 a1 01 
_as3_getlex mx.core:RSLListLoader::listIOErrorHandler
//f0 a8 01 
_as3_debugline line number: 168
//60 9b 01 
_as3_getlex mx.core:RSLListLoader::listSecurityErrorHandler
//f0 a9 01 
_as3_debugline line number: 169
//60 9a 01 
_as3_getlex mx.core:RSLListLoader::chainedRSLErrorHandler
//4f af 03 05 
_as3_callpropvoid load(param count:5)
//f0 ac 01 
_as3_debugline line number: 172
//47 
_as3_returnvoid 
        }// end function

        public function getIndex() : int
        {
//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 c5 01 
_as3_debugline line number: 197
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 c7 01 
_as3_debugline line number: 199
//60 9f 01 
_as3_getlex mx.core:RSLListLoader::currentIndex
//48 
_as3_returnvalue 
        }// end function

        public function load(unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function) : void
        {
1  0 1331  1 1331  2 1331  3 1331  4 133//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 85 01 
_as3_debugline line number: 133
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 84 04 00 85 01 
_as3_debug 1, 516, 0, 133
//ef 01 7e 01 85 01 
_as3_debug 1, 126, 1, 133
//ef 01 82 08 02 85 01 
_as3_debug 1, 1026, 2, 133
//ef 01 83 08 03 85 01 
_as3_debug 1, 1027, 3, 133
//ef 01 d6 02 04 85 01 
_as3_debug 1, 342, 4, 133
//f0 8b 01 
_as3_debugline line number: 139
//5e a0 01 
_as3_findproperty mx.core:RSLListLoader::chainedProgressHandler
//d1 
_as3_getlocal <1> 
//68 a0 01 
_as3_initproperty mx.core:RSLListLoader::chainedProgressHandler
//f0 8c 01 
_as3_debugline line number: 140
//5e 9c 01 
_as3_findproperty mx.core:RSLListLoader::chainedCompleteHandler
//d2 
_as3_getlocal <2> 
//68 9c 01 
_as3_initproperty mx.core:RSLListLoader::chainedCompleteHandler
//f0 8d 01 
_as3_debugline line number: 141
//5e 97 01 
_as3_findproperty mx.core:RSLListLoader::chainedIOErrorHandler
//d3 
_as3_getlocal <3> 
//68 97 01 
_as3_initproperty mx.core:RSLListLoader::chainedIOErrorHandler
//f0 8e 01 
_as3_debugline line number: 142
//5e 95 01 
_as3_findproperty mx.core:RSLListLoader::chainedSecurityErrorHandler
//62 04 
_as3_getlocal <4>
//68 95 01 
_as3_initproperty mx.core:RSLListLoader::chainedSecurityErrorHandler
//f0 8f 01 
_as3_debugline line number: 143
//5e 9a 01 
_as3_findproperty mx.core:RSLListLoader::chainedRSLErrorHandler
//62 05 
_as3_getlocal <5>
//68 9a 01 
_as3_initproperty mx.core:RSLListLoader::chainedRSLErrorHandler
//f0 91 01 
_as3_debugline line number: 145
//5e 9f 01 
_as3_findproperty mx.core:RSLListLoader::currentIndex
//24 ff 
_as3_pushbyte -1
//68 9f 01 
_as3_initproperty mx.core:RSLListLoader::currentIndex
//f0 92 01 
_as3_debugline line number: 146
//5d 93 01 
_as3_findpropstrict mx.core:RSLListLoader::loadNext
//4f 93 01 00 
_as3_callpropvoid mx.core:RSLListLoader::loadNext(param count:0)
//f0 94 01 
_as3_debugline line number: 148
//47 
_as3_returnvoid 
        }// end function

        private function listCompleteHandler(unloadResourceModule:Event) : void
        {
1  0 234//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 ea 01 
_as3_debugline line number: 234
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 ea 01 
_as3_debug 1, 635, 0, 234
//f0 ed 01 
_as3_debugline line number: 237
//60 9c 01 
_as3_getlex mx.core:RSLListLoader::chainedCompleteHandler
//20 
_as3_pushnull 
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 ee 01 
_as3_debugline line number: 238
//5d 9c 01 
_as3_findpropstrict mx.core:RSLListLoader::chainedCompleteHandler
//d1 
_as3_getlocal <1> 
//4f 9c 01 01 
_as3_callpropvoid mx.core:RSLListLoader::chainedCompleteHandler(param count:1)
//f0 f1 01 
_as3_debugline line number: 241
//5d 93 01 
_as3_findpropstrict mx.core:RSLListLoader::loadNext
//4f 93 01 00 
_as3_callpropvoid mx.core:RSLListLoader::loadNext(param count:0)
//f0 f2 01 
_as3_debugline line number: 242
//47 
_as3_returnvoid 
        }// end function

        public function isDone() : Boolean
        {
//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 dc 01 
_as3_debugline line number: 220
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 de 01 
_as3_debugline line number: 222
//60 9f 01 
_as3_getlex mx.core:RSLListLoader::currentIndex
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//66 e9 02 
_as3_getproperty length
//b0 
_as3_greaterequals 
//48 
_as3_returnvalue 
        }// end function

        private function listSecurityErrorHandler(unloadResourceModule:Event) : void
        {
1  0 257//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 81 02 
_as3_debugline line number: 257
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 81 02 
_as3_debug 1, 635, 0, 257
//f0 84 02 
_as3_debugline line number: 260
//60 95 01 
_as3_getlex mx.core:RSLListLoader::chainedSecurityErrorHandler
//20 
_as3_pushnull 
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 85 02 
_as3_debugline line number: 261
//5d 95 01 
_as3_findpropstrict mx.core:RSLListLoader::chainedSecurityErrorHandler
//d1 
_as3_getlocal <1> 
//4f 95 01 01 
_as3_callpropvoid mx.core:RSLListLoader::chainedSecurityErrorHandler(param count:1)
//f0 86 02 
_as3_debugline line number: 262
//47 
_as3_returnvoid 
        }// end function

        public function getItemCount() : int
        {
//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 d1 01 
_as3_debugline line number: 209
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//f0 d3 01 
_as3_debugline line number: 211
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//66 e9 02 
_as3_getproperty length
//48 
_as3_returnvalue 
        }// end function

        public function getItem(mx.core:RSLItem::chainedSecurityErrorHandler:int) : RSLItem
        {
1  0 183//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 b7 01 
_as3_debugline line number: 183
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 8f 08 00 b7 01 
_as3_debug 1, 1039, 0, 183
//f0 b9 01 
_as3_debugline line number: 185
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//ad 
_as3_lessthan 
//2a 
_as3_dup 
//11 09 00 00 
_as3_iftrue offset: 9
//29 
_as3_pop 
//d1 
_as3_getlocal <1> 
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//66 e9 02 
_as3_getproperty length
//b0 
_as3_greaterequals 
//12 05 00 00 
_as3_iffalse offset: 5
//f0 ba 01 
_as3_debugline line number: 186
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//f0 bc 01 
_as3_debugline line number: 188
//60 98 01 
_as3_getlex mx.core:RSLListLoader::rslList
//d1 
_as3_getlocal <1> 
//66 ae 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        private function listIOErrorHandler(unloadResourceModule:Event) : void
        {
1  0 247//f1 8d 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\core;RSLListLoader.as"
//f0 f7 01 
_as3_debugline line number: 247
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 f7 01 
_as3_debug 1, 635, 0, 247
//f0 fa 01 
_as3_debugline line number: 250
//60 97 01 
_as3_getlex mx.core:RSLListLoader::chainedIOErrorHandler
//20 
_as3_pushnull 
//13 0b 00 00 
_as3_ifeq offset: 11
//f0 fb 01 
_as3_debugline line number: 251
//5d 97 01 
_as3_findpropstrict mx.core:RSLListLoader::chainedIOErrorHandler
//d1 
_as3_getlocal <1> 
//4f 97 01 01 
_as3_callpropvoid mx.core:RSLListLoader::chainedIOErrorHandler(param count:1)
//f0 fc 01 
_as3_debugline line number: 252
//47 
_as3_returnvoid 
        }// end function

    }
}
