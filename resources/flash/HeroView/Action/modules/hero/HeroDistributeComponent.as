package modules.hero
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.cgame.view.hero.event.*;
    import com.game.common.*;
    import com.game.display.*;
    import com.utils.*;
    import flash.events.*;
    import flash.filters.*;
    import flash.utils.*;
    import modules.character.*;
    import modules.comm.*;
    import modules.comm.data.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.binding.utils.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.core.*;
    import mx.effects.*;
    import mx.events.*;
    import mx.managers.*;

    public class HeroDistributeComponent extends MyBorderCanvas implements IBindingClient
    {
        private var _619105883heroName:Label;
        public var _HeroDistributeComponent_Label11:Label;
        public var _HeroDistributeComponent_Label13:Label;
        public var _HeroDistributeComponent_Label15:Label;
        public var _HeroDistributeComponent_Label16:Label;
        private var _900562943skill2:Image;
        private var _397546215attackStrategyList:MyTileList;
        private var _842377084confirmBtn:Button;
        private var _952398020fightLabel:Label;
        var _bindingsByDestination:Object;
        private var _619399765heroDesc:TextArea;
        private var _1449405963skillBorder2:Image;
        private var troopStrategyConfigArr:Array;
        private var _900562940skill5:Image;
        private var defenceIndex:int = -1;
        private var _totalDefenceFight:int;
        private var troopStrategyConfig:Object;
        public var currntAttackStrategyConfig:Object;
        private var _673071507herosAttacPosition:MyTileList;
        private var _900562945skill0:Image;
        private var _102865796level:Label;
        private var _2095061832defenceTotalFightLabel:Label;
        public var _HeroDistributeComponent_Image14:Image;
        public var _HeroDistributeComponent_Image15:Image;
        private var _embed_mxml_images_comm_hero_progress_bar_png_1072644520:Class;
        private var _1449405960skillBorder5:Image;
        private var _1449405964skillBorder1:Image;
        private var _900562942skill3:Image;
        private var _260572689defenceStategyList:MyTileList;
        private var _embed_mxml_images_comm_hero_bg_heroes_deploy_jpg_263286762:Class;
        private var _811308393heroImg:Image;
        private var _defenceHeroDict:Dictionary;
        public var currentDefenceStrategyConfig:Object;
        private var _3575610type:Label;
        private var _totalAttackFight:int;
        private var _811304899heroExp:HpRatioComponent;
        private var _900246592attackTotalFightLabel:Label;
        public var _HeroDistributeComponent_Label1:Label;
        public var _HeroDistributeComponent_Label2:Label;
        public var _HeroDistributeComponent_Label3:Label;
        public var _HeroDistributeComponent_Label4:Label;
        public var _HeroDistributeComponent_Label8:Label;
        public var _HeroDistributeComponent_Label9:Label;
        private var _7462975strategyChanged:Boolean;
        private var _743280825heroDistributeList:MyTileList;
        public var _HeroDistributeComponent_Button2:Button;
        private var _attackHeroDict:Dictionary;
        private var _1449405961skillBorder4:Image;
        private var _1449405965skillBorder0:Image;
        private var _900562944skill1:Image;
        private var attackIndex:int = -1;
        private var _1955603540buttonRecruit:Button;
        var _watchers:Array;
        private var _470332110characterHerosList:CharacterHerosList;
        private var _900562941skill4:Image;
        public var _HeroDistributeComponent_Text1:Text;
        public var _HeroDistributeComponent_Text2:Text;
        private var _1419703260soldierType:Label;
        private var heroInfo:CharacterLogicHero;
        var _bindingsBeginWithWord:Object;
        private var _1726806165leaderLabel:Label;
        private var _1128806560herosDefencePosition:MyTileList;
        private var _1449405962skillBorder3:Image;
        private var _605015618defaultTileListEffect:DefaultTileListEffect;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroDistributeComponent()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:MyBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:829, height:437, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label1", stylesFactory:
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
}), new UIComponentDescriptor({type:MyTileList, id:"heroDistributeList", events:{dragEnter:"__heroDistributeList_dragEnter", dragDrop:"__heroDistributeList_dragDrop"}, stylesFactory:
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
    return {focusEnabled:false, offscreenExtraRowsOrColumns:2, columnCount:2, x:5, y:27, width:118, height:382, itemRenderer:_HeroDistributeComponent_ClassFactory1_c(), selectedIndex:0, verticalScrollPolicy:"auto", horizontalScrollPolicy:"auto"};
}// end function
}), new UIComponentDescriptor({type:MyBorderCanvas, stylesFactory:
function () : void
{
    this.backgroundImage = _embed_mxml_images_comm_hero_bg_heroes_deploy_jpg_263286762;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:126, y:3, width:700, height:431, styleName:"herocomponentDistributeBorder", childDescriptors:[new UIComponentDescriptor({type:Image, id:"skill0", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:241};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder0", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:241};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill1", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:277};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder1", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:277};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill2", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:313};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder2", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:313};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill3", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:349};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder3", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:349};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill4", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:385};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder4", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:385};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill5", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, x:421};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder5", propertiesFactory:
