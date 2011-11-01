package modules.hero.itemRender
{
    import com.cgame.config.*;
    import com.game.display.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.core.*;
    import mx.events.*;

    public class troopStrategySmallItemRenderer extends Canvas implements IBindingClient, IDropInListItemRenderer
    {
        private var _93647166bgImg:Image;
        var _watchers:Array;
        private var _220488488selectedImg:Image;
        private var _338675352lockImg:Image;
        private var _embed_mxml_images_comm_hero_bg_unlocked_jpg_664990954:Class;
        private var unLockedImg:Class;
        private var _1275453444blockState:UIComponent;
        private var _listData:BaseListData;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var lockedImg:Class;
        private var _embed_mxml_images_comm_hero_bg_unlocked_active_png_1269426346:Class;
        var _bindings:Array;
        private var _1345105039listBase:ListBase;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function troopStrategySmallItemRenderer()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:47, height:27, childDescriptors:[new UIComponentDescriptor({type:Image, id:"bgImg", propertiesFactory:
function () : Object
{
    return {source:_embed_mxml_images_comm_hero_bg_unlocked_jpg_664990954, width:45, height:27};
}// end function
}), new UIComponentDescriptor({type:UIComponent, id:"blockState", propertiesFactory:
function () : Object
{
    return {x:5, y:5, width:35, height:17, mouseEnabled:false, mouseChildren:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"selectedImg", propertiesFactory:
function () : Object
{
    return {x:0, y:0, source:_embed_mxml_images_comm_hero_bg_unlocked_active_png_1269426346, mouseEnabled:false, mouseChildren:false, width:45, height:27};
}// end function
}), new UIComponentDescriptor({type:Image, id:"lockImg", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:25, height:25, mouseEnabled:false, mouseChildren:false};
}// end function
})]};
}// end function
});
            this.unLockedImg = troopStrategySmallItemRenderer_unLockedImg;
            this.lockedImg = troopStrategySmallItemRenderer_lockedImg;
            this._embed_mxml_images_comm_hero_bg_unlocked_active_png_1269426346 = troopStrategySmallItemRenderer__embed_mxml_images_comm_hero_bg_unlocked_active_png_1269426346;
            this._embed_mxml_images_comm_hero_bg_unlocked_jpg_664990954 = troopStrategySmallItemRenderer__embed_mxml_images_comm_hero_bg_unlocked_jpg_664990954;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 47;
            this.height = 27;
            return;
        }// end function

        private function _troopStrategySmallItemRenderer_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.isVisible(this.listBase.selectedItem, data);
            _loc_1 = ImageResource.getInstance().getImgClass("enterCityLock");
            return;
        }// end function

        public function get blockState() : UIComponent
        {
            return this._1275453444blockState;
        }// end function

        private function get listBase() : ListBase
        {
            return this._1345105039listBase;
        }// end function

        override public function initialize() : void
        {
            var target:troopStrategySmallItemRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._troopStrategySmallItemRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_itemRender_troopStrategySmallItemRendererWatcherSetupUtil");
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

        public function set blockState(param1:UIComponent) : void
        {
            var _loc_2:* = this._1275453444blockState;
            if (_loc_2 !== param1)
            {
                this._1275453444blockState = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blockState", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get lockImg() : Image
        {
            return this._338675352lockImg;
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

        private function _troopStrategySmallItemRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Boolean
{
    return isVisible(listBase.selectedItem, data);
}// end function
, 
function (param1:Boolean) : void
{
    selectedImg.visible = param1;
    return;
}// end function
, "selectedImg.visible");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("enterCityLock");
}// end function
, 
function (param1:Object) : void
{
    lockImg.source = param1;
    return;
}// end function
, "lockImg.source");
            result[1] = binding;
            return result;
        }// end function

        public function get selectedImg() : Image
        {
            return this._220488488selectedImg;
        }// end function

        public function set lockImg(param1:Image) : void
        {
            var _loc_2:* = this._338675352lockImg;
            if (_loc_2 !== param1)
            {
                this._338675352lockImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lockImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get bgImg() : Image
        {
            return this._93647166bgImg;
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

        override public function set data(param1:Object) : void
        {
            var _loc_2:int;
            var _loc_3:String;
            var _loc_4:String;
            var _loc_5:int;
            var _loc_6:String;
            var _loc_7:int;
            var _loc_8:int;
            var _loc_9:Object;
            var _loc_10:int;
            var _loc_11:String;
            var _loc_12:String;
            super.data = param1;
            this.blockState.graphics.clear();
            if (param1)
            {
                if (param1.hasOwnProperty("id"))
                {
                    _loc_2 = 1;
                    while (_loc_2 < 3)
                    {
                        // label
                        _loc_5 = 1;
                        while (_loc_5 < 5)
                        {
                            // label
                            _loc_6 = "pos" + _loc_2.toString() + _loc_5.toString();
                            if (param1[_loc_6] == 1)
                            {
                                if (param1["locked"] == false)
                                {
                                    this.blockState.graphics.beginFill(16768943);
                                }
                                else
                                {
                                    this.blockState.graphics.beginFill(8353623);
                                }// end else if
                            }
                            else
                            {
                                this.blockState.graphics.beginFill(0);
                            }// end else if
                            _loc_7 = _loc_5-- * 9;
                            _loc_8 = _loc_2-- * 9;
                            this.blockState.graphics.drawRect(_loc_7, _loc_8, 8, 8);
                            _loc_5++;
                        }// end while
                        _loc_2++;
                    }// end while
                    this.blockState.graphics.endFill();
                    _loc_3 = ConfigResource.getInstance().getName(param1.nameDescId);
                    _loc_4 = ConfigResource.getInstance().getDesc(param1.nameDescId);
                    if (param1["locked"] == true)
                    {
                        this.bgImg.source = this.lockedImg;
                        this.lockImg.visible = true;
                        _loc_9 = ConfigResource.getInstance().getItem(param1.itemId);
                        _loc_10 = _loc_9.color;
                        _loc_11 = ColorConfig.getItemColor(_loc_10);
                        _loc_12 = ConfigResource.getInstance().getItemName(param1.itemId);
                        this.toolTip = HtmlUtil.sizeColor(_loc_3, 11, "#FFFF00", true) + HtmlUtil.color(" (Locked)", "#FF0000") + "\n" + _loc_4 + "\n" + HtmlUtil.image(ImageResource.getInstance().getItemImageURLByItemId(param1.itemId), 32, 32) + Lang.msg("???{!bookName}??", {bookName:HtmlUtil.color(_loc_12, _loc_11)});
                    }
                    else
                    {
                        this.bgImg.source = this.unLockedImg;
                        this.lockImg.visible = false;
                        this.toolTip = HtmlUtil.sizeColor(_loc_3, 11, "#FFFF00", true) + "\n" + _loc_4;
                    }// end if
                }// end if
            }// end else if
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

        public function get listData() : BaseListData
        {
            return this._listData;
        }// end function

        private function isVisible(param1:Object, param2:Object) : Boolean
        {
            if (!param1["locked"] == false && param2["locked"] == false)
            {
                return this.selectedImg.visible;
            }// end if
            if (param1 == param2 && param2["locked"] == false)
            {
                return true;
            }// end if
            return false;
        }// end function

        public function set bgImg(param1:Image) : void
        {
            var _loc_2:* = this._93647166bgImg;
            if (_loc_2 !== param1)
            {
                this._93647166bgImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "bgImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
