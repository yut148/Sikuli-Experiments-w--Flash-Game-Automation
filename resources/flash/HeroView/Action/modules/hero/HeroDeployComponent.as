package modules.hero
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.base.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.cgame.utils.*;
    import com.cgame.view.guide.event.*;
    import com.cgame.view.hero.event.*;
    import com.game.common.*;
    import com.utils.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.*;
    import modules.comm.data.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.binding.utils.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.utils.*;

    public class HeroDeployComponent extends MyBorderCanvas implements IBindingClient
    {
        private var _619105883heroName:Label;
        private var _529676690labelDefendSolider:Label;
        private var _536000141countSoldier:NumericTextInput;
        private var _167107125labelAllSolider:Label;
        private var tempSoldier:SoldierLogicInfo;
        private var tempId:int;
        private var _3575610type:Label;
        private var _1336506236labelFightSolider:Label;
        private var _1544916544defense:Label;
        private var _3336hp:Label;
        private var _952398020fightLabel:Label;
        private var _739861762_undeployed:int;
        var _bindingsByDestination:Object;
        public var _HeroDeployComponent_Label10:Label;
        public var _HeroDeployComponent_Label12:Label;
        public var _HeroDeployComponent_Label14:Label;
        public var _HeroDeployComponent_Label16:Label;
        public var _HeroDeployComponent_Label18:Label;
        private var _descToolTip:SoldierToolTip;
        private var _embed_mxml_images_comm_hero_bg_assign_units_jpg_1642892522:Class;
        private var _1015617249soldierImg:Image;
        public var _HeroDeployComponent_Label20:Label;
        private var _293701405characterLogicResource:CharacterLogicResource;
        public var _HeroDeployComponent_Button3:Button;
        public var _HeroDeployComponent_Label22:Label;
        private var _610329824buttonAutoAdd:Button;
        private var _1955603540buttonRecruit:Button;
        private var _516955673solidersList:MyTileList;
        private var _470332110characterHerosList:CharacterHerosList;
        private var _1588251605vipIconCus:VipIcon;
        var _watchers:Array;
        private var _102865796level:Label;
        private var _356926922_totalCount:int;
        private var _1057361851agility:Label;
        public var _HeroDeployComponent_Label4:Label;
        public var _HeroDeployComponent_Label6:Label;
        public var _HeroDeployComponent_Label8:Label;
        private var heroInfo:CharacterLogicHero;
        var _bindingsBeginWithWord:Object;
        private var _1726806165leaderLabel:Label;
        private var _1031082277_deployed:int;
        private var _1407259064attack:Label;
        private var _612288131combobox:ComboBox;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _619157576heroList:MyTileList;
        private var _811308393heroImg:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroDeployComponent()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:MyBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:829, height:437, childDescriptors:[new UIComponentDescriptor({type:Button, id:"buttonRecruit", events:{click:"__buttonRecruit_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"allianceW77Btn", x:657, y:3, width:77, height:22, buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Button, id:"buttonAutoAdd", events:{click:"__buttonAutoAdd_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"allianceW77Btn", x:739, y:3, width:77, height:22, buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, stylesFactory:
function () : void
{
    this.directionImgType = "leftImg";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:127, y:5, width:165, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, stylesFactory:
function () : void
{
    this.directionImgType = "centerImg";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:294, y:5, width:192, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, stylesFactory:
function () : void
{
    this.directionImgType = "rightImg";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:488, y:5, width:161, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"labelAllSolider", stylesFactory:
function () : void
{
    this.color = 16709048;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:138, y:7, width:155};
}// end function
}), new UIComponentDescriptor({type:Label, id:"labelFightSolider", stylesFactory:
function () : void
{
    this.color = 16709048;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:301, y:7, width:183};
}// end function
}), new UIComponentDescriptor({type:Label, id:"labelDefendSolider", stylesFactory:
function () : void
{
    this.color = 16709048;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:492, y:7, width:157};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label4", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.fontWeight = "bold";
    this.color = 16776960;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, y:10, width:108};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"heroList", events:{itemClick:"__heroList_itemClick"}, stylesFactory:
function () : void
{
    this.paddingLeft = 0;
    this.paddingTop = 0;
    this.paddingRight = 0;
    this.borderStyle = "none";
    this.backgroundAlpha = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, columnCount:2, x:5, y:27, width:118, height:382, itemRenderer:_HeroDeployComponent_ClassFactory1_c(), selectedIndex:0, verticalScrollPolicy:"auto", horizontalScrollPolicy:"auto"};
}// end function
}), new UIComponentDescriptor({type:MyBorderCanvas, stylesFactory:
function () : void
{
    this.backgroundImage = _embed_mxml_images_comm_hero_bg_assign_units_jpg_1642892522;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:126, y:27, width:282, height:407, styleName:"heroEquipmentBorderDeploy", childDescriptors:[new UIComponentDescriptor({type:Image, id:"heroImg", events:{toolTipCreate:"__heroImg_toolTipCreate"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-2";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:19, width:64, height:64, toolTip:" "};
}// end function
}), new UIComponentDescriptor({type:VipIcon, id:"vipIconCus", propertiesFactory:
function () : Object
{
    return {x:140, y:67};
}// end function
}), new UIComponentDescriptor({type:Image, id:"soldierImg", propertiesFactory:
function () : Object
{
    return {x:57, y:267, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Label, id:"heroName", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:100, height:20, text:"loading...", styleName:"herocomponentContentLabel", x:15, width:239};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label6", propertiesFactory:
function () : Object
{
    return {x:15, y:123, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"level", propertiesFactory:
function () : Object
{
    return {x:75, y:123, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label8", propertiesFactory:
function () : Object
{
    return {y:123, height:20, styleName:"herocomponentStaticLabel", x:149, width:68};
}// end function
}), new UIComponentDescriptor({type:Label, id:"type", propertiesFactory:
function () : Object
{
    return {y:123, height:20, text:"loading...", styleName:"herocomponentContentLabel", x:207, width:68};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label10", propertiesFactory:
function () : Object
{
    return {x:15, y:145, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"attack", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:145, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:179};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label12", propertiesFactory:
function () : Object
{
    return {x:15, y:167, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"defense", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:167, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:179};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label14", propertiesFactory:
function () : Object
{
    return {x:15, y:190, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"hp", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:190, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:179};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label16", propertiesFactory:
function () : Object
{
    return {x:15, y:211, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"agility", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:211, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:179};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label18", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:132, y:269, height:20, styleName:"herocomponentStaticLabel", width:100};
}// end function
}), new UIComponentDescriptor({type:Label, id:"leaderLabel", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:132, y:289, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:100};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label20", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:132, y:313, height:20, styleName:"herocomponentStaticLabel", width:100};
}// end function
}), new UIComponentDescriptor({type:Label, id:"fightLabel", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:132, y:335, height:20, text:"loading...", styleName:"herocomponentContentLabel", width:100};
}// end function
}), new UIComponentDescriptor({type:ComboBox, id:"combobox", events:{close:"__combobox_close"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "1";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {labelField:"name", styleName:"comboBox", y:240, height:20, width:144};
}// end function
}), new UIComponentDescriptor({type:NumericTextInput, id:"countSoldier", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {minValue:0, x:57, y:334, width:65, height:20, styleName:"textInputStyle"};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_HeroDeployComponent_Button3", events:{click:"___HeroDeployComponent_Button3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:362, styleName:"brownEmptyBtnW74H25", width:74, height:25, buttonMode:true};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:MyBorderCanvas, stylesFactory:
function () : void
{
    this.backgroundColor = 16240519;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:420, height:407, x:406, y:27, styleName:"heroEquipmentBorderDeploy", childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {styleName:"heroCanvasBar", x:0, y:4, width:420, height:17, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HeroDeployComponent_Label22", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.verticalCenter = "0";
    this.fontWeight = "bold";
    this.color = 7292695;
    this.fontSize = 12;
    return;
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"solidersList", stylesFactory:
function () : void
{
    this.paddingTop = 0;
    this.paddingLeft = 0;
    this.backgroundAlpha = 0;
    this.borderStyle = "none";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, itemRenderer:_HeroDeployComponent_ClassFactory2_c(), verticalScrollPolicy:"on", x:7, y:22, width:410, height:380, selectable:false};
}// end function
})]};
}// end function
})]};
}// end function
});
            this._470332110characterHerosList = CacheManager.getInstance().getCache(CacheType.HERO_INFO) as CharacterHerosList;
            this._293701405characterLogicResource = CacheManager.getInstance().getCache(CacheType.RESOURCE) as CharacterLogicResource;
            this._embed_mxml_images_comm_hero_bg_assign_units_jpg_1642892522 = HeroDeployComponent__embed_mxml_images_comm_hero_bg_assign_units_jpg_1642892522;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 829;
            this.height = 437;
            this.addEventListener("creationComplete", this.___HeroDeployComponent_MyBorderCanvas1_creationComplete);
            return;
        }// end function

        private function getSelectIndex(param1:CharacterLogicHero, param2:ArrayCollection) : int
        {
            var _loc_4:SoldierLogicInfo;
            var _loc_5:int;
            var _loc_3:int;
            for each (_loc_4 in param2)
            {
                // label
                if (_loc_4.id == param1.soldierId)
                {
                    _loc_5 = _loc_4.undeployed + param1.soldierCount;
                    this.countSoldier.maxValue = Math.min(_loc_5, (param1.leadershipAdd + param1.leadershipBase) / _loc_4.population);
                    this.countSoldier.text = this.countSoldier.maxValue.toString();
                    return _loc_3;
                }// end if
                _loc_3++;
            }// end of for each ... in
            return _loc_3;
        }// end function

        public function get hp() : Label
        {
            return this._3336hp;
        }// end function

        private function get _undeployed() : int
        {
            return this._739861762_undeployed;
        }// end function

        private function onItemClick(param1:ListEvent) : void
        {
            dispatchEvent(new GuideEvent(GuideEvent.GUIDE_CLICKED));
            return;
        }// end function

        public function init(param1:Object = null) : void
        {
            var _loc_2:* = this.owner.parent as HeroComponent;
            _loc_2.currentHeroSelectedIndex = Math.min(_loc_2.currentHeroSelectedIndex, this.characterHerosList.heroes.length--);
            if (_loc_2.currentHeroSelectedIndex == -1)
            {
                _loc_2.currentHeroSelectedIndex = 0;
            }// end if
            callLater(this.laterInit);
            return;
        }// end function

        public function get solidersList() : MyTileList
        {
            return this._516955673solidersList;
        }// end function

        public function set hp(param1:Label) : void
        {
            var _loc_2:* = this._3336hp;
            if (_loc_2 !== param1)
            {
                this._3336hp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hp", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDeployComponent_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = HeroDeploySoliderRenderer;
            return _loc_1;
        }// end function

        private function set _undeployed(param1:int) : void
        {
            var _loc_2:* = this._739861762_undeployed;
            if (_loc_2 !== param1)
            {
                this._739861762_undeployed = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_undeployed", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get vipIconCus() : VipIcon
        {
            return this._1588251605vipIconCus;
        }// end function

        public function set labelFightSolider(param1:Label) : void
        {
            var _loc_2:* = this._1336506236labelFightSolider;
            if (_loc_2 !== param1)
            {
                this._1336506236labelFightSolider = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "labelFightSolider", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function closeHandler(param1:Event) : void
        {
            var _loc_2:* = ComboBox(param1.target).selectedItem as SoldierLogicInfo;
            this.tempSoldier = _loc_2;
            this.soldierImg.source = ImageResource.getInstance().getSoldierImagURL(_loc_2.photoId, 2);
            var _loc_3:* = _loc_2.undeployed;
            var _loc_4:* = this.heroList.selectedItem as CharacterLogicHero;
            if ((this.heroList.selectedItem as CharacterLogicHero).soldierId == _loc_2.id)
            {
                _loc_3 = _loc_2.undeployed + _loc_4.soldierCount;
            }// end if
            if (_loc_3 > 0)
            {
                dispatchEvent(new GuideEvent(GuideEvent.GUIDE_CLICKED));
            }// end if
            this.countSoldier.maxValue = Math.min(_loc_3, (_loc_4.leadershipAdd + _loc_4.leadershipBase) / _loc_2.population);
            this.countSoldier.text = this.countSoldier.maxValue.toString();
            this.soldierImg.toolTip = null;
            if (!this.combobox.selectedItem)
            {
                return;
            }// end if
            if (_loc_2.id > 0)
            {
                this.tempId = _loc_2.id;
                this.soldierImg.toolTip = " ";
                this.soldierImg.addEventListener(ToolTipEvent.TOOL_TIP_CREATE, this.onSoldierTip);
            }// end if
            return;
        }// end function

        public function set level(param1:Label) : void
        {
            var _loc_2:* = this._102865796level;
            if (_loc_2 !== param1)
            {
                this._102865796level = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set solidersList(param1:MyTileList) : void
        {
            var _loc_2:* = this._516955673solidersList;
            if (_loc_2 !== param1)
            {
                this._516955673solidersList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "solidersList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get type() : Label
        {
            return this._3575610type;
        }// end function

        private function get _deployed() : int
        {
            return this._1031082277_deployed;
        }// end function

        public function get agility() : Label
        {
            return this._1057361851agility;
        }// end function

        public function get defense() : Label
        {
            return this._1544916544defense;
        }// end function

        public function get attack() : Label
        {
            return this._1407259064attack;
        }// end function

        public function __heroList_itemClick(param1:ListEvent) : void
        {
            this.onItemClick(param1);
            return;
        }// end function

        public function set vipIconCus(param1:VipIcon) : void
        {
            var _loc_2:* = this._1588251605vipIconCus;
            if (_loc_2 !== param1)
            {
                this._1588251605vipIconCus = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "vipIconCus", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set buttonRecruit(param1:Button) : void
        {
            var _loc_2:* = this._1955603540buttonRecruit;
            if (_loc_2 !== param1)
            {
                this._1955603540buttonRecruit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonRecruit", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __buttonRecruit_click(param1:MouseEvent) : void
        {
            this.recruitSoldiers();
            return;
        }// end function

        private function bindSodierClick() : void
        {
            var _loc_1:* = new HeroSoldiersEvent(HeroSoldiersEvent.BIND_SOLDIERS, true);
            var _loc_2:* = this.heroList.selectedItem as CharacterLogicHero;
            var _loc_3:* = this.combobox.selectedItem as SoldierLogicInfo;
            _loc_1.heroId = _loc_2.id;
            _loc_1.soliderId = _loc_3.id;
            _loc_1.soliderCount = int(this.countSoldier.text);
            this.dispatchEvent(_loc_1);
            return;
        }// end function

        private function _HeroDeployComponent_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = HeroItemRenderer;
            return _loc_1;
        }// end function

        private function onHeroTip(param1:ToolTipEvent) : void
        {
            CharacterToolTipData.getInstance().isNull();
            CharacterToolTipData.getInstance().heroTipSelect = true;
            CharacterToolTipData.getInstance().heroData = this.heroInfo;
            var _loc_2:* = new CharacterToolTips();
            param1.toolTip = _loc_2;
            return;
        }// end function

        public function updateHero(param1:CharacterLogicHero) : void
        {
            if (this.heroList && this.heroList.selectedItem == param1)
            {
                this.setHeroDetail(param1);
            }// end if
            return;
        }// end function

        public function get heroImg() : Image
        {
            return this._811308393heroImg;
        }// end function

        public function get leaderLabel() : Label
        {
            return this._1726806165leaderLabel;
        }// end function

        public function set heroName(param1:Label) : void
        {
            var _loc_2:* = this._619105883heroName;
            if (_loc_2 !== param1)
            {
                this._619105883heroName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroName", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDeployComponent_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    buttonRecruit.label = param1;
    return;
}// end function
, "buttonRecruit.label");
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
    buttonAutoAdd.label = param1;
    return;
}// end function
, "buttonAutoAdd.label");
            result[1] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("???") + "" + (characterLogicResource.totalDeployed + characterLogicResource.totalUndeployed);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    labelAllSolider.text = param1;
    return;
}// end function
, "labelAllSolider.text");
            result[2] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + "" + characterLogicResource.totalDeployed;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    labelFightSolider.text = param1;
    return;
}// end function
, "labelFightSolider.text");
            result[3] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + "" + characterLogicResource.totalUndeployed;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    labelDefendSolider.text = param1;
    return;
}// end function
, "labelDefendSolider.text");
            result[4] = binding;
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
    _HeroDeployComponent_Label4.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label4.text");
            result[5] = binding;
            binding = new Binding(this, 
function () : Object
{
    return characterHerosList.heroes;
}// end function
, 
function (param1:Object) : void
{
    heroList.dataProvider = param1;
    return;
}// end function
, "heroList.dataProvider");
            result[6] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("vip?????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    vipIconCus.toolTip = param1;
    return;
}// end function
, "vipIconCus.toolTip");
            result[7] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????2") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label6.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label6.text");
            result[8] = binding;
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
    _HeroDeployComponent_Label6.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label6.toolTip");
            result[9] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label8.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label8.text");
            result[10] = binding;
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
    _HeroDeployComponent_Label8.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label8.toolTip");
            result[11] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label10.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label10.text");
            result[12] = binding;
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
    _HeroDeployComponent_Label10.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label10.toolTip");
            result[13] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label12.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label12.text");
            result[14] = binding;
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
    _HeroDeployComponent_Label12.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label12.toolTip");
            result[15] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label14.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label14.text");
            result[16] = binding;
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
    _HeroDeployComponent_Label14.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label14.toolTip");
            result[17] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label16.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label16.text");
            result[18] = binding;
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
    _HeroDeployComponent_Label16.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label16.toolTip");
            result[19] = binding;
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
    _HeroDeployComponent_Label18.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label18.text");
            result[20] = binding;
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
    _HeroDeployComponent_Label18.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label18.toolTip");
            result[21] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("?????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label20.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label20.text");
            result[22] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("?????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label20.toolTip = param1;
    return;
}// end function
, "_HeroDeployComponent_Label20.toolTip");
            result[23] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Button3.label = param1;
    return;
}// end function
, "_HeroDeployComponent_Button3.label");
            result[24] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeployComponent_Label22.text = param1;
    return;
}// end function
, "_HeroDeployComponent_Label22.text");
            result[25] = binding;
            binding = new Binding(this, 
function () : Object
{
    return characterLogicResource.soldiers;
}// end function
, 
function (param1:Object) : void
{
    solidersList.dataProvider = param1;
    return;
}// end function
, "solidersList.dataProvider");
            result[26] = binding;
            return result;
        }// end function

        public function onCreateDescToolTip(param1:ToolTipEvent) : void
        {
            this._descToolTip = this._descToolTip ? (this._descToolTip) : (new SoldierToolTip());
            var _loc_2:* = this.combobox.selectedItem as SoldierLogicInfo;
            var _loc_3:Object;
            _loc_3.attrs = SoldierTool.getSoliderAttributes(_loc_2.attrs);
            this._descToolTip.dataObject = new ObjectProxy(_loc_3);
            param1.toolTip = this._descToolTip;
            return;
        }// end function

        public function get countSoldier() : NumericTextInput
        {
            return this._536000141countSoldier;
        }// end function

        public function set type(param1:Label) : void
        {
            var _loc_2:* = this._3575610type;
            if (_loc_2 !== param1)
            {
                this._3575610type = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "type", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function eachSoldierPopulation(param1:int) : int
        {
            if (param1 == 0)
            {
                return 0;
            }// end if
            return ConfigResource.getInstance().getSoldierConfig()[param1].population;
        }// end function

        public function set heroList(param1:MyTileList) : void
        {
            var _loc_2:* = this._619157576heroList;
            if (_loc_2 !== param1)
            {
                this._619157576heroList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function updateSoldier() : void
        {
            if (this.heroList == null)
            {
                return;
            }// end if
            var _loc_1:* = this.heroList.selectedItem as CharacterLogicHero;
            if (_loc_1 == null)
            {
                return;
            }// end if
            this.setSoldierDataProvider(_loc_1, this.characterLogicResource.soldiers);
            return;
        }// end function

        public function get labelFightSolider() : Label
        {
            return this._1336506236labelFightSolider;
        }// end function

        public function get combobox() : ComboBox
        {
            return this._612288131combobox;
        }// end function

        private function set _deployed(param1:int) : void
        {
            var _loc_2:* = this._1031082277_deployed;
            if (_loc_2 !== param1)
            {
                this._1031082277_deployed = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_deployed", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get labelDefendSolider() : Label
        {
            return this._529676690labelDefendSolider;
        }// end function

        public function set defense(param1:Label) : void
        {
            var _loc_2:* = this._1544916544defense;
            if (_loc_2 !== param1)
            {
                this._1544916544defense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defense", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __buttonAutoAdd_click(param1:MouseEvent) : void
        {
            this.autoAddSoldiers();
            return;
        }// end function

        public function get level() : Label
        {
            return this._102865796level;
        }// end function

        private function recruitSoldiers() : void
        {
            dispatchEvent(new HeroSoldiersEvent(HeroSoldiersEvent.SHOW_BARRACK, true));
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HeroDeployComponent;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroDeployComponent_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroDeployComponentWatcherSetupUtil");
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

        public function set agility(param1:Label) : void
        {
            var _loc_2:* = this._1057361851agility;
            if (_loc_2 !== param1)
            {
                this._1057361851agility = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "agility", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __combobox_close(param1:DropdownEvent) : void
        {
            this.closeHandler(param1);
            return;
        }// end function

        public function ___HeroDeployComponent_MyBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.mybordercanvas1_creationCompleteHandler(param1);
            return;
        }// end function

        private function set characterHerosList(param1:CharacterHerosList) : void
        {
            var _loc_2:* = this._470332110characterHerosList;
            if (_loc_2 !== param1)
            {
                this._470332110characterHerosList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "characterHerosList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __heroImg_toolTipCreate(param1:ToolTipEvent) : void
        {
            this.onHeroTip(param1);
            return;
        }// end function

        public function get heroName() : Label
        {
            return this._619105883heroName;
        }// end function

        public function ___HeroDeployComponent_Button3_click(param1:MouseEvent) : void
        {
            this.bindSodierClick();
            return;
        }// end function

        public function get buttonRecruit() : Button
        {
            return this._1955603540buttonRecruit;
        }// end function

        protected function mybordercanvas1_creationCompleteHandler(param1:FlexEvent) : void
        {
            BindingUtils.bindSetter(this.setHeroDetail, this.heroList, "selectedItem");
            return;
        }// end function

        public function set fightLabel(param1:Label) : void
        {
            var _loc_2:* = this._952398020fightLabel;
            if (_loc_2 !== param1)
            {
                this._952398020fightLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fightLabel", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set _totalCount(param1:int) : void
        {
            var _loc_2:* = this._356926922_totalCount;
            if (_loc_2 !== param1)
            {
                this._356926922_totalCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_totalCount", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get heroList() : MyTileList
        {
            return this._619157576heroList;
        }// end function

        private function setSoldierDataProvider(param1:CharacterLogicHero, param2:ArrayCollection) : void
        {
            var _loc_3:* = ToolUtil.copyOverArrayCollection(param2);
            if (_loc_3 == null)
            {
                _loc_3 = new ArrayCollection();
            }// end if
            var _loc_4:* = new SoldierLogicInfo();
            new SoldierLogicInfo().id = 0;
            _loc_4.name = Lang.msg("?");
            _loc_4.deployed = 0;
            _loc_4.undeployed = 0;
            _loc_4.population = 1;
            _loc_3.addItem(_loc_4);
            var _loc_5:* = this.getSelectIndex(param1, _loc_3);
            this.combobox.rowCount = _loc_3.length;
            this.combobox.dataProvider = _loc_3;
            if (this.combobox.dropdown)
            {
                this.combobox.dropdown.dataProvider = _loc_3;
            }// end if
            this.combobox.selectedIndex = _loc_5;
            return;
        }// end function

        public function set buttonAutoAdd(param1:Button) : void
        {
            var _loc_2:* = this._610329824buttonAutoAdd;
            if (_loc_2 !== param1)
            {
                this._610329824buttonAutoAdd = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buttonAutoAdd", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function autoAddSoldiers() : void
        {
            dispatchEvent(new HeroSoldiersEvent(HeroSoldiersEvent.AUTO_ADD_SOLDIERS, true));
            return;
        }// end function

        private function get _totalCount() : int
        {
            return this._356926922_totalCount;
        }// end function

        private function laterInit() : void
        {
            var _loc_1:* = this.owner.parent as HeroComponent;
            this.heroList.selectedIndex = _loc_1.currentHeroSelectedIndex;
            return;
        }// end function

        private function set characterLogicResource(param1:CharacterLogicResource) : void
        {
            var _loc_2:* = this._293701405characterLogicResource;
            if (_loc_2 !== param1)
            {
                this._293701405characterLogicResource = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "characterLogicResource", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get characterHerosList() : CharacterHerosList
        {
            return this._470332110characterHerosList;
        }// end function

        public function set labelAllSolider(param1:Label) : void
        {
            var _loc_2:* = this._167107125labelAllSolider;
            if (_loc_2 !== param1)
            {
                this._167107125labelAllSolider = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "labelAllSolider", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set soldierImg(param1:Image) : void
        {
            var _loc_2:* = this._1015617249soldierImg;
            if (_loc_2 !== param1)
            {
                this._1015617249soldierImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "soldierImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get fightLabel() : Label
        {
            return this._952398020fightLabel;
        }// end function

        public function set attack(param1:Label) : void
        {
            var _loc_2:* = this._1407259064attack;
            if (_loc_2 !== param1)
            {
                this._1407259064attack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attack", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set heroImg(param1:Image) : void
        {
            var _loc_2:* = this._811308393heroImg;
            if (_loc_2 !== param1)
            {
                this._811308393heroImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set labelDefendSolider(param1:Label) : void
        {
            var _loc_2:* = this._529676690labelDefendSolider;
            if (_loc_2 !== param1)
            {
                this._529676690labelDefendSolider = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "labelDefendSolider", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set leaderLabel(param1:Label) : void
        {
            var _loc_2:* = this._1726806165leaderLabel;
            if (_loc_2 !== param1)
            {
                this._1726806165leaderLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leaderLabel", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get labelAllSolider() : Label
        {
            return this._167107125labelAllSolider;
        }// end function

        public function set countSoldier(param1:NumericTextInput) : void
        {
            var _loc_2:* = this._536000141countSoldier;
            if (_loc_2 !== param1)
            {
                this._536000141countSoldier = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "countSoldier", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get buttonAutoAdd() : Button
        {
            return this._610329824buttonAutoAdd;
        }// end function

        public function get soldierImg() : Image
        {
            return this._1015617249soldierImg;
        }// end function

        private function get characterLogicResource() : CharacterLogicResource
        {
            return this._293701405characterLogicResource;
        }// end function

        private function setHeroDetail(param1:Object) : void
        {
            var _loc_2:* = CacheManager.getInstance().getCache(CacheType.BASE) as CharacterBase;
            this.vipIconCus.vipShowIcon(_loc_2.vip);
            if (param1 == null)
            {
                return;
            }// end if
            var _loc_3:* = this.owner.parent as HeroComponent;
            _loc_3.currentHeroSelectedIndex = this.heroList.selectedIndex;
            var _loc_4:* = param1 as CharacterLogicHero;
            this.heroInfo = _loc_4;
            this.level.text = _loc_4.level.toString();
            this.heroName.setStyle("color", ColorConfig.getHeroColor(_loc_4.heroColorId));
            this.heroName.text = _loc_4.name;
            this.type.text = HeroType.getHeroTypeName(_loc_4.type);
            this.attack.htmlText = _loc_4.attackBase + "<font color=\'#00FF00\'>" + (_loc_4.attackAdd == 0 ? ("") : (" +" + _loc_4.attackAdd.toString())) + "</font>";
            this.defense.htmlText = _loc_4.defenceBase + "<font color=\'#00FF00\'>" + (_loc_4.defenceAdd == 0 ? ("") : (" +" + _loc_4.defenceAdd.toString())) + "</font>";
            this.hp.htmlText = _loc_4.vitalityBase + "<font color=\'#00FF00\'>" + (_loc_4.vitalityAdd == 0 ? ("") : (" +" + _loc_4.vitalityAdd.toString())) + "</font>";
            this.agility.htmlText = _loc_4.agilityBase + "<font color=\'#00FF00\'>" + (_loc_4.agilityAdd == 0 ? ("") : (" +" + _loc_4.agilityAdd.toString())) + "</font>";
            this.heroImg.source = ImageResource.getInstance().getHeroImageURL(_loc_4.photoId);
            if (_loc_4.soldierCount <= 0)
            {
                _loc_4.soldierId = 0;
            }// end if
            this.soldierImg.source = ImageResource.getInstance().getSoldierImagURLBySoldierId(_loc_4.soldierId, 2);
            this.leaderLabel.text = _loc_4.soldierCount * this.eachSoldierPopulation(_loc_4.soldierId) + "/" + (_loc_4.leadershipAdd + _loc_4.leadershipBase);
            this.fightLabel.text = _loc_4.fightingPoint.toString();
            this.setSoldierDataProvider(_loc_4, this.characterLogicResource.soldiers);
            this.soldierImg.toolTip = null;
            if (!this.combobox.selectedItem)
            {
                return;
            }// end if
            if (_loc_4.soldierId > 0)
            {
                this.tempId = _loc_4.soldierId;
                this.soldierImg.toolTip = " ";
                this.soldierImg.addEventListener(ToolTipEvent.TOOL_TIP_CREATE, this.onSoldierTip);
            }// end if
            this.countSoldier.text = String(_loc_4.soldierCount);
            return;
        }// end function

        public function set combobox(param1:ComboBox) : void
        {
            var _loc_2:* = this._612288131combobox;
            if (_loc_2 !== param1)
            {
                this._612288131combobox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "combobox", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDeployComponent_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("??");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("???") + "" + (this.characterLogicResource.totalDeployed + this.characterLogicResource.totalUndeployed);
            _loc_1 = Lang.msg("????") + "" + this.characterLogicResource.totalDeployed;
            _loc_1 = Lang.msg("????") + "" + this.characterLogicResource.totalUndeployed;
            _loc_1 = Lang.msg("????");
            _loc_1 = this.characterHerosList.heroes;
            _loc_1 = Lang.msg("vip?????");
            _loc_1 = Lang.msg("????2") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("?????");
            _loc_1 = Lang.msg("?????");
            _loc_1 = Lang.msg("??");
            _loc_1 = Lang.msg("??");
            _loc_1 = this.characterLogicResource.soldiers;
            return;
        }// end function

        private function onSoldierTip(param1:ToolTipEvent) : void
        {
            var _loc_4:Object;
            var _loc_5:CharacterToolTips;
            var _loc_2:* = this.combobox.selectedItem as SoldierLogicInfo;
            CharacterToolTipData.getInstance().isNull();
            CharacterToolTipData.getInstance().heroTemp = this.heroInfo;
            var _loc_3:* = ConfigResource.getInstance().getSoldierConfig();
            if (!_loc_2)
            {
                return;
            }// end if
            if (_loc_2.id > 0)
            {
                _loc_4 = {id:_loc_2.id, photoId:_loc_2.photoId, name:_loc_2.name, desc:_loc_2.desc, fp:this.heroInfo.fightingPoint, soldierType:ConfigResource.getInstance().getSoldierTypeConfig()[_loc_3[this.tempId]["soldierTypeId"]].name, attrs:SoldierTool.getSoliderAttributes(_loc_2.attrs), requirements:[]};
                CharacterToolTipData.getInstance().soldierByHero = _loc_4;
                _loc_5 = new CharacterToolTips();
                param1.toolTip = _loc_5;
            }
            else
            {
                param1.toolTip = null;
            }// end else if
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroDeployComponent._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
