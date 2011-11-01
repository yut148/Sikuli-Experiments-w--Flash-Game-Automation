package modules.hero
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HeroEquipCompoment_inlineComponent1 extends Canvas implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _88844982outerDocument:HeroEquipCompoment;
        var _bindings:Array;
        public var _HeroEquipCompoment_inlineComponent1_Image1:Image;
        public var _HeroEquipCompoment_inlineComponent1_Image2:Image;
        public var _HeroEquipCompoment_inlineComponent1_Image3:Image;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroEquipCompoment_inlineComponent1()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:68, height:68, childDescriptors:[new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_inlineComponent1_Image1", propertiesFactory:
function () : Object
{
    return {x:2, y:2};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_inlineComponent1_Image2", events:{toolTipCreate:"___HeroEquipCompoment_inlineComponent1_Image2_toolTipCreate", mouseOver:"___HeroEquipCompoment_inlineComponent1_Image2_mouseOver", click:"___HeroEquipCompoment_inlineComponent1_Image2_click"}, propertiesFactory:
function () : Object
{
    return {x:3, y:3, toolTip:" "};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_inlineComponent1_Image3", propertiesFactory:
function () : Object
{
    return {x:1, y:1, width:68, height:68, mouseEnabled:false, alpha:0.6};
}// end function
})]};
}// end function
});
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 68;
            this.height = 68;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            return;
        }// end function

        public function set outerDocument(param1:HeroEquipCompoment) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function initialize() : void
        {
            var target:HeroEquipCompoment_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroEquipCompoment_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroEquipCompoment_inlineComponent1WatcherSetupUtil");
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

        public function ___HeroEquipCompoment_inlineComponent1_Image2_toolTipCreate(param1:ToolTipEvent) : void
        {
            this.outerDocument.onToolTip(data as CharacterLogicItem, 0, this.outerDocument.currentHeroLv, param1);
            return;
        }// end function

        public function ___HeroEquipCompoment_inlineComponent1_Image2_click(param1:MouseEvent) : void
        {
            this.outerDocument.onClickPackItem(param1, data);
            return;
        }// end function

        public function ___HeroEquipCompoment_inlineComponent1_Image2_mouseOver(param1:MouseEvent) : void
        {
            this.outerDocument.onOver(data as CharacterLogicItem, param1);
            return;
        }// end function

        private function _HeroEquipCompoment_inlineComponent1_bindingsSetup() : Array
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
    _HeroEquipCompoment_inlineComponent1_Image1.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image1.source");
            result[0] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return data.id > 0;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_inlineComponent1_Image1.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image1.buttonMode");
            result[1] = binding;
            binding = new Binding(this, 
function () : Array
{
    return data.characterAuctionId > 0 ? (ImageResource.blackFilters) : (null);
}// end function
, 
function (param1:Array) : void
{
    _HeroEquipCompoment_inlineComponent1_Image2.filters = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image2.filters");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return data.photoId == 0 ? ("") : (ImageResource.getInstance().getItemImageURL(data.photoId));
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_inlineComponent1_Image2.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image2.source");
            result[3] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return data.id > 0;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_inlineComponent1_Image2.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image2.buttonMode");
            result[4] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ItemBorderResource.getInstance().getItemBorderClass_66(data.color);
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_inlineComponent1_Image3.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image3.source");
            result[5] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return data.id;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_inlineComponent1_Image3.visible = param1;
    return;
}// end function
, "_HeroEquipCompoment_inlineComponent1_Image3.visible");
            result[6] = binding;
            return result;
        }// end function

        private function _HeroEquipCompoment_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = ImageResource.getInstance().getImgClass("bgBagItem");
            _loc_1 = data.id > 0;
            _loc_1 = data.characterAuctionId > 0 ? (ImageResource.blackFilters) : (null);
            _loc_1 = data.photoId == 0 ? ("") : (ImageResource.getInstance().getItemImageURL(data.photoId));
            _loc_1 = data.id > 0;
            _loc_1 = ItemBorderResource.getInstance().getItemBorderClass_66(data.color);
            _loc_1 = data.id;
            return;
        }// end function

        public function get outerDocument() : HeroEquipCompoment
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroEquipCompoment_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
