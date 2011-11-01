package modules.hero
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.game.common.*;
    import com.utils.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HeroEquipmentTips extends Canvas implements IBindingClient, IToolTip
    {
        private var _3236047img2:Image;
        private var _3236046img1:Image;
        var _watchers:Array;
        private var _3574721txt1:Text;
        private var _3574722txt2:Text;
        public var _HeroEquipmentTips_Canvas10:Canvas;
        public var _HeroEquipmentTips_Text1:Text;
        private var _864428699thisHeight:int;
        private var _3045985can1:Canvas;
        private var _3045986can2:Canvas;
        private var heroEquType:int;
        private var packEquType:int;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var heroEquLevel:int;
        private var _811304687heroEqu:CharacterLogicItem;
        public var _HeroEquipmentTips_Canvas2:Canvas;
        public var _HeroEquipmentTips_Canvas6:Canvas;
        var _bindings:Array;
        public var _HeroEquipmentTips_Canvas8:Canvas;
        public var _HeroEquipmentTips_Canvas4:Canvas;
        private var packEquLevel:int;
        private var _568106552thisWidth:int;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var packEqu:CharacterLogicItem;
        private var _3196003hbox:HBox;
        public static const PACKAGE:int = 0;
        private static const FIRST_TYPE:int = 201;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroEquipmentTips()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_HeroEquipmentTips_Canvas2", stylesFactory:
function () : void
{
    this.backgroundColor = 16768080;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:80, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_HeroEquipmentTips_Text1", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.color = 9661972;
    this.fontWeight = "bold";
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:80};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:HBox, id:"hbox", stylesFactory:
function () : void
{
    this.horizontalGap = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:20, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_HeroEquipmentTips_Canvas4", stylesFactory:
function () : void
{
    this.backgroundColor = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {alpha:0.9};
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"can1", stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderColor = 16768080;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Text, id:"txt1", stylesFactory:
function () : void
{
    this.color = 16777215;
    return;
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"_HeroEquipmentTips_Canvas6", stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 1;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:1, width:50, height:50, horizontalScrollPolicy:"off", verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"img1", propertiesFactory:
function () : Object
{
    return {width:50, height:50};
}// end function
})]};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, id:"_HeroEquipmentTips_Canvas8", stylesFactory:
function () : void
{
    this.backgroundColor = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {alpha:0.9};
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"can2", stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 1;
    this.borderColor = 3421236;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Text, id:"txt2", stylesFactory:
function () : void
{
    this.color = 16777215;
    return;
}// end function
}), new UIComponentDescriptor({type:Canvas, id:"_HeroEquipmentTips_Canvas10", stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 1;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:1, width:50, height:50, horizontalScrollPolicy:"off", verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:Image, id:"img2", propertiesFactory:
function () : Object
{
    return {width:50, height:50};
}// end function
})]};
}// end function
})]};
}// end function
})]};
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
            this.mouseChildren = false;
            this.mouseEnabled = false;
            this.addEventListener("creationComplete", this.___HeroEquipmentTips_Canvas1_creationComplete);
            return;
        }// end function

        public function setPackEquInfo(param1:CharacterLogicItem, param2:int, param3:int) : void
        {
            this.packEqu = param1;
            this.packEquType = param2;
            this.packEquLevel = param3;
            return;
        }// end function

        public function photoIdByEqu() : int
        {
            return this.heroEqu.photoId;
        }// end function

        private function get heroEqu() : CharacterLogicItem
        {
            return this._811304687heroEqu;
        }// end function

        public function get txt2() : Text
        {
            return this._3574722txt2;
        }// end function

        public function set txt1(param1:Text) : void
        {
            var _loc_2:* = this._3574721txt1;
            if (_loc_2 !== param1)
            {
                this._3574721txt1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "txt1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function setHeroEquInfo(param1:CharacterLogicItem, param2:int, param3:int) : void
        {
            this.heroEqu = param1;
            this.heroEquType = param2;
            this.heroEquLevel = param3;
            return;
        }// end function

        public function set txt2(param1:Text) : void
        {
            var _loc_2:* = this._3574722txt2;
            if (_loc_2 !== param1)
            {
                this._3574722txt2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "txt2", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function init() : void
        {
            return;
        }// end function

        public function setPackEquInfoStr() : String
        {
            return this.getEquipmentDes(this.packEqu, this.packEquType, this.packEquLevel);
        }// end function

        override public function initialize() : void
        {
            var target:HeroEquipmentTips;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroEquipmentTips_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroEquipmentTipsWatcherSetupUtil");
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

        public function getEquipmentDes(param1, param2:int = 0, param3:int = 0) : String
        {
            var _loc_6:String;
            var _loc_7:int;
            var _loc_8:int;
            var _loc_9:CharacterLogicItem;
            var _loc_10:String;
            var _loc_11:int;
            var _loc_12:String;
            var _loc_13:String;
            var _loc_14:String;
            var _loc_15:String;
            var _loc_16:String;
            var _loc_17:String;
            var _loc_18:String;
            var _loc_4:String;
            var _loc_5:* = "<b>" + param1.name + "</b>";
            _loc_4 = _loc_4 + ItemToolTipFormat.getColorText(param1.color, _loc_5);
            _loc_4 = _loc_4 + "<br/>";
            if (param1.maxSlotableCount > 0)
            {
                for each (_loc_9 in param1.slotItemIds)
                {
                    // label
                    if (_loc_9.itemId >= 0)
                    {
                        _loc_7++;
                        if (_loc_9.itemId > 0)
                        {
                            _loc_8++;
                        }// end if
                    }// end if
                }// end of for each ... in
                _loc_7 = _loc_7 == 0 ? (param1.initSlotCount) : (_loc_7);
                if (_loc_7 > 0)
                {
                    _loc_10 = Lang.msg("????") + ":(" + _loc_8 + "/" + _loc_7 + ")";
                    _loc_4 = _loc_4 + ItemToolTipFormat.getColorText(1, _loc_10);
                    _loc_4 = _loc_4 + "<br/>";
                }// end if
            }// end if
            if (param2 == PACKAGE)
            {
                if (param1.bind)
                {
                    _loc_6 = ItemDesc.getBindingDesc(1);
                }
                else
                {
                    _loc_6 = ItemDesc.getBindingFromConfig(param1.itemId);
                }// end else if
            }
            else
            {
                _loc_6 = ItemDesc.getBindingFromConfig(param1.itemId);
            }// end else if
            if (_loc_6 != "")
            {
                _loc_4 = _loc_4 + _loc_6;
                _loc_4 = _loc_4 + "<br/>";
            }// end if
            if (param1.requirement)
            {
                if (param1.requirement.characterHero)
                {
                    if (param1.requirement.characterHero.level)
                    {
                        _loc_11 = param1.requirement.characterHero.level;
                        _loc_12 = String(_loc_11);
                        if (param3 != 0 && param3 < _loc_11)
                        {
                            _loc_12 = ItemToolTipFormat.getColorText(5, _loc_12);
                        }// end if
                        _loc_13 = Lang.msg("??????") + ":" + _loc_12;
                        _loc_4 = _loc_4 + _loc_13;
                        _loc_4 = _loc_4 + "<br/>";
                    }// end if
                }// end if
            }// end if
            if (param1.subType)
            {
                _loc_14 = Lang.msg("??") + ":" + ItemDesc.getPositionDesc(param1.subType);
                _loc_4 = _loc_4 + _loc_14;
                _loc_4 = _loc_4 + "<br/>";
            }// end if
            if (param1.effect)
            {
                _loc_4 = _loc_4 + ItemToolTipFormat.getEffect(param1.effect, param1.slotItemIds, param1.slotItemAdd);
            }// end if
            if (param1.suit)
            {
                _loc_15 = ConfigResource.getInstance().getName(param1.suit.id) as String;
                if (_loc_15)
                {
                    _loc_4 = _loc_4 + ItemToolTipFormat.getColorText(6, _loc_15);
                    if (param1.heroEquipSuitIds && param1.heroEquipSuitIds.length != 0)
                    {
                        _loc_4 = _loc_4 + (" " + param1.heroEquipSuitIds.length + "/8 <br/>");
                    }
                    else
                    {
                        _loc_4 = _loc_4 + (" 1/" + param1.suit["itemCount"] + "<br/>");
                    }// end else if
                    _loc_4 = _loc_4 + this.getSuit(param1);
                }// end if
            }// end if
            if (param1.desc)
            {
                _loc_16 = param1.desc;
                _loc_4 = _loc_4 + ItemToolTipFormat.getColorText(6, _loc_16);
                _loc_4 = _loc_4 + "<br/>";
            }// end if
            if (param1.coin && param1.saleable != 0)
            {
                _loc_17 = String(param1.coin);
                _loc_4 = _loc_4 + "\n";
                _loc_4 = _loc_4 + (Lang.msg("??") + ":" + _loc_17 + " " + Lang.msg("????"));
            }// end if
            if (param1.saleable == 0)
            {
                _loc_4 = _loc_4 + "\n";
                _loc_4 = _loc_4 + Lang.msg("????");
            }// end if
            if (param1.level)
            {
                _loc_4 = _loc_4 + "\n";
                _loc_18 = Lang.msg("????") + ":" + param1.level;
                _loc_4 = _loc_4 + _loc_18;
            }// end if
            return _loc_4;
        }// end function

        public function set img1(param1:Image) : void
        {
            var _loc_2:* = this._3236046img1;
            if (_loc_2 !== param1)
            {
                this._3236046img1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "img1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set img2(param1:Image) : void
        {
            var _loc_2:* = this._3236047img2;
            if (_loc_2 !== param1)
            {
                this._3236047img2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "img2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function getSuit(param1:Object) : String
        {
            var suitInfo:Object;
            var i:int;
            var equipSuitCount:int;
            var heroEffect:Object;
            var key:String;
            var info:* = param1;
            var result:String;
            suitInfo = info.suit;
            var itemCount:* = suitInfo.itemCount;
            var subType:* = info.subType - FIRST_TYPE + 1;
            i;
            if (info.characterHeroId && info.characterHeroId > 0)
            {
                i;
                while (i <= itemCount)
                {
                    // label
                    if (ArrayUtil.findIndex(info.heroEquipSuitIds, 
function (param1:int)
{
    return param1 == suitInfo["itemId" + i];
}// end function
) != -1)
                    {
                        result = result + getColorText(6, getItemName(suitInfo["itemId" + i]));
                    }
                    else
                    {
                        result = result + getColorText(7, getItemName(suitInfo["itemId" + i]));
                    }// end else if
                    result = result + "<br/>";
                    i = i++;
                }// end while
                equipSuitCount;
                if (info.heroEquipSuitIds != null)
                {
                    equipSuitCount = info.heroEquipSuitIds.length;
                }// end if
                result = result + "<br/>";
                i;
                while (i <= itemCount)
                {
                    // label
                    if (suitInfo["effect" + i])
                    {
                        heroEffect = suitInfo["effect" + i];
                        var _loc_3:int;
                        var _loc_4:* = heroEffect;
                        while (_loc_4 in _loc_3)
                        {
                            // label
                            key = _loc_4[_loc_3];
                            if (equipSuitCount >= i)
                            {
                                result = result + (getColorText(1, Lang.msg(i + "?????")) + getColorText(1, ":" + getItemEffect(suitInfo["effect" + i])));
                            }
                            else
                            {
                                result = result + (getColorText(1, Lang.msg(i + "?????")) + getColorText(7, ":" + getItemEffect(suitInfo["effect" + i])));
                            }// end else if
                            result = result + "<br/>";
                        }// end while
                    }// end if
                    i = i++;
                }// end while
            }
            else
            {
                i;
                while (i <= itemCount)
                {
                    // label
                    if (suitInfo["itemId" + i] == info.itemId)
                    {
                        result = result + getColorText(6, getItemName(suitInfo["itemId" + i]));
                    }
                    else
                    {
                        result = result + getColorText(7, getItemName(suitInfo["itemId" + i]));
                    }// end else if
                    result = result + "<br/>";
                    i = i++;
                }// end while
                result = result + "<br/>";
                i;
                while (i <= itemCount)
                {
                    // label
                    if (suitInfo["effect" + i])
                    {
                        heroEffect = suitInfo["effect" + i];
                        var _loc_3:int;
                        var _loc_4:* = heroEffect;
                        while (_loc_4 in _loc_3)
                        {
                            // label
                            key = _loc_4[_loc_3];
                            result = result + (getColorText(1, Lang.msg(i + "?????")) + getColorText(7, ":" + getItemEffect(suitInfo["effect" + i])));
                            result = result + "<br/>";
                        }// end while
                    }// end if
                    i = i++;
                }// end while
            }// end else if
            result = result.replace(/{!itemsCount}/gi, itemCount);
            return result;
        }// end function

        private function set thisWidth(param1:int) : void
        {
            var _loc_2:* = this._568106552thisWidth;
            if (_loc_2 !== param1)
            {
                this._568106552thisWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thisWidth", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroEquipmentTips_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.heroEqu == null ? (0) : (20);
            _loc_1 = Lang.msg("????");
            _loc_1 = this.can1.width;
            _loc_1 = this.can1.height;
            _loc_1 = this.heroEqu == null ? (0) : (this.txt1.width + this.img1.width + 2);
            _loc_1 = this.heroEqu == null ? (0) : (1);
            _loc_1 = this.setHeroEquInfoStr();
            _loc_1 = this.txt1.width > 140 ? (this.txt1.width) : (140);
            this.txt1.width-- = ImageResource.getInstance().getItemImageURL(this.photoIdByEqu());
            this.txt1.width-- = this.can2.width;
            this.txt1.width-- = this.can2.height;
            this.txt1.width-- = this.setPackEquInfoStr();
            this.txt1.width-- = this.txt2.width > 140 ? (this.txt2.width) : (140);
            this.txt2.width-- = ImageResource.getInstance().getItemImageURL(this.photoIdByPack());
            return;
        }// end function

        public function get text() : String
        {
            return "";
        }// end function

        public function ___HeroEquipmentTips_Canvas1_creationComplete(param1:FlexEvent) : void
        {
            this.init();
            return;
        }// end function

        public function setHeroEquInfoStr() : String
        {
            return this.getEquipmentDes(this.heroEqu, this.heroEquType, this.heroEquLevel);
        }// end function

        public function get txt1() : Text
        {
            return this._3574721txt1;
        }// end function

        public function set can1(param1:Canvas) : void
        {
            var _loc_2:* = this._3045985can1;
            if (_loc_2 !== param1)
            {
                this._3045985can1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "can1", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _HeroEquipmentTips_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Number
{
    return heroEqu == null ? (0) : (20);
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas2.height = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas2.height");
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
    _HeroEquipmentTips_Text1.text = param1;
    return;
}// end function
, "_HeroEquipmentTips_Text1.text");
            result[1] = binding;
            binding = new Binding(this, 
function () : Number
{
    return can1.width;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas4.width = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas4.width");
            result[2] = binding;
            binding = new Binding(this, 
function () : Number
{
    return can1.height;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas4.height = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas4.height");
            result[3] = binding;
            binding = new Binding(this, 
function () : Number
{
    return heroEqu == null ? (0) : (txt1.width + img1.width + 2);
}// end function
, 
function (param1:Number) : void
{
    can1.width = param1;
    return;
}// end function
, "can1.width");
            result[4] = binding;
            binding = new Binding(this, 
function () : Number
{
    return heroEqu == null ? (0) : (1);
}// end function
, 
function (param1:Number) : void
{
    can1.setStyle("borderThickness", param1);
    return;
}// end function
, "can1.borderThickness");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = setHeroEquInfoStr();
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    txt1.htmlText = param1;
    return;
}// end function
, "txt1.htmlText");
            result[6] = binding;
            binding = new Binding(this, 
function () : Number
{
    return txt1.width > 140 ? (txt1.width) : (140);
}// end function
, 
function (param1:Number) : void
{
    txt1.width = param1;
    return;
}// end function
, "txt1.width");
            result[7] = binding;
            binding = new Binding(this, 
function () : Number
{
    return txt1.width--;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas6.x = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas6.x");
            result[8] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getItemImageURL(photoIdByEqu());
}// end function
, 
function (param1:Object) : void
{
    img1.source = param1;
    return;
}// end function
, "img1.source");
            result[9] = binding;
            binding = new Binding(this, 
function () : Number
{
    return can2.width;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas8.width = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas8.width");
            result[10] = binding;
            binding = new Binding(this, 
function () : Number
{
    return can2.height;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas8.height = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas8.height");
            result[11] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = setPackEquInfoStr();
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    txt2.htmlText = param1;
    return;
}// end function
, "txt2.htmlText");
            result[12] = binding;
            binding = new Binding(this, 
function () : Number
{
    return txt2.width > 140 ? (txt2.width) : (140);
}// end function
, 
function (param1:Number) : void
{
    txt2.width = param1;
    return;
}// end function
, "txt2.width");
            result[13] = binding;
            binding = new Binding(this, 
function () : Number
{
    return txt2.width--;
}// end function
, 
function (param1:Number) : void
{
    _HeroEquipmentTips_Canvas10.x = param1;
    return;
}// end function
, "_HeroEquipmentTips_Canvas10.x");
            result[14] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getItemImageURL(photoIdByPack());
}// end function
, 
function (param1:Object) : void
{
    img2.source = param1;
    return;
}// end function
, "img2.source");
            result[15] = binding;
            return result;
        }// end function

        public function set hbox(param1:HBox) : void
        {
            var _loc_2:* = this._3196003hbox;
            if (_loc_2 !== param1)
            {
                this._3196003hbox = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hbox", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get thisWidth() : int
        {
            return this._568106552thisWidth;
        }// end function

        public function set can2(param1:Canvas) : void
        {
            var _loc_2:* = this._3045986can2;
            if (_loc_2 !== param1)
            {
                this._3045986can2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "can2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get img1() : Image
        {
            return this._3236046img1;
        }// end function

        public function get img2() : Image
        {
            return this._3236047img2;
        }// end function

        private function set thisHeight(param1:int) : void
        {
            var _loc_2:* = this._864428699thisHeight;
            if (_loc_2 !== param1)
            {
                this._864428699thisHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thisHeight", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set text(param1:String) : void
        {
            return;
        }// end function

        public function photoIdByPack() : int
        {
            return this.packEqu.photoId;
        }// end function

        private function set heroEqu(param1:CharacterLogicItem) : void
        {
            var _loc_2:* = this._811304687heroEqu;
            if (_loc_2 !== param1)
            {
                this._811304687heroEqu = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroEqu", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get can2() : Canvas
        {
            return this._3045986can2;
        }// end function

        public function get hbox() : HBox
        {
            return this._3196003hbox;
        }// end function

        private function get thisHeight() : int
        {
            return this._864428699thisHeight;
        }// end function

        public function get can1() : Canvas
        {
            return this._3045985can1;
        }// end function

        private static function getItemName(param1:int) : String
        {
            var _loc_2:String;
            _loc_2 = ConfigResource.getInstance().getItemName(param1);
            return _loc_2;
        }// end function

        private static function getItemEffect(param1:Object) : String
        {
            var _loc_3:String;
            var _loc_4:Object;
            var _loc_5:String;
            var _loc_2:String;
            for (_loc_3 in param1)
            {
                // label
                _loc_4 = param1[_loc_3];
                for (_loc_5 in _loc_4)
                {
                    // label
                    trace(_loc_5 + ":" + _loc_4[_loc_5]);
                    switch(_loc_5)
                    {
                        case "leadershipAdd":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "attackAdd":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "defenceAdd":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "agilityAdd":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "vitalityAdd":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "counterHit":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "comboHit":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "criticalHit":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "hit":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        case "dodge":
                        {
                            _loc_2 = _loc_2 + (Lang.msg("??") + " +" + _loc_4[_loc_5]);
                            break;
                        }// end case
                        default:
                        {
                            break;
                        }// end default
                    }// end switch
                }// end of for ... in
            }// end of for ... in
            return _loc_2;
        }// end function

        public static function getColorText(param1:int, param2:String) : String
        {
            var _loc_3:String;
            _loc_3 = "<font color=\'" + ColorConfig.getColor(param1) + "\'>" + param2 + "</font>";
            return _loc_3;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
