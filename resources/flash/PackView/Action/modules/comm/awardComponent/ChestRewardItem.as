package modules.comm.awardComponent
{
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.core.*;

    public class ChestRewardItem extends Canvas implements IBindingClient
    {
        var _watchers:Array;
        public var _ChestRewardItem_Label1:Label;
        private var _1268032575_itemText:String;
        public var _ChestRewardItem_Label3:Label;
        private var _1893124626collorArr:Array;
        private var _2116189043itemNum:Canvas;
        private var _1177331774itemName:Canvas;
        private var _listData:BaseListData;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _2273433Icon:Image;
        public var _ChestRewardItem_Object1:Object;
        public var _ChestRewardItem_Object2:Object;
        public var _ChestRewardItem_Object3:Object;
        public var _ChestRewardItem_Object4:Object;
        public var _ChestRewardItem_Object6:Object;
        public var _ChestRewardItem_Object5:Object;
        private var _1480355228_color:String;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ChestRewardItem()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 93 02 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c ee 01 
_as3_pushstring "width"
//25 bc 02 
_as3_pushshort 316
//2c ef 01 
_as3_pushstring "height"
//24 1a 
_as3_pushbyte 26
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 19 
_as3_getlex mx.controls::Image
//2c c1 02 
_as3_pushstring "id"
//2c d1 01 
_as3_pushstring "Icon"
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 88 02 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 02 
_as3_pushbyte 2
//2c 90 02 
_as3_pushstring "y"
//24 01 
_as3_pushbyte 1
//2c ee 01 
_as3_pushstring "width"
//24 18 
_as3_pushbyte 24
//2c ef 01 
_as3_pushstring "height"
//24 18 
_as3_pushbyte 24
//55 04 
_as3_newobject {object count:4}
//48 
_as3_returnvalue 
                }// end function

//55 03 
_as3_newobject {object count:3}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c d4 01 
_as3_pushstring "itemName"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 89 02 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2d 06 
_as3_pushint 12356417
//61 a0 03 
_as3_setproperty backgroundColor
//d0 
_as3_getlocal <0> 
//2f 02 
_as3_pushdouble 0.7
//61 a1 03 
_as3_setproperty backgroundAlpha
//d0 
_as3_getlocal <0> 
//2c 87 04 
_as3_pushstring "solid"
//61 a2 03 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 a3 03 
_as3_setproperty borderThickness
//d0 
_as3_getlocal <0> 
//24 05 
_as3_pushbyte 5
//61 a4 03 
_as3_setproperty cornerRadius
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 8c 02 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 8f 02 
_as3_pushstring "x"
//24 1f 
_as3_pushbyte 31
//2c 90 02 
_as3_pushstring "y"
//24 01 
_as3_pushbyte 1
//2c ee 01 
_as3_pushstring "width"
//25 b6 01 
_as3_pushshort 182
//2c ef 01 
_as3_pushstring "height"
//24 19 
_as3_pushbyte 25
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 10 
_as3_getlex mx.controls::Label
//2c c1 02 
_as3_pushstring "id"
//2c ce 01 
_as3_pushstring "_ChestRewardItem_Label1"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 8a 02 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//24 0b 
_as3_pushbyte 11
//61 a5 03 
_as3_setproperty fontSize
//d0 
_as3_getlocal <0> 
//2c fb 03 
_as3_pushstring "bold"
//61 a6 03 
_as3_setproperty fontWeight
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 8b 02 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 00 
_as3_pushbyte 0
//2c 90 02 
_as3_pushstring "y"
//24 03 
_as3_pushbyte 3
//2c ee 01 
_as3_pushstring "width"
//25 b6 01 
_as3_pushshort 182
//2c ef 01 
_as3_pushstring "height"
//24 14 
_as3_pushbyte 20
//55 04 
_as3_newobject {object count:4}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 06 
_as3_newobject {object count:6}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 10 
_as3_getlex mx.controls::Label
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 8d 02 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2d 07 
_as3_pushint 11305294
//61 a7 03 
_as3_setproperty color
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 8e 02 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//25 d9 01 
_as3_pushshort 217
//2c 90 02 
_as3_pushstring "y"
//24 04 
_as3_pushbyte 4
//2c aa 03 
_as3_pushstring "text"
//2c 8a 04 
_as3_pushstring "X"
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 03 
_as3_newobject {object count:3}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c e5 01 
_as3_pushstring "itemNum"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 8f 02 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2d 06 
_as3_pushint 12356417
//61 a0 03 
_as3_setproperty backgroundColor
//d0 
_as3_getlocal <0> 
//2c 87 04 
_as3_pushstring "solid"
//61 a2 03 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 05 
_as3_pushbyte 5
//61 a4 03 
_as3_setproperty cornerRadius
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 a3 03 
_as3_setproperty borderThickness
//d0 
_as3_getlocal <0> 
//2f 02 
_as3_pushdouble 0.7
//61 a1 03 
_as3_setproperty backgroundAlpha
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 92 02 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 8f 02 
_as3_pushstring "x"
//25 e8 01 
_as3_pushshort 232
//2c ee 01 
_as3_pushstring "width"
//24 4c 
_as3_pushbyte 76
//2c ef 01 
_as3_pushstring "height"
//24 19 
_as3_pushbyte 25
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 10 
_as3_getlex mx.controls::Label
//2c c1 02 
_as3_pushstring "id"
//2c d0 01 
_as3_pushstring "_ChestRewardItem_Label3"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 90 02 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2d 08 
_as3_pushint 16777215
//61 a7 03 
_as3_setproperty color
//d0 
_as3_getlocal <0> 
//24 0b 
_as3_pushbyte 11
//61 a5 03 
_as3_setproperty fontSize
//d0 
_as3_getlocal <0> 
//2c fb 03 
_as3_pushstring "bold"
//61 a6 03 
_as3_setproperty fontWeight
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 91 02 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 00 
_as3_pushbyte 0
//2c 90 02 
_as3_pushstring "y"
//24 04 
_as3_pushbyte 4
//2c ee 01 
_as3_pushstring "width"
//24 4c 
_as3_pushbyte 76
//2c ef 01 
_as3_pushstring "height"
//24 14 
_as3_pushbyte 20
//55 04 
_as3_newobject {object count:4}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 05 
_as3_newobject {object count:5}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 04 
_as3_newarray [array size:4]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//68 cd 01 
_as3_initproperty _documentDescriptor_
//d0 
_as3_getlocal <0> 
//56 00 
_as3_newarray [array size:0]
//68 7e 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindings
//d0 
_as3_getlocal <0> 
//56 00 
_as3_newarray [array size:0]
//68 65 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_watchers
//d0 
_as3_getlocal <0> 
//55 00 
_as3_newobject {object count:0}
//68 49 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindingsByDestination
//d0 
_as3_getlocal <0> 
//55 00 
_as3_newobject {object count:0}
//68 73 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindingsBeginWithWord
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 8c 02 
_as3_findpropstrict _document
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//d0 
_as3_getlocal <0> 
//61 8c 02 
_as3_setproperty _document
//d0 
_as3_getlocal <0> 
//25 bc 02 
_as3_pushshort 316
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//24 1a 
_as3_pushbyte 26
//68 d9 01 
_as3_initproperty height
//d0 
_as3_getlocal <0> 
//4f ce 01 00 
_as3_callpropvoid _ChestRewardItem_Array1_i(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function _ChestRewardItem_Object1_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 08 
_as3_pushint 16777215
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c4 01 
_as3_initproperty _ChestRewardItem_Object1
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c de 01 
_as3_pushstring "_ChestRewardItem_Object1"
//d0 
_as3_getlocal <0> 
//66 c4 01 
_as3_getproperty _ChestRewardItem_Object1
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardItem_Object3_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 0a 
_as3_pushint 58623
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c6 01 
_as3_initproperty _ChestRewardItem_Object3
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c e0 01 
_as3_pushstring "_ChestRewardItem_Object3"
//d0 
_as3_getlocal <0> 
//66 c6 01 
_as3_getproperty _ChestRewardItem_Object3
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardItem_Object5_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 0c 
_as3_pushint 16759296
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c9 01 
_as3_initproperty _ChestRewardItem_Object5
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c e3 01 
_as3_pushstring "_ChestRewardItem_Object5"
//d0 
_as3_getlocal <0> 
//66 c9 01 
_as3_getproperty _ChestRewardItem_Object5
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        override public function initialize() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 ae 01 
_as3_coerce modules.comm.awardComponent::ChestRewardItem
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 02 
_as3_coerce Object
//6d 05 
_as3_setslot <5>
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 92 02 
_as3_findpropstrict setDocumentDescriptor
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 92 02 
_as3_getproperty setDocumentDescriptor
//d2 
_as3_getlocal <2> 
//d0 
_as3_getlocal <0> 
//66 cd 01 
_as3_getproperty _documentDescriptor_
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 02 
_as3_kill <2>
//65 01 
_as3_getscopeobject 1
//d0 
_as3_getlocal <0> 
//46 cc 01 00 
_as3_callproperty _ChestRewardItem_bindingsSetup(param count:0)
//80 06 
_as3_coerce Array
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 06 
_as3_coerce Array
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//d0 
_as3_getlocal <0> 
//80 ae 01 
_as3_coerce modules.comm.awardComponent::ChestRewardItem
//6d 03 
_as3_setslot <3>
//60 d7 01 
_as3_getlex _watcherSetupUtil
//20 
_as3_pushnull 
//14 22 00 00 
_as3_ifne offset: 34
//65 01 
_as3_getscopeobject 1
//5d 93 02 
_as3_findpropstrict flash.utils::getDefinitionByName
//2c eb 01 
_as3_pushstring "_modules_comm_awardComponent_ChestRewardItemWatcherSetupUtil"
//46 93 02 01 
_as3_callproperty flash.utils::getDefinitionByName(param count:1)
//80 02 
_as3_coerce Object
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2c 3f 
_as3_pushstring "init"
//66 a8 03 
_as3_getproperty {}
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 02 
_as3_kill <2>
//60 d7 01 
_as3_getlex _watcherSetupUtil
//d0 
_as3_getlocal <0> 
//40 95 02 
_as3_newfunction 
                function (param1:String)
                {
//60 d0 02 
_as3_getlex modules.comm.awardComponent::target
//d1 
_as3_getlocal <1> 
//66 a8 03 
_as3_getproperty {}
//48 
_as3_returnvalue 
                }// end function

//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//4f 94 02 04 
_as3_callpropvoid mx.binding:IWatcherSetupUtil::setup(param count:4)
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//74 
_as3_convert_u 
//6d 04 
_as3_setslot <4>
//10 22 00 00 
_as3_jump offset: 34
//09 
_as3_label 
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 a8 03 
_as3_getproperty {}
//46 95 02 01 
_as3_callproperty mx.binding::Binding(param count:1)
//4f 96 02 00 
_as3_callpropvoid execute(param count:0)
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//91 
_as3_increment 
//74 
_as3_convert_u 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 04 
_as3_setslot <4>
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//66 97 02 
_as3_getproperty length
//15 cf ff ff 
_as3_iflt offset: -49
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 98 02 
_as3_findpropstrict _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 98 02 
_as3_findpropstrict _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 98 02 
_as3_getproperty _bindings
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 a9 03 01 
_as3_callproperty concat(param count:1)
//61 98 02 
_as3_setproperty _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 9a 02 
_as3_findpropstrict _watchers
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 9a 02 
_as3_findpropstrict _watchers
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 9a 02 
_as3_getproperty _watchers
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//46 a9 03 01 
_as3_callproperty concat(param count:1)
//61 9a 02 
_as3_setproperty _watchers
//d0 
_as3_getlocal <0> 
//4e 63 00 
_as3_callsupervoid initialize(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function get collorArr() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b8 01 
_as3_getproperty _1893124626collorArr
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardItem_bindingExprs() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//21 
_as3_pushundefined 
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 90 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 00 
_as3_pushbyte 0
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 91 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b1 03 
_as3_getproperty GREEN
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b2 03 
_as3_getproperty WHITE
//55 02 
_as3_newobject {object count:2}
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 96 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b3 03 
_as3_getproperty BLUE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b1 03 
_as3_getproperty GREEN
//55 02 
_as3_newobject {object count:2}
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 98 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b4 03 
_as3_getproperty PURPLE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b3 03 
_as3_getproperty BLUE
//55 02 
_as3_newobject {object count:2}
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9a 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b5 03 
_as3_getproperty ORANGE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b4 03 
_as3_getproperty PURPLE
//55 02 
_as3_newobject {object count:2}
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9c 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b6 03 
_as3_getproperty RED
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b5 03 
_as3_getproperty ORANGE
//55 02 
_as3_newobject {object count:2}
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 ab 03 
_as3_getproperty url
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 bb 01 
_as3_getproperty _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 bb 01 
_as3_getproperty _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 b2 01 
_as3_getproperty collorArr
//60 99 01 
_as3_getlex data
//66 a7 03 
_as3_getproperty color
//66 a8 03 
_as3_getproperty {}
//66 a7 03 
_as3_getproperty color
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 bb 01 
_as3_getproperty _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 b8 03 
_as3_getproperty count
//46 b9 03 00 
_as3_callproperty toString(param count:0)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//47 
_as3_returnvoid 
        }// end function

        public function get Icon() : Image
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 c3 01 
_as3_getproperty _2273433Icon
//48 
_as3_returnvalue 
        }// end function

        public function set collorArr(param1:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b8 01 
_as3_getproperty _1893124626collorArr
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 b8 01 
_as3_setproperty _1893124626collorArr
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c cc 01 
_as3_pushstring "collorArr"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get itemName() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 bc 01 
_as3_getproperty _1177331774itemName
//48 
_as3_returnvalue 
        }// end function

        private function get _itemText() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b5 01 
_as3_getproperty _1268032575_itemText
//48 
_as3_returnvalue 
        }// end function

        public function set Icon(param1:Image) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 c3 01 
