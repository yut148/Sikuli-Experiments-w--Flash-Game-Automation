package ResourceManagerImpl.as$91
{
    import flash.events.*;
    import mx.events.*;
    import mx.modules.*;

    private class ResourceEventDispatcher extends EventDispatcher
    {

        private function ResourceEventDispatcher(:IModuleInfo)
        {
1  0 910//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 8e 07 
_as3_debugline line number: 910
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 ba 03 00 8e 07 
_as3_debug 1, 442, 0, 910
//f0 90 07 
_as3_debugline line number: 912
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 92 07 
_as3_debugline line number: 914
//d1 
_as3_getlocal <1> 
//f0 93 07 
_as3_debugline line number: 915
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ae 02 
_as3_getproperty ERROR
//60 b5 01 
_as3_getlex ResourceManagerImpl.as$91:ResourceEventDispatcher::moduleInfo_errorHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//f0 95 07 
_as3_debugline line number: 917
//d1 
_as3_getlocal <1> 
//f0 96 07 
_as3_debugline line number: 918
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 af 02 
_as3_getproperty PROGRESS
//60 b3 01 
_as3_getlex ResourceManagerImpl.as$91:ResourceEventDispatcher::moduleInfo_progressHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//f0 98 07 
_as3_debugline line number: 920
//d1 
_as3_getlocal <1> 
//f0 99 07 
_as3_debugline line number: 921
//60 19 
_as3_getlex mx.events::ModuleEvent
//66 ad 02 
_as3_getproperty READY
//60 b4 01 
_as3_getlex ResourceManagerImpl.as$91:ResourceEventDispatcher::moduleInfo_readyHandler
//27 
_as3_pushfalse 
//24 00 
_as3_pushbyte 0
//26 
_as3_pushtrue 
//4f c3 03 05 
_as3_callpropvoid flash.events:IEventDispatcher::addEventListener(param count:5)
//f0 9a 07 
_as3_debugline line number: 922
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_progressHandler(errorHandler:ModuleEvent) : void
        {
1  0 9461  1 948//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 b2 07 
_as3_debugline line number: 946
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 b2 07 
_as3_debug 1, 635, 0, 946
//ef 01 b8 08 01 b4 07 
_as3_debug 1, 1080, 1, 948
//f0 b4 07 
_as3_debugline line number: 948
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//f0 b5 07 
_as3_debugline line number: 949
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 af 02 
_as3_getproperty PROGRESS
//d1 
_as3_getlocal <1> 
//66 b1 03 
_as3_getproperty bubbles
//d1 
_as3_getlocal <1> 
//66 b2 03 
_as3_getproperty cancelable
//4a 9d 02 03 
_as3_constructprop mx.events::ResourceEvent(param count:3)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//f0 b6 07 
_as3_debugline line number: 950
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 b7 07 
_as3_debugline line number: 951
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 b8 07 
_as3_debugline line number: 952
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 b9 07 
_as3_debugline line number: 953
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_readyHandler(errorHandler:ModuleEvent) : void
        {
1  0 9581  1 960//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 be 07 
_as3_debugline line number: 958
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 be 07 
_as3_debug 1, 635, 0, 958
//ef 01 b8 08 01 c0 07 
_as3_debug 1, 1080, 1, 960
//f0 c1 07 
_as3_debugline line number: 961
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 e5 02 
_as3_getproperty COMPLETE
//4a 9d 02 01 
_as3_constructprop mx.events::ResourceEvent(param count:1)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//f0 c2 07 
_as3_debugline line number: 962
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 c3 07 
_as3_debugline line number: 963
//47 
_as3_returnvoid 
        }// end function

        private function moduleInfo_errorHandler(errorHandler:ModuleEvent) : void
        {
1  0 9331  1 935//f1 b6 08 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;ResourceManagerImpl.as"
//f0 a5 07 
_as3_debugline line number: 933
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 fb 04 00 a5 07 
_as3_debug 1, 635, 0, 933
//ef 01 b8 08 01 a7 07 
_as3_debug 1, 1080, 1, 935
//f0 a7 07 
_as3_debugline line number: 935
//5d 9d 02 
_as3_findpropstrict mx.events::ResourceEvent
//f0 a8 07 
_as3_debugline line number: 936
//60 9d 02 
_as3_getlex mx.events::ResourceEvent
//66 ae 02 
_as3_getproperty ERROR
//d1 
_as3_getlocal <1> 
//66 b1 03 
_as3_getproperty bubbles
//d1 
_as3_getlocal <1> 
//66 b2 03 
_as3_getproperty cancelable
//4a 9d 02 03 
_as3_constructprop mx.events::ResourceEvent(param count:3)
//80 9d 02 
_as3_coerce mx.events::ResourceEvent
//d6 
_as3_setlocal <2> 
//f0 a9 07 
_as3_debugline line number: 937
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 aa 03 
_as3_getproperty bytesLoaded
//61 aa 03 
_as3_setproperty bytesLoaded
//f0 aa 07 
_as3_debugline line number: 938
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 95 02 
_as3_getproperty bytesTotal
//61 95 02 
_as3_setproperty bytesTotal
//f0 ab 07 
_as3_debugline line number: 939
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 a2 01 
_as3_getproperty errorText
//61 a2 01 
_as3_setproperty errorText
//f0 ac 07 
_as3_debugline line number: 940
//5d fb 02 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f fb 02 01 
_as3_callpropvoid dispatchEvent(param count:1)
//f0 ad 07 
_as3_debugline line number: 941
//47 
_as3_returnvoid 
        }// end function

    }
}
