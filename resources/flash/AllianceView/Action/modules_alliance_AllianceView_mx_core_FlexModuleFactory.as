package 
{
    import flash.utils.*;
    import modules_alliance_AllianceView_mx_core_FlexModuleFactory.*;
    import mx.core.*;

    public class modules_alliance_AllianceView_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
    {
        private var _preloadedRSLs:Dictionary;

        public function modules_alliance_AllianceView_mx_core_FlexModuleFactory()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 a7 01 
_as3_getlex mx.core::FlexVersion
//2c c9 05 
_as3_pushstring "3.0.0"
//61 bf 02 
_as3_setproperty compatibilityVersionString
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        override public function create(... args) : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//2a 
_as3_dup 
//12 0b 00 00 
_as3_iffalse offset: 11
//29 
_as3_pop 
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//66 95 03 
_as3_getproperty {}
//60 05 
_as3_getlex String
//b3 
_as3_istypelate 
//96 
_as3_not 
//12 0a 00 00 
_as3_iffalse offset: 10
//d0 
_as3_getlocal <0> 
//04 44 
_as3_getsuper create
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//46 96 03 02 
_as3_callproperty http://adobe.com/AS3/2006/builtin::apply(param count:2)
//48 
_as3_returnvalue 
//d1 
_as3_getlocal <1> 
//66 e9 02 
_as3_getproperty length
//24 00 
_as3_pushbyte 0
//ab 
_as3_equals 
//12 07 00 00 
_as3_iffalse offset: 7
//2c cc 05 
_as3_pushstring "modules.alliance.AllianceView"
//10 0c 00 00 
_as3_jump offset: 12
//5d 05 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//24 00 
_as3_pushbyte 0
//66 95 03 
_as3_getproperty {}
//46 05 01 
_as3_callproperty String(param count:1)
//85 
_as3_coerce_s 
//85 
_as3_coerce_s 
//d6 
_as3_setlocal <2> 
//5d 0a 
_as3_findpropstrict Class
//5d 40 
_as3_findpropstrict getDefinitionByName
//d2 
_as3_getlocal <2> 
//46 40 01 
_as3_callproperty getDefinitionByName(param count:1)
//46 0a 01 
_as3_callproperty Class(param count:1)
//80 0a 
_as3_coerce Class
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//11 02 00 00 
_as3_iftrue offset: 2
//20 
_as3_pushnull 
//48 
_as3_returnvalue 
//d3 
_as3_getlocal <3> 
//42 00 
_as3_construct (param count:0)
//80 03 
_as3_coerce Object
//2a 
_as3_dup 
//63 04 
_as3_setlocal <4>
//60 a8 01 
_as3_getlex mx.core::IFlexModule
//b3 
_as3_istypelate 
//12 0d 00 00 
_as3_iffalse offset: 13
//5d a8 01 
_as3_findpropstrict mx.core::IFlexModule
//62 04 
_as3_getlocal <4>
//46 a8 01 01 
_as3_callproperty mx.core::IFlexModule(param count:1)
//d0 
_as3_getlocal <0> 
//61 a9 01 
_as3_setproperty mx.core:IFlexModule::moduleFactory
//62 04 
_as3_getlocal <4>
//48 
_as3_returnvalue 
        }// end function

        override public function allowInsecureDomain(... args) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//60 98 03 
_as3_getlex flash.system::Security
//d1 
_as3_getlocal <1> 
//4f 3f 01 
_as3_callpropvoid allowInsecureDomain(param count:1)
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//d0 
_as3_getlocal <0> 
//66 47 
_as3_getproperty modules_alliance_AllianceView_mx_core_FlexModuleFactory::_preloadedRSLs
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 34 00 00 
_as3_jump offset: 52
//09 
_as3_label 
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//1e 
_as3_nextname 
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//2c b1 06 
_as3_pushstring "allowInsecureDomainInRSL"
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//b4 
_as3_in 
//12 15 00 00 
_as3_iffalse offset: 21
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//2c b1 06 
_as3_pushstring "allowInsecureDomainInRSL"
//66 95 03 
_as3_getproperty {}
//62 05 
_as3_getlocal <5>
//d1 
_as3_getlocal <1> 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 05 
_as3_kill <5>
//32 04 03 
_as3_hasnext2 4, 3
//11 c5 ff ff 
_as3_iftrue offset: -59
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//47 
_as3_returnvoid 
        }// end function

        override public function info() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c b4 05 