_as3_getproperty _2273433Icon
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 c3 01 
_as3_setproperty _2273433Icon
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c d1 01 
_as3_pushstring "Icon"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _ChestRewardItem_Object2_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 09 
_as3_pushint 3795200
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c5 01 
_as3_initproperty _ChestRewardItem_Object2
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c df 01 
_as3_pushstring "_ChestRewardItem_Object2"
//d0 
_as3_getlocal <0> 
//66 c5 01 
_as3_getproperty _ChestRewardItem_Object2
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardItem_Object4_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 0b 
_as3_pushint 14447359
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c7 01 
_as3_initproperty _ChestRewardItem_Object4
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c e1 01 
_as3_pushstring "_ChestRewardItem_Object4"
//d0 
_as3_getlocal <0> 
//66 c7 01 
_as3_getproperty _ChestRewardItem_Object4
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        private function set _color(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 ca 01 
_as3_getproperty _1480355228_color
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 ca 01 
_as3_setproperty _1480355228_color
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c da 01 
_as3_pushstring "_color"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _ChestRewardItem_Object6_i() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c a1 03 
_as3_pushstring "label"
//20 
_as3_pushnull 
//2c b2 01 
_as3_pushstring "data"
//20 
_as3_pushnull 
//2c c7 02 
_as3_pushstring "color"
//2d 0d 
_as3_pushint 16711680
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 c8 01 
_as3_initproperty _ChestRewardItem_Object6
//60 ac 03 
_as3_getlex mx.binding::BindingManager
//d0 
_as3_getlocal <0> 
//2c e2 01 
_as3_pushstring "_ChestRewardItem_Object6"
//d0 
_as3_getlocal <0> 
//66 c8 01 
_as3_getproperty _ChestRewardItem_Object6
//4f ad 03 03 
_as3_callpropvoid executeBindings(param count:3)
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function set listData(param1:BaseListData) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 bf 01 
_as3_initproperty _listData
//d1 
_as3_getlocal <1> 
//12 00 00 00 
_as3_iffalse offset: 0
//47 
_as3_returnvoid 
        }// end function

        override public function set data(param1:Object) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//05 99 01 
