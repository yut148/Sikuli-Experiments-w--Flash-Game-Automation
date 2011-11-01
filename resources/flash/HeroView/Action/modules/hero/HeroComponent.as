package modules.hero
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.common.layer.*;
    import com.cgame.config.*;
    import com.cgame.view.guide.event.*;
    import com.game.common.*;
    import com.game.manager.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HeroComponent extends TitleBorderCanvas implements IBindingClient
    {
        private var _currentHeroSelectedIndex:int;
        private var _881387426tabbar:TabBar;
        private var _2020240298heroEquip:HeroEquipCompoment;
        var _watchers:Array;
        private var _creationCompleted:Boolean = false;
        private var _508010134viewStackHeros:ViewStack;
        public const ViewLevel:int = 2;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var characterHerosList:CharacterHerosList;
        private var _1757202817heroDeploy:HeroDeployComponent;
        private var _146424953heroDistrubute:HeroDistributeComponent;
        var _bindings:Array;
        public const ViewName:String = "hero";
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroComponent()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:TitleBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:864, height:522, childDescriptors:[new UIComponentDescriptor({type:ViewStack, id:"viewStackHeros", events:{change:"__viewStackHeros_change"}, propertiesFactory:
function () : Object
{
    return {x:17, y:71, childDescriptors:[new UIComponentDescriptor({type:HeroDistributeComponent, id:"heroDistrubute", propertiesFactory:
function () : Object
{
    return {width:829, height:437};
}// end function
}), new UIComponentDescriptor({type:HeroEquipCompoment, id:"heroEquip", propertiesFactory:
function () : Object
{
    return {width:829, height:437};
}// end function
}), new UIComponentDescriptor({type:HeroDeployComponent, id:"heroDeploy", propertiesFactory:
function () : Object
{
    return {width:829, height:437};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:TabBar, id:"tabbar", stylesFactory:
function () : void
{
    this.tabWidth = 165;
    this.horizontalGap = 5;
    this.tabStyleName = "herocomponentTabBarButton1";
    this.selectedTabTextStyleName = "herocomponentTabBarSelectText";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {selectedIndex:0, x:28, y:45};
}// end function
})]};
}// end function
});
            this.characterHerosList = CacheManager.getInstance().getCache(CacheType.HERO_INFO) as CharacterHerosList;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.styleName = "myterritoryBg";
            this.cacheAsBitmap = true;
            this.title = "Hero";
            this.showHelp = true;
            this.width = 864;
            this.height = 522;
            this.addEventListener("creationComplete", this.___HeroComponent_TitleBorderCanvas1_creationComplete);
            this.addEventListener("addedToStage", this.___HeroComponent_TitleBorderCanvas1_addedToStage);
            this.addEventListener("removedFromStage", this.___HeroComponent_TitleBorderCanvas1_removedFromStage);
            return;
        }// end function

        public function get heroDeploy() : HeroDeployComponent
        {
            return this._1757202817heroDeploy;
        }// end function

        public function set heroDeploy(param1:HeroDeployComponent) : void
        {
            var _loc_2:* = this._1757202817heroDeploy;
            if (_loc_2 !== param1)
            {
                this._1757202817heroDeploy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroDeploy", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get heroDistrubute() : HeroDistributeComponent
        {
            return this._146424953heroDistrubute;
        }// end function

        public function set heroDistrubute(param1:HeroDistributeComponent) : void
        {
            var _loc_2:* = this._146424953heroDistrubute;
            if (_loc_2 !== param1)
            {
                this._146424953heroDistrubute = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroDistrubute", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HeroComponent;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroComponent_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroComponentWatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }// end if
            _watcherSetupUtil.setup(this, 
function (param1:String)
{
    return target[param1];
}// end function
, bindings, watchers);
            var i:uint;
            while (i < bindings.length)
            {
                // label
                Binding(bindings[i]).execute();
                i = i++;
            }// end while
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }// end function

        public function ___HeroComponent_TitleBorderCanvas1_addedToStage(param1:Event) : void
        {
            this.onAddedToStage();
            return;
        }// end function

        private function _HeroComponent_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    heroDistrubute.label = param1;
    return;
}// end function
, "heroDistrubute.label");
            result[0] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    heroEquip.label = param1;
    return;
}// end function
, "heroEquip.label");
            result[1] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    heroDeploy.label = param1;
    return;
}// end function
, "heroDeploy.label");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return viewStackHeros;
}// end function
, 
function (param1:Object) : void
{
    tabbar.dataProvider = param1;
    return;
}// end function
, "tabbar.dataProvider");
            result[3] = binding;
            return result;
        }// end function

        public function setEcquipItems() : void
        {
            if (this.heroEquip)
            {
                this.heroEquip.setEcquipItems();
            }// end if
            return;
        }// end function

        public function __viewStackHeros_change(param1:IndexChangedEvent) : void
        {
            this.onViewChange(param1);
            return;
        }// end function

        public function setTroopstrategyRes() : void
        {
            if (this.heroDistrubute)
            {
                this.heroDistrubute.setTroopstrategyRes();
            }// end if
            return;
        }// end function

        public function init() : void
        {
            callLater(
function () : void
{
    if (tabbar.selectedIndex == -1)
    {
        tabbar.selectedIndex = 0;
    }// end if
    indexChange(tabbar.selectedIndex);
    return;
}// end function
);
            return;
        }// end function

        private function indexChange(param1:int) : void
        {
            if (param1 == 0)
            {
                this.heroDistrubute.init();
            }
            else if (param1 == 1)
            {
                this.heroEquip.init();
            }
            else if (param1 == 2)
            {
                this.heroDeploy.init();
            }// end else if
            return;
        }// end function

        public function ___HeroComponent_TitleBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.onCreationComplete();
            return;
        }// end function

        private function onAddedToStage() : void
        {
            switch(this.viewStackHeros.selectedIndex)
            {
                case 0:
                {
                    break;
                }// end case
                case 1:
                {
                    break;
                }// end case
                case 2:
                {
                    break;
                }// end case
                case 3:
                {
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            if (this._creationCompleted)
            {
                LayerController.removeMouseUnableLayer();
            }// end if
            return;
        }// end function

        public function get currentHeroSelectedIndex() : int
        {
            return this._currentHeroSelectedIndex;
        }// end function

        public function get viewStackHeros() : ViewStack
        {
            return this._508010134viewStackHeros;
        }// end function

        private function onCreationComplete() : void
        {
            this._creationCompleted = true;
            LayerController.removeMouseUnableLayer();
            return;
        }// end function

        public function set heroEquip(param1:HeroEquipCompoment) : void
        {
            var _loc_2:* = this._2020240298heroEquip;
            if (_loc_2 !== param1)
            {
                this._2020240298heroEquip = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroEquip", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set tabbar(param1:TabBar) : void
        {
            var _loc_2:* = this._881387426tabbar;
            if (_loc_2 !== param1)
            {
                this._881387426tabbar = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tabbar", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set viewStackHeros(param1:ViewStack) : void
        {
            var _loc_2:* = this._508010134viewStackHeros;
            if (_loc_2 !== param1)
            {
                this._508010134viewStackHeros = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "viewStackHeros", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function handleGuideEvent(param1:GuideEvent) : void
        {
            dispatchEvent(param1.clone());
            return;
        }// end function

        public function set currentHeroSelectedIndex(param1:int) : void
        {
            this._currentHeroSelectedIndex = param1;
            return;
        }// end function

        public function fireHero(param1:int) : void
        {
            if (this.heroDistrubute)
            {
                this.heroDistrubute.fireHero(param1);
            }// end if
            return;
        }// end function

        public function get heroEquip() : HeroEquipCompoment
        {
            return this._2020240298heroEquip;
        }// end function

        public function get tabbar() : TabBar
        {
            return this._881387426tabbar;
        }// end function

        public function ___HeroComponent_TitleBorderCanvas1_removedFromStage(param1:Event) : void
        {
            this.onRemovedFromStage();
            return;
        }// end function

        public function guideTragHero() : void
        {
            if (this.heroDistrubute)
            {
                this.heroDistrubute.guideTragHero();
            }// end if
            return;
        }// end function

        public function setViewIndex(param1:int) : void
        {
            var index:* = param1;
            callLater(
function () : void
{
    tabbar.selectedIndex = index;
    indexChange(index);
    return;
}// end function
);
            return;
        }// end function

        public function updateHeroByHeroId(param1:int) : void
        {
            var _loc_2:* = this.characterHerosList.getHeroById(param1);
            if (this.heroEquip)
            {
                this.heroEquip.updateHero(_loc_2);
            }// end if
            if (this.heroDeploy)
            {
                this.heroDeploy.updateHero(_loc_2);
            }// end if
            if (this.heroDistrubute)
            {
                this.heroDistrubute.updateHero(_loc_2);
            }// end if
            return;
        }// end function

        private function onRemovedFromStage() : void
        {
            UIManager.instance.removeView(this.ViewLevel);
            return;
        }// end function

        private function onViewChange(param1:IndexChangedEvent) : void
        {
            dispatchEvent(new GuideEvent(GuideEvent.GUIDE_CLICKED));
            this.indexChange(param1.newIndex);
            return;
        }// end function

        public function updateSoldier() : void
        {
            if (this.heroDeploy)
            {
                this.heroDeploy.updateSoldier();
            }// end if
            return;
        }// end function

        private function _HeroComponent_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????");
            _loc_1 = this.viewStackHeros;
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroComponent._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
