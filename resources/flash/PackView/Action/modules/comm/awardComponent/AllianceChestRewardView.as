package modules.comm.awardComponent
{
    import com.game.common.*;
    import flash.events.*;
    import mx.binding.*;
    import mx.core.*;

    public class AllianceChestRewardView extends TitleBorderCanvas implements IBindingClient
    {
        private var _543826417chestrewardCom:ChestRewardComponement;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _703170277_titleLabel:String;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function AllianceChestRewardView()
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
//60 31 
_as3_getlex com.game.common::TitleBorderCanvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 a4 01 
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
//25 8a 03 
_as3_pushshort 394
//2c ef 01 
_as3_pushstring "height"
//25 ec 02 
_as3_pushshort 364
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 15 
_as3_getlex modules.comm.awardComponent::ChestRewardComponement
//2c c1 02 
_as3_pushstring "id"
//2c a4 01 
_as3_pushstring "chestrewardCom"
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 a1 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 0e 
_as3_pushbyte 14
//2c 90 02 
_as3_pushstring "y"
//24 23 
_as3_pushbyte 35
//55 02 
_as3_newobject {object count:2}
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
//60 68 
_as3_getlex mx.controls::Button
//2c d4 02 
_as3_pushstring "events"
//2c d5 02 
_as3_pushstring "click"
//2c 9f 01 
_as3_pushstring "___AllianceChestRewardView_Button1_click"
//55 01 
_as3_newobject {object count:1}
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 a2 01 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c c5 02 
_as3_pushstring "center"
//61 cd 02 
_as3_setproperty textAlign
//d0 
_as3_getlocal <0> 
//2d 04 
_as3_pushint 14666298
//61 ce 02 
_as3_setproperty color
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 a3 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//2f 01 
_as3_pushdouble 128.5
//2c 90 02 
_as3_pushstring "y"
//25 aa 02 
_as3_pushshort 298
//2c a1 03 
_as3_pushstring "label"
//2c c9 03 
_as3_pushstring "Close"
//2c ee 01 
_as3_pushstring "width"
//25 89 01 
_as3_pushshort 137
//2c ef 01 
_as3_pushstring "height"
//24 24 
_as3_pushbyte 36
//2c 91 02 
_as3_pushstring "styleName"
//2c ca 03 
_as3_pushstring "flowerBorderBtn"
//2c d2 02 
_as3_pushstring "buttonMode"
//26 
_as3_pushtrue 
//55 07 
_as3_newobject {object count:7}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 02 
_as3_newarray [array size:2]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//68 8c 01 
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
//25 8a 03 
_as3_pushshort 394
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//25 ec 02 
_as3_pushshort 364
//68 d9 01 
_as3_initproperty height
//d0 
_as3_getlocal <0> 
//27 
_as3_pushfalse 
//68 cf 02 
_as3_initproperty showClose
//d0 
_as3_getlocal <0> 
//2c e8 02 
_as3_pushstring "recruit"
//68 8d 02 
_as3_initproperty styleName
//47 
_as3_returnvoid 
        }// end function

        public function ___AllianceChestRewardView_Button1_click(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 8a 01 00 
_as3_callpropvoid onConfirm(param count:0)
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
//80 23 
_as3_coerce modules.comm.awardComponent::AllianceChestRewardView
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
//66 8c 01 
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
//46 89 01 00 
_as3_callproperty _AllianceChestRewardView_bindingsSetup(param count:0)
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
//80 23 
_as3_coerce modules.comm.awardComponent::AllianceChestRewardView
//6d 03 
_as3_setslot <3>
//60 d4 01 
_as3_getlex _watcherSetupUtil
//20 
_as3_pushnull 
//14 22 00 00 
_as3_ifne offset: 34
//65 01 
_as3_getscopeobject 1
//5d 93 02 
_as3_findpropstrict flash.utils::getDefinitionByName
//2c c5 01 
_as3_pushstring "_modules_comm_awardComponent_AllianceChestRewardViewWatcherSetupUtil"
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
//66 d1 02 
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
//60 d4 01 
_as3_getlex _watcherSetupUtil
//d0 
_as3_getlocal <0> 
//40 a6 01 
_as3_newfunction 
                function (param1:String)
                {
//60 d0 02 
_as3_getlex modules.comm.awardComponent::target
//d1 
_as3_getlocal <1> 
//66 d1 02 
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
//66 d1 02 
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
//46 d2 02 01 
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
//46 d2 02 01 
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

        private function _AllianceChestRewardView_bindingExprs() : void
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
//d0 
_as3_getlocal <0> 
//66 88 01 
_as3_getproperty _titleLabel
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//47 
_as3_returnvoid 
        }// end function

        private function get _titleLabel() : String
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 8e 01 
_as3_getproperty _703170277_titleLabel
//48 
_as3_returnvalue 
        }// end function

        private function _AllianceChestRewardView_bindingsSetup() : Array
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
//40 ab 01 
_as3_newfunction 
                function () : String
                {
//60 88 01 
_as3_getlex _titleLabel
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

//40 ac 01 
_as3_newfunction 
                function (param1:String) : void
                {
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 d7 02 
_as3_setproperty title
//47 
_as3_returnvoid 
                }// end function

//2c ae 03 
_as3_pushstring "this.title"
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
//61 d1 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//48 
_as3_returnvalue 
        }// end function

        private function onConfirm() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d ea 01 
_as3_findpropstrict dispatchEvent
//5d 0b 
_as3_findpropstrict mx.events::CloseEvent
//60 0b 
_as3_getlex mx.events::CloseEvent
//66 dd 01 
_as3_getproperty CLOSE
//4a 0b 01 
_as3_constructprop mx.events::CloseEvent(param count:1)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set chestrewardCom(param1:ChestRewardComponement) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 85 01 
_as3_getproperty _543826417chestrewardCom
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
//61 85 01 
_as3_setproperty _543826417chestrewardCom
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c a4 01 
_as3_pushstring "chestrewardCom"
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

        public function get chestrewardCom() : ChestRewardComponement
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 85 01 
_as3_getproperty _543826417chestrewardCom
//48 
_as3_returnvalue 
        }// end function

        public function setReward(param1:Array, param2:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d2 
_as3_getlocal <2> 
//68 88 01 
_as3_initproperty _titleLabel
//d0 
_as3_getlocal <0> 
//66 8b 01 
_as3_getproperty chestrewardCom
//d1 
_as3_getlocal <1> 
//4f 8d 01 01 
_as3_callpropvoid setReward(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function set _titleLabel(param1:String) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 8e 01 
_as3_getproperty _703170277_titleLabel
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
//61 8e 01 
_as3_setproperty _703170277_titleLabel
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c a1 01 
_as3_pushstring "_titleLabel"
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
//61 d4 01 
_as3_setproperty _watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