_as3_setsuper data
//d1 
_as3_getlocal <1> 
//12 2d 00 00 
_as3_iffalse offset: 45
//60 99 01 
_as3_getlex data
//66 aa 03 
_as3_getproperty name
//2c 8b 04 
_as3_pushstring "experience"
//14 0b 00 00 
_as3_ifne offset: 11
//d0 
_as3_getlocal <0> 
//2c 8c 04 
_as3_pushstring "Exp"
//68 bb 01 
_as3_initproperty _itemText
//10 0a 00 00 
_as3_jump offset: 10
//d0 
_as3_getlocal <0> 
//60 99 01 
_as3_getlex data
//66 aa 03 
_as3_getproperty name
//68 bb 01 
_as3_initproperty _itemText
//d0 
_as3_getlocal <0> 
//66 b7 01 
_as3_getproperty Icon
//d1 
_as3_getlocal <1> 
//66 ab 03 
_as3_getproperty url
//61 fb 02 
_as3_setproperty source
//47 
_as3_returnvoid 
        }// end function

        private function get _color() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 ca 01 
_as3_getproperty _1480355228_color
//48 
_as3_returnvalue 
        }// end function

        public function get listData() : BaseListData
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 bf 01 
_as3_getproperty _listData
//48 
_as3_returnvalue 
        }// end function

        public function get itemNum() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b9 01 
