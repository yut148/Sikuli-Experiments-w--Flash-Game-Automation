package modules.comm.awardComponent
{
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;

    public class ChestRewardComponement extends Canvas implements IBindingClient
    {
        private var _embed_mxml_images_comm_alliance_bg_alliance_chests_jpg_299215828:Class;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _3322014list:List;
        var _watchers:Array;
        public var _ChestRewardComponement_Label1:Label;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ChestRewardComponement()
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
//40 ec 01 
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
//25 ec 02 
_as3_pushshort 364
//2c ef 01 
_as3_pushstring "height"
//25 f5 01 
_as3_pushshort 245
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 19 
_as3_getlex mx.controls::Image
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 e6 01 
_as3_newfunction 
                function () : Object
                {
//2c ea 03 
_as3_pushstring "source"
//60 a4 01 
_as3_getlex _embed_mxml_images_comm_alliance_bg_alliance_chests_jpg_299215828
//55 01 
_as3_newobject {object count:1}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 e9 01 
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
//24 0a 
_as3_pushbyte 10
//2c 90 02 
_as3_pushstring "y"
//24 0a 
_as3_pushbyte 10
//2c ee 01 
_as3_pushstring "width"
//25 d8 02 
_as3_pushshort 344
//2c ef 01 
_as3_pushstring "height"
//24 43 
_as3_pushbyte 67
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
//2c c2 01 
_as3_pushstring "_ChestRewardComponement_Label1"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 e7 01 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2d 03 
_as3_pushint 6503168
//61 8b 03 
_as3_setproperty color
//d0 
_as3_getlocal <0> 
//24 12 
_as3_pushbyte 18
//61 8c 03 
_as3_setproperty fontSize
//d0 
_as3_getlocal <0> 
//2c fb 03 
_as3_pushstring "bold"
//61 8d 03 
_as3_setproperty fontWeight
//d0 
_as3_getlocal <0> 
//2c c5 02 
_as3_pushstring "center"
//61 8e 03 
_as3_setproperty textAlign
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 e8 01 
_as3_newfunction 
                function () : Object
                {
//2c fd 03 
_as3_pushstring "percentWidth"
//24 64 
_as3_pushbyte 100
//2c fe 03 
_as3_pushstring "percentHeight"
//24 64 
_as3_pushbyte 100
//55 02 
_as3_newobject {object count:2}
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

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 1a 
_as3_getlex mx.controls::List
//2c c1 02 
_as3_pushstring "id"
//2c c1 01 
_as3_pushstring "list"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 ea 01 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 8f 03 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//2d 05 
_as3_pushint 14524745
//61 90 03 
_as3_setproperty selectionColor
//d0 
_as3_getlocal <0> 
//27 
_as3_pushfalse 
//61 91 03 
_as3_setproperty useRollOver
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 92 03 
_as3_setproperty backgroundAlpha
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 eb 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 13 
_as3_pushbyte 19
//2c 90 02 
_as3_pushstring "y"
//24 55 
_as3_pushbyte 85
//2c ee 01 
_as3_pushstring "width"
//25 cf 02 
_as3_pushshort 335
//2c ef 01 
_as3_pushstring "height"
//25 8e 01 
_as3_pushshort 142
//2c a3 03 
_as3_pushstring "dataProvider"
//56 00 
_as3_newarray [array size:0]
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d a9 01 
_as3_findpropstrict _ChestRewardComponement_ClassFactory1_c
//46 a9 01 00 
_as3_callproperty _ChestRewardComponement_ClassFactory1_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 07 
_as3_newobject {object count:7}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 03 
_as3_newarray [array size:3]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//68 ab 01 
_as3_initproperty _documentDescriptor_
//d0 
_as3_getlocal <0> 
//60 cf 01 
_as3_getlex modules.comm.awardComponent::ChestRewardComponement__embed_mxml_images_comm_alliance_bg_alliance_chests_jpg_299215828
//68 a4 01 
_as3_initproperty _embed_mxml_images_comm_alliance_bg_alliance_chests_jpg_299215828
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
//25 ec 02 
_as3_pushshort 364
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//25 f5 01 
_as3_pushshort 245
//68 d9 01 
_as3_initproperty height
//47 
_as3_returnvoid 
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
//80 15 
_as3_coerce modules.comm.awardComponent::ChestRewardComponement
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
//66 ab 01 
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
//46 aa 01 00 
_as3_callproperty _ChestRewardComponement_bindingsSetup(param count:0)
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
//80 15 
_as3_coerce modules.comm.awardComponent::ChestRewardComponement
//6d 03 
_as3_setslot <3>
//60 d6 01 
_as3_getlex _watcherSetupUtil
//20 
_as3_pushnull 
//14 22 00 00 
_as3_ifne offset: 34
//65 01 
_as3_getscopeobject 1
//5d 93 02 
_as3_findpropstrict flash.utils::getDefinitionByName
//2c ea 01 
_as3_pushstring "_modules_comm_awardComponent_ChestRewardComponementWatcherSetupUtil"
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
//66 93 03 
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
//60 d6 01 
_as3_getlex _watcherSetupUtil
//d0 
_as3_getlocal <0> 
//40 ee 01 
_as3_newfunction 
                function (param1:String)
                {
//60 d0 02 
_as3_getlex modules.comm.awardComponent::target
//d1 
_as3_getlocal <1> 
//66 93 03 
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
//66 93 03 
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
//46 94 03 01 
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
//46 94 03 01 
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

        private function _ChestRewardComponement_bindingExprs() : void
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
//2c 82 04 
_as3_pushstring "???????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//47 
_as3_returnvoid 
        }// end function

        public function get list() : List
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 a5 01 
_as3_getproperty _3322014list
//48 
_as3_returnvalue 
        }// end function

        private function _ChestRewardComponement_ClassFactory1_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 ae 01 
_as3_getlex modules.comm.awardComponent::ChestRewardItem
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function setReward(param1:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 a7 01 
_as3_getproperty list
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
        }// end function

        private function _ChestRewardComponement_bindingsSetup() : Array
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
//40 f2 01 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 82 04 
_as3_pushstring "???????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
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

//40 f3 01 
_as3_newfunction 
                function (param1:String) : void
                {
//60 a8 01 
_as3_getlex _ChestRewardComponement_Label1
//d1 
_as3_getlocal <1> 
//61 c7 02 
_as3_setproperty text
//47 
_as3_returnvoid 
                }// end function

//2c 83 04 
_as3_pushstring "_ChestRewardComponement_Label1.text"
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
//61 93 03 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//48 
_as3_returnvalue 
        }// end function

        public function set list(param1:List) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 a5 01 
_as3_getproperty _3322014list
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
//61 a5 01 
_as3_setproperty _3322014list
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c c1 01 
_as3_pushstring "list"
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
//60 15 
_as3_getlex modules.comm.awardComponent::ChestRewardComponement
//d1 
_as3_getlocal <1> 
//61 d6 01 
_as3_setproperty _watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
