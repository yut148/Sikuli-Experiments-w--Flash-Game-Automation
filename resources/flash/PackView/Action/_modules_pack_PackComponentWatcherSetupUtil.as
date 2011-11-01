package 
{
    import flash.display.*;
    import mx.core.*;

    public class _modules_pack_PackComponentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_pack_PackComponentWatcherSetupUtil()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 6b 
_as3_pushstring "itemList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 11 
_as3_pushbyte 17
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 13 
_as3_pushbyte 19
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 05 
_as3_pushbyte 5
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 08 
_as3_pushbyte 8
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 0b 
_as3_pushbyte 11
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 0e 
_as3_pushbyte 14
//66 db 02 
_as3_getproperty {}
//56 07 
_as3_newarray [array size:7]
//d2 
_as3_getlocal <2> 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 07 
_as3_pushbyte 7
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 8b 03 
_as3_pushstring "equipList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 08 
_as3_pushbyte 8
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 0d 
_as3_pushbyte 13
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c a8 03 
_as3_pushstring "bookList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 11 
_as3_pushbyte 17
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 0b 
_as3_pushbyte 11
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c a6 03 
_as3_pushstring "taskList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 0e 
_as3_pushbyte 14
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 03 
_as3_pushbyte 3
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c a2 03 
_as3_pushstring "packageList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 13 
_as3_pushbyte 19
//66 db 02 
_as3_getproperty {}
//d3 
_as3_getlocal <3> 
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//56 02 
_as3_newarray [array size:2]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 0e 
_as3_pushbyte 14
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c f2 02 
_as3_pushstring "length"
//2c cd 03 
_as3_pushstring "collectionChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 13 
_as3_pushbyte 19
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 05 
_as3_pushbyte 5
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 89 03 
_as3_pushstring "debrisList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 05 
_as3_pushbyte 5
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 0f 
_as3_pushbyte 15
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 96 03 
_as3_pushstring "backpackItemCountMax"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 13 
_as3_pushbyte 19
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 09 
_as3_pushbyte 9
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 8d 03 
_as3_pushstring "gemstoneList"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 0b 
_as3_pushbyte 11
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//20 
_as3_pushnull 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 10 
_as3_pushbyte 16
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c 8a 01 
_as3_pushstring "viewStack"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 14 
_as3_pushbyte 20
//66 db 02 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//d2 
_as3_getlocal <2> 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 db 02 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//d1 
_as3_getlocal <1> 
//4f dc 02 01 
_as3_callpropvoid updateParent(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 07 
_as3_pushbyte 7
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 0d 
_as3_pushbyte 13
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 0b 
_as3_pushbyte 11
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 03 
_as3_pushbyte 3
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 03 
_as3_pushbyte 3
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 0e 
_as3_pushbyte 14
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 05 
_as3_pushbyte 5
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 0f 
_as3_pushbyte 15
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 02 
_as3_pushbyte 2
//66 db 02 
_as3_getproperty {}
//62 04 
_as3_getlocal <4>
//24 09 
_as3_pushbyte 9
//66 db 02 
_as3_getproperty {}
//4f dd 02 01 
_as3_callpropvoid addChild(param count:1)
//62 04 
_as3_getlocal <4>
//24 10 
_as3_pushbyte 16
//66 db 02 
_as3_getproperty {}
//d1 
_as3_getlocal <1> 
//4f dc 02 01 
_as3_callpropvoid updateParent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 26 
_as3_getlex modules.pack::PackComponent
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//61 d3 01 
_as3_setproperty watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
