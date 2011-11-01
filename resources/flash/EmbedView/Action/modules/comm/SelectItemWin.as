package modules.comm
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.game.common.*;
    import com.utils.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.character.event.*;
    import modules.comm.event.*;
    import modules.embed.itemRender.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SelectItemWin extends TitleBorderCanvas implements IBindingClient
    {
        private var _1307134504colorTypecomboBox2:ComboBox;
        private var _itemsUsed:Array;
        private var _embed_mxml_images_comm_background_inventory_bg_jpg_778895754:Class;
        private var _117305288compositeGroup:RadioButtonGroup;
        private var _1092415842render8:EmbedItemRenderer;
        private var itemList:CharacterItemList;
        public var selectType:int;
        var _bindingsByDestination:Object;
        public var _SelectItemWin_Object1:Object;
        public var _SelectItemWin_Object2:Object;
        public var _SelectItemWin_Object3:Object;
        public var _SelectItemWin_Object4:Object;
        public var _SelectItemWin_Object5:Object;
        public var _SelectItemWin_Object6:Object;
        public var _SelectItemWin_Object7:Object;
        private var _1092415838render4:EmbedItemRenderer;
        private var _1092415840render6:EmbedItemRenderer;
        private var _494847427render18:EmbedItemRenderer;
        private var _494847429render16:EmbedItemRenderer;
        private var _1092415836render2:EmbedItemRenderer;
        private var _494847432render13:EmbedItemRenderer;
        private var _inited:Boolean = false;
        private var _494847434render11:EmbedItemRenderer;
        private var _494847430render15:EmbedItemRenderer;
        private var targetData:CharacterLogicItem;
        private var _601108392currentPage:int = 1;
        public var _SelectItemWin_Button1:Button;
        private var _1092415834render0:EmbedItemRenderer;
        private var _486368719targetList:Tile;
        private var _1528345702_isShow:Boolean = false;
        private var _1092415843render9:EmbedItemRenderer;
        private var _109413588show1:Label;
        private var pageSize:int = 20;
        private var _1092415839render5:EmbedItemRenderer;
        private var _1092415841render7:EmbedItemRenderer;
        var _watchers:Array;
        private var _803575694pageCom:PageComponent;
        private var _itemsType:int;
        private var _1870018539titleLab:Label;
        private var _1092415837render3:EmbedItemRenderer;
        private var _1893124626collorArr:Array;
        private var gemItems:ArrayCollection;
        private var _494847426render19:EmbedItemRenderer;
        private var items:ArrayCollection;
        private var _494847428render17:EmbedItemRenderer;
        private var _494847435render10:EmbedItemRenderer;
        var _bindingsBeginWithWord:Object;
        private var _577409037totalPage:int = 1;
        private var _494847431render14:EmbedItemRenderer;
        private var _494847433render12:EmbedItemRenderer;
        private var _109413589show2:TextInput;
        private var _1092415835render1:EmbedItemRenderer;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        private static var _instance:SelectItemWin;

        public function SelectItemWin()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:TitleBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:421, height:405, childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {styleName:"heroCanvasBar", width:401, x:10, y:19, height:17, mouseChildren:false, mouseEnabled:false, childDescriptors:[new UIComponentDescriptor({type:Label, id:"titleLab", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6503168;
    this.fontSize = 12;
    this.horizontalCenter = "0";
    this.verticalCenter = "-2";
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Label, id:"show1", stylesFactory:
function () : void
{
    this.color = 6503168;
    this.fontSize = 12;
    this.textAlign = "right";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:23, y:41, width:49};
}// end function
}), new UIComponentDescriptor({type:TextInput, id:"show2", stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.cornerRadius = 2;
    this.backgroundColor = 0;
    this.color = 16578234;
    this.fontWeight = "bold";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:73, y:39, width:86, editable:false};
}// end function
}), new UIComponentDescriptor({type:ComboBox, id:"colorTypecomboBox2", events:{close:"__colorTypecomboBox2_close"}, stylesFactory:
function () : void
{
    this.fontSize = 11;
    this.borderThickness = 0;
    this.highlightAlphas = [0, 0];
    this.fillAlphas = [0, 0];
    this.focusAlpha = 0;
    this.cornerRadius = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {rowCount:7, x:75, y:39, width:84, styleName:"tradeComboBox", itemRenderer:_SelectItemWin_ClassFactory1_c()};
}// end function
}), new UIComponentDescriptor({type:PageComponent, id:"pageCom", stylesFactory:
function () : void
{
    this.backgroundAlpha = 0;
    this.horizontalCenter = "-113";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {showFirstLastBtn:false, showLetterBg:true, pageTextCoclor:"white", showGo:false, height:22, y:365, width:142};
}// end function
}), new UIComponentDescriptor({type:Tile, id:"targetList", events:{creationComplete:"__targetList_creationComplete"}, stylesFactory:
function () : void
{
    this.paddingLeft = 8;
    this.paddingTop = 6;
    this.horizontalGap = 5;
    this.verticalGap = 5;
    this.borderStyle = "solid";
    this.borderColor = 16773993;
    this.backgroundSize = "100%";
    this.backgroundImage = _embed_mxml_images_comm_background_inventory_bg_jpg_778895754;
    this.horizontalCenter = "-2";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:64, width:368, height:296, childDescriptors:[new UIComponentDescriptor({type:EmbedItemRenderer, id:"render0"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render1"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render2"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render3"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render4"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render5"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render6"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render7"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render8"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render9"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render10"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render11"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render12"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render13"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render14"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render15"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render16"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render17"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render18"}), new UIComponentDescriptor({type:EmbedItemRenderer, id:"render19"})]};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_SelectItemWin_Button1", events:{click:"___SelectItemWin_Button1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "127";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:362, styleName:"brownEmptyBtnW74H25", width:74, height:25};
}// end function
})]};
}// end function
});
            this.itemList = CacheManager.getInstance().getCache(CacheType.PACKAGE_ITEMS) as CharacterItemList;
            this.items = new ArrayCollection();
            this._embed_mxml_images_comm_background_inventory_bg_jpg_778895754 = SelectItemWin__embed_mxml_images_comm_background_inventory_bg_jpg_778895754;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }// end if
            this.styleDeclaration.defaultFactory = 
