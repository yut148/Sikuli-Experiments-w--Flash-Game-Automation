package modules.pack
{
    import com.cgame.view.character.event.*;
    import flash.events.*;
    import modules.character.*;
    import modules.character.event.*;
    import modules.comm.awardComponent.*;
    import mx.modules.*;

    public class PackView extends Module implements IPackView
    {
        private var awardView:AllianceChestRewardView;
        private const VIEW_NAME:String = "package";
        private var _packComppnent:PackComponent;
        private var _equipOperateComponent:EquipOperateComponent;
        private const VIEW_LEVEL:int = 2;

        public function PackView()
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
//25 be 05 
_as3_pushshort 702
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//25 f4 03 
_as3_pushshort 500
//68 d9 01 
_as3_initproperty height
//d0 
_as3_getlocal <0> 
//5d 26 
_as3_findpropstrict modules.pack::PackComponent
//4a 26 00 
_as3_constructprop modules.pack::PackComponent(param count:0)
//68 25 
_as3_initproperty _packComppnent
//d0 
_as3_getlocal <0> 
//d0 
_as3_getlocal <0> 
//66 25 
_as3_getproperty _packComppnent
//4f da 01 01 
_as3_callpropvoid addChild(param count:1)
//d0 
_as3_getlocal <0> 
//66 25 
_as3_getproperty _packComppnent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 db 01 
_as3_getproperty SHOW_PACKAGE_OPERATE
//d0 
_as3_getlocal <0> 
//66 2f 
_as3_getproperty onShowPackageOperate
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//66 25 
_as3_getproperty _packComppnent
//60 03 
_as3_getlex flash.events::Event
//66 dd 01 
_as3_getproperty CLOSE
//d0 
_as3_getlocal <0> 
//66 2c 
_as3_getproperty closeHandler
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//47 
_as3_returnvoid 
        }// end function

        private function onClosePopup(param1:Event = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 de 01 
_as3_getlex com.cgame.common.layer::LayerController
//66 df 01 
_as3_getproperty instance
//d1 
_as3_getlocal <1> 
//66 eb 01 
_as3_getproperty target
//60 6d 
_as3_getlex mx.core::UIComponent
//87 
_as3_astypelate 
//4f e0 01 01 
_as3_callpropvoid removeComponent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function removeFromeStageHandler() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 e3 01 
_as3_getlex com.game.manager::UIManager
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//66 2e 
_as3_getproperty VIEW_LEVEL
//4f 2d 01 
_as3_callpropvoid removeView(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function addedToStageHandler() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 e3 01 
_as3_getlex com.game.manager::UIManager
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//66 2e 
_as3_getproperty VIEW_LEVEL
//d0 
_as3_getlocal <0> 
//66 24 
_as3_getproperty VIEW_NAME
//4f e4 01 02 
_as3_callpropvoid changeView(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function awardItem(param1:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//5d 23 
_as3_findpropstrict modules.comm.awardComponent::AllianceChestRewardView
//4a 23 00 
_as3_constructprop modules.comm.awardComponent::AllianceChestRewardView(param count:0)
//68 22 
_as3_initproperty awardView
//60 de 01 
_as3_getlex com.cgame.common.layer::LayerController
//d0 
_as3_getlocal <0> 
//66 22 
_as3_getproperty awardView
//26 
_as3_pushtrue 
//4f e8 01 02 
_as3_callpropvoid addWindowLayer(param count:2)
//d0 
_as3_getlocal <0> 
//66 22 
_as3_getproperty awardView
//d1 
_as3_getlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 86 02 
_as3_pushstring "????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//4f 8d 01 02 
_as3_callpropvoid setReward(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function init(param1:Object = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 25 
_as3_getproperty _packComppnent
//d1 
_as3_getlocal <1> 
//4f 29 01 
_as3_callpropvoid init(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function closeHandler(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//46 e1 01 00 
_as3_callproperty isDefaultPrevented(param count:0)
//12 05 00 00 
_as3_iffalse offset: 5
//d1 
_as3_getlocal <1> 
//4f e2 01 00 
_as3_callpropvoid preventDefault(param count:0)
//d0 
_as3_getlocal <0> 
//4f 2d 00 
_as3_callpropvoid removeView(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function removeView() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 de 01 
_as3_getlex com.cgame.common.layer::LayerController
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//4f e0 01 01 
_as3_callpropvoid removeComponent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onShowPackageOperate(param1:PackageEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//11 44 00 00 
_as3_iftrue offset: 68
//d0 
_as3_getlocal <0> 
//5d 2b 
_as3_findpropstrict modules.character::EquipOperateComponent
//4a 2b 00 
_as3_constructprop modules.character::EquipOperateComponent(param count:0)
//68 2a 
_as3_initproperty _equipOperateComponent
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//60 03 
_as3_getlex flash.events::Event
//66 dd 01 
_as3_getproperty CLOSE
//d0 
_as3_getlocal <0> 
//66 20 
_as3_getproperty onClosePopup
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//60 05 
_as3_getlex com.cgame.view.character.event::ItemEvent
//66 e5 01 
_as3_getproperty USE_ITEM
//d0 
_as3_getlocal <0> 
//66 30 
_as3_getproperty onOperateItem
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//60 05 
_as3_getlex com.cgame.view.character.event::ItemEvent
//66 e6 01 
_as3_getproperty SELL_ITEM
//d0 
_as3_getlocal <0> 
//66 30 
_as3_getproperty onOperateItem
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//60 05 
_as3_getlex com.cgame.view.character.event::ItemEvent
//66 e7 01 
_as3_getproperty PRESENT_ITEM
//d0 
_as3_getlocal <0> 
//66 30 
_as3_getproperty onOperateItem
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//60 de 01 
_as3_getlex com.cgame.common.layer::LayerController
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//26 
_as3_pushtrue 
//4f e8 01 02 
_as3_callpropvoid addWindowLayer(param count:2)
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//d1 
_as3_getlocal <1> 
//66 99 01 
_as3_getproperty data
//4f e9 01 01 
_as3_callpropvoid setEquipInfo(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onOperateItem(param1:ItemEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d ea 01 
_as3_findpropstrict dispatchEvent
//d1 
_as3_getlocal <1> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//12 0d 00 00 
_as3_iffalse offset: 13
//60 de 01 
_as3_getlex com.cgame.common.layer::LayerController
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//66 2a 
_as3_getproperty _equipOperateComponent
//4f e0 01 01 
_as3_callpropvoid removeComponent(param count:1)
//47 
_as3_returnvoid 
        }// end function

    }
}