_as3_pushstring "compiledLocales"
//2c cd 05 
_as3_pushstring "en_US"
//56 01 
_as3_newarray [array size:1]
//2c b5 05 
_as3_pushstring "compiledResourceBundleNames"
//2c ce 05 
_as3_pushstring "SharedResources"
//2c cf 05 
_as3_pushstring "collections"
//2c d0 05 
_as3_pushstring "containers"
//2c d1 05 
_as3_pushstring "controls"
//2c d2 05 
_as3_pushstring "core"
//2c d3 05 
_as3_pushstring "effects"
//2c d4 05 
_as3_pushstring "formatters"
//2c d5 05 
_as3_pushstring "skins"
//2c d6 05 
_as3_pushstring "styles"
//56 09 
_as3_newarray [array size:9]
//2c 8c 05 
_as3_pushstring "currentDomain"
//60 09 
_as3_getlex flash.system::ApplicationDomain
//66 97 03 
_as3_getproperty currentDomain
//2c ff 04 
_as3_pushstring "mainClassName"
//2c cc 05 
_as3_pushstring "modules.alliance.AllianceView"
//2c f4 04 
_as3_pushstring "mixins"
//2c d7 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceBaseViewWatcherSetupUtil"
//2c d8 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceNPCServiceWatcherSetupUtil"
//2c d9 05 
_as3_pushstring "_modules_alliance_allianceFigthReport_AllianceFightReportWatcherSetupUtil"
//2c da 05 
_as3_pushstring "_modules_alliance_allianceAdministrate_AllianceAdministratorViewWatcherSetupUtil"
//2c db 05 
_as3_pushstring "_modules_alliance_allianceCity_AllianceBattleCityListViewWatcherSetupUtil"
//2c dc 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceOverviewComponentWatcherSetupUtil"
//2c dd 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceBusinessman_HonourExchangeViewWatcherSetupUtil"
//2c de 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceAffairs_AllianceDonateViewWatcherSetupUtil"
//2c df 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceChest_AllianceChestComponementWatcherSetupUtil"
//2c e0 05 
_as3_pushstring "_modules_alliance_allianceBase_part_AllianceAnnouncementPopWatcherSetupUtil"
//2c e1 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceNewsComponentWatcherSetupUtil"
//2c e2 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceTableInfoWatcherSetupUtil"
//2c e3 05 
_as3_pushstring "_modules_alliance_allianceFightReady_AllianceIntoBattleWatcherSetupUtil"
//2c e4 05 
_as3_pushstring "_modules_alliance_allianceFightReady_AllianceBattlerDeployWatcherSetupUtil"
//2c e5 05 
_as3_pushstring "_com_utils_RechargeAlertWatcherSetupUtil"
//2c e6 05 
_as3_pushstring "_modules_alliance_allianceAdministrate_AllianceUpgradePopWatcherSetupUtil"
//2c e7 05 
_as3_pushstring "_modules_alliance_allianceDecorate_AllianceBadgePurchaseWatcherSetupUtil"
//2c e8 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceBaseUpgradeWatcherSetupUtil"
//2c e9 05 
_as3_pushstring "_modules_alliance_allianceAdministrate_AllianceAppointedPopWatcherSetupUtil"
//2c ea 05 
_as3_pushstring "_modules_alliance_allianceAdministrate_part_AllianceinfoItemWatcherSetupUtil"
//2c eb 05 
_as3_pushstring "_modules_alliance_allianceCity_AllianceBattleCityItemWatcherSetupUtil"
//2c ec 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceMyComponentWatcherSetupUtil"
//2c ed 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceListComponementWatcherSetupUtil"
//2c ee 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceSummaryComponentWatcherSetupUtil"
//2c ef 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceBattleinfoWatcherSetupUtil"
//2c f0 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceBusinessman_HonourExchangeItemWatcherSetupUtil"
//2c f1 05 
_as3_pushstring "_modules_comm_awardComponent_AllianceChestRewardViewWatcherSetupUtil"
//2c f2 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceChest_AlliancePresentExplainComponementWatcherSetupUtil"
//2c f3 05 
_as3_pushstring "_modules_alliance_allianceFightReady_AllianceBattlerDeployItemWatcherSetupUtil"
//2c f4 05 
_as3_pushstring "_modules_alliance_allianceFigthReport_part_AllianceFightReportReplayWatcherSetupUtil"
//2c f5 05 
_as3_pushstring "_modules_alliance_allianceFigthReport_part_AllianceFightReportMembersWatcherSetupUtil"
//2c f6 05 
_as3_pushstring "_modules_alliance_allianceOverview_AllianceNavigationWatcherSetupUtil"
//2c f7 05 
_as3_pushstring "_modules_alliance_allianceMember_allianceBusinessman_HonourIntroWatcherSetupUtil"
//2c f8 05 
_as3_pushstring "_modules_alliance_allianceDecorate_AllianceBadgeItemWatcherSetupUtil"
//2c f9 05 
_as3_pushstring "_modules_alliance_allianceBase_AllianceBaseUpgradeItemWatcherSetupUtil"
//2c fa 05 
_as3_pushstring "_modules_alliance_allianceOverview_part_MyAllianceMemberItemRenderWatcherSetupUtil"
//2c fb 05 
_as3_pushstring "_modules_alliance_allianceOverview_part_MyAllianceApplyItemRenderWatcherSetupUtil"
//2c fc 05 
_as3_pushstring "_modules_alliance_allianceOverview_CreateAlliancePopComponentWatcherSetupUtil"
//2c fd 05 
_as3_pushstring "_modules_alliance_allianceOverview_part_AllianceListItemRenderWatcherSetupUtil"
//2c fe 05 
_as3_pushstring "_modules_comm_awardComponent_ChestRewardComponementWatcherSetupUtil"
//2c ff 05 
_as3_pushstring "_modules_alliance_allianceFightReady_AllianceFightPlayerHeadIconWatcherSetupUtil"
//2c 80 06 
_as3_pushstring "_modules_comm_VipSmallIconWatcherSetupUtil"
//2c 81 06 
_as3_pushstring "_modules_character_TaskAwardLayerWatcherSetupUtil"
//2c 82 06 
_as3_pushstring "_modules_comm_ChooseCurrencyWatcherSetupUtil"
//2c 83 06 
_as3_pushstring "_modules_comm_awardComponent_ChestRewardItemWatcherSetupUtil"
//2c 84 06 
_as3_pushstring "_modules_character_lock_LockLayerWatcherSetupUtil"
//2c 85 06 
_as3_pushstring "_modules_comm_AutoWalkTipWatcherSetupUtil"
//2c 86 06 
_as3_pushstring "_modules_character_CharacterViewWatcherSetupUtil"
//2c 87 06 
_as3_pushstring "_modules_advices_AdvicesViewWatcherSetupUtil"
//2c 88 06 
_as3_pushstring "_modules_chat_ChatViewWatcherSetupUtil"
//2c 89 06 
_as3_pushstring "_modules_character_EquipOperateComponentWatcherSetupUtil"
//2c 8a 06 
_as3_pushstring "_modules_character_ToolBarComponentWatcherSetupUtil"
//2c 8b 06 
_as3_pushstring "_modules_character_TaskComponentWatcherSetupUtil"
//2c 8c 06 
_as3_pushstring "_modules_character_CharacterComponentWatcherSetupUtil"
//2c 8d 06 
_as3_pushstring "_modules_character_SysBannerComponentWatcherSetupUtil"
//2c 8e 06 
_as3_pushstring "_modules_character_button_AdvicesIconWatcherSetupUtil"
//2c 8f 06 
_as3_pushstring "_modules_character_PackNoticeWatcherSetupUtil"
//2c 90 06 
_as3_pushstring "_modules_alliance_AllianceTimeViewWatcherSetupUtil"
//2c 91 06 
_as3_pushstring "_modules_character_MyTerritoryWatcherSetupUtil"
//2c 92 06 
_as3_pushstring "_modules_upgrade_UpgradeModelWatcherSetupUtil"
//2c 93 06 
_as3_pushstring "_modules_advices_part_AdvicesListComponentWatcherSetupUtil"
//2c 94 06 
_as3_pushstring "_modules_character_OptionComponentWatcherSetupUtil"
//2c 95 06 
_as3_pushstring "_modules_comm_AttackWarningWatcherSetupUtil"
//2c 96 06 
_as3_pushstring "_modules_world_GiftBagResultViewWatcherSetupUtil"
//2c 97 06 
_as3_pushstring "_modules_help_HelpModuleWatcherSetupUtil"
//2c 98 06 
_as3_pushstring "_modules_chat_ChatPopBoxWatcherSetupUtil"
//2c 99 06 
_as3_pushstring "_modules_comm_ItemChatShowComponentWatcherSetupUtil"
//2c 9a 06 
_as3_pushstring "_modules_comm_HeroChatShowComponentWatcherSetupUtil"
//2c 9b 06 
_as3_pushstring "_modules_character_TaskComponent_inlineComponent2WatcherSetupUtil"
//2c 9c 06 
_as3_pushstring "_modules_character_TaskComponent_inlineComponent1WatcherSetupUtil"
//2c 9d 06 
_as3_pushstring "_modules_character_TaskComponent_inlineComponent3WatcherSetupUtil"
//2c 9e 06 
_as3_pushstring "_modules_character_ClockCanvasWatcherSetupUtil"
//2c 9f 06 
_as3_pushstring "_modules_character_wheel_WheelViewWatcherSetupUtil"
//2c a0 06 
_as3_pushstring "_modules_character_loginGift_LoginGiftViewWatcherSetupUtil"
//2c a1 06 
_as3_pushstring "_modules_character_MyTerritory_inlineComponent1WatcherSetupUtil"
//2c a2 06 
_as3_pushstring "_modules_character_MyTerritory_inlineComponent2WatcherSetupUtil"
//2c a3 06 
_as3_pushstring "_modules_help_part_GMCompomentWatcherSetupUtil"
//2c a4 06 
_as3_pushstring "_modules_help_part_HelpComponentWatcherSetupUtil"
//2c a5 06 
_as3_pushstring "_modules_barrack_BarrackComponentWatcherSetupUtil"
//2c a6 06 
_as3_pushstring "_modules_barrack_RecruitDetailComponentWatcherSetupUtil"
//2c a7 06 
_as3_pushstring "_modules_comm_BuildingToolTipWatcherSetupUtil"
//2c a8 06 
_as3_pushstring "_modules_arena_champion_ArenaChampionChooseItemWatcherSetupUtil"
//2c a9 06 
_as3_pushstring "_modules_character_wheel_WheelPayAlertWatcherSetupUtil"
//2c aa 06 
_as3_pushstring "_modules_comm_BuyAndUseWinWatcherSetupUtil"
//2c ab 06 
_as3_pushstring "_modules_barrack_BarrackComponent_inlineComponent1WatcherSetupUtil"
//2c ac 06 
_as3_pushstring "_modules_barrack_RecruitDetailComponent_inlineComponent1WatcherSetupUtil"
//2c ad 06 
_as3_pushstring "_modules_comm_BuildingToolTip_inlineComponent1WatcherSetupUtil"
//2c ae 06 
_as3_pushstring "_modules_alliance_allianceMember_allianceAffairs_allianceTask_AllianceSelectTaskInfoCanvasWatcherSetupUtil"
//56 58 
_as3_newarray [array size:88]
//55 05 
_as3_newobject {object count:5}
//48 
_as3_returnvalue 
        }// end function

        override public function get preloadedRSLs() : Dictionary
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 47 
_as3_getproperty modules_alliance_AllianceView_mx_core_FlexModuleFactory::_preloadedRSLs
//20 
_as3_pushnull 
//14 09 00 00 
_as3_ifne offset: 9
//d0 
_as3_getlocal <0> 
//5d 01 
_as3_findpropstrict flash.utils::Dictionary
//26 
_as3_pushtrue 
//4a 01 01 
_as3_constructprop flash.utils::Dictionary(param count:1)
//68 47 
_as3_initproperty modules_alliance_AllianceView_mx_core_FlexModuleFactory::_preloadedRSLs
//d0 
_as3_getlocal <0> 
//66 47 
_as3_getproperty modules_alliance_AllianceView_mx_core_FlexModuleFactory::_preloadedRSLs
//48 
_as3_returnvalue 
        }// end function

        override public function allowDomain(... args) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//60 98 03 
