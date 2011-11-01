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

        public function RSLListLoader(param1:Array)
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e 98 01 
_as3_findproperty rslList
//56 00 
_as3_newarray [array size:0]
//68 98 01 
_as3_initproperty rslList
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 98 01 
_as3_initproperty rslList
//47 
_as3_returnvoid 
        }// end function

        private function loadNext() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 99 01 
_as3_findpropstrict isDone
//46 99 01 00 
_as3_callproperty isDone(param count:0)
//11 3c 00 00 
_as3_iftrue offset: 60
//5d 9f 01 
_as3_findpropstrict currentIndex
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//66 9f 01 
_as3_getproperty currentIndex
//c0 
_as3_increment_i 
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//d2 
_as3_getlocal <2> 
//61 9f 01 
_as3_setproperty currentIndex
//08 02 
_as3_kill <2>
//08 01 
_as3_kill <1>
//60 9f 01 
_as3_getlex currentIndex
//60 98 01 
_as3_getlex rslList
//66 e9 02 
_as3_getproperty length
//0c 1c 00 00 
_as3_ifnlt offset: 28
//60 98 01 
_as3_getlex rslList
//60 9f 01 
_as3_getlex currentIndex
//66 ae 03 
_as3_getproperty {}
//60 a0 01 
_as3_getlex chainedProgressHandler
//60 96 01 
_as3_getlex listCompleteHandler
//60 a1 01 
_as3_getlex listIOErrorHandler
//60 9b 01 
_as3_getlex listSecurityErrorHandler
//60 9a 01 
_as3_getlex chainedRSLErrorHandler
//4f af 03 05 
_as3_callpropvoid load(param count:5)
//47 
_as3_returnvoid 
        }// end function

        public function getIndex() : int
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9f 01 
_as3_getlex currentIndex
//48 
_as3_returnvalue 
        }// end function

        public function load(param1:Function, param2:Function, param3:Function, param4:Function, param5:Function) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5e a0 01 
_as3_findproperty chainedProgressHandler
//d1 
_as3_getlocal <1> 
//68 a0 01 
_as3_initproperty chainedProgressHandler
//5e 9c 01 
_as3_findproperty chainedCompleteHandler
//d2 
_as3_getlocal <2> 
//68 9c 01 
_as3_initproperty chainedCompleteHandler
//5e 97 01 
_as3_findproperty chainedIOErrorHandler
//d3 
_as3_getlocal <3> 
//68 97 01 
_as3_initproperty chainedIOErrorHandler
//5e 95 01 
_as3_findproperty chainedSecurityErrorHandler
//62 04 
_as3_getlocal <4>
//68 95 01 
_as3_initproperty chainedSecurityErrorHandler
//5e 9a 01 
_as3_findproperty chainedRSLErrorHandler
//62 05 
_as3_getlocal <5>
//68 9a 01 
_as3_initproperty chainedRSLErrorHandler
//5e 9f 01 
_as3_findproperty currentIndex
//24 ff 
_as3_pushbyte -1
//68 9f 01 
_as3_initproperty currentIndex
//5d 93 01 
_as3_findpropstrict loadNext
//4f 93 01 00 
_as3_callpropvoid loadNext(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function listCompleteHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9c 01 
_as3_getlex chainedCompleteHandler
//20 
_as3_pushnull 
//13 08 00 00 
_as3_ifeq offset: 8
//5d 9c 01 
_as3_findpropstrict chainedCompleteHandler
//d1 
_as3_getlocal <1> 
//4f 9c 01 01 
_as3_callpropvoid chainedCompleteHandler(param count:1)
//5d 93 01 
_as3_findpropstrict loadNext
//4f 93 01 00 
_as3_callpropvoid loadNext(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function isDone() : Boolean
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 9f 01 
_as3_getlex currentIndex
//60 98 01 
_as3_getlex rslList
//66 e9 02 
_as3_getproperty length
//b0 
_as3_greaterequals 
//48 
_as3_returnvalue 
        }// end function

        private function listSecurityErrorHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 95 01 
_as3_getlex chainedSecurityErrorHandler
//20 
_as3_pushnull 
//13 08 00 00 
_as3_ifeq offset: 8
//5d 95 01 
_as3_findpropstrict chainedSecurityErrorHandler
//d1 
_as3_getlocal <1> 
//4f 95 01 01 
_as3_callpropvoid chainedSecurityErrorHandler(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function getItemCount() : int
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 98 01 
_as3_getlex rslList
//66 e9 02 
_as3_getproperty length
//48 
_as3_returnvalue 
        }// end function

        public function getItem(param1:int) : RSLItem
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
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
_as3_getlex rslList
//66 e9 02 
_as3_getproperty length
//b0 
_as3_greaterequals 
//12 02 00 00 
_as3_iffalse offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//60 98 01 
_as3_getlex rslList
//d1 
_as3_getlocal <1> 
//66 ae 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
        }// end function

        private function listIOErrorHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 97 01 
_as3_getlex chainedIOErrorHandler
//20 
_as3_pushnull 
//13 08 00 00 
_as3_ifeq offset: 8
//5d 97 01 
_as3_findpropstrict chainedIOErrorHandler
//d1 
_as3_getlocal <1> 
//4f 97 01 01 
_as3_callpropvoid chainedIOErrorHandler(param count:1)
//47 
_as3_returnvoid 
        }// end function

    }
}
