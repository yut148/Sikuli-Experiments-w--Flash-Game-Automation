package modules.comm
{
    import com.cgame.cache.msg.logic.*;
    import flash.utils.*;
    import modules.comm.data.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class CharacterToolTips extends VBox implements IBindingClient, IToolTip
    {
        private var soldierTipWidth:Number = 0;
        private var heroSelect:Boolean;
        private var positionWidth:Number = 0;
        var _watchers:Array;
        private var heroNoSoldier:String;
        private var _833153296vWidth:Number;
        private var positionHeight:Number = 0;
        private var positionTip:String;
        private var soldierIsNoDataToolTipHeight:Number = 0;
        private var soldierIsNoDataToolTipWidth:Number = 0;
        private var soldierTipHeight:Number = 0;
        private var heroInfo:CharacterLogicHero;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var soldierInfo:Object;
        private var herotipWidth:Number = 0;
        private var soldierByHeroInfo:Object;
        var _bindings:Array;
        private var herotipHeight:Number = 0;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _490943171vHeight:Number;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function CharacterToolTips()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:VBox, propertiesFactory:
function () : Object
{
    return {width:322};
}// end function
});
            this.heroInfo = CharacterToolTipData.getInstance().heroData;
            this.soldierInfo = CharacterToolTipData.getInstance().soldierData;
            this.soldierByHeroInfo = CharacterToolTipData.getInstance().soldierByHero;
            this.heroNoSoldier = CharacterToolTipData.getInstance().heroNoSoldier;
            this.heroSelect = CharacterToolTipData.getInstance().heroTipSelect;
            this.positionTip = CharacterToolTipData.getInstance().positionTip;
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
    this.paddingTop = 5;
    this.paddingBottom = 5;
    this.paddingLeft = 5;
    this.paddingRight = 5;
    this.verticalGap = 0;
    return;
}// end function
;
            this.width = 322;
            this.alpha = 0.9;
            this.mouseEnabled = false;
            this.mouseChildren = false;
            this.addEventListener("creationComplete", this.___CharacterToolTips_VBox1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            var target:CharacterToolTips;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._CharacterToolTips_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_CharacterToolTipsWatcherSetupUtil");
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

        private function _CharacterToolTips_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = this.vHeight;
            return;
        }// end function

        public function setToolTip() : void
        {
            var _loc_1:HeroTooTiops;
            var _loc_2:HeroTooltipsNoNotice;
            var _loc_3:SoldierToolTips;
            var _loc_4:SoldierToolTipss;
            var _loc_5:SoldierIsNoDataToolTip;
            var _loc_6:PositionTip;
            if (this.heroInfo)
            {
                if (this.heroSelect)
                {
                    _loc_1 = new HeroTooTiops();
                    this.addChild(_loc_1);
                    this.herotipHeight = _loc_1.height;
                    this.herotipWidth = _loc_1.width;
                }
                else
                {
                    _loc_2 = new HeroTooltipsNoNotice();
                    this.addChild(_loc_2);
                    this.herotipHeight = _loc_2.height;
                    this.herotipWidth = _loc_2.width;
                }// end if
            }// end else if
            if (this.soldierInfo)
            {
                _loc_3 = new SoldierToolTips();
                this.addChild(_loc_3);
                this.soldierTipHeight = _loc_3.height;
                this.soldierTipWidth = _loc_3.width;
            }// end if
            if (this.soldierByHeroInfo)
            {
                _loc_4 = new SoldierToolTipss();
                this.addChild(_loc_4);
                this.soldierTipHeight = _loc_4.height;
                this.soldierTipWidth = _loc_4.width;
            }// end if
            if (this.heroNoSoldier)
            {
                _loc_5 = new SoldierIsNoDataToolTip();
                this.addChild(_loc_5);
                this.soldierIsNoDataToolTipHeight = _loc_5.height;
                this.soldierIsNoDataToolTipWidth = _loc_5.width;
            }// end if
            if (this.positionTip)
            {
                _loc_6 = new PositionTip();
                this.addChild(_loc_6);
                this.positionHeight = _loc_6.height;
                this.positionWidth = _loc_6.width;
            }// end if
            this.vHeight = this.herotipHeight + this.soldierTipHeight + this.soldierIsNoDataToolTipHeight + this.positionHeight + 10;
            return;
        }// end function

        private function _CharacterToolTips_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Number
{
    return vHeight;
}// end function
, 
function (param1:Number) : void
{
    this.height = param1;
    return;
}// end function
, "this.height");
            result[0] = binding;
            return result;
        }// end function

        public function get text() : String
        {
            return "";
        }// end function

        private function get vHeight() : Number
        {
            return this._490943171vHeight;
        }// end function

        public function ___CharacterToolTips_VBox1_creationComplete(param1:FlexEvent) : void
        {
            this.setToolTip();
            return;
        }// end function

        public function set text(param1:String) : void
        {
            return;
        }// end function

        private function set vWidth(param1:Number) : void
        {
            var _loc_2:* = this._833153296vWidth;
            if (_loc_2 !== param1)
            {
                this._833153296vWidth = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "vWidth", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function get vWidth() : Number
        {
            return this._833153296vWidth;
        }// end function

        private function set vHeight(param1:Number) : void
        {
            var _loc_2:* = this._490943171vHeight;
            if (_loc_2 !== param1)
            {
                this._490943171vHeight = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "vHeight", _loc_2, param1));
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
