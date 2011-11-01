package 
{
    import flash.system.*;
    import flash.utils.*;
    import modules.loading.*;
    import mx.core.*;
    import mx.managers.*;

    public class _cog_mx_managers_SystemManager extends SystemManager implements IFlexModuleFactory
    {
        private var _preloadedRSLs:Dictionary;

        public function _cog_mx_managers_SystemManager()
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
            var _loc_2:* = args.length == 0 ? ("cog") : (String(args[0]));
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
            return {addedToStage:"onAddedToStage()", alpha:"1.0", backgroundColor:"#000000", backgroundImage:"@Embed(\'images/comm/bg.jpg\')", cdRsls:[{rsls:["framework_3.2.0.3958.swz", "framework_3.2.0.3958.swf"], policyFiles:["", ""], digests:["3c82b2a2455b252b8595fd0113249aa19d7e8bdd516b2f6ea43244aa6d543d58", ""], types:["SHA-256", "SHA-256"], isSigned:[true, false]}], compiledLocales:["en_US"], compiledResourceBundleNames:["SharedResources", "collections", "containers", "controls", "core", "effects", "formatters", "skins", "styles"], creationComplete:"init();", currentDomain:ApplicationDomain.currentDomain, frameRate:"24", height:"590", horizontalScrollPolicy:"off", layout:"absolute", mainClassName:"cog", mixins:["_cog_FlexInit", "_richTextEditorTextAreaStyleStyle", "_LinkButtonStyle", "_DividedBoxStyle", "_alertButtonStyleStyle", "_SWFLoaderStyle", "_textAreaVScrollBarStyleStyle", "_headerDateTextStyle", "_globalStyle", "_ListBaseStyle", "_todayStyleStyle", "_TabBarStyle", "_windowStylesStyle", "_TileListStyle", "_ApplicationStyle", "_ToolTipStyle", "_ButtonBarButtonStyle", "_CursorManagerStyle", "_opaquePanelStyle", "_TextInputStyle", "_errorTipStyle", "_dateFieldPopupStyle", "_TreeStyle", "_TabStyle", "_dataGridStylesStyle", "_HRuleStyle", "_popUpMenuStyle", "_headerDragProxyStyleStyle", "_activeTabStyleStyle", "_ProgressBarStyle", "_DragManagerStyle", "_NumericStepperStyle", "_ContainerStyle", "_TextAreaStyle", "_windowStatusStyle", "_ScrollBarStyle", "_swatchPanelTextFieldStyle", "_RadioButtonStyle", "_ButtonBarStyle", "_textAreaHScrollBarStyleStyle", "_plainStyle", "_activeButtonStyleStyle", "_advancedDataGridStylesStyle", "_CheckBoxStyle", "_comboDropdownStyle", "_ButtonStyle", "_VRuleStyle", "_weekDayStyleStyle", "_linkButtonStyleStyle", "_modules_arena_champion_ArenaChampionChooseItemWatcherSetupUtil", "_modules_comm_BuildingToolTipWatcherSetupUtil", "_modules_barrack_RecruitDetailComponentWatcherSetupUtil", "_modules_help_part_GMCompomentWatcherSetupUtil", "_modules_help_part_HelpComponentWatcherSetupUtil", "_modules_advices_part_AdvicesListComponentWatcherSetupUtil", "_modules_chat_ChatPopBoxWatcherSetupUtil", "_modules_barrack_RecruitDetailComponent_inlineComponent1WatcherSetupUtil", "_modules_comm_BuildingToolTip_inlineComponent1WatcherSetupUtil", "_modules_comm_BuyAndUseWinWatcherSetupUtil", "_modules_help_HelpModuleWatcherSetupUtil", "_modules_world_GiftBagResultViewWatcherSetupUtil", "_modules_comm_ItemChatShowComponentWatcherSetupUtil", "_modules_character_ClockCanvasWatcherSetupUtil", "_modules_character_wheel_WheelPayAlertWatcherSetupUtil", "_modules_comm_HeroChatShowComponentWatcherSetupUtil", "_modules_character_loginGift_LoginGiftViewWatcherSetupUtil", "_modules_character_TaskAwardLayerWatcherSetupUtil", "_modules_advices_AdvicesViewWatcherSetupUtil", "_modules_comm_AttackWarningWatcherSetupUtil", "_modules_chat_ChatViewWatcherSetupUtil", "_modules_character_button_AdvicesIconWatcherSetupUtil", "_modules_character_wheel_WheelViewWatcherSetupUtil", "_modules_comm_AutoWalkTipWatcherSetupUtil", "_modules_character_SysBannerComponentWatcherSetupUtil", "_modules_character_PackNoticeWatcherSetupUtil", "_modules_upgrade_UpgradeModelWatcherSetupUtil", "_modules_character_TaskComponentWatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent2WatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent1WatcherSetupUtil", "_modules_alliance_AllianceTimeViewWatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent3WatcherSetupUtil", "_modules_character_OptionComponentWatcherSetupUtil", "_com_utils_RechargeAlertWatcherSetupUtil", "_modules_character_lock_LockLayerWatcherSetupUtil", "_modules_character_MyTerritoryWatcherSetupUtil", "_modules_character_ToolBarComponentWatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent1WatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent2WatcherSetupUtil", "_modules_barrack_BarrackComponent_inlineComponent1WatcherSetupUtil", "_modules_character_CharacterComponentWatcherSetupUtil", "_modules_character_EquipOperateComponentWatcherSetupUtil", "_modules_barrack_BarrackComponentWatcherSetupUtil", "_modules_character_CharacterViewWatcherSetupUtil"], modalTransparency:"0", modalTransparencyBlur:"0", modalTransparencyColor:"#00000000", modalTransparencyDuration:"0", preloader:MainPreloader, verticalScrollPolicy:"off", width:"1000"};
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
