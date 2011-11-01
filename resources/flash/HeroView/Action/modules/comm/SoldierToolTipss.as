package modules.comm
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.game.common.*;
    import flash.utils.*;
    import modules.comm.data.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SoldierToolTipss extends Canvas implements IBindingClient
    {
        private var _553754159attrList:AttrsList;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        public var _SoldierToolTipss_Image1:Image;
        var _watchers:Array;
        public var _SoldierToolTipss_Text3:Text;
        public var _SoldierToolTipss_Text4:Text;
        public var _SoldierToolTipss_Text5:Text;
        var _bindings:Array;
        private var _dataObject:Object;
        private var _115312txt:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SoldierToolTipss()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:310, height:160, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"txt", stylesFactory:
function () : void
{
    this.fontSize = 22;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:20, y:10};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.backgroundColor = 16240243;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:152, y:10, width:80, height:40, childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.backgroundColor = 14058496;
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:80, height:20, childDescriptors:[new UIComponentDescriptor({type:Text, stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.fontWeight = "bold";
    this.color = 16773037;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {text:"Strength", width:80};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Text, id:"_SoldierToolTipss_Text3", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 6502656;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:20, width:80};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_SoldierToolTipss_Image1", propertiesFactory:
function () : Object
{
    return {x:242};
}// end function
}), new UIComponentDescriptor({type:Text, id:"_SoldierToolTipss_Text4", stylesFactory:
function () : void
{
    this.color = 3572993;
    this.fontSize = 11;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, y:46};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {y:67, childDescriptors:[new UIComponentDescriptor({type:AttrsList, id:"attrList", stylesFactory:
function () : void
{
    this.backgroundAlpha = 0;
    this.borderStyle = "none";
    this.paddingBottom = 0;
    this.paddingTop = 1;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {columnCount:2, rowHeight:20, itemRenderer:_SoldierToolTipss_ClassFactory1_c()};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.backgroundColor = 15517299;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:67, width:154, height:20, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SoldierToolTipss_Text5", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 6568448;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:154};
}// end function
})]};
}// end function
})]};
}// end function
});
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 310;
            this.height = 160;
            this.styleName = "VBoxToolTip";
            this.addEventListener("creationComplete", this.___SoldierToolTipss_Canvas1_creationComplete);
            return;
        }// end function

        public function get dataObject() : Object
        {
            return this._dataObject;
        }// end function

        private function init() : void
        {
            this.dataObject = CharacterToolTipData.getInstance().soldierByHero;
            return;
        }// end function

        private function _SoldierToolTipss_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.getInfo(this.dataObject);
            _loc_1 = this.dataObject.fp;
            _loc_1 = ImageResource.getInstance().getSoldierImagURL(this.dataObject.photoId, 2);
            _loc_1 = this.getSoldierInfo(this.dataObject);
            _loc_1 = this.dataObject.attrs;
            _loc_1 = this.getNameBy(this.dataObject);
            return;
        }// end function

        public function set dataObject(param1:Object) : void
        {
            var _loc_2:* = this.dataObject;
            if (_loc_2 !== param1)
            {
                this._1145608073dataObject = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dataObject", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function getSoldierInfo(param1:Object) : String
        {
            var _loc_2:String;
            switch(param1.soldierType)
            {
                case "Mage":
                {
                    _loc_2 = Lang.msg("????");
                    break;
                }// end case
                case "Infantry":
                {
                    _loc_2 = Lang.msg("????");
                    break;
                }// end case
                case "Fly":
                {
                    _loc_2 = Lang.msg("??????");
                    break;
                }// end case
                case "Ranger":
                {
                    _loc_2 = Lang.msg("????");
                    break;
                }// end case
                case "Archer":
                {
                    _loc_2 = Lang.msg("?????");
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            return _loc_2;
        }// end function

        public function ___SoldierToolTipss_Canvas1_creationComplete(param1:FlexEvent) : void
        {
            this.init();
            return;
        }// end function

        public function set attrList(param1:AttrsList) : void
        {
            var _loc_2:* = this._553754159attrList;
            if (_loc_2 !== param1)
            {
                this._553754159attrList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attrList", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SoldierToolTipss;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._SoldierToolTipss_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SoldierToolTipssWatcherSetupUtil");
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

        public function set txt(param1:Text) : void
        {
            var _loc_2:* = this._115312txt;
            if (_loc_2 !== param1)
            {
                this._115312txt = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "txt", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function getInfo(param1:Object) : String
        {
            var _loc_2:* = param1.attrs[0].text;
            var _loc_3:* = "<font color=\'#DC6800\'>" + _loc_2.charAt(0) + "</font>" + "<font color=\'#633B00\'>" + _loc_2.substr(1, _loc_2.length) + "</font>";
            return _loc_3;
        }// end function

        private function set _1145608073dataObject(param1:Object) : void
        {
            this._dataObject = param1;
            return;
        }// end function

        private function _SoldierToolTipss_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = getInfo(dataObject);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    txt.htmlText = param1;
    return;
}// end function
, "txt.htmlText");
            result[0] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = dataObject.fp;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierToolTipss_Text3.text = param1;
    return;
}// end function
, "_SoldierToolTipss_Text3.text");
            result[1] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getSoldierImagURL(dataObject.photoId, 2);
}// end function
, 
function (param1:Object) : void
{
    _SoldierToolTipss_Image1.source = param1;
    return;
}// end function
, "_SoldierToolTipss_Image1.source");
            result[2] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = getSoldierInfo(dataObject);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierToolTipss_Text4.htmlText = param1;
    return;
}// end function
, "_SoldierToolTipss_Text4.htmlText");
            result[3] = binding;
            binding = new Binding(this, 
function () : Object
{
    return dataObject.attrs;
}// end function
, 
function (param1:Object) : void
{
    attrList.dataProvider = param1;
    return;
}// end function
, "attrList.dataProvider");
            result[4] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = getNameBy(dataObject);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierToolTipss_Text5.text = param1;
    return;
}// end function
, "_SoldierToolTipss_Text5.text");
            result[5] = binding;
            return result;
        }// end function

        private function getStrength(param1:CharacterLogicHero) : String
        {
            var _loc_2:* = param1.fightingPoint.toString();
            return _loc_2;
        }// end function

        private function getNameBy(param1:Object) : String
        {
            var _loc_2:* = param1.name;
            return _loc_2;
        }// end function

        private function _SoldierToolTipss_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SoldierToolTipss_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get attrList() : AttrsList
        {
            return this._553754159attrList;
        }// end function

        public function get txt() : Text
        {
            return this._115312txt;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SoldierToolTipss._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