function () : void
{
    this.backgroundColor = 15448432;
    return;
}// end function
;
            this.width = 421;
            this.height = 405;
            this.showTitle = false;
            this._SelectItemWin_Array1_i();
            this._SelectItemWin_RadioButtonGroup1_i();
            this.addEventListener("creationComplete", this.___SelectItemWin_TitleBorderCanvas1_creationComplete);
            this.addEventListener("addedToStage", this.___SelectItemWin_TitleBorderCanvas1_addedToStage);
            return;
        }// end function

        public function get collorArr() : Array
        {
            return this._1893124626collorArr;
        }// end function

        public function get titleLab() : Label
        {
            return this._1870018539titleLab;
        }// end function

        public function ___SelectItemWin_TitleBorderCanvas1_addedToStage(param1:Event) : void
        {
            this.onAddedToStage();
            return;
        }// end function

        public function set collorArr(param1:Array) : void
        {
            var _loc_2:* = this._1893124626collorArr;
            if (_loc_2 !== param1)
            {
                this._1893124626collorArr = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "collorArr", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set titleLab(param1:Label) : void
        {
            var _loc_2:* = this._1870018539titleLab;
            if (_loc_2 !== param1)
            {
                this._1870018539titleLab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "titleLab", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SelectItemWin_Object1_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object1 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object1", this._SelectItemWin_Object1);
            return _loc_1;
        }// end function

        public function get render10() : EmbedItemRenderer
        {
            return this._494847435render10;
        }// end function

        public function get render11() : EmbedItemRenderer
        {
            return this._494847434render11;
        }// end function

        public function get render12() : EmbedItemRenderer
        {
            return this._494847433render12;
        }// end function

        private function onComplete() : void
        {
            this._inited = true;
            this.pageCom.addEventListener(PageEvent.CHANGE_PAGE, this.pageChangeHandler);
            this.updateInfo();
            return;
        }// end function

        public function get render14() : EmbedItemRenderer
        {
            return this._494847431render14;
        }// end function

        public function get render16() : EmbedItemRenderer
        {
            return this._494847429render16;
        }// end function

        public function get render18() : EmbedItemRenderer
        {
            return this._494847427render18;
        }// end function

        public function get render19() : EmbedItemRenderer
        {
            return this._494847426render19;
        }// end function

        public function get compositeGroup() : RadioButtonGroup
        {
            return this._117305288compositeGroup;
        }// end function

        public function get render15() : EmbedItemRenderer
        {
            return this._494847430render15;
        }// end function

        public function get render17() : EmbedItemRenderer
        {
            return this._494847428render17;
        }// end function

        public function get render13() : EmbedItemRenderer
        {
            return this._494847432render13;
        }// end function

        private function _SelectItemWin_RadioButtonGroup1_i() : RadioButtonGroup
        {
            var _loc_1:* = new RadioButtonGroup();
            this.compositeGroup = _loc_1;
            _loc_1.initialized(this, "compositeGroup");
            return _loc_1;
        }// end function

        private function get _isShow() : Boolean
        {
            return this._1528345702_isShow;
        }// end function

        private function onTargetListComplete() : void
        {
            this.targetList.addEventListener(PackageEvent.SHOW_PACKAGE_OPERATE, this.onTargetClickOperate);
            this.setDataProvider = ArrayCllectionUtil.getThePageData(this.items, this.pageSize, this.currentPage);
            return;
        }// end function

        public function set render10(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847435render10;
            if (_loc_2 !== param1)
            {
                this._494847435render10 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render10", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render11(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847434render11;
            if (_loc_2 !== param1)
            {
                this._494847434render11 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render11", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render12(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847433render12;
            if (_loc_2 !== param1)
            {
                this._494847433render12 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render12", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set compositeGroup(param1:RadioButtonGroup) : void
        {
            var _loc_2:* = this._117305288compositeGroup;
            if (_loc_2 !== param1)
            {
                this._117305288compositeGroup = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "compositeGroup", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get pageCom() : PageComponent
        {
            return this._803575694pageCom;
        }// end function

        public function set render16(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847429render16;
            if (_loc_2 !== param1)
            {
                this._494847429render16 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render16", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render13(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847432render13;
            if (_loc_2 !== param1)
            {
                this._494847432render13 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render13", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render17(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847428render17;
            if (_loc_2 !== param1)
            {
                this._494847428render17 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render17", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render14(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847431render14;
            if (_loc_2 !== param1)
            {
                this._494847431render14 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render14", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set setDataProvider(param1:ArrayCollection) : void
        {
            var _loc_2:int;
            var _loc_3:PackageEvent;
            if (!param1 || param1.length == 0)
            {
                _loc_2 = 0;
                while (_loc_2 < 20)
                {
                    // label
                    this["render" + _loc_2].data = null;
                    _loc_2++;
                }// end while
                return;
            }// end if
            _loc_2 = 0;
            while (_loc_2 < 20)
            {
                // label
                if (_loc_2 < param1.length)
                {
                    this["render" + _loc_2].data = param1[_loc_2];
                    if (_loc_2 == 0)
                    {
                        this.render0.radioButton.selected = true;
                        _loc_3 = new PackageEvent(PackageEvent.SHOW_PACKAGE_OPERATE, true);
                        _loc_3.data = param1[_loc_2] as CharacterLogicItem;
                        _loc_3.itemCanvas = this;
                        _loc_3.itemType = param1[_loc_2].type;
                        this.render0.dispatchEvent(_loc_3);
                    }// end if
                }
                else
                {
                    this["render" + _loc_2].data = null;
                }// end else if
                _loc_2++;
            }// end while
            return;
        }// end function

        public function set render19(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847426render19;
            if (_loc_2 !== param1)
            {
                this._494847426render19 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render19", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render15(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847430render15;
            if (_loc_2 !== param1)
            {
                this._494847430render15 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render15", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render18(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._494847427render18;
            if (_loc_2 !== param1)
            {
                this._494847427render18 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render18", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SelectItemWin_Object7_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object7 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object7", this._SelectItemWin_Object7);
            return _loc_1;
        }// end function

        public function set render0(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415834render0;
            if (_loc_2 !== param1)
            {
                this._1092415834render0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render1(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415835render1;
            if (_loc_2 !== param1)
            {
                this._1092415835render1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render2(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415836render2;
            if (_loc_2 !== param1)
            {
                this._1092415836render2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render2", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function goToPage(param1:int) : void
        {
            this.currentPage = this.currentPage + param1;
            this.setDataProvider = ArrayCllectionUtil.getThePageData(this.items, this.pageSize, this.currentPage);
            return;
        }// end function

        public function set render3(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415837render3;
            if (_loc_2 !== param1)
            {
                this._1092415837render3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render4(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415838render4;
            if (_loc_2 !== param1)
            {
                this._1092415838render4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render5(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415839render5;
            if (_loc_2 !== param1)
            {
                this._1092415839render5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render6(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415840render6;
            if (_loc_2 !== param1)
            {
                this._1092415840render6 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render6", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render9(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415843render9;
            if (_loc_2 !== param1)
            {
                this._1092415843render9 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render9", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function ___SelectItemWin_TitleBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.onComplete();
            return;
        }// end function

        public function set render8(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415842render8;
            if (_loc_2 !== param1)
            {
                this._1092415842render8 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render8", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set _isShow(param1:Boolean) : void
        {
            var _loc_2:* = this._1528345702_isShow;
            if (_loc_2 !== param1)
            {
                this._1528345702_isShow = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_isShow", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function isShowCombox(param1:Boolean) : void
        {
            this._isShow = param1;
            return;
        }// end function

        private function _SelectItemWin_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = SelectItemWin_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function __colorTypecomboBox2_close(param1:DropdownEvent) : void
        {
            this.itemFixedColorHandler(param1);
            return;
        }// end function

        public function get show1() : Label
        {
            return this._109413588show1;
        }// end function

        public function get show2() : TextInput
        {
            return this._109413589show2;
        }// end function

        public function ___SelectItemWin_Button1_click(param1:MouseEvent) : void
        {
            this.onConfirm();
            return;
        }// end function

        public function set pageCom(param1:PageComponent) : void
        {
            var _loc_2:* = this._803575694pageCom;
            if (_loc_2 !== param1)
            {
                this._803575694pageCom = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pageCom", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set render7(param1:EmbedItemRenderer) : void
        {
            var _loc_2:* = this._1092415841render7;
            if (_loc_2 !== param1)
            {
                this._1092415841render7 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "render7", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SelectItemWin_Object6_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object6 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object6", this._SelectItemWin_Object6);
            return _loc_1;
        }// end function

        public function screenScoketGems(param1:CharacterLogicItem) : void
        {
            var _loc_4:CharacterLogicItem;
            var _loc_5:String;
            var _loc_2:Array;
            var _loc_3:int;
            while (_loc_3 < param1.slotItemIds.length)
            {
                // label
                _loc_4 = new CharacterLogicItem();
                _loc_4.initById(param1.slotItemIds.itemId);
                for (_loc_5 in _loc_4.effect.characterHero)
                {
                    // label
                    if (_loc_5)
                    {
                        _loc_2.push(_loc_2);
                    }// end if
                }// end of for ... in
                _loc_3++;
            }// end while
            _loc_3 = 0;
            while (_loc_3 < _loc_2.length)
            {
                // label
                for each (_loc_4 in this.items)
                {
                    // label
                    if (_loc_4.effect.characterHero == _loc_2[_loc_3])
                    {
                        this.items.source.splice(this.items.source.indexOf(_loc_4), 1);
                    }// end if
                }// end of for each ... in
                _loc_3++;
            }// end while
            return;
        }// end function

        private function updateInfo() : void
        {
            if (!this._inited)
            {
                return;
            }// end if
            switch(this._itemsType)
            {
                case ItemType.JEWEL:
                {
                    this.titleLab.text = Lang.msg("??");
                    break;
                }// end case
                case ItemType.BOOK:
                {
                    this.titleLab.text = Lang.msg("?");
                    break;
                }// end case
                case ItemType.EQUIPMENT:
                {
                    this.titleLab.text = Lang.msg("??");
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            return;
        }// end function

        private function _SelectItemWin_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object1.label = param1;
    return;
}// end function
, "_SelectItemWin_Object1.label");
            result[0] = binding;
            binding = new Binding(this, 
function ()
{
    return -1;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object1.data = param1;
    return;
}// end function
, "_SelectItemWin_Object1.data");
            result[1] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object2.label = param1;
    return;
}// end function
, "_SelectItemWin_Object2.label");
            result[2] = binding;
            binding = new Binding(this, 
function ()
{
    return 0;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object2.data = param1;
    return;
}// end function
, "_SelectItemWin_Object2.data");
            result[3] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.WHITE);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object2.color = param1;
    return;
}// end function
, "_SelectItemWin_Object2.color");
            result[4] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object3.label = param1;
    return;
}// end function
, "_SelectItemWin_Object3.label");
            result[5] = binding;
            binding = new Binding(this, 
function ()
{
    return 1;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object3.data = param1;
    return;
}// end function
, "_SelectItemWin_Object3.data");
            result[6] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.GREEN);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object3.color = param1;
    return;
}// end function
, "_SelectItemWin_Object3.color");
            result[7] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object4.label = param1;
    return;
}// end function
, "_SelectItemWin_Object4.label");
            result[8] = binding;
            binding = new Binding(this, 
function ()
{
    return 2;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object4.data = param1;
    return;
}// end function
, "_SelectItemWin_Object4.data");
            result[9] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.BLUE);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object4.color = param1;
    return;
}// end function
, "_SelectItemWin_Object4.color");
            result[10] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object5.label = param1;
    return;
}// end function
, "_SelectItemWin_Object5.label");
            result[11] = binding;
            binding = new Binding(this, 
function ()
{
    return 3;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object5.data = param1;
    return;
}// end function
, "_SelectItemWin_Object5.data");
            result[12] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.PURPLE);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object5.color = param1;
    return;
}// end function
, "_SelectItemWin_Object5.color");
            result[13] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object6.label = param1;
    return;
}// end function
, "_SelectItemWin_Object6.label");
            result[14] = binding;
            binding = new Binding(this, 
function ()
{
    return 4;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object6.data = param1;
    return;
}// end function
, "_SelectItemWin_Object6.data");
            result[15] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.ORANGE);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object6.color = param1;
    return;
}// end function
, "_SelectItemWin_Object6.color");
            result[16] = binding;
            binding = new Binding(this, 
function ()
{
    return Lang.msg("??");
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object7.label = param1;
    return;
}// end function
, "_SelectItemWin_Object7.label");
            result[17] = binding;
            binding = new Binding(this, 
function ()
{
    return 5;
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object7.data = param1;
    return;
}// end function
, "_SelectItemWin_Object7.data");
            result[18] = binding;
            binding = new Binding(this, 
function ()
{
    return ColorConfig.getItemColorUint(ColorConfig.RED);
}// end function
, 
function (param1) : void
{
    _SelectItemWin_Object7.color = param1;
    return;
}// end function
, "_SelectItemWin_Object7.color");
            result[19] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("?");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    titleLab.text = param1;
    return;
}// end function
, "titleLab.text");
            result[20] = binding;
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
    show1.text = param1;
    return;
}// end function
, "show1.text");
            result[21] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return false;
}// end function
, 
function (param1:Boolean) : void
{
    show1.visible = param1;
    return;
}// end function
, "show1.visible");
            result[22] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return false;
}// end function
, 
function (param1:Boolean) : void
{
    show2.visible = param1;
    return;
}// end function
, "show2.visible");
            result[23] = binding;
            binding = new Binding(this, 
function () : Object
{
    return collorArr;
}// end function
, 
function (param1:Object) : void
{
    colorTypecomboBox2.dataProvider = param1;
    return;
}// end function
, "colorTypecomboBox2.dataProvider");
            result[24] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return false;
}// end function
, 
function (param1:Boolean) : void
{
    colorTypecomboBox2.visible = param1;
    return;
}// end function
, "colorTypecomboBox2.visible");
            result[25] = binding;
            binding = new Binding(this, 
function () : int
{
    return totalPage;
}// end function
, 
function (param1:int) : void
{
    pageCom.pageCount = param1;
    return;
}// end function
, "pageCom.pageCount");
            result[26] = binding;
            binding = new Binding(this, 
function () : int
{
    return currentPage;
}// end function
, 
function (param1:int) : void
{
    pageCom.currentPage = param1;
    return;
}// end function
, "pageCom.currentPage");
            result[27] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render0.radioGroup = param1;
    return;
}// end function
, "render0.radioGroup");
            result[28] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render1.radioGroup = param1;
    return;
}// end function
, "render1.radioGroup");
            result[29] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render2.radioGroup = param1;
    return;
}// end function
, "render2.radioGroup");
            result[30] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render3.radioGroup = param1;
    return;
}// end function
, "render3.radioGroup");
            result[31] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render4.radioGroup = param1;
    return;
}// end function
, "render4.radioGroup");
            result[32] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render5.radioGroup = param1;
    return;
}// end function
, "render5.radioGroup");
            result[33] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render6.radioGroup = param1;
    return;
}// end function
, "render6.radioGroup");
            result[34] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render7.radioGroup = param1;
    return;
}// end function
, "render7.radioGroup");
            result[35] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render8.radioGroup = param1;
    return;
}// end function
, "render8.radioGroup");
            result[36] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render9.radioGroup = param1;
    return;
}// end function
, "render9.radioGroup");
            result[37] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render10.radioGroup = param1;
    return;
}// end function
, "render10.radioGroup");
            result[38] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render11.radioGroup = param1;
    return;
}// end function
, "render11.radioGroup");
            result[39] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render12.radioGroup = param1;
    return;
}// end function
, "render12.radioGroup");
            result[40] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render13.radioGroup = param1;
    return;
}// end function
, "render13.radioGroup");
            result[41] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render14.radioGroup = param1;
    return;
}// end function
, "render14.radioGroup");
            result[42] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render15.radioGroup = param1;
    return;
}// end function
, "render15.radioGroup");
            result[43] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render16.radioGroup = param1;
    return;
}// end function
, "render16.radioGroup");
            result[44] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render17.radioGroup = param1;
    return;
}// end function
, "render17.radioGroup");
            result[45] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render18.radioGroup = param1;
    return;
}// end function
, "render18.radioGroup");
            result[46] = binding;
            binding = new Binding(this, 
function () : RadioButtonGroup
{
    return compositeGroup;
}// end function
, 
function (param1:RadioButtonGroup) : void
{
    render19.radioGroup = param1;
    return;
}// end function
, "render19.radioGroup");
            result[47] = binding;
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
    _SelectItemWin_Button1.label = param1;
    return;
}// end function
, "_SelectItemWin_Button1.label");
            result[48] = binding;
            return result;
        }// end function

        private function _SelectItemWin_Array1_i() : Array
        {
            var _loc_1:Array;
            this.collorArr = _loc_1;
            return _loc_1;
        }// end function

        private function getGemItems() : ArrayCollection
        {
            var _loc_2:int;
            var _loc_3:int;
            var _loc_4:int;
            var _loc_5:int;
            var _loc_6:int;
            var _loc_1:* = new ArrayCollection();
            _loc_2 = 0;
            while (_loc_2 < this.itemList.gemstoneList.length)
            {
                // label
                if (this.itemList.gemstoneList[_loc_2].characterAuctionId == 0)
                {
                    _loc_1.addItem(this.itemList.gemstoneList[_loc_2]);
                }// end if
                _loc_2++;
            }// end while
            if (this._itemsUsed && this._itemsUsed.length > 0)
            {
                _loc_2 = 0;
                while (_loc_2 < this._itemsUsed.length)
                {
                    // label
                    _loc_3 = this._itemsUsed[_loc_2];
                    _loc_4 = 0;
                    while (_loc_4 < _loc_1.length)
                    {
                        // label
                        _loc_5 = _loc_1[_loc_4]["id"];
                        _loc_6 = _loc_1[_loc_4]["count"];
                        if (_loc_5 == _loc_3)
                        {
                        }// end if
                        if (_loc_6-- == 0)
                        {
                            _loc_1.removeItemAt(_loc_4);
                        }// end if
                        _loc_4++;
                    }// end while
                    _loc_2++;
                }// end while
            }// end if
            return _loc_1;
        }// end function

        private function itemFixedColorHandler(param1:Event) : void
        {
            this.colorTypecomboBox2.setStyle("color", this.colorTypecomboBox2.selectedItem.color);
            this.items.filterFunction = this.itemFixedColorFilter;
            this.items.refresh();
            this.totalPage = ArrayCllectionUtil.countTotalPage(this.items, this.pageSize);
            this.currentPage = this.totalPage == 0 ? (0) : (1);
            this.setDataProvider = ArrayCllectionUtil.getThePageData(this.items, this.pageSize, this.currentPage);
            return;
        }// end function

        private function _SelectItemWin_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("??");
            _loc_1 = -1;
            _loc_1 = Lang.msg("??");
            _loc_1 = 0;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.WHITE);
            _loc_1 = Lang.msg("??");
            _loc_1 = 1;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.GREEN);
            _loc_1 = Lang.msg("??");
            _loc_1 = 2;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.BLUE);
            _loc_1 = Lang.msg("??");
            _loc_1 = 3;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.PURPLE);
            _loc_1 = Lang.msg("??");
            _loc_1 = 4;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.ORANGE);
            _loc_1 = Lang.msg("??");
            _loc_1 = 5;
            _loc_1 = ColorConfig.getItemColorUint(ColorConfig.RED);
            _loc_1 = Lang.msg("?");
            _loc_1 = Lang.msg("??");
            _loc_1 = false;
            _loc_1 = false;
            _loc_1 = this.collorArr;
            _loc_1 = false;
            _loc_1 = this.totalPage;
            _loc_1 = this.currentPage;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = this.compositeGroup;
            _loc_1 = Lang.msg("??");
            return;
        }// end function

        private function pageChangeHandler(param1:PageEvent) : void
        {
            this.currentPage = param1.pageId;
            this.setDataProvider = ArrayCllectionUtil.getThePageData(this.items, this.pageSize, this.currentPage);
            return;
        }// end function

        private function _SelectItemWin_Object5_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object5 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object5", this._SelectItemWin_Object5);
            return _loc_1;
        }// end function

        private function onCancel() : void
        {
            dispatchEvent(new CloseEvent(CloseEvent.CLOSE, false, true));
            return;
        }// end function

        public function set itemsUsed(param1:Array) : void
        {
            this._itemsUsed = param1;
            return;
        }// end function

        private function onTargetClickOperate(param1:PackageEvent) : void
        {
            param1.stopImmediatePropagation();
            this.targetData = param1.data;
            return;
        }// end function

        private function set currentPage(param1:int) : void
        {
            var _loc_2:* = this._601108392currentPage;
            if (_loc_2 !== param1)
            {
                this._601108392currentPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "currentPage", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get render0() : EmbedItemRenderer
        {
            return this._1092415834render0;
        }// end function

        public function get render1() : EmbedItemRenderer
        {
            return this._1092415835render1;
        }// end function

        public function get render2() : EmbedItemRenderer
        {
            return this._1092415836render2;
        }// end function

        public function get render4() : EmbedItemRenderer
        {
            return this._1092415838render4;
        }// end function

        public function get render5() : EmbedItemRenderer
        {
            return this._1092415839render5;
        }// end function

        public function get render6() : EmbedItemRenderer
        {
            return this._1092415840render6;
        }// end function

        public function get render7() : EmbedItemRenderer
        {
            return this._1092415841render7;
        }// end function

        public function get render9() : EmbedItemRenderer
        {
            return this._1092415843render9;
        }// end function

        public function get render3() : EmbedItemRenderer
        {
            return this._1092415837render3;
        }// end function

        private function getEquItems() : ArrayCollection
        {
            var _loc_1:* = new ArrayCollection();
            var _loc_2:int;
            while (_loc_2 < this._itemsUsed.length)
            {
                // label
                _loc_1.addItem(this._itemsUsed[_loc_2]);
                _loc_2++;
            }// end while
            return _loc_1;
        }// end function

        public function get render8() : EmbedItemRenderer
        {
            return this._1092415842render8;
        }// end function

        private function _SelectItemWin_Object4_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object4 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object4", this._SelectItemWin_Object4);
            return _loc_1;
        }// end function

        override public function initialize() : void
        {
            var target:SelectItemWin;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._SelectItemWin_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SelectItemWinWatcherSetupUtil");
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

        public function set targetList(param1:Tile) : void
        {
            var _loc_2:* = this._486368719targetList;
            if (_loc_2 !== param1)
            {
                this._486368719targetList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetList", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function getBookItems() : ArrayCollection
        {
            var _loc_1:* = new ArrayCollection();
            var _loc_2:int;
            while (_loc_2 < this.itemList.bookList.length)
            {
                // label
                if (this.itemList.bookList[_loc_2].characterAuctionId == 0)
                {
                    _loc_1.addItem(this.itemList.bookList[_loc_2]);
                }// end if
                _loc_2++;
            }// end while
            return _loc_1;
        }// end function

        private function onAddedToStage() : void
        {
            if (!this.items)
            {
                return;
            }// end if
            this.totalPage = ArrayCllectionUtil.countTotalPage(this.items, this.pageSize);
            this.currentPage = this.totalPage == 0 ? (0) : (1);
            if (this.colorTypecomboBox2)
            {
                this.colorTypecomboBox2.selectedIndex = 0;
                this.colorTypecomboBox2.setStyle("color", this.colorTypecomboBox2.selectedItem.color);
            }// end if
            if (this.targetList)
            {
                this.setDataProvider = ArrayCllectionUtil.getThePageData(this.items, this.pageSize, this.currentPage);
            }// end if
            return;
        }// end function

        public function set show1(param1:Label) : void
        {
            var _loc_2:* = this._109413588show1;
            if (_loc_2 !== param1)
            {
                this._109413588show1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "show1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set show2(param1:TextInput) : void
        {
            var _loc_2:* = this._109413589show2;
            if (_loc_2 !== param1)
            {
                this._109413589show2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "show2", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get currentPage() : int
        {
            return this._601108392currentPage;
        }// end function

        public function set colorTypecomboBox2(param1:ComboBox) : void
        {
            var _loc_2:* = this._1307134504colorTypecomboBox2;
            if (_loc_2 !== param1)
            {
                this._1307134504colorTypecomboBox2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "colorTypecomboBox2", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SelectItemWin_Object3_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object3 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object3", this._SelectItemWin_Object3);
            return _loc_1;
        }// end function

        public function __targetList_creationComplete(param1:FlexEvent) : void
        {
            this.onTargetListComplete();
            return;
        }// end function

        public function get targetList() : Tile
        {
            return this._486368719targetList;
        }// end function

        public function get colorTypecomboBox2() : ComboBox
        {
            return this._1307134504colorTypecomboBox2;
        }// end function

        private function set totalPage(param1:int) : void
        {
            var _loc_2:* = this._577409037totalPage;
            if (_loc_2 !== param1)
            {
                this._577409037totalPage = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "totalPage", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onConfirm() : void
        {
            var _loc_1:* = new SelectItemWinEvent(SelectItemWinEvent.SELECTED_ITEM_EVENT);
            _loc_1.data = this.targetData;
            if (this.selectType)
            {
                _loc_1.selectType = this.selectType;
            }// end if
            if (this.targetData)
            {
                _loc_1.gemAddType = this.targetData.subType;
            }// end if
            _loc_1.gemCount = this.items.length;
            dispatchEvent(_loc_1);
            this.parent.removeChild(this);
            return;
        }// end function

        public function set itemType(param1:int) : void
        {
            this._itemsType = param1;
            switch(param1)
            {
                case ItemType.JEWEL:
                {
                    this.items = this.getGemItems();
                    break;
                }// end case
                case ItemType.BOOK:
                {
                    this.items = this.getBookItems();
                    break;
                }// end case
                case ItemType.EQUIPMENT:
                {
                    this.items = this.getEquItems();
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            this.updateInfo();
            return;
        }// end function

        private function itemFixedColorFilter(param1:Object) : Boolean
        {
            if (!this.colorTypecomboBox2 || this.colorTypecomboBox2.selectedItem.data == -1)
            {
                return true;
            }// end if
            if (param1.color == this.colorTypecomboBox2.selectedItem.data)
            {
                return true;
            }// end if
            return false;
        }// end function

        private function _SelectItemWin_Object2_i() : Object
        {
            var _loc_1:Object;
            this._SelectItemWin_Object2 = _loc_1;
            BindingManager.executeBindings(this, "_SelectItemWin_Object2", this._SelectItemWin_Object2);
            return _loc_1;
        }// end function

        private function get totalPage() : int
        {
            return this._577409037totalPage;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectItemWin._watcherSetupUtil = param1;
            return;
        }// end function

        public static function getInstance() : SelectItemWin
        {
            if (!_instance)
            {
                _instance = new SelectItemWin;
            }// end if
            return _instance;
        }// end function

    }
}
