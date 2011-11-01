package modules.comm
{
    import com.cgame.config.*;
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.styles.*;

    public class SoldierIsNoDataToolTip extends VBox implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        public var _SoldierIsNoDataToolTip_Text1:Text;
        var _watchers:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SoldierIsNoDataToolTip()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:VBox, propertiesFactory:
function () : Object
{
    return {width:310, height:35, childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.backgroundColor = 3944996;
    this.paddingTop = 2;
    this.paddingBottom = 2;
    this.paddingLeft = 2;
    this.paddingRight = 2;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 1381653;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:304, height:30, childDescriptors:[new UIComponentDescriptor({type:Text, id:"_SoldierIsNoDataToolTip_Text1", stylesFactory:
function () : void
{
    this.color = 16774584;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:300};
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
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }// end if
            this.styleDeclaration.defaultFactory = 
function () : void
{
    this.backgroundColor = 3944996;
    return;
}// end function
;
            this.width = 310;
            this.height = 35;
            return;
        }// end function

        private function _SoldierIsNoDataToolTip_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("????????");
            return;
        }// end function

        override public function initialize() : void
        {
            var target:SoldierIsNoDataToolTip;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._SoldierIsNoDataToolTip_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SoldierIsNoDataToolTipWatcherSetupUtil");
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

        private function _SoldierIsNoDataToolTip_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierIsNoDataToolTip_Text1.text = param1;
    return;
}// end function
, "_SoldierIsNoDataToolTip_Text1.text");
            result[0] = binding;
            return result;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
