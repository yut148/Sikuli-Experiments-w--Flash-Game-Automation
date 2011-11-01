package modules.comm
{
    import com.cgame.config.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class HeroTooltipsNoNotice extends VBox
    {
        private var _115312txt:Text;
        private var _documentDescriptor_:UIComponentDescriptor;

        public function HeroTooltipsNoNotice()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:VBox, propertiesFactory:
function () : Object
{
    return {width:312, height:232, childDescriptors:[new UIComponentDescriptor({type:HeroTooTiops}), new UIComponentDescriptor({type:VBox, stylesFactory:
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
    return {width:306, height:30, childDescriptors:[new UIComponentDescriptor({type:Text, id:"txt", stylesFactory:
function () : void
{
    this.color = 16774584;
    return;
}// end function
})]};
}// end function
})]};
}// end function
})]};
}// end function
});
            mx_internal::_document = this;
            if (!this.styleDeclaration)
            {
                this.styleDeclaration = new CSSStyleDeclaration();
            }// end if
            this.styleDeclaration.defaultFactory = 
function () : void
{
    this.verticalGap = 0;
    return;
}// end function
;
            this.width = 312;
            this.height = 232;
            this.addEventListener("creationComplete", this.___HeroTooltipsNoNotice_VBox1_creationComplete);
            return;
        }// end function

        override public function initialize() : void
        {
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            super.initialize();
            return;
        }// end function

        public function ___HeroTooltipsNoNotice_VBox1_creationComplete(param1:FlexEvent) : void
        {
            this.init();
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

        public function get txt() : Text
        {
            return this._115312txt;
        }// end function

        private function init() : void
        {
            this.txt.text = Lang.msg("???????") + "\n" + Lang.msg("Shift+??:?????");
            return;
        }// end function

    }
}