_as3_getproperty _2116189043itemNum
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardItem_bindingsSetup() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 06 
_as3_coerce Array
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 a1 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 90 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 a2 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c4 01 
_as3_getlex _ChestRewardItem_Object1
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c a0 04 
_as3_pushstring "_ChestRewardItem_Object1.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 00 
_as3_pushbyte 0
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 a3 02 
_as3_newfunction 
                function ()
                {
//24 00 
_as3_pushbyte 0
//48 
_as3_returnvalue 
                }// end function

//40 a4 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c4 01 
_as3_getlex _ChestRewardItem_Object1
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c a1 04 
_as3_pushstring "_ChestRewardItem_Object1.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 01 
_as3_pushbyte 1
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 a5 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 91 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 a6 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c5 01 
_as3_getlex _ChestRewardItem_Object2
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c a2 04 
_as3_pushstring "_ChestRewardItem_Object2.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 02 
_as3_pushbyte 2
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 a7 02 
_as3_newfunction 
                function ()
                {
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b1 03 
_as3_getproperty GREEN
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b2 03 
_as3_getproperty WHITE
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//40 a8 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c5 01 
_as3_getlex _ChestRewardItem_Object2
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c a3 04 
_as3_pushstring "_ChestRewardItem_Object2.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 03 
_as3_pushbyte 3
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 a9 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 96 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 aa 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c6 01 
_as3_getlex _ChestRewardItem_Object3
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c a4 04 
_as3_pushstring "_ChestRewardItem_Object3.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 04 
_as3_pushbyte 4
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 ab 02 
_as3_newfunction 
                function ()
                {
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b3 03 
_as3_getproperty BLUE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b1 03 
_as3_getproperty GREEN
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//40 ac 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c6 01 
_as3_getlex _ChestRewardItem_Object3
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c a5 04 
_as3_pushstring "_ChestRewardItem_Object3.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 05 
_as3_pushbyte 5
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 ad 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 98 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 ae 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c7 01 
_as3_getlex _ChestRewardItem_Object4
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c a6 04 
_as3_pushstring "_ChestRewardItem_Object4.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 06 
_as3_pushbyte 6
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 af 02 
_as3_newfunction 
                function ()
                {
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b4 03 
_as3_getproperty PURPLE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b3 03 
_as3_getproperty BLUE
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//40 b0 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c7 01 
_as3_getlex _ChestRewardItem_Object4
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c a7 04 
_as3_pushstring "_ChestRewardItem_Object4.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 07 
_as3_pushbyte 7
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 b1 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9a 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 b2 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c9 01 
_as3_getlex _ChestRewardItem_Object5
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c a8 04 
_as3_pushstring "_ChestRewardItem_Object5.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 08 
_as3_pushbyte 8
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 b3 02 
_as3_newfunction 
                function ()
                {
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b5 03 
_as3_getproperty ORANGE
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b4 03 
_as3_getproperty PURPLE
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//40 b4 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c9 01 
_as3_getlex _ChestRewardItem_Object5
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c a9 04 
_as3_pushstring "_ChestRewardItem_Object5.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 09 
_as3_pushbyte 9
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 b5 02 
_as3_newfunction 
                function ()
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9c 04 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 b6 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c8 01 
_as3_getlex _ChestRewardItem_Object6
//d1 
_as3_getlocal <1> 
//61 ae 03 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c aa 04 
_as3_pushstring "_ChestRewardItem_Object6.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0a 
_as3_pushbyte 10
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 b7 02 
_as3_newfunction 
                function ()
                {
//2c c0 02 
_as3_pushstring "type"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b6 03 
_as3_getproperty RED
//2c 94 04 
_as3_pushstring "tarType"
//60 b0 03 
_as3_getlex com.cgame.config::ColorConfig
//66 b5 03 
_as3_getproperty ORANGE
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//40 b8 02 
_as3_newfunction 
                function (param1) : void
                {
//60 c8 01 
_as3_getlex _ChestRewardItem_Object6
//d1 
_as3_getlocal <1> 
//61 af 03 
_as3_setproperty data
//47 
_as3_returnvoid 
                }// end function

//2c ab 04 
_as3_pushstring "_ChestRewardItem_Object6.data"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0b 
_as3_pushbyte 11
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 b9 02 
_as3_newfunction 
                function () : Object
                {
//60 99 01 
_as3_getlex data
//66 ab 03 
_as3_getproperty url
//48 
_as3_returnvalue 
                }// end function

//40 ba 02 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 b7 01 
_as3_getlex Icon
//d1 
_as3_getlocal <1> 
//61 fb 02 
_as3_setproperty source
//47 
_as3_returnvoid 
                }// end function

//2c ac 04 
_as3_pushstring "Icon.source"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0c 
_as3_pushbyte 12
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 bb 02 
_as3_newfunction 
                function () : String
                {
//60 bb 01 
_as3_getlex _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 bc 02 
_as3_newfunction 
                function (param1:String) : void
                {
//60 b7 01 
_as3_getlex Icon
//d1 
_as3_getlocal <1> 
//61 c8 02 
_as3_setproperty toolTip
//47 
_as3_returnvoid 
                }// end function

//2c ad 04 
_as3_pushstring "Icon.toolTip"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0d 
_as3_pushbyte 13
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 bd 02 
_as3_newfunction 
                function () : String
                {
//60 bb 01 
_as3_getlex _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 be 02 
_as3_newfunction 
                function (param1:String) : void
                {
//60 ba 01 
_as3_getlex itemName
//d1 
_as3_getlocal <1> 
//61 c8 02 
_as3_setproperty toolTip
//47 
_as3_returnvoid 
                }// end function

//2c ae 04 
_as3_pushstring "itemName.toolTip"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0e 
_as3_pushbyte 14
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 bf 02 
_as3_newfunction 
                function () : uint
                {
//60 b2 01 
_as3_getlex collorArr
//60 99 01 
_as3_getlex data
//66 a7 03 
_as3_getproperty color
//66 a8 03 
_as3_getproperty {}
//66 a7 03 
_as3_getproperty color
//48 
_as3_returnvalue 
                }// end function

//40 c0 02 
_as3_newfunction 
                function (param1:uint) : void
                {
//60 b4 01 
_as3_getlex _ChestRewardItem_Label1
//2c c7 02 
_as3_pushstring "color"
//d1 
_as3_getlocal <1> 
//4f b7 03 02 
_as3_callpropvoid setStyle(param count:2)
//47 
_as3_returnvoid 
                }// end function

//2c af 04 
_as3_pushstring "_ChestRewardItem_Label1.color"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0f 
_as3_pushbyte 15
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 c1 02 
_as3_newfunction 
                function () : String
                {
//60 bb 01 
_as3_getlex _itemText
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 c2 02 
_as3_newfunction 
                function (param1:String) : void
                {
//60 b4 01 
_as3_getlex _ChestRewardItem_Label1
//d1 
_as3_getlocal <1> 
//61 c7 02 
_as3_setproperty text
//47 
_as3_returnvoid 
                }// end function

//2c b0 04 
_as3_pushstring "_ChestRewardItem_Label1.text"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 10 
_as3_pushbyte 16
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 c3 02 
_as3_newfunction 
                function () : String
                {
//60 99 01 
_as3_getlex data
//66 b8 03 
_as3_getproperty count
//46 b9 03 00 
_as3_callproperty toString(param count:0)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 c4 02 
_as3_newfunction 
                function (param1:String) : void
                {
//60 b6 01 
_as3_getlex _ChestRewardItem_Label3
//d1 
_as3_getlocal <1> 
//61 c7 02 
_as3_setproperty text
//47 
_as3_returnvoid 
                }// end function

//2c b1 04 
_as3_pushstring "_ChestRewardItem_Label3.text"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 11 
_as3_pushbyte 17
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 a8 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//48 
_as3_returnvalue 
        }// end function

        public function set itemNum(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b9 01 
_as3_getproperty _2116189043itemNum
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 b9 01 
_as3_setproperty _2116189043itemNum
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c e5 01 
_as3_pushstring "itemNum"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set itemName(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 bc 01 
_as3_getproperty _1177331774itemName
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 bc 01 
_as3_setproperty _1177331774itemName
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c d4 01 
_as3_pushstring "itemName"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _ChestRewardItem_Array1_i() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//46 af 01 00 
_as3_callproperty _ChestRewardItem_Object1_i(param count:0)
//d0 
_as3_getlocal <0> 
//46 bd 01 00 
_as3_callproperty _ChestRewardItem_Object2_i(param count:0)
//d0 
_as3_getlocal <0> 
//46 b0 01 00 
_as3_callproperty _ChestRewardItem_Object3_i(param count:0)
//d0 
_as3_getlocal <0> 
//46 be 01 00 
_as3_callproperty _ChestRewardItem_Object4_i(param count:0)
//d0 
_as3_getlocal <0> 
//46 b1 01 00 
_as3_callproperty _ChestRewardItem_Object5_i(param count:0)
//d0 
_as3_getlocal <0> 
//46 c1 01 00 
_as3_callproperty _ChestRewardItem_Object6_i(param count:0)
//56 06 
_as3_newarray [array size:6]
//80 06 
_as3_coerce Array
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//68 b2 01 
_as3_initproperty collorArr
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        private function set _itemText(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 b5 01 
_as3_getproperty _1268032575_itemText
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 b5 01 
_as3_setproperty _1268032575_itemText
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c d5 01 
_as3_pushstring "_itemText"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//64 
_as3_getglobalscope 
//6c 01 
_as3_getslot <1>
//d1 
_as3_getlocal <1> 
//61 d7 01 
_as3_setproperty _watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
