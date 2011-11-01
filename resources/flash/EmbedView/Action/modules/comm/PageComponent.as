package modules.comm
{
    import com.game.common.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.event.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class PageComponent extends Canvas implements IBindingClient
    {
        private var _1847046761nextBtn:Button;
        private var _549915252firstBtn:Button;
        var _watchers:Array;
        private var _2119744267letterBg:LetterBgComponent;
        private var _865758629pageLabel:Label;
        private var _1356120292_currentPageId:int = 1;
        var _bindingsByDestination:Object;
        private var isShowletterBg:Boolean = false;
        private var _863377283pageIndex:TextInput;
        private var _98496596goBtn:Button;
        private var _631031231_pageCount:int;
        private var _980144967preBtn:Button;
        private var _47094810lastBtn:Button;
        private var _showGo:Boolean = true;
        private var _vGap:int = 8;
        private var pageTextColor:String = "#ece7af";
        private var _1794457326_showFirstLastBtn:Boolean = true;
        var _bindingsBeginWithWord:Object;
        private var _90904109_hGap:int = 15;
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function PageComponent()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {height:36, childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, id:"letterBg", stylesFactory:
function () : void
{
    this.directionImgType = "allImg";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false};
}// end function
}), new UIComponentDescriptor({type:Button, id:"firstBtn", events:{click:"__firstBtn_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:20, height:20, styleName:"btnFirst", buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Button, id:"preBtn", events:{click:"__preBtn_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:20, height:20, styleName:"btnprev", buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Label, id:"pageLabel", stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    this.textAlign = "center";
    this.color = 15525807;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:145, minWidth:30};
}// end function
}), new UIComponentDescriptor({type:TextInput, id:"pageIndex", events:{change:"__pageIndex_change"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    this.borderColor = 7031319;
    this.borderStyle = "solid";
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:40, height:20, maxChars:3};
}// end function
}), new UIComponentDescriptor({type:Button, id:"goBtn", events:{click:"__goBtn_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {styleName:"btnGo", width:16, height:16, buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Button, id:"nextBtn", events:{click:"__nextBtn_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:20, height:20, styleName:"btnnext", buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Button, id:"lastBtn", events:{click:"__lastBtn_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:20, height:20, styleName:"btnLast", buttonMode:true};
}// end function
})]};
}// end function
});
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
    this.backgroundColor = 14524745;
    return;
}// end function
;
            this.height = 36;
            return;
        }// end function

        private function set _pageCount(param1:int) : void
        {
            var _loc_2:* = this._631031231_pageCount;
            if (_loc_2 !== param1)
            {
                this._631031231_pageCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_pageCount", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get pageIndex() : TextInput
        {
            return this._863377283pageIndex;
        }// end function

        public function set lastBtn(param1:Button) : void
        {
            var _loc_2:* = this._47094810lastBtn;
            if (_loc_2 !== param1)
            {
                this._47094810lastBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lastBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set pageIndex(param1:TextInput) : void
        {
            var _loc_2:* = this._863377283pageIndex;
            if (_loc_2 !== param1)
            {
                this._863377283pageIndex = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pageIndex", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set showGo(param1:Boolean) : void
        {
            if (this._showGo != param1)
            {
                this._showGo = param1;
                invalidateDisplayList();
            }// end if
            return;
        }// end function

        public function get letterBg() : LetterBgComponent
        {
            return this._2119744267letterBg;
        }// end function

        public function __goBtn_click(param1:MouseEvent) : void
        {
            this.gotoPage(int(this.pageIndex.text));
            return;
        }// end function

        public function set pageCount(param1:int) : void
        {
            this._pageCount = param1;
            this.pageLabel.text = this._currentPageId + "/" + this._pageCount;
            return;
        }// end function

        override public function initialize() : void
        {
            var target:PageComponent;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._PageComponent_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_PageComponentWatcherSetupUtil");
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

        private function gotoPage(param1:int) : void
        {
            var _loc_2:PageEvent;
            if (param1 > 0 && param1 <= this._pageCount && param1 != this._currentPageId)
            {
                this._currentPageId = param1;
                this.pageLabel.text = this._currentPageId + "/" + this._pageCount;
                _loc_2 = new PageEvent(PageEvent.CHANGE_PAGE);
                _loc_2.pageId = param1;
                dispatchEvent(_loc_2);
            }// end if
            return;
        }// end function

        public function get firstBtn() : Button
        {
            return this._549915252firstBtn;
        }// end function

        public function __lastBtn_click(param1:MouseEvent) : void
        {
            this.gotoLastPage();
            return;
        }// end function

        public function set vGap(param1:int) : void
        {
            this._vGap = param1;
            invalidateDisplayList();
            return;
        }// end function

        public function set hGap(param1:int) : void
        {
            this._hGap = param1;
            invalidateDisplayList();
            return;
        }// end function

        public function set pageLabel(param1:Label) : void
        {
            var _loc_2:* = this._865758629pageLabel;
            if (_loc_2 !== param1)
            {
                this._865758629pageLabel = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "pageLabel", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set _hGap(param1:int) : void
        {
            var _loc_2:* = this._90904109_hGap;
            if (_loc_2 !== param1)
            {
                this._90904109_hGap = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_hGap", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get _showFirstLastBtn() : Boolean
        {
            return this._1794457326_showFirstLastBtn;
        }// end function

        private function gotoNextPage() : void
        {
            this.gotoPage(this._currentPageId + 1);
            return;
        }// end function

        public function set firstBtn(param1:Button) : void
        {
            var _loc_2:* = this._549915252firstBtn;
            if (_loc_2 !== param1)
            {
                this._549915252firstBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "firstBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set _showFirstLastBtn(param1:Boolean) : void
        {
            var _loc_2:* = this._1794457326_showFirstLastBtn;
            if (_loc_2 !== param1)
            {
                this._1794457326_showFirstLastBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_showFirstLastBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set letterBg(param1:LetterBgComponent) : void
        {
            var _loc_2:* = this._2119744267letterBg;
            if (_loc_2 !== param1)
            {
                this._2119744267letterBg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "letterBg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set goBtn(param1:Button) : void
        {
            var _loc_2:* = this._98496596goBtn;
            if (_loc_2 !== param1)
            {
                this._98496596goBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get pageLabel() : Label
        {
            return this._865758629pageLabel;
        }// end function

        public function get preBtn() : Button
        {
            return this._980144967preBtn;
        }// end function

        private function gotoFirstPage() : void
        {
            this.gotoPage(1);
            return;
        }// end function

        private function get _pageCount() : int
        {
            return this._631031231_pageCount;
        }// end function

        private function get _hGap() : int
        {
            return this._90904109_hGap;
        }// end function

        private function _PageComponent_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.pageLabel.width;
            _loc_1 = this.pageLabel.x;
            _loc_1 = this.pageLabel.y;
            _loc_1 = this._hGap;
            _loc_1 = this._showFirstLastBtn;
            _loc_1 = this._currentPageId > 1;
            _loc_1 = this._showFirstLastBtn ? (this._hGap + 25) : (this._hGap);
            _loc_1 = this._currentPageId > 1;
            _loc_1 = this._showFirstLastBtn ? (this._hGap + 25) : (this._hGap);
            _loc_1 = this._pageCount > this._currentPageId;
            _loc_1 = this._hGap;
            _loc_1 = this._showFirstLastBtn;
            _loc_1 = this._pageCount > this._currentPageId;
            return;
        }// end function

        override protected function commitProperties() : void
        {
            this.letterBg.visible = this.isShowletterBg;
            this.pageLabel.setStyle("color", this.pageTextColor);
            return;
        }// end function

        public function __pageIndex_change(param1:Event) : void
        {
            this.onChange();
            return;
        }// end function

        private function gotoLastPage() : void
        {
            this.gotoPage(this._pageCount);
            return;
        }// end function

        public function set currentPage(param1:int) : void
        {
            this._currentPageId = param1;
            this.pageLabel.text = this._currentPageId + "/" + this._pageCount;
            return;
        }// end function

        public function set showLetterBg(param1:Boolean) : void
        {
            if (this.isShowletterBg != param1)
            {
                this.isShowletterBg = param1;
                invalidateProperties();
            }// end if
            return;
        }// end function

        public function __nextBtn_click(param1:MouseEvent) : void
        {
            this.gotoNextPage();
            return;
        }// end function

        private function set _currentPageId(param1:int) : void
        {
            var _loc_2:* = this._1356120292_currentPageId;
            if (_loc_2 !== param1)
            {
                this._1356120292_currentPageId = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_currentPageId", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get goBtn() : Button
        {
            return this._98496596goBtn;
        }// end function

        public function set pageTextCoclor(param1:String) : void
        {
            if (this.pageTextColor != param1)
            {
                this.pageTextColor = param1;
                invalidateProperties();
            }// end if
            return;
        }// end function

        public function __preBtn_click(param1:MouseEvent) : void
        {
            this.gotoPrePage();
            return;
        }// end function

        public function set nextBtn(param1:Button) : void
        {
            var _loc_2:* = this._1847046761nextBtn;
            if (_loc_2 !== param1)
            {
                this._1847046761nextBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nextBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get _currentPageId() : int
        {
            return this._1356120292_currentPageId;
        }// end function

        public function set showFirstLastBtn(param1:Boolean) : void
        {
            this._showFirstLastBtn = param1;
            return;
        }// end function

        private function _PageComponent_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Number
{
    return pageLabel.width;
}// end function
, 
function (param1:Number) : void
{
    letterBg.width = param1;
    return;
}// end function
, "letterBg.width");
            result[0] = binding;
            binding = new Binding(this, 
function () : Number
{
    return pageLabel.x;
}// end function
, 
function (param1:Number) : void
{
    letterBg.x = param1;
    return;
}// end function
, "letterBg.x");
            result[1] = binding;
            binding = new Binding(this, 
function () : Number
{
    return pageLabel.y;
}// end function
, 
function (param1:Number) : void
{
    letterBg.y = param1;
    return;
}// end function
, "letterBg.y");
            result[2] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = _hGap;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    firstBtn.setStyle("left", param1);
    return;
}// end function
, "firstBtn.left");
            result[3] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _showFirstLastBtn;
}// end function
, 
function (param1:Boolean) : void
{
    firstBtn.visible = param1;
    return;
}// end function
, "firstBtn.visible");
            result[4] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _currentPageId > 1;
}// end function
, 
function (param1:Boolean) : void
{
    firstBtn.enabled = param1;
    return;
}// end function
, "firstBtn.enabled");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = _showFirstLastBtn ? (_hGap + 25) : (_hGap);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    preBtn.setStyle("left", param1);
    return;
}// end function
, "preBtn.left");
            result[6] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _currentPageId > 1;
}// end function
, 
function (param1:Boolean) : void
{
    preBtn.enabled = param1;
    return;
}// end function
, "preBtn.enabled");
            result[7] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = _showFirstLastBtn ? (_hGap + 25) : (_hGap);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    nextBtn.setStyle("right", param1);
    return;
}// end function
, "nextBtn.right");
            result[8] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _pageCount > _currentPageId;
}// end function
, 
function (param1:Boolean) : void
{
    nextBtn.enabled = param1;
    return;
}// end function
, "nextBtn.enabled");
            result[9] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = _hGap;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    lastBtn.setStyle("right", param1);
    return;
}// end function
, "lastBtn.right");
            result[10] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _showFirstLastBtn;
}// end function
, 
function (param1:Boolean) : void
{
    lastBtn.visible = param1;
    return;
}// end function
, "lastBtn.visible");
            result[11] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _pageCount > _currentPageId;
}// end function
, 
function (param1:Boolean) : void
{
    lastBtn.enabled = param1;
    return;
}// end function
, "lastBtn.enabled");
            result[12] = binding;
            return result;
        }// end function

        private function gotoPrePage() : void
        {
            this.gotoPage(this._currentPageId--);
            return;
        }// end function

        public function get nextBtn() : Button
        {
            return this._1847046761nextBtn;
        }// end function

        public function set preBtn(param1:Button) : void
        {
            var _loc_2:* = this._980144967preBtn;
            if (_loc_2 !== param1)
            {
                this._980144967preBtn = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "preBtn", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __firstBtn_click(param1:MouseEvent) : void
        {
            this.gotoFirstPage();
            return;
        }// end function

        private function onChange() : void
        {
            var _loc_1:* = int(this.pageIndex.text);
            if (_loc_1 <= 0)
            {
                this.pageIndex.text = "1";
            }// end if
            if (_loc_1 > this._pageCount)
            {
                this.pageIndex.text = String(this._pageCount);
            }// end if
            return;
        }// end function

        override protected function updateDisplayList(param1:Number, param2:Number) : void
        {
            super.updateDisplayList(param1, param2);
            this.pageIndex.x = param1 / 2 - this.pageIndex.width / 2;
            this.goBtn.x = this.pageIndex.x + this.pageIndex.width + 5;
            this.pageLabel.x = this.pageIndex.x - this.pageLabel.width - 5;
            if (!this._showGo)
            {
                this.pageIndex.visible = false;
                this.goBtn.visible = false;
                this.pageLabel.x = param1 / 2 - this.pageLabel.width / 2;
            }// end if
            return;
        }// end function

        public function get lastBtn() : Button
        {
            return this._47094810lastBtn;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
