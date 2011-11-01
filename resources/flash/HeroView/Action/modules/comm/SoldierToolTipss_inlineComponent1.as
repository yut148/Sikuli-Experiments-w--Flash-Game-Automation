package modules.comm
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class SoldierToolTipss_inlineComponent1 extends Canvas implements IBindingClient
    {
        private var _88844982outerDocument:SoldierToolTipss;
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _bindingsBeginWithWord:Object;
        public var _SoldierToolTipss_inlineComponent1_Label1:Label;
        public var _SoldierToolTipss_inlineComponent1_Label2:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _watchers:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SoldierToolTipss_inlineComponent1()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:154, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:
function () : void
{
    this.backgroundColor = 15517299;
    this.backgroundAlpha = 1;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:153, percentHeight:100, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_SoldierToolTipss_inlineComponent1_Label1", propertiesFactory:
function () : Object
{
    return {width:68, styleName:"tooltipItem"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_SoldierToolTipss_inlineComponent1_Label2", propertiesFactory:
function () : Object
{
    return {width:75, styleName:"tooltipItemValue"};
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
            this.width = 154;
            return;
        }// end function

        public function get outerDocument() : SoldierToolTipss
        {
            return this._88844982outerDocument;
        }// end function

        public function set outerDocument(param1:SoldierToolTipss) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SoldierToolTipss_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = data.name + ":";
            _loc_1 = data.text;
            return;
        }// end function

        private function _SoldierToolTipss_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.name + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierToolTipss_inlineComponent1_Label1.htmlText = param1;
    return;
}// end function
, "_SoldierToolTipss_inlineComponent1_Label1.htmlText");
            result[0] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.text;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _SoldierToolTipss_inlineComponent1_Label2.htmlText = param1;
    return;
}// end function
, "_SoldierToolTipss_inlineComponent1_Label2.htmlText");
            result[1] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:SoldierToolTipss_inlineComponent1;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._SoldierToolTipss_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SoldierToolTipss_inlineComponent1WatcherSetupUtil");
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

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SoldierToolTipss_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
