package modules.comm
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.config.*;
    import com.game.common.*;
    import flash.utils.*;
    import modules.comm.data.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class HeroTooTiops extends Canvas implements IBindingClient
    {
        public var _HeroTooTiops_Label8:Label;
        public var _HeroTooTiops_Label6:Label;
        private var _612313307comboHit:Label;
        public var _HeroTooTiops_Label4:Label;
        private var _811308393heroImg:Image;
        private var _950394699command:Label;
        private var _3575610type:Label;
        private var _103315hit:Label;
        public var _HeroTooTiops_Label20:Label;
        public var _HeroTooTiops_Label22:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        public var _HeroTooTiops_Label24:Label;
        var _watchers:Array;
        private var _1544916544defense:Label;
        private var _1820082146potential:Label;
        private var _102865796level:Label;
        private var _3336hp:Label;
        private var _1057361851agility:Label;
        private var _1029688329counterHit:Label;
        private var characterHero:CharacterLogicHero;
        private var _1721933570nameLab:Label;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _1608086668criticalHit:Label;
        private var _1407259064attack:Label;
        var _bindings:Array;
        public var _HeroTooTiops_Label14:Label;
        public var _HeroTooTiops_Label2:Label;
        public var _HeroTooTiops_Label16:Label;
        public var _HeroTooTiops_Label10:Label;
        public var _HeroTooTiops_Label18:Label;
        public var _HeroTooTiops_Label12:Label;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroTooTiops()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {width:312, height:185, childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.backgroundColor = 3944996;
    this.borderStyle = "solid";
    this.borderColor = 11102737;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:27, childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.backgroundColor = 1578773;
    this.paddingTop = 2;
    this.paddingBottom = 2;
    this.paddingLeft = 2;
    this.paddingRight = 2;
    this.verticalGap = 2;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:55, width:249, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"nameLab", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:304, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:HBox, stylesFactory:
function () : void
{
    this.horizontalGap = 2;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.verticalGap = 2;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label2", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"level", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label4", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"potential", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label6", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"attack", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label8", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"hp", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label10", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"counterHit", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label12", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"hit", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.verticalGap = 2;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label14", propertiesFactory:
function () : Object
{
    return {x:5, styleName:"herocomponentStaticLabel", width:68};
}// end function
}), new UIComponentDescriptor({type:Label, id:"type", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label16", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"command", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label18", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"defense", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label20", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"agility", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label22", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"criticalHit", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.borderStyle = "solid";
    this.borderThickness = 0;
    this.cornerRadius = 5;
    this.backgroundColor = 3091482;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:152, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroTooTiops_Label24", propertiesFactory:
function () : Object
{
    return {x:5, height:20, styleName:"herocomponentStaticLabel"};
}// end function
}), new UIComponentDescriptor({type:Label, id:"comboHit", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:50, width:98, height:20, text:"Loading...", styleName:"herocomponentContentLabel"};
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
}), new UIComponentDescriptor({type:Image, id:"heroImg", propertiesFactory:
function () : Object
{
    return {x:7, width:48, height:48};
}// end function
})]};
}// end function
});
            this.characterHero = CharacterToolTipData.getInstance().heroData;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 312;
            this.height = 185;
            this.addEventListener("creationComplete", this.___HeroTooTiops_Canvas1_creationComplete);
            return;
        }// end function

        public function set defense(param1:Label) : void
        {
            var _loc_2:* = this._1544916544defense;
            if (_loc_2 !== param1)
            {
                this._1544916544defense = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "defense", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get hp() : Label
        {
            return this._3336hp;
        }// end function

        public function set agility(param1:Label) : void
        {
            var _loc_2:* = this._1057361851agility;
            if (_loc_2 !== param1)
            {
                this._1057361851agility = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "agility", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set level(param1:Label) : void
        {
            var _loc_2:* = this._102865796level;
            if (_loc_2 !== param1)
            {
                this._102865796level = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get hit() : Label
        {
            return this._103315hit;
        }// end function

        public function get nameLab() : Label
        {
            return this._1721933570nameLab;
        }// end function

        override public function initialize() : void
        {
            var target:HeroTooTiops;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroTooTiops_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_comm_HeroTooTiopsWatcherSetupUtil");
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

        public function get criticalHit() : Label
        {
            return this._1608086668criticalHit;
        }// end function

        private function _HeroTooTiops_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("????2") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????") + ":";
            return;
        }// end function

        public function get comboHit() : Label
        {
            return this._612313307comboHit;
        }// end function

        public function set hit(param1:Label) : void
        {
            var _loc_2:* = this._103315hit;
            if (_loc_2 !== param1)
            {
                this._103315hit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hit", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get heroImg() : Image
        {
            return this._811308393heroImg;
        }// end function

        public function get potential() : Label
        {
            return this._1820082146potential;
        }// end function

        public function set command(param1:Label) : void
        {
            var _loc_2:* = this._950394699command;
            if (_loc_2 !== param1)
            {
                this._950394699command = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "command", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function ___HeroTooTiops_Canvas1_creationComplete(param1:FlexEvent) : void
        {
            this.init();
            return;
        }// end function

        private function init() : void
        {
            this.heroImg.source = ImageResource.getInstance().getHeroImageURL(this.characterHero.photoId);
            this.nameLab.setStyle("color", ColorConfig.getHeroColor(this.characterHero.heroColorId));
            this.nameLab.htmlText = this.characterHero.name;
            this.type.htmlText = HeroType.getHeroTypeName(this.characterHero.type);
            this.level.htmlText = String(this.characterHero.level);
            this.potential.htmlText = String(this.characterHero.potential);
            this.attack.htmlText = this.characterHero.attackBase + "<font color=\'#00FF00\'>" + (this.characterHero.attackAdd == 0 ? ("") : (" +" + this.characterHero.attackAdd.toString())) + "</font>";
            this.defense.htmlText = this.characterHero.defenceBase + "<font color=\'#00FF00\'>" + (this.characterHero.defenceAdd == 0 ? ("") : (" +" + this.characterHero.defenceAdd.toString())) + "</font>";
            this.hp.htmlText = this.characterHero.vitalityBase + "<font color=\'#00FF00\'>" + (this.characterHero.vitalityAdd == 0 ? ("") : (" +" + this.characterHero.vitalityAdd.toString())) + "</font>";
            this.agility.htmlText = this.characterHero.agilityBase + "<font color=\'#00FF00\'>" + (this.characterHero.agilityAdd == 0 ? ("") : (" +" + this.characterHero.agilityAdd.toString())) + "</font>";
            this.hit.htmlText = this.characterHero.hit == 0 ? (this.characterHero.hit.toString()) : ("<font color=\'#00FF00\'>" + this.characterHero.hit.toString() + "</font>");
            this.command.htmlText = this.characterHero.leadershipBase + "<font color=\'#00FF00\'>" + (this.characterHero.leadershipAdd == 0 ? ("") : (" +" + this.characterHero.leadershipAdd.toString())) + "</font>";
            this.counterHit.htmlText = this.characterHero.counterHit == 0 ? (this.characterHero.counterHit.toString()) : ("<font color=\'#00FF00\'>" + this.characterHero.counterHit.toString() + "</font>");
            this.criticalHit.htmlText = this.characterHero.criticalHit == 0 ? (this.characterHero.criticalHit.toString()) : ("<font color=\'#00FF00\'>" + this.characterHero.criticalHit.toString() + "</font>");
            this.comboHit.htmlText = this.characterHero.comboHit == 0 ? (this.characterHero.comboHit.toString()) : ("<font color=\'#00FF00\'>" + this.characterHero.comboHit.toString() + "</font>");
            return;
        }// end function

        public function get type() : Label
        {
            return this._3575610type;
        }// end function

        public function get agility() : Label
        {
            return this._1057361851agility;
        }// end function

        public function get defense() : Label
        {
            return this._1544916544defense;
        }// end function

        public function get attack() : Label
        {
            return this._1407259064attack;
        }// end function

        public function get command() : Label
        {
            return this._950394699command;
        }// end function

        public function set comboHit(param1:Label) : void
        {
            var _loc_2:* = this._612313307comboHit;
            if (_loc_2 !== param1)
            {
                this._612313307comboHit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "comboHit", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set attack(param1:Label) : void
        {
            var _loc_2:* = this._1407259064attack;
            if (_loc_2 !== param1)
            {
                this._1407259064attack = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "attack", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set type(param1:Label) : void
        {
            var _loc_2:* = this._3575610type;
            if (_loc_2 !== param1)
            {
                this._3575610type = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "type", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get level() : Label
        {
            return this._102865796level;
        }// end function

        private function _HeroTooTiops_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????2") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label2.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label2.text");
            result[0] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label4.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label4.text");
            result[1] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label6.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label6.text");
            result[2] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label8.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label8.text");
            result[3] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label10.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label10.text");
            result[4] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label12.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label12.text");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label14.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label14.text");
            result[6] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label16.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label16.text");
            result[7] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label18.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label18.text");
            result[8] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label20.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label20.text");
            result[9] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label22.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label22.text");
            result[10] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("????") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroTooTiops_Label24.text = param1;
    return;
}// end function
, "_HeroTooTiops_Label24.text");
            result[11] = binding;
            return result;
        }// end function

        public function set heroImg(param1:Image) : void
        {
            var _loc_2:* = this._811308393heroImg;
            if (_loc_2 !== param1)
            {
                this._811308393heroImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set hp(param1:Label) : void
        {
            var _loc_2:* = this._3336hp;
            if (_loc_2 !== param1)
            {
                this._3336hp = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hp", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set nameLab(param1:Label) : void
        {
            var _loc_2:* = this._1721933570nameLab;
            if (_loc_2 !== param1)
            {
                this._1721933570nameLab = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "nameLab", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set criticalHit(param1:Label) : void
        {
            var _loc_2:* = this._1608086668criticalHit;
            if (_loc_2 !== param1)
            {
                this._1608086668criticalHit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "criticalHit", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set counterHit(param1:Label) : void
        {
            var _loc_2:* = this._1029688329counterHit;
            if (_loc_2 !== param1)
            {
                this._1029688329counterHit = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "counterHit", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set potential(param1:Label) : void
        {
            var _loc_2:* = this._1820082146potential;
            if (_loc_2 !== param1)
            {
                this._1820082146potential = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "potential", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get counterHit() : Label
        {
            return this._1029688329counterHit;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroTooTiops._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
