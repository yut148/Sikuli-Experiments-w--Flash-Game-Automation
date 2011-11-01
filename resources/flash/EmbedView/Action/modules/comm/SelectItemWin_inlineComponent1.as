package modules.comm
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class SelectItemWin_inlineComponent1 extends Label implements IBindingClient
    {
        var _bindingsByDestination:Object;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsBeginWithWord:Object;
        private var _88844982outerDocument:SelectItemWin;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function SelectItemWin_inlineComponent1()
        {
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }// end if
            this.styleDeclaration.defaultFactory = 
function () : void
{
    this.paddingTop = 0;
    this.fontSize = 11;
    return;
}// end function
;
            this.height = 18;
            return;
        }// end function

        private function _SelectItemWin_inlineComponent1_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = data.label;
            _loc_1 = data.labelColor;
            return;
        }// end function

        public function set outerDocument(param1:SelectItemWin) : void
        {
            var _loc_2:* = this._88844982outerDocument;
            if (_loc_2 !== param1)
            {
                this._88844982outerDocument = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "outerDocument", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _SelectItemWin_inlineComponent1_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.label;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    this.text = param1;
    return;
}// end function
, "this.text");
            result[0] = binding;
            binding = new Binding(this, 
function () : uint
{
    return data.labelColor;
}// end function
, 
function (param1:uint) : void
{
    this.setStyle("color", param1);
    return;
}// end function
, "this.color");
            result[1] = binding;
            return result;
        }// end function

        override public function initialize() : void
        {
            var target:SelectItemWin_inlineComponent1;
            var watcherSetupUtilClass:Object;
            var bindings:* = this._SelectItemWin_inlineComponent1_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_SelectItemWin_inlineComponent1WatcherSetupUtil");
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

        public function get outerDocument() : SelectItemWin
        {
            return this._88844982outerDocument;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            SelectItemWin_inlineComponent1._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
