package 
{
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;

    public class modules_hero_HeroView_mx_core_FlexModuleFactory extends FlexModuleFactory implements IFlexModuleFactory
    {
        private var _preloadedRSLs:Dictionary;

        public function modules_hero_HeroView_mx_core_FlexModuleFactory()
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
            var _loc_2:* = args.length == 0 ? ("modules.hero.HeroView") : (String(args[0]));
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
            return {compiledLocales:["en_US"], compiledResourceBundleNames:["SharedResources", "collections", "containers", "controls", "core", "effects", "formatters", "skins", "styles"], currentDomain:ApplicationDomain.currentDomain, mainClassName:"modules.hero.HeroView", mixins:["_modules_arena_champion_ArenaChampionChooseItemWatcherSetupUtil", "_modules_help_part_HelpComponentWatcherSetupUtil", "_modules_barrack_RecruitDetailComponentWatcherSetupUtil", "_modules_help_part_GMCompomentWatcherSetupUtil", "_modules_help_HelpModuleWatcherSetupUtil", "_modules_barrack_RecruitDetailComponent_inlineComponent1WatcherSetupUtil", "_modules_hero_itemRender_troopStrategySmallItemRendererWatcherSetupUtil", "_modules_advices_part_AdvicesListComponentWatcherSetupUtil", "_modules_chat_ChatPopBoxWatcherSetupUtil", "_modules_comm_BuyAndUseWinWatcherSetupUtil", "_modules_world_GiftBagResultViewWatcherSetupUtil", "_modules_comm_ItemChatShowComponentWatcherSetupUtil", "_modules_character_wheel_WheelPayAlertWatcherSetupUtil", "_modules_advices_AdvicesViewWatcherSetupUtil", "_modules_comm_AttackWarningWatcherSetupUtil", "_modules_comm_HeroChatShowComponentWatcherSetupUtil", "_modules_character_TaskAwardLayerWatcherSetupUtil", "_modules_character_loginGift_LoginGiftViewWatcherSetupUtil", "_modules_character_ClockCanvasWatcherSetupUtil", "_modules_comm_AutoWalkTipWatcherSetupUtil", "_modules_chat_ChatViewWatcherSetupUtil", "_modules_character_button_AdvicesIconWatcherSetupUtil", "_modules_character_wheel_WheelViewWatcherSetupUtil", "_modules_character_SysBannerComponentWatcherSetupUtil", "_modules_character_TaskComponentWatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent2WatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent1WatcherSetupUtil", "_modules_character_TaskComponent_inlineComponent3WatcherSetupUtil", "_modules_alliance_AllianceTimeViewWatcherSetupUtil", "_modules_character_PackNoticeWatcherSetupUtil", "_modules_character_OptionComponentWatcherSetupUtil", "_modules_comm_SoldierIsNoDataToolTipWatcherSetupUtil", "_modules_comm_SoldierToolTipsWatcherSetupUtil", "_modules_comm_SoldierToolTipssWatcherSetupUtil", "_modules_comm_HeroTooTiopsWatcherSetupUtil", "_modules_comm_SoldierToolTips_inlineComponent1WatcherSetupUtil", "_modules_comm_SoldierToolTipss_inlineComponent1WatcherSetupUtil", "_modules_character_lock_LockLayerWatcherSetupUtil", "_modules_character_ToolBarComponentWatcherSetupUtil", "_com_utils_RechargeAlertWatcherSetupUtil", "_modules_comm_CharacterToolTipsWatcherSetupUtil", "_modules_hero_HeroEquipmentTipsWatcherSetupUtil", "_modules_comm_BuildingToolTipWatcherSetupUtil", "_modules_comm_BuildingToolTip_inlineComponent1WatcherSetupUtil", "_modules_upgrade_UpgradeModelWatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent1WatcherSetupUtil", "_modules_character_MyTerritory_inlineComponent2WatcherSetupUtil", "_modules_barrack_BarrackComponent_inlineComponent1WatcherSetupUtil", "_modules_character_CharacterViewWatcherSetupUtil", "_modules_character_CharacterComponentWatcherSetupUtil", "_modules_character_MyTerritoryWatcherSetupUtil", "_modules_character_EquipOperateComponentWatcherSetupUtil", "_modules_barrack_BarrackComponentWatcherSetupUtil", "_modules_hero_HeroDeploySoliderRendererWatcherSetupUtil", "_modules_hero_HeroComponentWatcherSetupUtil", "_modules_hero_HeroEquipCompomentWatcherSetupUtil", "_modules_hero_HeroDeployComponentWatcherSetupUtil", "_modules_hero_HeroDistributeComponentWatcherSetupUtil", "_modules_hero_HeroEquipCompoment_inlineComponent1WatcherSetupUtil", "_modules_hero_itemRender_HeroItemRendererWatcherSetupUtil", "_modules_hero_itemRender_TroopStrategyDetailItemRendererWatcherSetupUtil"]};
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