function () : Object
{
    return {y:150, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:421};
}// end function
}), new UIComponentDescriptor({type:Button, id:"buttonRecruit", events:{click:"__buttonRecruit_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"allianceW77Btn", x:77, y:149, width:77, height:22, buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Text, id:"_HeroDistributeComponent_Text1", stylesFactory:
function () : void
{
    this.fontWeight = "normal";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:13, y:8, width:674, height:44, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Image, id:"heroImg", events:{toolTipCreate:"__heroImg_toolTipCreate"}, propertiesFactory:
function () : Object
{
    return {x:83, y:77, width:64, height:64, toolTip:" "};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label2", propertiesFactory:
function () : Object
{
    return {y:103, height:18, styleName:"herocomponentStaticLabel", x:178, width:63};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label3", propertiesFactory:
function () : Object
{
    return {y:84, height:18, styleName:"herocomponentStaticLabel", x:178, width:63};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label4", propertiesFactory:
function () : Object
{
    return {y:65, height:18, styleName:"herocomponentStaticLabel", x:178, width:63};
}// end function
}), new UIComponentDescriptor({type:Label, id:"heroName", stylesFactory:
function () : void
{
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:240, y:65, text:"loading...", width:90, styleName:"herocomponentContentLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"level", stylesFactory:
function () : void
{
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:240, y:84, text:"loading...", width:90, styleName:"herocomponentContentLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"type", stylesFactory:
function () : void
{
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:240, y:103, text:"loading...", width:90, styleName:"herocomponentContentLabel", height:18};
}// end function
}), new UIComponentDescriptor({type:TextArea, id:"heroDesc", stylesFactory:
function () : void
{
    this.focusAlpha = 0;
    this.backgroundAlpha = 0;
    this.borderStyle = "none";
    this.fontWeight = "normal";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:506, y:64, text:"loading...", width:188, height:120, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label8", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:181, y:125, text:"Exp", styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:HpRatioComponent, id:"heroExp", stylesFactory:
function () : void
{
    this.image = _embed_mxml_images_comm_hero_progress_bar_png_1072644520;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {labelWidth:200, x:207, y:127, toolTip:""};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label9", stylesFactory:
function () : void
{
    this.color = 16777151;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:338, y:63, width:72};
}// end function
}), new UIComponentDescriptor({type:Label, id:"soldierType", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:409, y:63, text:"loading...", width:90};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label11", stylesFactory:
function () : void
{
    this.color = 16777151;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:338, y:84, width:72};
}// end function
}), new UIComponentDescriptor({type:Label, id:"leaderLabel", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:409, y:84, text:"loading...", width:90};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label13", stylesFactory:
function () : void
{
    this.color = 16777151;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:338, y:105, width:72};
}// end function
}), new UIComponentDescriptor({type:Label, id:"fightLabel", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.textAlign = "left";
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:409, y:105, text:"loading...", width:90};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_HeroDistributeComponent_Button2", events:{click:"___HeroDistributeComponent_Button2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.paddingLeft = 16;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:253, buttonMode:true, styleName:"switchBtn", width:133, height:60};
}// end function
}), new UIComponentDescriptor({type:Button, id:"confirmBtn", events:{click:"__confirmBtn_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:323, label:"Deploy", buttonMode:true, styleName:"goldBtnW89H43", width:89, height:43};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"attackStrategyList", stylesFactory:
function () : void
{
    this.paddingTop = 0;
    this.backgroundAlpha = 0;
    this.borderStyle = "none";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, y:215, width:235, height:60, itemRenderer:_HeroDistributeComponent_ClassFactory2_c(), x:26};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"defenceStategyList", stylesFactory:
function () : void
{
    this.paddingTop = 0;
    this.backgroundAlpha = 0;
    this.borderStyle = "none";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, y:215, width:235, height:60, itemRenderer:_HeroDistributeComponent_ClassFactory3_c(), x:440};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"herosAttacPosition", stylesFactory:
function () : void
{
    this.paddingTop = 0;
    this.borderStyle = "none";
    this.backgroundAlpha = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, x:39, y:309, width:210, height:104, itemRenderer:_HeroDistributeComponent_ClassFactory4_c()};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"herosDefencePosition", stylesFactory:
function () : void
{
    this.paddingTop = 0;
    this.borderStyle = "none";
    this.backgroundAlpha = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, x:454, y:309, width:210, height:104, itemRenderer:_HeroDistributeComponent_ClassFactory5_c()};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {x:26, y:195, width:235, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.horizontalGap = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_HeroDistributeComponent_Image14", propertiesFactory:
function () : Object
{
    return {width:18, height:18};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label15", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 16776960;
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {height:20};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {x:440, y:195, width:235, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.horizontalGap = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"_HeroDistributeComponent_Image15", propertiesFactory:
function () : Object
{
    return {width:18, height:18};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDistributeComponent_Label16", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 16776960;
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {height:20};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Label, id:"attackTotalFightLabel", stylesFactory:
function () : void
{
    this.textAlign = "left";
    this.color = 16777151;
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:31, y:276, width:230};
}// end function
}), new UIComponentDescriptor({type:Label, id:"defenceTotalFightLabel", stylesFactory:
function () : void
{
    this.textAlign = "left";
    this.color = 16777151;
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:445, y:276, width:230};
}// end function
}), new UIComponentDescriptor({type:Text, id:"_HeroDistributeComponent_Text2", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 16776960;
    this.fontSize = 11;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:279, y:368, selectable:false, width:143, height:44};
}// end function
})]};
}// end function
})]};
}// end function
});
            this._470332110characterHerosList = CacheManager.getInstance().getCache(CacheType.HERO_INFO) as CharacterHerosList;
            this.troopStrategyConfig = ConfigResource.getInstance().getTroopStrategy();
            this._attackHeroDict = new Dictionary();
            this._defenceHeroDict = new Dictionary();
            this._embed_mxml_images_comm_hero_bg_heroes_deploy_jpg_263286762 = HeroDistributeComponent__embed_mxml_images_comm_hero_bg_heroes_deploy_jpg_263286762;
            this._embed_mxml_images_comm_hero_progress_bar_png_1072644520 = HeroDistributeComponent__embed_mxml_images_comm_hero_progress_bar_png_1072644520;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 829;
            this.height = 437;
            this._HeroDistributeComponent_DefaultTileListEffect1_i();
            this.addEventListener("creationComplete", this.___HeroDistributeComponent_MyBorderCanvas1_creationComplete);
            return;
        }// end function

        public function get skill1() : Image
        {
            return this._900562944skill1;
        }// end function

        public function get skill4() : Image
        {
            return this._900562941skill4;
        }// end function

        public function set skill3(param1:Image) : void
        {
            var _loc_2:* = this._900562942skill3;
            if (_loc_2 !== param1)
            {
                this._900562942skill3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skill4(param1:Image) : void
        {
            var _loc_2:* = this._900562941skill4;
            if (_loc_2 !== param1)
            {
                this._900562941skill4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skill1(param1:Image) : void
        {
            var _loc_2:* = this._900562944skill1;
            if (_loc_2 !== param1)
            {
                this._900562944skill1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill1", _loc_2, param1));
            }// end if
            return;
        }// end function

        protected function heroDistributeList_dragDropHandler(param1:DragEvent) : void
        {
            var _loc_3:Object;
            var _loc_4:ArrayCollection;
            var _loc_5:int;
            var _loc_2:* = param1.dragInitiator.owner as ListBase;
            if (_loc_2.id == "herosAttacPosition" || _loc_2.id == "herosDefencePosition")
            {
                if (param1.dragSource.hasFormat("hero"))
                {
                    _loc_3 = param1.dragSource.dataForFormat("hero");
                    _loc_4 = _loc_2.dataProvider as ArrayCollection;
                    _loc_5 = _loc_4.getItemIndex(_loc_3);
                    if (_loc_5 != -1)
                    {
                        _loc_4.setItemAt(new CharacterLogicHero(), _loc_5);
                    }// end if
                    this.strategyChanged = true;
                }// end if
            }// end if
            return;
        }// end function

        public function get skill5() : Image
        {
            return this._900562940skill5;
        }// end function

        public function get skillBorder2() : Image
        {
            return this._1449405963skillBorder2;
        }// end function

        public function set skill5(param1:Image) : void
        {
            var _loc_2:* = this._900562940skill5;
            if (_loc_2 !== param1)
            {
                this._900562940skill5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get skill2() : Image
        {
            return this._900562943skill2;
        }// end function

        public function get defenceStategyList() : MyTileList
        {
            return this._260572689defenceStategyList;
        }// end function

        public function setStroopStrategyData(param1:Array) : void
        {
            var _loc_4:Object;
            var _loc_5:Object;
            var _loc_6:Boolean;
            var _loc_7:int;
            if (this.troopStrategyConfigArr == null)
            {
                this.troopStrategyConfigArr = [];
                for each (_loc_4 in this.troopStrategyConfig)
                {
                    // label
                    this.troopStrategyConfigArr.push(_loc_4);
                }// end of for each ... in
                this.troopStrategyConfigArr.sortOn("id", Array.NUMERIC);
            }// end if
            this.attackIndex = -1;
            this.defenceIndex = -1;
            var _loc_2:* = new ArrayCollection(this.troopStrategyConfigArr);
            var _loc_3:int;
            while (_loc_3 < _loc_2.length)
            {
                // label
                _loc_5 = _loc_2[_loc_3];
                if (_loc_5.id == this.characterHerosList.attackTroopStrategyId)
                {
                    this.attackIndex = _loc_3;
                }// end if
                if (_loc_5.id == this.characterHerosList.defenceTroopStrategyId)
                {
                    this.defenceIndex = _loc_3;
                }// end if
                _loc_6 = true;
                for each (_loc_7 in param1)
                {
                    // label
                    if (_loc_7 == _loc_5.id)
                    {
                        _loc_6 = false;
                        break;
                    }// end if
                }// end of for each ... in
                _loc_5["locked"] = _loc_6;
                if (_loc_6 == false)
                {
                    this._attackHeroDict[_loc_5] = this.createHeroAttackPositionAc(_loc_5);
                    this._defenceHeroDict[_loc_5] = this.createHeroDefencePositionAc(_loc_5);
                }// end if
                _loc_3++;
            }// end while
            this.attackStrategyList.dataProvider = _loc_2;
            this.attackStrategyList.selectedIndex = this.attackIndex;
            this.defenceStategyList.dataProvider = _loc_2;
            this.defenceStategyList.selectedIndex = this.defenceIndex;
            this.setTotalfight();
            return;
        }// end function

        private function fireHeroClick() : void
        {
            var hero:CharacterLogicHero;
            if (this.characterHerosList.heroes == null || this.characterHerosList.heroes.length <= 1)
            {
                MyAlert.show(Lang.msg("???????????"));
                return;
            }// end if
            hero = this.heroDistributeList.selectedItem as CharacterLogicHero;
            MyAlert.show(Lang.msg("??????????"), "", MyAlert.CONFIRM | MyAlert.CANCEL, this, 
function (param1:CloseEvent) : void
{
    var _loc_2:HeroEvent;
    if (param1.detail == MyAlert.CONFIRM)
    {
        _loc_2 = new HeroEvent(HeroEvent.FIRE_HERO_EVENT, true);
        _loc_2.heroId = hero.id;
        dispatchEvent(_loc_2);
    }// end if
    return;
}// end function
);
            return;
        }// end function

        public function setTroopstrategyRes() : void
        {
            this.init();
            this.setTotalfight();
            this.strategyChanged = false;
            return;
        }// end function

        public function set defenceStategyList(param1:MyTileList) : void
        {
            var _loc_2:* = this._260572689defenceStategyList;
            if (_loc_2 !== param1)
            {
                this._260572689defenceStategyList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defenceStategyList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function getHeroItemFromHerosDefencePosition(param1:int) : CharacterLogicHero
        {
            var _loc_2:CharacterLogicHero;
            for each (_loc_2 in this.herosDefencePosition.dataProvider)
            {
                // label
                if (_loc_2.id == param1)
                {
                    return _loc_2;
                }// end if
            }// end of for each ... in
            return null;
        }// end function

        public function getAttackHeroDict() : Dictionary
        {
            return this._attackHeroDict;
        }// end function

        public function set skill2(param1:Image) : void
        {
            var _loc_2:* = this._900562943skill2;
            if (_loc_2 !== param1)
            {
                this._900562943skill2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set attackStrategyList(param1:MyTileList) : void
        {
            var _loc_2:* = this._397546215attackStrategyList;
            if (_loc_2 !== param1)
            {
                this._397546215attackStrategyList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackStrategyList", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDistributeComponent_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = HeroItemRenderer;
            return _loc_1;
        }// end function

        public function get skill3() : Image
        {
            return this._900562942skill3;
        }// end function

        public function getHeroItemFromHerosAttacPosition(param1:int) : CharacterLogicHero
        {
            var _loc_2:CharacterLogicHero;
            for each (_loc_2 in this.herosAttacPosition.dataProvider)
            {
                // label
                if (_loc_2.id == param1)
                {
                    return _loc_2;
                }// end if
            }// end of for each ... in
            return null;
        }// end function

        public function guideTragHero() : void
        {
            var _loc_1:* = this.herosAttacPosition.dataProvider as ArrayCollection;
            var _loc_2:* = _loc_1.getItemAt(2);
            var _loc_3:* = _loc_1.getItemAt(4);
            _loc_1.setItemAt(_loc_3, 2);
            _loc_1.setItemAt(_loc_2, 4);
            this.strategyChanged = true;
            return;
        }// end function

        public function updateHero(param1:CharacterLogicHero) : void
        {
            if (this.heroDistributeList && this.heroDistributeList.selectedItem == param1)
            {
                this.setHeroDetail(param1);
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

        public function __heroImg_toolTipCreate(param1:ToolTipEvent) : void
        {
            this.onTips(param1);
            return;
        }// end function

        private function onSetStrategyClick() : void
        {
            var _loc_4:HeroEvent;
            var _loc_1:* = (CacheManager.getInstance().getCache(CacheType.BASE) as CharacterLogicBase).state;
            if (_loc_1 == CharacterStateType.UPGRADE)
            {
                _loc_4 = new HeroEvent(HeroEvent.STOP_UPGRADE, true);
                dispatchEvent(_loc_4);
                return;
            }// end if
            var _loc_2:* = new HeroEvent(HeroEvent.SET_TROOPSTRATEGY_EVENT, true);
            var _loc_3:Object;
            _loc_3.attackTroopStrategyId = this.currntAttackStrategyConfig.id;
            _loc_3.attackTroopStrategy = this.formatFromArrayCllectionToObject(this.herosAttacPosition.dataProvider as ArrayCollection);
            _loc_3.defenceTroopStrategyId = this.currentDefenceStrategyConfig.id;
            _loc_3.defenceTroopStrategy = this.formatFromArrayCllectionToObject(this.herosDefencePosition.dataProvider as ArrayCollection);
            _loc_2.data = _loc_3;
            dispatchEvent(_loc_2);
            return;
        }// end function

        private function formatFromArrayCllectionToObject(param1:ArrayCollection) : Object
        {
            var _loc_3:int;
            var _loc_4:CharacterLogicHero;
            var _loc_5:String;
            var _loc_2:Object;
            while (_loc_3 < param1.length)
            {
                // label
                _loc_4 = param1[_loc_3] as CharacterLogicHero;
                _loc_5 = int(_loc_3 / 4 + 1).toString() + int(_loc_3 % 4 + 1).toString();
                _loc_2[_loc_5] = _loc_4.id;
                _loc_3++;
            }// end while
            return _loc_2;
        }// end function

        public function ___HeroDistributeComponent_MyBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.mybordercanvas1_creationCompleteHandler(param1);
            return;
        }// end function

        private function setAttackStragyDetail(param1:Object) : void
        {
            if (param1 == null)
            {
                return;
            }// end if
            if (param1["locked"] == true)
            {
                return;
            }// end if
            this.currntAttackStrategyConfig = param1;
            if (!this._attackHeroDict[param1])
            {
                this._attackHeroDict[param1] = this.createHeroAttackPositionAc(param1);
            }// end if
            if (this.herosAttacPosition.dataProvider != null && this.herosAttacPosition.dataProvider != this._attackHeroDict[param1])
            {
                this.strategyChanged = true;
            }// end if
            this.herosAttacPosition.dataProvider = this._attackHeroDict[param1];
            return;
        }// end function

        public function get herosDefencePosition() : MyTileList
        {
            return this._1128806560herosDefencePosition;
        }// end function

        private function getSoldierType(param1:int) : String
        {
            var _loc_2:* = ConfigResource.getInstance().getSoldierConfig();
            var _loc_3:* = _loc_2[param1];
            if (_loc_3 == null)
            {
                return "N/A";
            }// end if
            var _loc_4:* = _loc_3["soldierTypeId"];
            var _loc_5:* = ConfigResource.getInstance().getSoldierTypeConfig();
            var _loc_6:* = ConfigResource.getInstance().getSoldierTypeConfig()[_loc_4].name;
            if (ConfigResource.getInstance().getSoldierTypeConfig()[_loc_4].name == "Ranger")
            {
                _loc_6 = "Cavalry";
            }
            else if (_loc_6 == "Mage")
            {
                _loc_6 = "Spellcaster";
            }
            else if (_loc_6 == "Fly")
            {
                _loc_6 = "Flying Unit";
            }// end else if
            return _loc_6;
        }// end function

        public function ___HeroDistributeComponent_Button2_click(param1:MouseEvent) : void
        {
            this.onSwitchClick();
            return;
        }// end function

        private function getCharacterLogicHeroById(param1:int) : CharacterLogicHero
        {
            var _loc_2:CharacterLogicHero;
            var _loc_3:CharacterLogicHero;
            if (param1 <= 0)
            {
                _loc_2 = new CharacterLogicHero();
                _loc_2.id = param1;
            }
            else
            {
                for each (_loc_3 in this.characterHerosList.heroes)
                {
                    // label
                    if (_loc_3.id == param1)
                    {
                        _loc_2 = _loc_3 as CharacterLogicHero;
                        break;
                    }// end if
                }// end of for each ... in
            }// end else if
            return _loc_2;
        }// end function

        public function get defenceTotalFightLabel() : Label
        {
            return this._2095061832defenceTotalFightLabel;
        }// end function

        protected function mybordercanvas1_creationCompleteHandler(param1:FlexEvent) : void
        {
            BindingUtils.bindSetter(this.setHeroDetail, this.heroDistributeList, "selectedItem");
            BindingUtils.bindSetter(this.setAttackStragyDetail, this.attackStrategyList, "selectedItem");
            BindingUtils.bindSetter(this.setDefenceStragyDetail, this.defenceStategyList, "selectedItem");
            return;
        }// end function

        public function get heroDistributeList() : MyTileList
        {
            return this._743280825heroDistributeList;
        }// end function

        private function createHeroAttackPositionAc(param1:Object) : ArrayCollection
        {
            var _loc_3:int;
            var _loc_4:int;
            var _loc_5:String;
            var _loc_6:int;
            var _loc_7:int;
            var _loc_2:* = new ArrayCollection();
            if (param1.id == this.characterHerosList.attackTroopStrategyId)
            {
                _loc_3 = 1;
                while (_loc_3 < 3)
                {
                    // label
                    _loc_4 = 1;
                    while (_loc_4 < 5)
                    {
                        // label
                        _loc_5 = _loc_3.toString() + _loc_4.toString();
                        _loc_6 = this.characterHerosList.attackTroopStrategy[_loc_5] as int;
                        _loc_2.addItem(this.getCharacterLogicHeroById(_loc_6));
                        _loc_4++;
                    }// end while
                    _loc_3++;
                }// end while
            }
            else
            {
                _loc_3 = 1;
                while (_loc_3 < 3)
                {
                    // label
                    _loc_4 = 1;
                    while (_loc_4 < 5)
                    {
                        // label
                        _loc_5 = "pos" + _loc_3.toString() + _loc_4.toString();
                        _loc_7 = param1[_loc_5] as int;
                        if (_loc_7 > 0)
                        {
                            _loc_2.addItem(this.getCharacterLogicHeroById(0));
                        }
                        else
                        {
                            _loc_2.addItem(this.getCharacterLogicHeroById(-1));
                        }// end else if
                        _loc_4++;
                    }// end while
                    _loc_3++;
                }// end while
            }// end else if
            return _loc_2;
        }// end function

        private function get characterHerosList() : CharacterHerosList
        {
            return this._470332110characterHerosList;
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

        public function get fightLabel() : Label
        {
            return this._952398020fightLabel;
        }// end function

        private function setDefenceStragyDetail(param1:Object) : void
        {
            if (param1 == null)
            {
                return;
            }// end if
            if (param1["locked"] == true)
            {
                return;
            }// end if
            this.currentDefenceStrategyConfig = param1;
            if (!this._defenceHeroDict[param1])
            {
                this._defenceHeroDict[param1] = this.createHeroDefencePositionAc(param1);
            }// end if
            if (this.herosDefencePosition.dataProvider != null && this.herosDefencePosition.dataProvider != this._defenceHeroDict[param1])
            {
                this.strategyChanged = true;
            }// end if
            this.herosDefencePosition.dataProvider = this._defenceHeroDict[param1];
            return;
        }// end function

        public function __confirmBtn_click(param1:MouseEvent) : void
        {
            this.onSetStrategyClick();
            return;
        }// end function

        private function setHeroDetail(param1:Object) : void
        {
            var _loc_7:Image;
            var _loc_8:Image;
            var _loc_11:int;
            var _loc_12:String;
            var _loc_13:String;
            if (param1 == null)
            {
                return;
            }// end if
            var _loc_2:* = this.owner.parent as HeroComponent;
            _loc_2.currentHeroSelectedIndex = this.heroDistributeList.selectedIndex;
            var _loc_3:* = param1 as CharacterLogicHero;
            this.heroDesc.htmlText = _loc_3.desc;
            this.level.text = _loc_3.level.toString();
            this.heroName.setStyle("color", ColorConfig.getHeroColor(_loc_3.heroColorId));
            this.heroName.text = _loc_3.name;
            this.heroImg.source = ImageResource.getInstance().getHeroImageURL(_loc_3.photoId);
            this.type.text = HeroType.getHeroTypeName(_loc_3.type);
            this.heroInfo = _loc_3;
            this.soldierType.text = this.getSoldierType(_loc_3.soldierId);
            this.leaderLabel.text = _loc_3.soldierCount * this.eachSoldierPopulation(_loc_3.soldierId) + "/" + (_loc_3.leadershipAdd + _loc_3.leadershipBase);
            this.fightLabel.text = _loc_3.fightingPoint.toString();
            var _loc_4:* = ConfigResource.getInstance().getHeroLevel();
            var _loc_5:* = ConfigResource.getInstance().getHeroLevel()[_loc_3.level]["experience"];
            if (ConfigResource.getInstance().getHeroLevel()[_loc_3.level]["experience"] < 0)
            {
                _loc_5 = 0;
            }// end if
            this.heroExp.currentHp = _loc_3.experience;
            this.heroExp.totalHp = _loc_5;
            var _loc_6:* = !_loc_3.skillIds ? (0) : (_loc_3.skillIds.length);
            var _loc_9:int;
            while (_loc_9 < _loc_6)
            {
                // label
                _loc_11 = _loc_3.skillIds[_loc_9];
                _loc_7 = this["skill" + _loc_9] as Image;
                _loc_7.visible = true;
                _loc_8 = this["skillBorder" + _loc_9] as Image;
                _loc_8.visible = true;
                if (_loc_11 > 0)
                {
                    _loc_7.source = ImageResource.getInstance().getSkillImageURL(_loc_11);
                    _loc_12 = ConfigResource.getInstance().getName(_loc_11);
                    _loc_13 = ConfigResource.getInstance().getDesc(_loc_11);
                    _loc_7.toolTip = HtmlUtil.sizeColor(_loc_12, 11, "#FFFF00", true) + "\n" + _loc_13;
                }
                else if (_loc_11 == 0)
                {
                    _loc_7.source = ImageResource.getInstance().getImgClass("skillEmpty");
                    _loc_7.toolTip = Lang.msg("??????");
                }
                else if (_loc_11 == -1)
                {
                    _loc_7.source = ImageResource.getInstance().getImgClass("enterCityLock");
                    _loc_7.toolTip = Lang.msg("??????");
                }// end else if
                _loc_7.visible = true;
                _loc_9++;
            }// end while
            var _loc_10:* = _loc_9;
            while (_loc_10 < 6)
            {
                // label
                _loc_7 = this["skill" + _loc_10] as Image;
                _loc_7.visible = false;
                _loc_8 = this["skillBorder" + _loc_10] as Image;
                _loc_8.visible = false;
                _loc_10++;
            }// end while
            return;
        }// end function

        public function set confirmBtn(param1:Button) : void
        {
            var _loc_2:* = this._842377084confirmBtn;
            if (_loc_2 !== param1)
            {
                this._842377084confirmBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "confirmBtn", _loc_2, param1));
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

        public function getDefenceHeroDict() : Dictionary
        {
            return this._defenceHeroDict;
        }// end function

        public function init(param1:Object = null) : void
        {
            var _loc_2:* = this.owner.parent as HeroComponent;
            _loc_2.currentHeroSelectedIndex = Math.min(_loc_2.currentHeroSelectedIndex, this.characterHerosList.heroes.length--);
            if (_loc_2.currentHeroSelectedIndex == -1)
            {
                _loc_2.currentHeroSelectedIndex = 0;
            }// end if
            this.setStroopStrategyData(this.characterHerosList.troopStrategyIds);
            this.strategyChanged = false;
            callLater(this.laterInit);
            return;
        }// end function

        public function get attackStrategyList() : MyTileList
        {
            return this._397546215attackStrategyList;
        }// end function

        private function createHeroDefencePositionAc(param1:Object) : ArrayCollection
        {
            var _loc_3:int;
            var _loc_4:int;
            var _loc_5:String;
            var _loc_6:int;
            var _loc_7:int;
            var _loc_2:* = new ArrayCollection();
            if (param1.id == this.characterHerosList.defenceTroopStrategyId)
            {
                _loc_3 = 1;
                while (_loc_3 < 3)
                {
                    // label
                    _loc_4 = 1;
                    while (_loc_4 < 5)
                    {
                        // label
                        _loc_5 = _loc_3.toString() + _loc_4.toString();
                        _loc_6 = this.characterHerosList.defenceTroopStrategy[_loc_5] as int;
                        _loc_2.addItem(this.getCharacterLogicHeroById(_loc_6));
                        _loc_4++;
                    }// end while
                    _loc_3++;
                }// end while
            }
            else
            {
                _loc_3 = 1;
                while (_loc_3 < 3)
                {
                    // label
                    _loc_4 = 1;
                    while (_loc_4 < 5)
                    {
                        // label
                        _loc_5 = "pos" + _loc_3.toString() + _loc_4.toString();
                        _loc_7 = param1[_loc_5] as int;
                        if (_loc_7 > 0)
                        {
                            _loc_2.addItem(this.getCharacterLogicHeroById(0));
                        }
                        else
                        {
                            _loc_2.addItem(this.getCharacterLogicHeroById(-1));
                        }// end else if
                        _loc_4++;
                    }// end while
                    _loc_3++;
                }// end while
            }// end else if
            return _loc_2;
        }// end function

        public function set herosAttacPosition(param1:MyTileList) : void
        {
            var _loc_2:* = this._673071507herosAttacPosition;
            if (_loc_2 !== param1)
            {
                this._673071507herosAttacPosition = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "herosAttacPosition", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDistributeComponent_ClassFactory5_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = TroopStrategyDetailItemRenderer;
            return _loc_1;
        }// end function

        public function __heroDistributeList_dragDrop(param1:DragEvent) : void
        {
            this.heroDistributeList_dragDropHandler(param1);
            return;
        }// end function

        public function set herosDefencePosition(param1:MyTileList) : void
        {
            var _loc_2:* = this._1128806560herosDefencePosition;
            if (_loc_2 !== param1)
            {
                this._1128806560herosDefencePosition = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "herosDefencePosition", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get type() : Label
        {
            return this._3575610type;
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

        private function setTotalfight() : void
        {
            var _loc_1:CharacterLogicHero;
            this._totalAttackFight = 0;
            this._totalDefenceFight = 0;
            for each (_loc_1 in this.characterHerosList.heroes)
            {
                // label
                if (_loc_1.state == 0)
                {
                    this._totalAttackFight = this._totalAttackFight + _loc_1.fightingPoint;
                    continue;
                }// end if
                if (_loc_1.state == 1)
                {
                    this._totalDefenceFight = this._totalDefenceFight + _loc_1.fightingPoint;
                }// end if
            }// end of for each ... in
            this.attackTotalFightLabel.htmlText = Lang.msg("??????") + ": " + HtmlUtil.sizeColor(this._totalAttackFight.toString(), 10, "#979700");
            this.defenceTotalFightLabel.htmlText = Lang.msg("??????") + ": " + HtmlUtil.sizeColor(this._totalDefenceFight.toString(), 10, "#979700");
            return;
        }// end function

        private function onSwitchClick() : void
        {
            var _loc_1:* = (this.attackStrategyList.dataProvider as ArrayCollection).getItemIndex(this.currntAttackStrategyConfig);
            var _loc_2:* = (this.defenceStategyList.dataProvider as ArrayCollection).getItemIndex(this.currentDefenceStrategyConfig);
            var _loc_3:* = this.currntAttackStrategyConfig;
            this.currntAttackStrategyConfig = this.currentDefenceStrategyConfig;
            this.currentDefenceStrategyConfig = _loc_3;
            var _loc_4:* = this._attackHeroDict[this.currentDefenceStrategyConfig] as ArrayCollection;
            this._attackHeroDict[this.currentDefenceStrategyConfig] = new ArrayCollection((this._defenceHeroDict[this.currentDefenceStrategyConfig] as ArrayCollection).source);
            this._defenceHeroDict[this.currentDefenceStrategyConfig] = new ArrayCollection(_loc_4.source);
            if (_loc_1 != _loc_2)
            {
                _loc_4 = this._attackHeroDict[this.currntAttackStrategyConfig] as ArrayCollection;
                this._attackHeroDict[this.currntAttackStrategyConfig] = new ArrayCollection((this._defenceHeroDict[this.currntAttackStrategyConfig] as ArrayCollection).source);
                this._defenceHeroDict[this.currntAttackStrategyConfig] = new ArrayCollection(_loc_4.source);
            }// end if
            this.attackStrategyList.selectedIndex = _loc_2;
            this.defenceStategyList.selectedIndex = _loc_1;
            return;
        }// end function

        public function set heroDesc(param1:TextArea) : void
        {
            var _loc_2:* = this._619399765heroDesc;
            if (_loc_2 !== param1)
            {
                this._619399765heroDesc = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroDesc", _loc_2, param1));
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
            this.fireHeroClick();
            return;
        }// end function

        public function fireHero(param1:int) : void
        {
            var _loc_3:ArrayCollection;
            var _loc_4:int;
            var _loc_5:CharacterLogicHero;
            this.init();
            var _loc_2:Boolean;
            for each (_loc_3 in this._attackHeroDict)
            {
                // label
                _loc_4 = 0;
                while (_loc_4 < _loc_3.length)
                {
                    // label
                    _loc_5 = _loc_3[_loc_4] as CharacterLogicHero;
                    if (_loc_5.id == param1)
                    {
                        _loc_3.setItemAt(new CharacterLogicHero(), _loc_4);
                        _loc_2 = true;
                        break;
                    }// end if
                    _loc_4++;
                }// end while
            }// end of for each ... in
            if (_loc_2 == false)
            {
                for each (_loc_3 in this._defenceHeroDict)
                {
                    // label
                    _loc_4 = 0;
                    while (_loc_4 < _loc_3.length)
                    {
                        // label
                        _loc_5 = _loc_3[_loc_4] as CharacterLogicHero;
                        if (_loc_5.id == param1)
                        {
                            _loc_3.setItemAt(new CharacterLogicHero(), _loc_4);
                            _loc_2 = true;
                            break;
                        }// end if
                        _loc_4++;
                    }// end while
                }// end of for each ... in
            }// end if
            this.setTotalfight();
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

        protected function heroDistributeList_dragEnterHandler(param1:DragEvent) : void
        {
            var _loc_2:* = param1.dragInitiator.owner as ListBase;
            if (_loc_2.id == "herosAttacPosition" || _loc_2.id == "herosDefencePosition")
            {
                DragManager.acceptDragDrop(param1.currentTarget as ListBase);
                DragManager.showFeedback(DragManager.LINK);
            }// end if
            return;
        }// end function

        public function set defenceTotalFightLabel(param1:Label) : void
        {
            var _loc_2:* = this._2095061832defenceTotalFightLabel;
            if (_loc_2 !== param1)
            {
                this._2095061832defenceTotalFightLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defenceTotalFightLabel", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDistributeComponent_ClassFactory4_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = TroopStrategyDetailItemRenderer;
            return _loc_1;
        }// end function

        public function set heroDistributeList(param1:MyTileList) : void
        {
            var _loc_2:* = this._743280825heroDistributeList;
            if (_loc_2 !== param1)
            {
                this._743280825heroDistributeList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroDistributeList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get confirmBtn() : Button
        {
            return this._842377084confirmBtn;
        }// end function

        public function set strategyChanged(param1:Boolean) : void
        {
            var _loc_2:* = this._7462975strategyChanged;
            if (_loc_2 !== param1)
            {
                this._7462975strategyChanged = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "strategyChanged", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set defaultTileListEffect(param1:DefaultTileListEffect) : void
        {
            var _loc_2:* = this._605015618defaultTileListEffect;
            if (_loc_2 !== param1)
            {
                this._605015618defaultTileListEffect = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defaultTileListEffect", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set attackTotalFightLabel(param1:Label) : void
        {
            var _loc_2:* = this._900246592attackTotalFightLabel;
            if (_loc_2 !== param1)
            {
                this._900246592attackTotalFightLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attackTotalFightLabel", _loc_2, param1));
            }// end if
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

        override public function initialize() : void
        {
            var target:HeroDistributeComponent;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroDistributeComponent_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroDistributeComponentWatcherSetupUtil");
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

        public function get herosAttacPosition() : MyTileList
        {
            return this._673071507herosAttacPosition;
        }// end function

        public function set heroExp(param1:HpRatioComponent) : void
        {
            var _loc_2:* = this._811304899heroExp;
            if (_loc_2 !== param1)
            {
                this._811304899heroExp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroExp", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get level() : Label
        {
            return this._102865796level;
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

        public function get heroName() : Label
        {
            return this._619105883heroName;
        }// end function

        public function get heroDesc() : TextArea
        {
            return this._619399765heroDesc;
        }// end function

        private function _HeroDistributeComponent_ClassFactory3_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = troopStrategySmallItemRenderer;
            return _loc_1;
        }// end function

        private function _HeroDistributeComponent_bindingsSetup() : Array
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
    _HeroDistributeComponent_Label1.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label1.text");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return characterHerosList.heroes;
}// end function
, 
function (param1:Object) : void
{
    heroDistributeList.dataProvider = param1;
    return;
}// end function
, "heroDistributeList.dataProvider");
            result[1] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder0.source = param1;
    return;
}// end function
, "skillBorder0.source");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder1.source = param1;
    return;
}// end function
, "skillBorder1.source");
            result[3] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder2.source = param1;
    return;
}// end function
, "skillBorder2.source");
            result[4] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder3.source = param1;
    return;
}// end function
, "skillBorder3.source");
            result[5] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder4.source = param1;
    return;
}// end function
, "skillBorder4.source");
            result[6] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder5.source = param1;
    return;
}// end function
, "skillBorder5.source");
            result[7] = binding;
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
    buttonRecruit.label = param1;
    return;
}// end function
, "buttonRecruit.label");
            result[8] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDistributeComponent_Text1.htmlText = param1;
    return;
}// end function
, "_HeroDistributeComponent_Text1.htmlText");
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
    _HeroDistributeComponent_Label2.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label2.text");
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
    _HeroDistributeComponent_Label2.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label2.toolTip");
            result[11] = binding;
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
    _HeroDistributeComponent_Label3.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label3.text");
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
    _HeroDistributeComponent_Label3.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label3.toolTip");
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
    _HeroDistributeComponent_Label4.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label4.text");
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
    _HeroDistributeComponent_Label4.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label4.toolTip");
            result[15] = binding;
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
    _HeroDistributeComponent_Label8.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label8.toolTip");
            result[16] = binding;
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
    _HeroDistributeComponent_Label9.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label9.text");
            result[17] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDistributeComponent_Label9.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label9.toolTip");
            result[18] = binding;
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
    _HeroDistributeComponent_Label11.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label11.text");
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
    _HeroDistributeComponent_Label11.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label11.toolTip");
            result[20] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("?????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDistributeComponent_Label13.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label13.text");
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
    _HeroDistributeComponent_Label13.toolTip = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label13.toolTip");
            result[22] = binding;
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
    _HeroDistributeComponent_Button2.label = param1;
    return;
}// end function
, "_HeroDistributeComponent_Button2.label");
            result[23] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return strategyChanged;
}// end function
, 
function (param1:Boolean) : void
{
    confirmBtn.enabled = param1;
    return;
}// end function
, "confirmBtn.enabled");
            result[24] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("attackIcon");
}// end function
, 
function (param1:Object) : void
{
    _HeroDistributeComponent_Image14.source = param1;
    return;
}// end function
, "_HeroDistributeComponent_Image14.source");
            result[25] = binding;
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
    _HeroDistributeComponent_Label15.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label15.text");
            result[26] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("defenceIcon");
}// end function
, 
function (param1:Object) : void
{
    _HeroDistributeComponent_Image15.source = param1;
    return;
}// end function
, "_HeroDistributeComponent_Image15.source");
            result[27] = binding;
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
    _HeroDistributeComponent_Label16.text = param1;
    return;
}// end function
, "_HeroDistributeComponent_Label16.text");
            result[28] = binding;
            binding = new Binding(this, 
function () : Array
{
    return [new GlowFilter(0, 0.7, 2, 2, 200, 1, false, false)];
}// end function
, 
function (param1:Array) : void
{
    _HeroDistributeComponent_Text2.filters = param1;
    return;
}// end function
, "_HeroDistributeComponent_Text2.filters");
            result[29] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDistributeComponent_Text2.htmlText = param1;
    return;
}// end function
, "_HeroDistributeComponent_Text2.htmlText");
            result[30] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return strategyChanged;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroDistributeComponent_Text2.visible = param1;
    return;
}// end function
, "_HeroDistributeComponent_Text2.visible");
            result[31] = binding;
            return result;
        }// end function

        private function onTips(param1:ToolTipEvent) : void
        {
            CharacterToolTipData.getInstance().isNull();
            CharacterToolTipData.getInstance().heroTipSelect = true;
            CharacterToolTipData.getInstance().heroData = this.heroInfo;
            var _loc_2:* = new CharacterToolTips();
            param1.toolTip = _loc_2;
            return;
        }// end function

        public function set soldierType(param1:Label) : void
        {
            var _loc_2:* = this._1419703260soldierType;
            if (_loc_2 !== param1)
            {
                this._1419703260soldierType = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "soldierType", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get buttonRecruit() : Button
        {
            return this._1955603540buttonRecruit;
        }// end function

        private function laterInit() : void
        {
            var _loc_1:* = this.owner.parent as HeroComponent;
            this.heroDistributeList.selectedIndex = _loc_1.currentHeroSelectedIndex;
            return;
        }// end function

        public function get defaultTileListEffect() : DefaultTileListEffect
        {
            return this._605015618defaultTileListEffect;
        }// end function

        public function get heroExp() : HpRatioComponent
        {
            return this._811304899heroExp;
        }// end function

        public function get attackTotalFightLabel() : Label
        {
            return this._900246592attackTotalFightLabel;
        }// end function

        public function get soldierType() : Label
        {
            return this._1419703260soldierType;
        }// end function

        public function __heroDistributeList_dragEnter(param1:DragEvent) : void
        {
            this.heroDistributeList_dragEnterHandler(param1);
            return;
        }// end function

        public function get strategyChanged() : Boolean
        {
            return this._7462975strategyChanged;
        }// end function

        public function set skillBorder0(param1:Image) : void
        {
            var _loc_2:* = this._1449405965skillBorder0;
            if (_loc_2 !== param1)
            {
                this._1449405965skillBorder0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder0", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDistributeComponent_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = troopStrategySmallItemRenderer;
            return _loc_1;
        }// end function

        public function set skillBorder2(param1:Image) : void
        {
            var _loc_2:* = this._1449405963skillBorder2;
            if (_loc_2 !== param1)
            {
                this._1449405963skillBorder2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder4(param1:Image) : void
        {
            var _loc_2:* = this._1449405961skillBorder4;
            if (_loc_2 !== param1)
            {
                this._1449405961skillBorder4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder1(param1:Image) : void
        {
            var _loc_2:* = this._1449405964skillBorder1;
            if (_loc_2 !== param1)
            {
                this._1449405964skillBorder1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder5(param1:Image) : void
        {
            var _loc_2:* = this._1449405960skillBorder5;
            if (_loc_2 !== param1)
            {
                this._1449405960skillBorder5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder5", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroDistributeComponent_DefaultTileListEffect1_i() : DefaultTileListEffect
        {
            var _loc_1:* = new DefaultTileListEffect();
            this.defaultTileListEffect = _loc_1;
            return _loc_1;
        }// end function

        public function get skillBorder0() : Image
        {
            return this._1449405965skillBorder0;
        }// end function

        public function get skillBorder1() : Image
        {
            return this._1449405964skillBorder1;
        }// end function

        private function _HeroDistributeComponent_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("????");
            _loc_1 = this.characterHerosList.heroes;
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????2") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("??????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("?????") + ":";
            _loc_1 = Lang.msg("?????");
            _loc_1 = Lang.msg("??");
            _loc_1 = this.strategyChanged;
            _loc_1 = ImageResource.getInstance().getImgClass("attackIcon");
            _loc_1 = Lang.msg("????");
            _loc_1 = ImageResource.getInstance().getImgClass("defenceIcon");
            _loc_1 = Lang.msg("????");
            _loc_1 = [new GlowFilter(0, 0.7, 2, 2, 200, 1, false, false)];
            _loc_1 = Lang.msg("????????");
            _loc_1 = this.strategyChanged;
            return;
        }// end function

        public function get skillBorder4() : Image
        {
            return this._1449405961skillBorder4;
        }// end function

        public function get skillBorder5() : Image
        {
            return this._1449405960skillBorder5;
        }// end function

        public function set skillBorder3(param1:Image) : void
        {
            var _loc_2:* = this._1449405962skillBorder3;
            if (_loc_2 !== param1)
            {
                this._1449405962skillBorder3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get skillBorder3() : Image
        {
            return this._1449405962skillBorder3;
        }// end function

        public function set skill0(param1:Image) : void
        {
            var _loc_2:* = this._900562945skill0;
            if (_loc_2 !== param1)
            {
                this._900562945skill0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get skill0() : Image
        {
            return this._900562945skill0;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroDistributeComponent._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
