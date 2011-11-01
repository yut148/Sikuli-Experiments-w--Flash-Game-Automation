package modules.embed.itemRender
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.command.*;
    import com.cgame.config.*;
    import com.game.common.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.character.event.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import org.puremvc.as3.patterns.facade.*;

    public class EmbedItemRenderer extends Canvas implements IBindingClient
    {
        public var _EmbedItemRenderer_Canvas2:Canvas;
        private var _41667817lableCount:Label;
        private var _891486451radioButton:RadioButton;
        private var _embed_mxml_images_comm_embed_item_cover_png_1198437726:Class;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        var _watchers:Array;
        private var _220488488selectedImg:Image;
        private var _1410965406iconImage:Image;
        public var _EmbedItemRenderer_Image1:Image;
        public var _EmbedItemRenderer_Image3:Image;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _876557871_radioButtonGroup:RadioButtonGroup;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function EmbedItemRenderer()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:66, height:66, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_EmbedItemRenderer_Image1"}), new UIComponentDescriptor({type:Image, id:"iconImage", propertiesFactory:
function () : Object
{
    return {x:1, y:1};
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"_EmbedItemRenderer_Canvas2", propertiesFactory:
function () : Object
{
    return {styleName:"ItemCountStyle", x:44, y:44, mouseEnabled:false, mouseChildren:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"lableCount", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:20, height:20};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_EmbedItemRenderer_Image3", propertiesFactory:
function () : Object
{
    return {mouseEnabled:false, width:66, height:66, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"selectedImg", propertiesFactory:
function () : Object
{
    return {x:1, y:1, source:_embed_mxml_images_comm_embed_item_cover_png_1198437726, mouseEnabled:false, mouseChildren:false, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:RadioButton, id:"radioButton", propertiesFactory:
function () : Object
{
    return {visible:false};
}// end function
})]};
}// end function
});
            this._embed_mxml_images_comm_embed_item_cover_png_1198437726 = EmbedItemRenderer__embed_mxml_images_comm_embed_item_cover_png_1198437726;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 66;
            this.height = 66;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("click", this.___EmbedItemRenderer_Canvas1_click);
            return;
        }// end function

        public function set iconImage(param1:Image) : void
        {
            var _loc_2:* = this._1410965406iconImage;
            if (_loc_2 !== param1)
            {
                this._1410965406iconImage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "iconImage", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set radioGroup(param1:RadioButtonGroup) : void
        {
            this._radioButtonGroup = param1;
            return;
        }// end function

        public function set lableCount(param1:Label) : void
        {
            var _loc_2:* = this._41667817lableCount;
            if (_loc_2 !== param1)
            {
                this._41667817lableCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lableCount", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function set data(param1:Object) : void
        {
            super.data = param1;
            if (data)
            {
                this.visible = true;
            }
            else
            {
                this.visible = false;
            }// end else if
            return;
        }// end function

        override public function initialize() : void
        {
            var target:EmbedItemRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._EmbedItemRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_embed_itemRender_EmbedItemRendererWatcherSetupUtil");
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

        public function selected() : void
        {
            this.radioButton.selected = true;
            var _loc_1:* = new PackageEvent(PackageEvent.SHOW_PACKAGE_OPERATE, true);
            _loc_1.data = data as CharacterLogicItem;
            _loc_1.itemCanvas = this;
            this.dispatchEvent(_loc_1);
            return;
        }// end function

        public function get radioButton() : RadioButton
        {
            return this._891486451radioButton;
        }// end function

        private function _EmbedItemRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgBagItem");
}// end function
, 
function (param1:Object) : void
{
    _EmbedItemRenderer_Image1.source = param1;
    return;
}// end function
, "_EmbedItemRenderer_Image1.source");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getItemImageURL(data.photoId);
}// end function
, 
function (param1:Object) : void
{
    iconImage.source = param1;
    return;
}// end function
, "iconImage.source");
            result[1] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return data.visible;
}// end function
, 
function (param1:Boolean) : void
{
    iconImage.visible = param1;
    return;
}// end function
, "iconImage.visible");
            result[2] = binding;
            binding = new Binding(this, 
function () : Array
{
    return data.characterAuctionId > 0 ? (ImageResource.blackFilters) : (null);
}// end function
, 
function (param1:Array) : void
{
    iconImage.filters = param1;
    return;
}// end function
, "iconImage.filters");
            result[3] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = ItemToolTipFormat.getToolTipDesc(data) + "\n" + Lang.msg("Shift+??:?????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    iconImage.toolTip = param1;
    return;
}// end function
, "iconImage.toolTip");
            result[4] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return data.visible;
}// end function
, 
function (param1:Boolean) : void
{
    _EmbedItemRenderer_Canvas2.visible = param1;
    return;
}// end function
, "_EmbedItemRenderer_Canvas2.visible");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.count;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    lableCount.text = param1;
    return;
}// end function
, "lableCount.text");
            result[6] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ItemBorderResource.getInstance().getItemBorderClass_66(data.color);
}// end function
, 
function (param1:Object) : void
{
    _EmbedItemRenderer_Image3.source = param1;
    return;
}// end function
, "_EmbedItemRenderer_Image3.source");
            result[7] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return radioButton.selected;
}// end function
, 
function (param1:Boolean) : void
{
    selectedImg.visible = param1;
    return;
}// end function
, "selectedImg.visible");
            result[8] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return _radioButtonGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    radioButton.group = param1;
    return;
}// end function
, "radioButton.group");
            result[9] = binding;
            return result;
        }// end function

        public function set radioButton(param1:RadioButton) : void
        {
            var _loc_2:* = this._891486451radioButton;
            if (_loc_2 !== param1)
            {
                this._891486451radioButton = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "radioButton", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get iconImage() : Image
        {
            return this._1410965406iconImage;
        }// end function

        private function _EmbedItemRenderer_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = ImageResource.getInstance().getImgClass("bgBagItem");
            _loc_1 = ImageResource.getInstance().getItemImageURL(data.photoId);
            _loc_1 = data.visible;
            _loc_1 = data.characterAuctionId > 0 ? (ImageResource.blackFilters) : (null);
            _loc_1 = ItemToolTipFormat.getToolTipDesc(data) + "\n" + Lang.msg("Shift+??:?????");
            _loc_1 = data.visible;
            _loc_1 = data.count;
            _loc_1 = ItemBorderResource.getInstance().getItemBorderClass_66(data.color);
            _loc_1 = this.radioButton.selected;
            _loc_1 = this._radioButtonGroup;
            return;
        }// end function

        private function onClick(param1:MouseEvent) : void
        {
            if (param1.shiftKey)
            {
                Facade.getInstance().sendNotification(ControlCmd.CHAT_SEND_ITEM_HERO, {type:1, id:data.id, name:data.name, color:data.color});
                return;
            }// end if
            if (!data || data.characterAuctionId > 0)
            {
                return;
            }// end if
            this.selected();
            return;
        }// end function

        public function get selectedImg() : Image
        {
            return this._220488488selectedImg;
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

        private function get _radioButtonGroup() : RadioButtonGroup
        {
            return this._876557871_radioButtonGroup;
        }// end function

        public function get lableCount() : Label
        {
            return this._41667817lableCount;
        }// end function

        public function ___EmbedItemRenderer_Canvas1_click(param1:MouseEvent) : void
        {
            this.onClick(param1);
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            EmbedItemRenderer._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
