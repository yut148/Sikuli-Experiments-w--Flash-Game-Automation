package modules.comm
{
    import com.cgame.config.*;
    import com.game.common.*;
    import flash.utils.*;
    import modules.comm.data.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SoldierToolTips extends Canvas implements IBindingClient
    {
        private var _553754159attrList:AttrsList;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        var _watchers:Array;
        private var _1420318000soldierinfo:Text;
        public var _SoldierToolTips_Image1:Image;
        private var _dataObject:Object;
        var _bindings:Array;
        private var _115312txt:Text;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _SoldierToolTips_Text3:Text;
        public var _SoldierToolTips_Text5:Text;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SoldierToolTips()
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
}), new UIComponentDescriptor({type:Text, id:"_SoldierToolTips_Text3", stylesFactory:
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
}), new UIComponentDescriptor({type:Image, id:"_SoldierToolTips_Image1", propertiesFactory:
function () : Object
{
    return {x:242, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Text, id:"soldierinfo", stylesFactory:
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
    return {columnCount:2, rowHeight:20, itemRenderer:_SoldierToolTips_ClassFactory1_c()};
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
    return {y:67, width:154, height:20, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SoldierToolTips_Text5", stylesFactory:
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
            this.addEventListener("creationComplete", this.___SoldierToolTips_Canvas1_creationComplete);
            return;
        }// end function

        private function _SoldierToolTips_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = getNameByType(dataObject.tId);
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
    _SoldierToolTips_Text3.text = param1;
    return;
}// end function
, "_SoldierToolTips_Text3.text");
            result[1] = binding;
            binding = new Binding(this, 
function () : Object
{
    return imgUrl(dataObject.typeSoldier, dataObject.photoId);
}// end function
, 
function (param1:Object) : void
{
    _SoldierToolTips_Image1.source = param1;
    return;
}// end function
, "_SoldierToolTips_Image1.source");
            result[2] = binding;
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
            result[3] = binding;
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
    _SoldierToolTips_Text5.text = param1;
    return;
}// end function
, "_SoldierToolTips_Text5.text");
            result[4] = binding;
            return result;
        }// end function

        public function get txt() : Text
        {
            return this._115312txt;
        }// end function

        public function get dataObject() : Object
        {
            return this._dataObject;
        }// end function

        override public function initialize() : void
        {
            var target:SoldierToolTips;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._SoldierToolTips_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SoldierToolTipsWatcherSetupUtil");
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

        private function getNameByType(param1:int) : String
        {
            var _loc_2:String;
            var _loc_3:* = int(String(param1).charAt(0));
            switch(_loc_3)
            {
                case 4:
                {
                    _loc_2 = "Spellcaster";
                    this.soldierinfo.htmlText = Lang.msg("????");
                    break;
                }// end case
                case 1:
                {
                    _loc_2 = "Infantry";
                    this.soldierinfo.htmlText = Lang.msg("????");
                    break;
                }// end case
                case 5:
                {
                    _loc_2 = "Flying Unit";
                    this.soldierinfo.htmlText = Lang.msg("??????");
                    break;
                }// end case
                case 3:
                {
                    _loc_2 = "Cavalry";
                    this.soldierinfo.htmlText = Lang.msg("????");
                    break;
                }// end case
                case 2:
                {
                    _loc_2 = "Archer";
                    this.soldierinfo.htmlText = Lang.msg("?????");
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            var _loc_4:* = "<font color=\'#DC6800\'>" + _loc_2.charAt(0) + "</font>" + "<font color=\'#633B00\'>" + _loc_2.substr(1, _loc_2.length) + "</font>";
            return "<font color=\'#DC6800\'>" + _loc_2.charAt(0) + "</font>" + "<font color=\'#633B00\'>" + _loc_2.substr(1, _loc_2.length) + "</font>";
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
            switch(param1.attrs[0].text)
            {
                case "Spellcaster":
                {
                    _loc_2 = Lang.msg("????");
                    break;
                }// end case
                case "Infantry":
                {
                    _loc_2 = Lang.msg("????");
                    break;
                }// end case
                case "Flying Unit":
                {
                    _loc_2 = Lang.msg("??????");
                    break;
                }// end case
                case "Cavalry":
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

        private function init() : void
        {
            this.dataObject = CharacterToolTipData.getInstance().soldierData;
            return;
        }// end function

        public function set soldierinfo(param1:Text) : void
        {
            var _loc_2:* = this._1420318000soldierinfo;
            if (_loc_2 !== param1)
            {
                this._1420318000soldierinfo = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "soldierinfo", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SoldierToolTips_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.getNameByType(this.dataObject.tId);
            _loc_1 = this.dataObject.fp;
            _loc_1 = this.imgUrl(this.dataObject.typeSoldier, this.dataObject.photoId);
            _loc_1 = this.dataObject.attrs;
            _loc_1 = this.getNameBy(this.dataObject);
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

        public function ___SoldierToolTips_Canvas1_creationComplete(param1:FlexEvent) : void
        {
            this.init();
            return;
        }// end function

        private function imgUrl(param1:int, param2:int) : String
        {
            var _loc_3:String;
            if (param1 == 0)
            {
                _loc_3 = ImageResource.getInstance().getSoldierImagURL(this.dataObject.photoId, 2);
            }
            else if (param1 == 1)
            {
                _loc_3 = ImageResource.getInstance().getMonsterImagURL(this.dataObject.photoId, 1);
            }// end else if
            return _loc_3;
        }// end function

        private function set _1145608073dataObject(param1:Object) : void
        {
            this._dataObject = param1;
            return;
        }// end function

        public function get attrList() : AttrsList
        {
            return this._553754159attrList;
        }// end function

        public function get soldierinfo() : Text
        {
            return this._1420318000soldierinfo;
        }// end function

        private function _SoldierToolTips_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SoldierToolTips_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        private function getNameBy(param1:Object) : String
        {
            var _loc_2:* = param1.name;
            return _loc_2;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SoldierToolTips._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
