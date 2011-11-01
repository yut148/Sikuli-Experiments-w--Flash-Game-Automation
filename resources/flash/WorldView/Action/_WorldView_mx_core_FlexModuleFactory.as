package 
{
    import _WorldView_mx_core_FlexModuleFactory.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;

    public class _WorldView_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
    {
        private var _preloadedRSLs:Dictionary;

        public function _WorldView_mx_core_FlexModuleFactory()
        {
            FlexVersion.compatibilityVersionString = "3.0.0";
            return;
        }// end function

        override public function create(... args) : Object
        {
            if (args.length > 0 && !(args[0] is String))
            {
                return super.create.apply(this, args);
            }// end if
            var _loc_2:* = args.length == 0 ? ("modules.world.WorldView") : (String(args[0]));
            var _loc_3:* = Class(getDefinitionByName(_loc_2));
            if (!_loc_3)
            {
                return null;
            }// end if
            var _loc_4:* = new _loc_3;
            if (new _loc_3 is IFlexModule)
            {
                IFlexModule(_loc_4).moduleFactory = this;
            }// end if
            return _loc_4;
        }// end function

        override public function allowInsecureDomain(... args) : void
        {
            var _loc_2:Object;
            Security.allowInsecureDomain(args);
            for (_loc_2 in this._preloadedRSLs)
            {
                // label
                if (_loc_2.content && "allowInsecureDomainInRSL" in _loc_2.content)
                {
                    var _loc_5:* = _loc_2.content;
                    _loc_5._loc_2.content["allowInsecureDomainInRSL"](args);
                }// end if
            }// end of for ... in
            return;
        }// end function

        override public function info() : Object
        {
            return {compiledLocales:["en_US"], compiledResourceBundleNames:["SharedResources", "collections", "containers", "controls", "core", "effects", "formatters", "skins", "styles"], currentDomain:ApplicationDomain.currentDomain, height:"590", initialize:"init()", layout:"absolute", mainClassName:"modules.world.WorldView", mixins:["_WorldView_FlexInit", "_richTextEditorTextAreaStyleStyle", "_LinkButtonStyle", "_DividedBoxStyle", "_alertButtonStyleStyle", "_SWFLoaderStyle", "_textAreaVScrollBarStyleStyle", "_headerDateTextStyle", "_globalStyle", "_ListBaseStyle", "_todayStyleStyle", "_TabBarStyle", "_windowStylesStyle", "_TileListStyle", "_ApplicationStyle", "_ToolTipStyle", "_ButtonBarButtonStyle", "_CursorManagerStyle", "_opaquePanelStyle", "_TextInputStyle", "_errorTipStyle", "_dateFieldPopupStyle", "_TreeStyle", "_TabStyle", "_dataGridStylesStyle", "_HRuleStyle", "_popUpMenuStyle", "_headerDragProxyStyleStyle", "_activeTabStyleStyle", "_ProgressBarStyle", "_DragManagerStyle", "_NumericStepperStyle", "_ContainerStyle", "_TextAreaStyle", "_windowStatusStyle", "_ScrollBarStyle", "_swatchPanelTextFieldStyle", "_RadioButtonStyle", "_ButtonBarStyle", "_textAreaHScrollBarStyleStyle", "_plainStyle", "_activeButtonStyleStyle", "_advancedDataGridStylesStyle", "_CheckBoxStyle", "_comboDropdownStyle", "_ButtonStyle", "_VRuleStyle", "_weekDayStyleStyle", "_linkButtonStyleStyle", "_modules_world_TaskAcceptComponentWatcherSetupUtil", "_modules_world_exchangeView_ExchangeBaseViewWatcherSetupUtil", "_modules_world_TaskProgressComponentWatcherSetupUtil", "_modules_world_rewardTaskView_RewardTaskComponentWatcherSetupUtil", "_modules_comm_BuyAndUseWinWatcherSetupUtil", "_modules_comm_awardComponent_AllianceChestRewardViewWatcherSetupUtil", "_modules_world_NPCTaskWatcherSetupUtil", "_modules_world_CandidateRefreshCompontentWatcherSetupUtil", "_modules_world_CandidateComponentWatcherSetupUtil", "_modules_world_TaskCompletedComponentWatcherSetupUtil", "_modules_world_rewardTaskView_RewardTaskRefreshLayerWatcherSetupUtil", "_modules_world_MonsterListComponentWatcherSetupUtil", "_modules_world_NpcBuildingPopUpWinWatcherSetupUtil", "_modules_world_part_TaskTrackItemViewWatcherSetupUtil", "_modules_character_TaskAwardLayerWatcherSetupUtil", "_modules_world_exchangeView_ExchangeItemWatcherSetupUtil", "_modules_world_rewardTaskView_RewardTaskInfoViewWatcherSetupUtil", "_modules_comm_awardComponent_ChestRewardComponementWatcherSetupUtil", "_modules_world_NPCTask_inlineComponent1WatcherSetupUtil", "_modules_world_CandidateComponent_inlineComponent1WatcherSetupUtil", "_com_utils_RechargeAlertWatcherSetupUtil", "_modules_world_rewardTaskView_RewardTaskRefreshItemViewWatcherSetupUtil", "_modules_comm_PageComponentWatcherSetupUtil", "_modules_world_MonsterListComponent_inlineComponent1WatcherSetupUtil", "_modules_world_NPClistComponent_inlineComponent1WatcherSetupUtil", "_modules_world_CandidateRefreshStyleRendererWatcherSetupUtil", "_modules_world_part_ItemIconViewWatcherSetupUtil", "_modules_comm_awardComponent_ChestRewardItemWatcherSetupUtil", "_modules_comm_VipSmallIconWatcherSetupUtil", "_modules_character_lock_LockLayerWatcherSetupUtil", "_modules_comm_AutoWalkTipWatcherSetupUtil", "_modules_character_CharacterViewWatcherSetupUtil", "_modules_advices_AdvicesViewWatcherSetupUtil", "_modules_chat_ChatViewWatcherSetupUtil", "_modules_upgrade_UpgradeModelWatcherSetupUtil", "_modules_character_EquipOperateComponentWatcherSetupUtil", "_modules_character_ToolBarComponentWatcherSetupUtil", "_modules_character_CharacterComponentWatcherSetupUtil", "_modules_character_SysBannerComponentWatcherSetupUtil", "_modules_character_TaskComponentWatcherSetupUtil", "_modules_character_button_AdvicesIconWatcherSetupUtil", "_modules_character_PackNoticeWatcherSetupUtil", "_modules_alliance_AllianceTimeViewWatcherSetupUtil", "_modules_character_MyTerritoryWatcherSetupUtil", "_modules_advices_part_AdvicesListComponentWatcherSetupUtil", "_modules_comm_AttackWarningWatcherSetupUtil", "_modules_world_GiftBagResultViewWatcherSetupUtil", "_modules_character_OptionComponentWatcherSetupUtil", "_modules_help_HelpModuleWatcherSetupUtil", "_modules_comm_ItemChatShowComponentWatcherSetupUtil", "_modules_comm_HeroChatShowComponentWatcherSetupUtil", "_modules_chat_ChatPopBoxWatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent2WatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent1WatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent3WatcherSetupUtil", "_modules_character_ClockCanvasWatcherSetupUtil", "_modules_character_wheel_WheelViewWatcherSetupUtil", "_modules_character_loginGift_LoginGiftViewWatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent1WatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent2WatcherSetupUtil", "_modules_arena_champion_ArenaChampionChooseItemWatcherSetupUtil", "_modules_barrack_BarrackComponentWatcherSetupUtil", "_modules_barrack_RecruitDetailComponentWatcherSetupUtil", "_modules_comm_BuildingToolTipWatcherSetupUtil", "_modules_help_part_GMCompomentWatcherSetupUtil", "_modules_help_part_HelpComponentWatcherSetupUtil", "_modules_character_wheel_WheelPayAlertWatcherSetupUtil", "_modules_barrack_BarrackComponent_inlineComponent1WatcherSetupUtil", "_modules_barrack_RecruitDetailComponent_inlineComponent1WatcherSetupUtil", "_modules_comm_BuildingToolTip_inlineComponent1WatcherSetupUtil", "_modules_world_part_TaskTrackComponentWatcherSetupUtil", "_modules_world_part_WorldPlayerItemWatcherSetupUtil"], width:"1000"};
        }// end function

        override public function get preloadedRSLs() : Dictionary
        {
            if (this._preloadedRSLs == null)
            {
                this._preloadedRSLs = new Dictionary(true);
            }// end if
            return this._preloadedRSLs;
        }// end function

        override public function allowDomain(... args) : void
        {
            var _loc_2:Object;
            Security.allowDomain(args);
            for (_loc_2 in this._preloadedRSLs)
            {
                // label
                if (_loc_2.content && "allowDomainInRSL" in _loc_2.content)
                {
                    var _loc_5:* = _loc_2.content;
                    _loc_5._loc_2.content["allowDomainInRSL"](args);
                }// end if
            }// end of for ... in
            return;
        }// end function

    }
}