_as3_getlex flash.system::Security
//d1 
_as3_getlocal <1> 
//4f 3e 01 
_as3_callpropvoid allowDomain(param count:1)
//24 00 
_as3_pushbyte 0
//d7 
_as3_setlocal <3> 
//d0 
_as3_getlocal <0> 
//66 47 
_as3_getproperty modules_alliance_AllianceView_mx_core_FlexModuleFactory::_preloadedRSLs
//82 
_as3_coerce_a 
//63 04 
_as3_setlocal <4>
//10 34 00 00 
_as3_jump offset: 52
//09 
_as3_label 
//62 04 
_as3_getlocal <4>
//d3 
_as3_getlocal <3> 
//1e 
_as3_nextname 
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//76 
_as3_convert_b 
//2a 
_as3_dup 
//12 09 00 00 
_as3_iffalse offset: 9
//29 
_as3_pop 
//2c b0 06 
_as3_pushstring "allowDomainInRSL"
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//b4 
_as3_in 
//12 15 00 00 
_as3_iffalse offset: 21
//d2 
_as3_getlocal <2> 
//66 99 03 
_as3_getproperty content
//2a 
_as3_dup 
//63 05 
_as3_setlocal <5>
//2c b0 06 
_as3_pushstring "allowDomainInRSL"
//66 95 03 
_as3_getproperty {}
//62 05 
_as3_getlocal <5>
//d1 
_as3_getlocal <1> 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 05 
_as3_kill <5>
//32 04 03 
_as3_hasnext2 4, 3
//11 c5 ff ff 
_as3_iftrue offset: -59
//08 04 
_as3_kill <4>
//08 03 
_as3_kill <3>
//47 
_as3_returnvoid 
        }// end function

    }
}
