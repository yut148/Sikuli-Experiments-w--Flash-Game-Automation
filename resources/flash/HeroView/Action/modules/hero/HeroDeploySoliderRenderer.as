package modules.hero
{
    import com.cgame.config.*;
    import com.cgame.utils.*;
    import com.cgame.view.hero.event.*;
    import com.utils.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;
    import mx.utils.*;

    public class HeroDeploySoliderRenderer extends Canvas implements IBindingClient
    {
        public var _HeroDeploySoliderRenderer_Label1:Label;
        public var _HeroDeploySoliderRenderer_Label3:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _HeroDeploySoliderRenderer_Label2:Label;
        var _bindingsBeginWithWord:Object;
        var _bindingsByDestination:Object;
        private var _descToolTip:SoldierToolTip;
        var _watchers:Array;
        var _bindings:Array;
        public var _HeroDeploySoliderRenderer_Image1:Image;
        public var _HeroDeploySoliderRenderer_Button1:Button;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroDeploySoliderRenderer()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:196, height:91, childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderColor = 16775031;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {styleName:"SoldierDeploy", x:0, width:195, height:91, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeploySoliderRenderer_Label1", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:0, y:0, styleName:"herodeployCaffeColor", width:195};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroDeploySoliderRenderer_Image1", events:{toolTipCreate:"___HeroDeploySoliderRenderer_Image1_toolTipCreate"}, propertiesFactory:
function () : Object
{
    return {x:5, y:22, width:64, height:64, maintainAspectRatio:false, toolTip:" "};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeploySoliderRenderer_Label2", stylesFactory:
function () : void
{
    this.color = 6503168;
    this.fontSize = 11;
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:22, width:112};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroDeploySoliderRenderer_Label3", stylesFactory:
function () : void
{
    this.color = 6503168;
    this.fontSize = 11;
    this.textAlign = "left";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:75, y:43, width:112};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_HeroDeploySoliderRenderer_Button1", events:{click:"___HeroDeploySoliderRenderer_Button1_click"}, stylesFactory:
function () : void
{
    this.fontWeight = "normal";
    this.fontSize = 11;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:92, y:65, styleName:"allianceW77Btn", width:77, height:22, buttonMode:true};
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
    this.borderStyle = "none";
    return;
}// end function
;
            this.width = 196;
            this.height = 91;
            return;
        }// end function

        private function getImageUrl(param1:int) : String
        {
            return ImageResource.getInstance().getSoldierImagURL(param1, 2);
        }// end function

        override public function initialize() : void
        {
            var target:HeroDeploySoliderRenderer;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroDeploySoliderRenderer_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroDeploySoliderRendererWatcherSetupUtil");
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

        public function ___HeroDeploySoliderRenderer_Image1_toolTipCreate(param1:ToolTipEvent) : void
        {
            this.onCreateDescToolTip(param1);
            return;
        }// end function

        public function onCreateDescToolTip(param1:ToolTipEvent) : void
        {
            this._descToolTip = this._descToolTip ? (this._descToolTip) : (new SoldierToolTip());
            var _loc_2:Object;
            _loc_2.attrs = SoldierTool.getSoliderAttributes(data.attrs);
            this._descToolTip.dataObject = new ObjectProxy(_loc_2);
            param1.toolTip = this._descToolTip;
            return;
        }// end function

        public function ___HeroDeploySoliderRenderer_Button1_click(param1:MouseEvent) : void
        {
            this.dissolve();
            return;
        }// end function

        private function _HeroDeploySoliderRenderer_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = data.name;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeploySoliderRenderer_Label1.text = param1;
    return;
}// end function
, "_HeroDeploySoliderRenderer_Label1.text");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return getImageUrl(data.photoId);
}// end function
, 
function (param1:Object) : void
{
    _HeroDeploySoliderRenderer_Image1.source = param1;
    return;
}// end function
, "_HeroDeploySoliderRenderer_Image1.source");
            result[1] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??") + ":" + data.deployed;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeploySoliderRenderer_Label2.text = param1;
    return;
}// end function
, "_HeroDeploySoliderRenderer_Label2.text");
            result[2] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??") + ":" + data.undeployed;
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroDeploySoliderRenderer_Label3.text = param1;
    return;
}// end function
, "_HeroDeploySoliderRenderer_Label3.text");
            result[3] = binding;
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
    _HeroDeploySoliderRenderer_Button1.label = param1;
    return;
}// end function
, "_HeroDeploySoliderRenderer_Button1.label");
            result[4] = binding;
            return result;
        }// end function

        private function dissolve() : void
        {
            MyAlert.show(Lang.msg("??????", {name:data.name}), "", MyAlert.CONFIRM | MyAlert.CANCEL, null, 
function (param1:CloseEvent) : void
{
    var _loc_2:HeroSoldiersEvent;
    if (param1.detail == MyAlert.CONFIRM)
    {
        _loc_2 = new HeroSoldiersEvent(HeroSoldiersEvent.DISSOLVE_SOLDIERS, true);
        _loc_2.soliderId = data.id;
        parent.parent.dispatchEvent(_loc_2);
        return;
    }// end if
    return;
}// end function
);
            return;
        }// end function

        private function _HeroDeploySoliderRenderer_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = data.name;
            _loc_1 = this.getImageUrl(data.photoId);
            _loc_1 = Lang.msg("??") + ":" + data.deployed;
            _loc_1 = Lang.msg("??") + ":" + data.undeployed;
            _loc_1 = Lang.msg("??");
            return;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
