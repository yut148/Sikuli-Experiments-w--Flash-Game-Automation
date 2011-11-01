package modules.hero.itemRender
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.cgame.utils.*;
    import com.game.display.*;
    import com.game.error.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.*;
    import modules.comm.data.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;

    public class TroopStrategyDetailItemRenderer extends Canvas implements IBindingClient, IDropInListItemRenderer
    {
        private var listCol:int;
        private var _811308393heroImg:Image;
        private var troopStrategyConfig:Object;
        public var _TroopStrategyDetailItemRenderer_Image2:Image;
        private var _873611979tipCan:Canvas;
        var _watchers:Array;
        private var _876557871_radioButtonGroup:RadioButtonGroup;
        private var _listData:BaseListData;
        var _bindingsByDestination:Object;
        private var configObj:Object;
        private var listRow:int;
        var _bindingsBeginWithWord:Object;
        private var heroUnLockedImg:Class;
        var _bindings:Array;
        private var _1345105039listBase:ListBase;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var heroLockedImg:Class;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function TroopStrategyDetailItemRenderer()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:52, height:50, childDescriptors:[new UIComponentDescriptor({type:Image, id:"heroImg", propertiesFactory:
function () : Object
{
    return {width:50, height:50};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_TroopStrategyDetailItemRenderer_Image2", propertiesFactory:
function () : Object
{
    return {x:28, y:28, width:23, height:21};
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"tipCan", propertiesFactory:
function () : Object
{
    return {width:50, height:50};
}// end function
})]};
}// end function
});
            this.heroLockedImg = TroopStrategyDetailItemRenderer_heroLockedImg;
            this.heroUnLockedImg = TroopStrategyDetailItemRenderer_heroUnLockedImg;
            this.troopStrategyConfig = ConfigResource.getInstance().getTroopStrategy();
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 52;
            this.height = 50;
            this.addEventListener("dragEnter", this.___TroopStrategyDetailItemRenderer_Canvas1_dragEnter);
            this.addEventListener("dragDrop", this.___TroopStrategyDetailItemRenderer_Canvas1_dragDrop);
            this.addEventListener("mouseDown", this.___TroopStrategyDetailItemRenderer_Canvas1_mouseDown);
            this.addEventListener("mouseOver", this.___TroopStrategyDetailItemRenderer_Canvas1_mouseOver);
            return;
        }// end function

        public function ___TroopStrategyDetailItemRenderer_Canvas1_mouseOver(param1:MouseEvent) : void
        {
            this.canvas1_mouseOverHandler(param1);
            return;
        }// end function

        private function setToolTipEnable() : void
        {
            ToolTipManager.enabled = true;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:TroopStrategyDetailItemRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._TroopStrategyDetailItemRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_itemRender_TroopStrategyDetailItemRendererWatcherSetupUtil");
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

        protected function canvas1_mouseDownHandler(param1:MouseEvent) : void
        {
            var _loc_2:HeroDistributeComponent;
            var _loc_3:Canvas;
            var _loc_4:DragSource;
            var _loc_5:Canvas;
            if (this.listBase.id == "herosAttacPosition" || this.listBase.id == "herosDefencePosition")
            {
                if (data.id > 0)
                {
                    _loc_2 = this.listBase.document as HeroDistributeComponent;
                    _loc_2.heroDistributeList.selectedItem = data;
                    _loc_3 = param1.currentTarget as Canvas;
                    _loc_4 = new DragSource();
                    _loc_4.addData(data, "hero");
                    _loc_5 = new Canvas();
                    _loc_5.width = this.heroImg.width;
                    _loc_5.height = this.heroImg.height;
                    _loc_5.setStyle("backgroundImage", this.heroImg.source);
                    DragManager.doDrag(_loc_3, _loc_4, param1, _loc_5, 0, 0, 0.6);
                }// end if
            }// end if
            return;
        }// end function

        private function _TroopStrategyDetailItemRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Object
{
    return getImageByHeriId(data.id);
}// end function
, 
function (param1:Object) : void
{
    heroImg.source = param1;
    return;
}// end function
, "heroImg.source");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return getIcon(data as CharacterLogicHero);
}// end function
, 
function (param1:Object) : void
{
    _TroopStrategyDetailItemRenderer_Image2.source = param1;
    return;
}// end function
, "_TroopStrategyDetailItemRenderer_Image2.source");
            result[1] = binding;
            return result;
        }// end function

        protected function canvas1_dragDropHandler(param1:DragEvent) : void
        {
            var _loc_13:ArrayCollection;
            var _loc_14:ListBase;
            var _loc_15:ArrayCollection;
            var _loc_16:int;
            var _loc_17:int;
            var _loc_18:int;
            if (!param1.dragSource.hasFormat("hero"))
            {
                return;
            }// end if
            var _loc_2:* = this.listBase.document as HeroDistributeComponent;
            var _loc_3:* = param1.dragSource.dataForFormat("hero");
            var _loc_4:* = (param1.dragInitiator as IListItemRenderer).owner as ListBase;
            var _loc_5:* = ((param1.dragInitiator as IListItemRenderer).owner as ListBase).dataProvider as ArrayCollection;
            var _loc_6:* = this.listBase;
            var _loc_7:* = this.listBase.dataProvider as ArrayCollection;
            var _loc_8:* = this.data;
            var _loc_9:* = _loc_7.getItemIndex(_loc_8);
            var _loc_10:* = _loc_7.getItemIndex(_loc_3);
            if (_loc_9 == -1)
            {
                ErrorManager.throwError("index is" + _loc_9);
                return;
            }// end if
            _loc_2.strategyChanged = true;
            _loc_7.setItemAt(_loc_3, _loc_9);
            if (_loc_4 == _loc_6)
            {
                _loc_5.setItemAt(_loc_8, _loc_10);
            }
            else if (_loc_4.id == "heroDistributeList")
            {
                if (_loc_10 != -1)
                {
                    _loc_7.setItemAt(_loc_8, _loc_10);
                }
                else
                {
                    if (_loc_6.id == "herosAttacPosition")
                    {
                        _loc_14 = _loc_2.herosDefencePosition;
                    }
                    else
                    {
                        _loc_14 = _loc_2.herosAttacPosition;
                    }// end else if
                    _loc_15 = _loc_14.dataProvider as ArrayCollection;
                    _loc_16 = _loc_15.getItemIndex(_loc_3);
                    if (_loc_16 != -1)
                    {
                        _loc_15.setItemAt(_loc_8, _loc_16);
                    }// end if
                }// end else if
            }
            else
            {
                _loc_17 = _loc_5.getItemIndex(_loc_3);
                if (_loc_17 != -1)
                {
                    _loc_5.setItemAt(_loc_8, _loc_17);
                }// end else if
            }// end else if
            var _loc_11:* = _loc_2.getAttackHeroDict();
            var _loc_12:* = _loc_2.getDefenceHeroDict();
            for each (_loc_13 in _loc_11)
            {
                // label
                if (_loc_13 != _loc_7)
                {
                    _loc_18 = _loc_13.getItemIndex(_loc_3);
                    if (_loc_18 != -1)
                    {
                        _loc_13.setItemAt(new CharacterLogicHero(), _loc_18);
                        break;
                    }// end if
                }// end if
            }// end of for each ... in
            for each (_loc_13 in _loc_12)
            {
                // label
                if (_loc_13 != _loc_7)
                {
                    _loc_18 = _loc_13.getItemIndex(_loc_3);
                    if (_loc_18 != -1)
                    {
                        _loc_13.setItemAt(new CharacterLogicHero(), _loc_18);
                        break;
                    }// end if
                }// end if
            }// end of for each ... in
            ToolTipManager.enabled = false;
            callLater(this.setToolTipEnable);
            return;
        }// end function

        private function set _radioButtonGroup(param1:RadioButtonGroup) : void
        {
            var _loc_2:* = this._876557871_radioButtonGroup;
            if (_loc_2 !== param1)
            {
                this._876557871_radioButtonGroup = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_radioButtonGroup", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set listBase(param1:ListBase) : void
        {
            var _loc_2:* = this._1345105039listBase;
            if (_loc_2 !== param1)
            {
                this._1345105039listBase = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "listBase", _loc_2, param1));
            }// end if
            return;
        }// end function

        protected function canvas1_mouseOverHandler(param1:MouseEvent) : void
        {
            ToolTipManager.enabled = true;
            return;
        }// end function

        private function get listBase() : ListBase
        {
            return this._1345105039listBase;
        }// end function

        private function getImageByHeriId(param1:int) : Object
        {
            var _loc_2:String;
            this.heroImg.alpha = 1;
            if (param1 < 0)
            {
                return null;
            }// end if
            if (param1 == 0)
            {
                return this.heroUnLockedImg;
            }// end if
            if (data.soldierCount <= 0)
            {
                this.heroImg.alpha = 0.5;
            }// end if
            _loc_2 = ImageResource.getInstance().getHeroImageURL(data.photoId);
            return ImageResource.getInstance().getHeroImageURL(data.photoId);
        }// end function

        public function get tipCan() : Canvas
        {
            return this._873611979tipCan;
        }// end function

        private function onTips(param1:ToolTipEvent) : void
        {
            var _loc_4:SoldierLogicInfo;
            var _loc_5:Object;
            CharacterToolTipData.getInstance().isNull();
            CharacterToolTipData.getInstance().heroTipSelect = true;
            CharacterToolTipData.getInstance().positionTip = this.getTipByPosition(this.listRow, this.listCol, this.configObj);
            var _loc_2:* = ConfigResource.getInstance().getSoldierConfig();
            if (data.id <= 0)
            {
                CharacterToolTipData.getInstance().isNull();
                if (data.id == 0)
                {
                    CharacterToolTipData.getInstance().positionTip = this.getTipByPosition(this.listRow, this.listCol, this.configObj);
                }// end if
            }
            else
            {
                CharacterToolTipData.getInstance().heroData = data as CharacterLogicHero;
                if (data.soldierCount <= 0)
                {
                    CharacterToolTipData.getInstance().heroNoSoldier = Lang.msg("??????");
                }
                else
                {
                    _loc_4 = new SoldierLogicInfo();
                    _loc_4.initByIdWithName(data.soldierId, data);
                    _loc_5 = {id:_loc_4.id, photoId:_loc_4.photoId, name:_loc_4.name, soldierType:ConfigResource.getInstance().getSoldierTypeConfig()[_loc_2[data.soldierId]["soldierTypeId"]].name, fp:CharacterToolTipData.getInstance().heroData.fightingPoint, desc:_loc_4.desc, attrs:SoldierTool.getSoliderAttributes(_loc_4.attrs), requirements:[]};
                    CharacterToolTipData.getInstance().heroTemp = data as CharacterLogicHero;
                    CharacterToolTipData.getInstance().soldierByHero = _loc_5;
                }// end else if
            }// end else if
            var _loc_3:* = new CharacterToolTips();
            param1.toolTip = _loc_3;
            return;
        }// end function

        private function _TroopStrategyDetailItemRenderer_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.getImageByHeriId(data.id);
            _loc_1 = this.getIcon(data as CharacterLogicHero);
            return;
        }// end function

        public function ___TroopStrategyDetailItemRenderer_Canvas1_mouseDown(param1:MouseEvent) : void
        {
            this.canvas1_mouseDownHandler(param1);
            return;
        }// end function

        public function set listData(param1:BaseListData) : void
        {
            this._listData = param1;
            if (param1)
            {
                this.listBase = param1.owner as ListBase;
            }// end if
            return;
        }// end function

        private function get _radioButtonGroup() : RadioButtonGroup
        {
            return this._876557871_radioButtonGroup;
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

        protected function canvas1_dragEnterHandler(param1:DragEvent) : void
        {
            if (data.id >= 0 && param1.currentTarget != param1.dragInitiator)
            {
                DragManager.acceptDragDrop(param1.currentTarget as Canvas);
            }// end if
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            if (param1)
            {
                if (param1.id >= 0)
                {
                    this.configObj = null;
                    if (this.listBase.id == "herosAttacPosition")
                    {
                        this.configObj = (this.listBase.document as HeroDistributeComponent).currntAttackStrategyConfig;
                    }
                    else if (this.listBase.id == "herosDefencePosition")
                    {
                        this.configObj = (this.listBase.document as HeroDistributeComponent).currentDefenceStrategyConfig;
                    }
                    else if (this.listBase.id == "strategy")
                    {
                        this.configObj = this.troopStrategyConfig[this.herosList.attackTroopStrategyId];
                    }// end else if
                    if (this.configObj)
                    {
                        this.listRow = this.listData.rowIndex + 1;
                        this.listCol = this.listData.columnIndex + 1;
                        this.tipCan.toolTip = " ";
                        this.tipCan.addEventListener(ToolTipEvent.TOOL_TIP_CREATE, this.onTips);
                    }
                    else
                    {
                        this.tipCan.toolTip = null;
                    }// end else if
                }
                else
                {
                    this.heroImg.toolTip = "";
                }// end else if
            }
            else
            {
                this.tipCan.toolTip = "";
            }// end else if
            return;
        }// end function

        private function getTipByPosition(param1:int, param2:int, param3:Object) : String
        {
            var _loc_6:int;
            var _loc_7:int;
            var _loc_4:* = HtmlUtil.sizeColor(Lang.msg("????"), 11, "#FFFF00", true);
            var _loc_5:* = "pos" + param1.toString() + param2.toString();
            var _loc_8:Boolean;
            if (param3.hasOwnProperty(_loc_5 + "_effectKey1"))
            {
                _loc_6 = param3[_loc_5 + "_effectKey1"] as int;
                _loc_7 = param3[_loc_5 + "_effectValue1"] as int;
                if (_loc_6 > 0)
                {
                    _loc_8 = true;
                }// end if
                if (_loc_4 != null && _loc_4 != "")
                {
                    _loc_4 = _loc_4 + "\n";
                }// end if
                if (_loc_6 == 1)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 2)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 3)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 4)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 5)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 6)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 7)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 8)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 9)
                {
                    _loc_4 = _loc_4 + (Lang.msg("??????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }// end else if
            }// end else if
            if (param3.hasOwnProperty(_loc_5 + "_effectKey2"))
            {
                _loc_6 = param3[_loc_5 + "_effectKey2"] as int;
                _loc_7 = param3[_loc_5 + "_effectValue2"] as int;
                if (_loc_6 > 0)
                {
                    _loc_8 = true;
                }// end if
                if (_loc_4 != null && _loc_4 != "")
                {
                    _loc_4 = _loc_4 + "  ";
                }// end if
                if (_loc_6 == 1)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 2)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 3)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 4)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7 + "%", "#00FF00"));
                }
                else if (_loc_6 == 5)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 6)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 7)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 8)
                {
                    _loc_4 = _loc_4 + (Lang.msg("????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }
                else if (_loc_6 == 9)
                {
                    _loc_4 = _loc_4 + (Lang.msg("??????") + ": " + HtmlUtil.color("+" + _loc_7, "#00FF00"));
                }// end else if
            }// end else if
            if (_loc_8)
            {
                return _loc_4;
            }// end if
            return null;
        }// end function

        public function get listData() : BaseListData
        {
            return this._listData;
        }// end function

        public function get heroImg() : Image
        {
            return this._811308393heroImg;
        }// end function

        public function ___TroopStrategyDetailItemRenderer_Canvas1_dragDrop(param1:DragEvent) : void
        {
            this.canvas1_dragDropHandler(param1);
            return;
        }// end function

        private function getIcon(param1:CharacterLogicHero) : Object
        {
            var _loc_2:Object;
            var _loc_3:SoldierLogicInfo;
            var _loc_4:Array;
            if (!param1.id)
            {
                _loc_2 = null;
            }
            else if (param1.soldierCount <= 0)
            {
                _loc_2 = null;
            }
            else
            {
                _loc_3 = new SoldierLogicInfo();
                _loc_3.initById(param1.soldierId);
                _loc_4 = SoldierTool.getSoliderAttributes(_loc_3.attrs);
                switch(_loc_4[0].text)
                {
                    case "Spellcaster":
                    {
                        _loc_2 = ImageResource.getInstance().getHashModeUrl("images/comm/hero/icon_s.png");
                        break;
                    }// end case
                    case "Infantry":
                    {
                        _loc_2 = ImageResource.getInstance().getHashModeUrl("images/comm/hero/icon_i.png");
                        break;
                    }// end case
                    case "Flying Unit":
                    {
                        _loc_2 = ImageResource.getInstance().getHashModeUrl("images/comm/hero/icon_f.png");
                        break;
                    }// end case
                    case "Cavalry":
                    {
                        _loc_2 = ImageResource.getInstance().getHashModeUrl("images/comm/hero/icon_c.png");
                        break;
                    }// end case
                    case "Archer":
                    {
                        _loc_2 = ImageResource.getInstance().getHashModeUrl("images/comm/hero/icon_a.png");
                        break;
                    }// end case
                    default:
                    {
                        break;
                    }// end default
                }// end switch
            }// end else if
            return _loc_2;
        }// end function

        public function ___TroopStrategyDetailItemRenderer_Canvas1_dragEnter(param1:DragEvent) : void
        {
            this.canvas1_dragEnterHandler(param1);
            return;
        }// end function

        private function get herosList() : CharacterHerosList
        {
            return CacheManager.getInstance().getCache(CacheType.HERO_INFO) as CharacterHerosList;
        }// end function

        public function set tipCan(param1:Canvas) : void
        {
            var _loc_2:* = this._873611979tipCan;
            if (_loc_2 !== param1)
            {
                this._873611979tipCan = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tipCan", _loc_2, param1));
            }// end if
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            TroopStrategyDetailItemRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
