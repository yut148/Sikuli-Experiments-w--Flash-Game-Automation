package modules.hero.itemRender
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.command.*;
    import com.cgame.config.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.*;
    import modules.comm.data.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;
    import org.puremvc.as3.patterns.facade.*;

    public class HeroItemRenderer extends Canvas implements IBindingClient, IDropInListItemRenderer
    {
        public var _HeroItemRenderer_Image3:Image;
        var _watchers:Array;
        private var _220488488selectedImg:Image;
        private var _188974544levelLabel:Label;
        private var _876557871_radioButtonGroup:RadioButtonGroup;
        private var _listData:BaseListData;
        private var _1796289894populationIcon:Image;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _146889817populationLabel:Label;
        private var attackIcon:Class;
        private var defenceIcon:Class;
        var _bindings:Array;
        private var _1345105039listBase:ListBase;
        private var restIcon:Class;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _embed_mxml_images_comm_hero_hero_unlocked_active_png_868708456:Class;
        private var _811308393heroImg:Image;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroItemRenderer()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:48, height:61, childDescriptors:[new UIComponentDescriptor({type:Image, id:"heroImg", events:{click:"__heroImg_click", toolTipCreate:"__heroImg_toolTipCreate"}, propertiesFactory:
function () : Object
{
    return {x:0, y:0, width:48, height:48, buttonMode:true, toolTip:" "};
}// end function
}), new UIComponentDescriptor({type:Image, id:"selectedImg", propertiesFactory:
function () : Object
{
    return {x:0, y:0, width:48, height:48, source:_embed_mxml_images_comm_hero_hero_unlocked_active_png_868708456, mouseEnabled:false, mouseChildren:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroItemRenderer_Image3", propertiesFactory:
function () : Object
{
    return {x:31, y:31, width:16, height:16};
}// end function
}), new UIComponentDescriptor({type:Label, id:"levelLabel", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 16776960;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:0, y:45, width:48, height:14};
}// end function
}), new UIComponentDescriptor({type:Image, id:"populationIcon", propertiesFactory:
function () : Object
{
    return {x:1, y:47, width:14, height:14};
}// end function
}), new UIComponentDescriptor({type:Label, id:"populationLabel", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 16776960;
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:14, y:45, width:34, height:14};
}// end function
})]};
}// end function
});
            this.defenceIcon = HeroItemRenderer_defenceIcon;
            this.attackIcon = HeroItemRenderer_attackIcon;
            this.restIcon = HeroItemRenderer_restIcon;
            this._embed_mxml_images_comm_hero_hero_unlocked_active_png_868708456 = HeroItemRenderer__embed_mxml_images_comm_hero_hero_unlocked_active_png_868708456;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 48;
            this.height = 61;
            this.verticalScrollPolicy = "off";
            this.horizontalScrollPolicy = "off";
            this.addEventListener("mouseMove", this.___HeroItemRenderer_Canvas1_mouseMove);
            return;
        }// end function

        public function ___HeroItemRenderer_Canvas1_mouseMove(param1:MouseEvent) : void
        {
            this.onMouseDown(param1);
            return;
        }// end function

        private function onToolTip(param1:CharacterLogicHero, param2:ToolTipEvent) : void
        {
            CharacterToolTipData.getInstance().isNull();
            CharacterToolTipData.getInstance().heroData = param1;
            CharacterToolTipData.getInstance().heroTipSelect = false;
            var _loc_3:* = new CharacterToolTips();
            param2.toolTip = _loc_3;
            return;
        }// end function

        public function __heroImg_toolTipCreate(param1:ToolTipEvent) : void
        {
            this.onToolTip(data as CharacterLogicHero, param1);
            return;
        }// end function

        private function get listBase() : ListBase
        {
            return this._1345105039listBase;
        }// end function

        override public function initialize() : void
        {
            var target:HeroItemRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroItemRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_itemRender_HeroItemRendererWatcherSetupUtil");
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

        public function set levelLabel(param1:Label) : void
        {
            var _loc_2:* = this._188974544levelLabel;
            if (_loc_2 !== param1)
            {
                this._188974544levelLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "levelLabel", _loc_2, param1));
            }// end if
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

        public function get populationLabel() : Label
        {
            return this._146889817populationLabel;
        }// end function

        public function get selectedImg() : Image
        {
            return this._220488488selectedImg;
        }// end function

        private function onMouseDown(param1:MouseEvent) : void
        {
            var _loc_2:Canvas;
            var _loc_3:DragSource;
            var _loc_4:Canvas;
            if (this.listBase.id == "heroDistributeList")
            {
                if (data.id > 0)
                {
                    _loc_2 = param1.currentTarget as Canvas;
                    _loc_3 = new DragSource();
                    _loc_3.addData(data, "hero");
                    _loc_4 = new Canvas();
                    _loc_4.width = this.heroImg.width;
                    _loc_4.height = this.heroImg.height;
                    _loc_4.setStyle("backgroundImage", this.heroImg.source);
                    DragManager.doDrag(_loc_2, _loc_3, param1, _loc_4, 0, 0, 0.6);
                }// end if
            }// end if
            return;
        }// end function

        public function set populationIcon(param1:Image) : void
        {
            var _loc_2:* = this._1796289894populationIcon;
            if (_loc_2 !== param1)
            {
                this._1796289894populationIcon = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "populationIcon", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            return;
        }// end function

        public function set populationLabel(param1:Label) : void
        {
            var _loc_2:* = this._146889817populationLabel;
            if (_loc_2 !== param1)
            {
                this._146889817populationLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "populationLabel", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set listData(param1:BaseListData) : void
        {
            this._listData = param1;
            if (param1)
            {
                this.listBase = param1.owner as ListBase;
                if (this.listBase.document is HeroDeployComponent)
                {
                    this.levelLabel.visible = false;
                    this.populationIcon.visible = true;
                    this.populationLabel.visible = true;
                }
                else
                {
                    this.levelLabel.visible = true;
                    this.populationIcon.visible = false;
                    this.populationLabel.visible = false;
                }// end if
            }// end else if
            return;
        }// end function

        private function _HeroItemRenderer_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = data.state == 2 ? (ImageResource.getDesaturateFilters()) : (null);
            _loc_1 = ImageResource.getInstance().getHeroImageURL(data.photoId);
            _loc_1 = this.listBase.selectedItem == data;
            _loc_1 = this.getStateIcon(data.state);
            _loc_1 = "Lv." + data.level;
            _loc_1 = ImageResource.getInstance().getImgClass("iconPopulation");
            _loc_1 = data.soldierCount * this.eachSoldierPopulation(data.soldierId);
            return;
        }// end function

        public function __heroImg_click(param1:MouseEvent) : void
        {
            this.onClick(param1);
            return;
        }// end function

        private function _HeroItemRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Array
{
    return data.state == 2 ? (ImageResource.getDesaturateFilters()) : (null);
}// end function
, 
function (param1:Array) : void
{
    heroImg.filters = param1;
    return;
}// end function
, "heroImg.filters");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getHeroImageURL(data.photoId);
}// end function
, 
function (param1:Object) : void
{
    heroImg.source = param1;
    return;
}// end function
, "heroImg.source");
            result[1] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return listBase.selectedItem == data;
}// end function
, 
function (param1:Boolean) : void
{
    selectedImg.visible = param1;
    return;
}// end function
, "selectedImg.visible");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return getStateIcon(data.state);
}// end function
, 
function (param1:Object) : void
{
    _HeroItemRenderer_Image3.source = param1;
    return;
}// end function
, "_HeroItemRenderer_Image3.source");
            result[3] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = "Lv." + data.level;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    levelLabel.text = param1;
    return;
}// end function
, "levelLabel.text");
            result[4] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("iconPopulation");
}// end function
, 
function (param1:Object) : void
{
    populationIcon.source = param1;
    return;
}// end function
, "populationIcon.source");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.soldierCount * eachSoldierPopulation(data.soldierId);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    populationLabel.text = param1;
    return;
}// end function
, "populationLabel.text");
            result[6] = binding;
            return result;
        }// end function

        private function get _radioButtonGroup() : RadioButtonGroup
        {
            return this._876557871_radioButtonGroup;
        }// end function

        public function get populationIcon() : Image
        {
            return this._1796289894populationIcon;
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

        private function eachSoldierPopulation(param1:int) : int
        {
            if (param1 == 0)
            {
                return 0;
            }// end if
            return ConfigResource.getInstance().getSoldierConfig()[param1].population;
        }// end function

        public function get listData() : BaseListData
        {
            return this._listData;
        }// end function

        private function onClick(param1:MouseEvent) : void
        {
            if (param1.shiftKey)
            {
                Facade.getInstance().sendNotification(ControlCmd.CHAT_SEND_ITEM_HERO, {type:2, id:data.id, name:data.name, color:data.heroColorId});
            }// end if
            return;
        }// end function

        public function get levelLabel() : Label
        {
            return this._188974544levelLabel;
        }// end function

        public function get heroImg() : Image
        {
            return this._811308393heroImg;
        }// end function

        private function getStateIcon(param1:int) : Object
        {
            if (param1 == 0)
            {
                return this.attackIcon;
            }// end if
            if (param1 == 1)
            {
                return this.defenceIcon;
            }// end if
            if (param1 == 2)
            {
                return this.restIcon;
            }// end if
            return null;
        }// end function

        public function set selectedImg(param1:Image) : void
        {
            var _loc_2:* = this._220488488selectedImg;
            if (_loc_2 !== param1)
            {
                this._220488488selectedImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selectedImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroItemRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
