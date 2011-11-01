package modules.hero
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.command.*;
    import com.cgame.config.*;
    import com.cgame.view.hero.event.*;
    import com.game.common.*;
    import com.game.display.*;
    import com.utils.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.binding.utils.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.managers.*;
    import org.puremvc.as3.patterns.facade.*;

    public class HeroEquipCompoment extends MyBorderCanvas implements IBindingClient
    {
        private var _2105905099rightBorder3:Image;
        private var _619105883heroName:Label;
        public var _HeroEquipCompoment_Image10:Image;
        public var _HeroEquipCompoment_Image11:Image;
        public var _HeroEquipCompoment_Image13:Image;
        public var _HeroEquipCompoment_Image15:Image;
        public var _HeroEquipCompoment_Image17:Image;
        public var _HeroEquipCompoment_Image12:Image;
        public var _HeroEquipCompoment_Image14:Image;
        public var _HeroEquipCompoment_Image16:Image;
        private var _103315hit:Label;
        private var _102850829left4:Image;
        private var _950394699command:Label;
        private var _612313307comboHit:Label;
        private var _1544916544defense:Label;
        public var _HeroEquipCompoment_Image26:Image;
        private var _900562943skill2:Image;
        private var _3336hp:Label;
        private var _102850826left1:Image;
        private var _1407259064attack:Label;
        private var _documentDescriptor_:UIComponentDescriptor;
        var _bindingsByDestination:Object;
        private var _1107541122leftBorder1:Image;
        private var _1449405963skillBorder2:Image;
        private var _931102313right3:Image;
        private var _900562940skill5:Image;
        private var _totalPages:int = 1;
        public var _HeroEquipCompoment_Button1:Button;
        public var _HeroEquipCompoment_Button2:Button;
        private var characterItemList:CharacterItemList;
        private var _900562945skill0:Image;
        private var _647502013_preEnabled:Boolean;
        private var _102865796level:Label;
        private var _1029688329counterHit:Label;
        private var _102850827left2:Image;
        private var _1449405960skillBorder5:Image;
        private var _1449405964skillBorder1:Image;
        private var _900562942skill3:Image;
        private var _931102315right1:Image;
        private var _619157576heroList:MyTileList;
        private var _2105905097rightBorder1:Image;
        private var _811308393heroImg:Image;
        private var _1107541121leftBorder2:Image;
        private var _3575610type:Label;
        private var _2105905100rightBorder4:Image;
        private var _879800561_nextEnabled:Boolean;
        public var _HeroEquipCompoment_LinkButton1:LinkButton;
        public var _HeroEquipCompoment_LinkButton2:LinkButton;
        private var _1177280081itemList:TileList;
        private var _1820082146potential:Label;
        private var _931102312right4:Image;
        private var _currentHero:CharacterLogicHero;
        private var _1449405965skillBorder0:Image;
        public var _HeroEquipCompoment_Label10:Label;
        public var _HeroEquipCompoment_Label12:Label;
        public var _HeroEquipCompoment_Label14:Label;
        private var _1449405961skillBorder4:Image;
        public var _HeroEquipCompoment_Label16:Label;
        public var _HeroEquipCompoment_Label18:Label;
        private var _900562944skill1:Image;
        private var _1952151455critical:Label;
        private var _102850828left3:Image;
        private var _1107541119leftBorder4:Image;
        public var _HeroEquipCompoment_Label1:Label;
        public var _HeroEquipCompoment_Label4:Label;
        public var _HeroEquipCompoment_Label6:Label;
        public var _HeroEquipCompoment_Label8:Label;
        public var _HeroEquipCompoment_Label26:Label;
        public var _HeroEquipCompoment_Label27:Label;
        public var _HeroEquipCompoment_Label22:Label;
        public var _HeroEquipCompoment_Label24:Label;
        public var _HeroEquipCompoment_Label20:Label;
        private var _2105905098rightBorder2:Image;
        var _watchers:Array;
        private var _1107541120leftBorder3:Image;
        private var _470332110characterHerosList:CharacterHerosList;
        private var _900562941skill4:Image;
        private var _931102314right2:Image;
        private var _1057361851agility:Label;
        var _bindingsBeginWithWord:Object;
        private var _1449405962skillBorder3:Image;
        private var _currentPage:int = 1;
        var _bindings:Array;
        private var _currentHeroLv:int = 0;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function HeroEquipCompoment()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:MyBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:829, height:437, childDescriptors:[new UIComponentDescriptor({type:MyBorderCanvas, propertiesFactory:
function () : Object
{
    return {x:126, y:3, width:413, height:431, styleName:"herocomponentHeroEquipmentBorder", childDescriptors:[new UIComponentDescriptor({type:Image, id:"heroImg", stylesFactory:
function () : void
{
    this.horizontalCenter = "1";
    this.verticalCenter = "-21";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:320, height:375};
}// end function
}), new UIComponentDescriptor({type:Image, id:"left1", events:{click:"__left1_click"}, propertiesFactory:
function () : Object
{
    return {x:14, y:19, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"right4", events:{click:"__right4_click"}, stylesFactory:
function () : void
{
    this.right = "14";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:290, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"left4", events:{click:"__left4_click"}, propertiesFactory:
function () : Object
{
    return {x:14, y:290, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"right3", events:{click:"__right3_click"}, stylesFactory:
function () : void
{
    this.right = "14";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:204, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"left3", events:{click:"__left3_click"}, propertiesFactory:
function () : Object
{
    return {x:14, y:204, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"right2", events:{click:"__right2_click"}, stylesFactory:
function () : void
{
    this.right = "14";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:114, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"left2", events:{click:"__left2_click"}, propertiesFactory:
function () : Object
{
    return {x:14, y:114, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"right1", events:{click:"__right1_click"}, stylesFactory:
function () : void
{
    this.right = "14";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:19, width:64, height:64};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image10", stylesFactory:
function () : void
{
    this.top = "15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, height:72, width:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image11", stylesFactory:
function () : void
{
    this.top = "15";
    this.right = "10";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:72, height:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image12", stylesFactory:
function () : void
{
    this.top = "110";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, height:72, width:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image13", stylesFactory:
function () : void
{
    this.bottom = "158";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, height:72, width:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image14", stylesFactory:
function () : void
{
    this.top = "110";
    this.right = "10";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:72, height:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image15", stylesFactory:
function () : void
{
    this.bottom = "158";
    this.right = "10";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {height:72, width:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image16", stylesFactory:
function () : void
{
    this.bottom = "72";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, height:72, width:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image17", stylesFactory:
function () : void
{
    this.bottom = "72";
    this.right = "10";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {width:72, height:72, enabled:false, mouseChildren:false, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Image, id:"leftBorder1", propertiesFactory:
function () : Object
{
    return {x:12, y:17, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"leftBorder2", propertiesFactory:
function () : Object
{
    return {x:12, y:112, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"leftBorder3", propertiesFactory:
function () : Object
{
    return {x:12, y:202, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"leftBorder4", propertiesFactory:
function () : Object
{
    return {x:12, y:288, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"rightBorder4", stylesFactory:
function () : void
{
    this.right = "13";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:288, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"rightBorder3", stylesFactory:
function () : void
{
    this.right = "13";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:202, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"rightBorder2", stylesFactory:
function () : void
{
    this.right = "13";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:112, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"rightBorder1", stylesFactory:
function () : void
{
    this.right = "13";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:17, width:68, height:68, enabled:false, mouseChildren:false, mouseEnabled:false, alpha:0.7};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_HeroEquipCompoment_Image26", propertiesFactory:
function () : Object
{
    return {y:379, width:228, height:44, x:93};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill0", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:101};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder0", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:101};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill1", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:137};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder1", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:137};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill2", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:173};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder2", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:173};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill3", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:209};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder3", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:209};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill4", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:245};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder4", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:245};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skill5", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, x:281};
}// end function
}), new UIComponentDescriptor({type:Image, id:"skillBorder5", propertiesFactory:
function () : Object
{
    return {y:385, width:32, height:32, mouseEnabled:false, mouseChildren:false, x:281};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:MyBorderCanvas, propertiesFactory:
function () : Object
{
    return {x:536, y:3, height:432, styleName:"heroEquipmentBorderDeploy", width:290, verticalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:33, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5.5, y:12, width:279, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:33, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:54, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:54, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:75, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:75, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:96, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:96, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:117, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:117, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:5, y:138, width:140, height:20};
}// end function
}), new UIComponentDescriptor({type:LetterBgComponent, propertiesFactory:
function () : Object
{
    return {x:145, y:138, width:139, height:20};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label1", propertiesFactory:
function () : Object
{
    return {x:7, y:33, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"level", propertiesFactory:
function () : Object
{
    return {y:33, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"heroName", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:12, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:270, x:10};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label4", propertiesFactory:
function () : Object
{
    return {y:33, height:20, styleName:"herocomponentStaticLabel", x:147, width:68};
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
    return {y:33, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label6", propertiesFactory:
function () : Object
{
    return {x:7, y:75, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"attack", propertiesFactory:
function () : Object
{
    return {y:75, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label8", propertiesFactory:
function () : Object
{
    return {x:147, y:75, height:20, styleName:"herocomponentStaticLabel", width:68};
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
    return {y:75, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label10", propertiesFactory:
function () : Object
{
    return {x:7, y:96, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"hp", propertiesFactory:
function () : Object
{
    return {y:96, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label12", propertiesFactory:
function () : Object
{
    return {x:147, y:96, height:20, styleName:"herocomponentStaticLabel", width:68};
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
    return {y:96, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label14", propertiesFactory:
function () : Object
{
    return {x:7, y:117, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"counterHit", propertiesFactory:
function () : Object
{
    return {y:117, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label16", propertiesFactory:
function () : Object
{
    return {x:147, y:117, height:20, styleName:"herocomponentStaticLabel", width:68};
}// end function
}), new UIComponentDescriptor({type:Label, id:"critical", stylesFactory:
function () : void
{
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:117, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label18", propertiesFactory:
function () : Object
{
    return {x:7, y:138, height:20, styleName:"herocomponentStaticLabel", width:68};
}// end function
}), new UIComponentDescriptor({type:Label, id:"hit", propertiesFactory:
function () : Object
{
    return {y:138, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label20", propertiesFactory:
function () : Object
{
    return {x:147, y:54, height:20, styleName:"herocomponentStaticLabel", width:68};
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
    return {y:54, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label22", propertiesFactory:
function () : Object
{
    return {x:7, y:54, height:20, styleName:"herocomponentStaticLabel", width:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"potential", propertiesFactory:
function () : Object
{
    return {y:54, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:80, x:60};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label24", propertiesFactory:
function () : Object
{
    return {x:147, y:138, height:20, styleName:"herocomponentStaticLabel", width:70};
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
    return {y:138, height:20, text:"Loading...", styleName:"herocomponentContentLabel", width:68, x:216};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {x:0, y:165, styleName:"heroCanvasBar", width:289, height:17, childDescriptors:[new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label26", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.verticalCenter = "-2";
    this.fontWeight = "bold";
    this.color = 7292695;
    this.fontSize = 12;
    return;
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.backgroundColor = 15448432;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:0, y:181, mouseEnabled:false, width:289, height:248};
}// end function
}), new UIComponentDescriptor({type:TileList, id:"itemList", stylesFactory:
function () : void
{
    this.borderStyle = "none";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {maxColumns:4, selectable:false, width:277, height:228, x:7, y:189, styleName:"herocomponentListStyle", itemRenderer:_HeroEquipCompoment_ClassFactory1_c()};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_HeroEquipCompoment_Button1", events:{click:"___HeroEquipCompoment_Button1_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"btnprev", width:20, height:20, x:6, y:397};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"_HeroEquipCompoment_LinkButton1", events:{click:"___HeroEquipCompoment_LinkButton1_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"herocomponentPreNexLinkButton", x:16, y:397};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_HeroEquipCompoment_Button2", events:{click:"___HeroEquipCompoment_Button2_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"btnnext", width:20, height:20, y:397, x:258};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"_HeroEquipCompoment_LinkButton2", events:{click:"___HeroEquipCompoment_LinkButton2_click"}, propertiesFactory:
function () : Object
{
    return {styleName:"herocomponentPreNexLinkButton", x:210, y:398};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_HeroEquipCompoment_Label27", stylesFactory:
function () : void
{
    this.textAlign = "center";
    this.fontWeight = "bold";
    this.color = 16776960;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:10, y:10, width:108};
}// end function
}), new UIComponentDescriptor({type:MyTileList, id:"heroList", events:{itemClick:"__heroList_itemClick"}, stylesFactory:
function () : void
{
    this.paddingLeft = 0;
    this.paddingTop = 0;
    this.paddingRight = 0;
    this.borderStyle = "none";
    this.backgroundAlpha = 0;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {focusEnabled:false, columnCount:2, x:5, y:27, width:118, height:382, itemRenderer:_HeroEquipCompoment_ClassFactory2_c(), verticalScrollPolicy:"auto", horizontalScrollPolicy:"auto"};
}// end function
})]};
}// end function
});
            this.characterItemList = CacheManager.getInstance().getCache(CacheType.PACKAGE_ITEMS) as CharacterItemList;
            this._470332110characterHerosList = CacheManager.getInstance().getCache(CacheType.HERO_INFO) as CharacterHerosList;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 829;
            this.height = 437;
            this.addEventListener("creationComplete", this.___HeroEquipCompoment_MyBorderCanvas1_creationComplete);
            return;
        }// end function

        public function ___HeroEquipCompoment_LinkButton1_click(param1:MouseEvent) : void
        {
            this.onPreClick(param1);
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

        public function __right4_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        public function set left1(param1:Image) : void
        {
            var _loc_2:* = this._102850826left1;
            if (_loc_2 !== param1)
            {
                this._102850826left1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "left1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set left2(param1:Image) : void
        {
            var _loc_2:* = this._102850827left2;
            if (_loc_2 !== param1)
            {
                this._102850827left2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "left2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set left3(param1:Image) : void
        {
            var _loc_2:* = this._102850828left3;
            if (_loc_2 !== param1)
            {
                this._102850828left3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "left3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get potential() : Label
        {
            return this._1820082146potential;
        }// end function

        public function set skill4(param1:Image) : void
        {
            var _loc_2:* = this._900562941skill4;
            if (_loc_2 !== param1)
            {
                this._900562941skill4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skill0(param1:Image) : void
        {
            var _loc_2:* = this._900562945skill0;
            if (_loc_2 !== param1)
            {
                this._900562945skill0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get skill0() : Image
        {
            return this._900562945skill0;
        }// end function

        public function get skill2() : Image
        {
            return this._900562943skill2;
        }// end function

        public function get counterHit() : Label
        {
            return this._1029688329counterHit;
        }// end function

        public function set skill3(param1:Image) : void
        {
            var _loc_2:* = this._900562942skill3;
            if (_loc_2 !== param1)
            {
                this._900562942skill3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set left4(param1:Image) : void
        {
            var _loc_2:* = this._102850829left4;
            if (_loc_2 !== param1)
            {
                this._102850829left4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "left4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder4(param1:Image) : void
        {
            var _loc_2:* = this._1449405961skillBorder4;
            if (_loc_2 !== param1)
            {
                this._1449405961skillBorder4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skill5(param1:Image) : void
        {
            var _loc_2:* = this._900562940skill5;
            if (_loc_2 !== param1)
            {
                this._900562940skill5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder5(param1:Image) : void
        {
            var _loc_2:* = this._1449405960skillBorder5;
            if (_loc_2 !== param1)
            {
                this._1449405960skillBorder5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder5", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onComplete() : void
        {
            BindingUtils.bindSetter(this.setHeroDetail, this.heroList, "selectedItem");
            return;
        }// end function

        public function get skill1() : Image
        {
            return this._900562944skill1;
        }// end function

        public function __left1_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        public function set skill2(param1:Image) : void
        {
            var _loc_2:* = this._900562943skill2;
            if (_loc_2 !== param1)
            {
                this._900562943skill2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get skill5() : Image
        {
            return this._900562940skill5;
        }// end function

        public function __right1_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        public function get defense() : Label
        {
            return this._1544916544defense;
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

        public function get agility() : Label
        {
            return this._1057361851agility;
        }// end function

        public function set skill1(param1:Image) : void
        {
            var _loc_2:* = this._900562944skill1;
            if (_loc_2 !== param1)
            {
                this._900562944skill1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skill1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get attack() : Label
        {
            return this._1407259064attack;
        }// end function

        public function get skill4() : Image
        {
            return this._900562941skill4;
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

        public function __heroList_itemClick(param1:ListEvent) : void
        {
            this.onItemClick(param1);
            return;
        }// end function

        public function get skill3() : Image
        {
            return this._900562942skill3;
        }// end function

        private function set _nextEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._879800561_nextEnabled;
            if (_loc_2 !== param1)
            {
                this._879800561_nextEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_nextEnabled", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get itemList() : TileList
        {
            return this._1177280081itemList;
        }// end function

        public function get skillBorder5() : Image
        {
            return this._1449405960skillBorder5;
        }// end function

        public function updateHero(param1:CharacterLogicHero) : void
        {
            if (this.heroList && this.heroList.selectedItem == param1)
            {
                this.setHeroDetail(param1);
            }// end if
            return;
        }// end function

        public function get skillBorder4() : Image
        {
            return this._1449405961skillBorder4;
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

        public function get skillBorder3() : Image
        {
            return this._1449405962skillBorder3;
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

        public function set itemList(param1:TileList) : void
        {
            var _loc_2:* = this._1177280081itemList;
            if (_loc_2 !== param1)
            {
                this._1177280081itemList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __left3_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        private function get _preEnabled() : Boolean
        {
            return this._647502013_preEnabled;
        }// end function

        public function __right3_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        private function get characterHerosList() : CharacterHerosList
        {
            return this._470332110characterHerosList;
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

        public function onClickPackItem(param1:MouseEvent, param2) : void
        {
            var e:HeroEvent;
            var needHeroLv:int;
            var event:* = param1;
            var data:* = param2;
            if (event.shiftKey)
            {
                Facade.getInstance().sendNotification(ControlCmd.CHAT_SEND_ITEM_HERO, {type:1, id:data.id, name:data.name, color:data.color});
                return;
            }// end if
            if (data.characterAuctionId > 0)
            {
                return;
            }// end if
            if (data.requirement && data.requirement.characterHero)
            {
                needHeroLv = data.requirement.characterHero.level;
                if (this._currentHeroLv < needHeroLv)
                {
                    MyAlert.show(Lang.msg("??????,????"));
                    return;
                }// end if
            }// end if
            e = new HeroEvent(HeroEvent.SET_HERO_ECQUIPMENT_EVENT, true);
            e.heroId = this.heroList.selectedItem.id;
            e.itemId = data.id;
            if (data.bindOfEquip == 1 && data.bind == 0)
            {
                MyAlert.show(Lang.msg("?????????????,????????"), "", MyAlert.CONFIRM | MyAlert.CANCEL, null, 
function (param1:CloseEvent) : void
{
    if (param1.detail == MyAlert.CONFIRM)
    {
        dispatchEvent(e);
        return;
    }// end if
    return;
}// end function
);
            }
            else
            {
                dispatchEvent(e);
            }// end else if
            return;
        }// end function

        private function setHeroDetail(param1:CharacterLogicHero) : void
        {
            var _loc_12:CharacterLogicItem;
            var _loc_14:Image;
            var _loc_15:Image;
            var _loc_18:int;
            var _loc_19:String;
            var _loc_20:String;
            if (param1 == null)
            {
                return;
            }// end if
            var _loc_2:* = this.owner.parent as HeroComponent;
            _loc_2.currentHeroSelectedIndex = this.heroList.selectedIndex;
            this._currentHeroLv = param1.level;
            this._currentHero = param1;
            this.level.text = param1.level.toString();
            this.heroName.setStyle("color", ColorConfig.getHeroColor(param1.heroColorId));
            this.heroName.text = param1.name;
            this.type.text = HeroType.getHeroTypeName(param1.type);
            this.attack.htmlText = param1.attackBase + "<font color=\'#00FF00\'>" + (param1.attackAdd == 0 ? ("") : (" +" + param1.attackAdd.toString())) + "</font>";
            this.defense.htmlText = param1.defenceBase + "<font color=\'#00FF00\'>" + (param1.defenceAdd == 0 ? ("") : (" +" + param1.defenceAdd.toString())) + "</font>";
            this.hp.htmlText = param1.vitalityBase + "<font color=\'#00FF00\'>" + (param1.vitalityAdd == 0 ? ("") : (" +" + param1.vitalityAdd.toString())) + "</font>";
            this.agility.htmlText = param1.agilityBase + "<font color=\'#00FF00\'>" + (param1.agilityAdd == 0 ? ("") : (" +" + param1.agilityAdd.toString())) + "</font>";
            this.counterHit.htmlText = param1.counterHit == 0 ? (param1.counterHit.toString()) : ("<font color=\'#00FF00\'>" + param1.counterHit.toString() + "</font>");
            this.critical.htmlText = param1.criticalHit == 0 ? (param1.criticalHit.toString()) : ("<font color=\'#00FF00\'>" + param1.criticalHit.toString() + "</font>");
            this.hit.htmlText = param1.hit == 0 ? (param1.hit.toString()) : ("<font color=\'#00FF00\'>" + param1.hit.toString() + "</font>");
            this.command.htmlText = param1.leadershipBase + "<font color=\'#00FF00\'>" + (param1.leadershipAdd == 0 ? ("") : (" +" + param1.leadershipAdd.toString())) + "</font>";
            this.potential.htmlText = param1.potential.toString();
            this.comboHit.htmlText = param1.comboHit == 0 ? (param1.comboHit.toString()) : ("<font color=\'#00FF00\'>" + param1.comboHit.toString() + "</font>");
            this.heroImg.source = ImageResource.getInstance().getHeroImageURL(param1.photoId, 1);
            var _loc_3:* = this.characterItemList.getHeroEcquipItemsByHeroId(param1.id);
            var _loc_4:Boolean;
            var _loc_5:Boolean;
            var _loc_6:Boolean;
            var _loc_7:Boolean;
            var _loc_8:Boolean;
            var _loc_9:Boolean;
            var _loc_10:Boolean;
            var _loc_11:Boolean;
            for each (_loc_12 in _loc_3)
            {
                // label
                if (_loc_12.subType == ItemSubType.WEAPON)
                {
                    this.left4.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.leftBorder4.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.left4.data = _loc_12;
                    this.left4.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.left4.buttonMode = true;
                    _loc_7 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.NECKLACE)
                {
                    this.right1.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.rightBorder1.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.right1.data = _loc_12;
                    this.right1.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.right1.buttonMode = true;
                    _loc_8 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.RING)
                {
                    this.right2.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.rightBorder2.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.right2.data = _loc_12;
                    this.right2.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.right2.buttonMode = true;
                    _loc_9 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.HEAD)
                {
                    this.left1.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.leftBorder1.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.left1.data = _loc_12;
                    this.left1.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.left1.buttonMode = true;
                    _loc_4 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.CLOTHES)
                {
                    this.left3.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.leftBorder3.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.left3.data = _loc_12;
                    this.left3.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.left3.buttonMode = true;
                    _loc_6 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.SHOULDER)
                {
                    this.left2.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.leftBorder2.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.left2.data = _loc_12;
                    this.left2.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.left2.buttonMode = true;
                    _loc_5 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.BELT)
                {
                    this.right3.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.rightBorder3.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.right3.data = _loc_12;
                    this.right3.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.right3.buttonMode = true;
                    _loc_10 = true;
                    continue;
                }// end if
                if (_loc_12.subType == ItemSubType.SHOES)
                {
                    this.right4.source = ImageResource.getInstance().getItemImageURL(_loc_12.photoId);
                    this.rightBorder4.source = ItemBorderResource.getInstance().getItemBorderClass_66(_loc_12.color);
                    this.right4.data = _loc_12;
                    this.right4.toolTip = ItemToolTipFormat.getToolTipDesc(_loc_12);
                    this.right4.buttonMode = true;
                    _loc_11 = true;
                }// end if
            }// end of for each ... in
            if (true)
            {
                this.left1.source = null;
                this.leftBorder1.source = null;
                this.left1.data = null;
                this.left1.buttonMode = false;
            }// end if
            if (true)
            {
                this.left2.source = null;
                this.leftBorder2.source = null;
                this.left2.data = null;
                this.left2.buttonMode = false;
            }// end if
            if (true)
            {
                this.left3.source = null;
                this.leftBorder3.source = null;
                this.left3.data = null;
                this.left3.buttonMode = false;
            }// end if
            if (true)
            {
                this.left4.source = null;
                this.leftBorder4.source = null;
                this.left4.data = null;
                this.left4.buttonMode = false;
            }// end if
            if (true)
            {
                this.right1.source = null;
                this.rightBorder1.source = null;
                this.right1.data = null;
                this.right1.buttonMode = false;
            }// end if
            if (true)
            {
                this.right2.source = null;
                this.rightBorder2.source = null;
                this.right2.data = null;
                this.right2.buttonMode = false;
            }// end if
            if (true)
            {
                this.right3.source = null;
                this.rightBorder3.source = null;
                this.right3.data = null;
                this.right3.buttonMode = false;
            }// end if
            if (true)
            {
                this.right4.source = null;
                this.rightBorder4.source = null;
                this.right4.data = null;
                this.right4.buttonMode = false;
            }// end if
            var _loc_13:* = !param1.skillIds ? (0) : (param1.skillIds.length);
            var _loc_16:int;
            while (_loc_16 < _loc_13)
            {
                // label
                _loc_18 = param1.skillIds[_loc_16];
                _loc_14 = this["skill" + _loc_16] as Image;
                _loc_14.visible = true;
                _loc_15 = this["skillBorder" + _loc_16] as Image;
                _loc_15.visible = true;
                if (_loc_18 > 0)
                {
                    _loc_14.source = ImageResource.getInstance().getSkillImageURL(_loc_18);
                    _loc_19 = ConfigResource.getInstance().getName(_loc_18);
                    _loc_20 = ConfigResource.getInstance().getDesc(_loc_18);
                    _loc_14.toolTip = HtmlUtil.sizeColor(_loc_19, 11, "#FFFF00", true) + "\n" + _loc_20;
                }
                else if (_loc_18 == 0)
                {
                    _loc_14.source = ImageResource.getInstance().getImgClass("skillEmpty");
                    _loc_14.toolTip = Lang.msg("??????");
                }
                else if (_loc_18 == -1)
                {
                    _loc_14.source = ImageResource.getInstance().getImgClass("enterCityLock");
                    _loc_14.toolTip = Lang.msg("??????");
                }// end else if
                _loc_14.visible = true;
                _loc_16++;
            }// end while
            var _loc_17:* = _loc_16;
            while (_loc_17 < 6)
            {
                // label
                _loc_14 = this["skill" + _loc_17] as Image;
                _loc_14.visible = false;
                _loc_15 = this["skillBorder" + _loc_17] as Image;
                _loc_15.visible = false;
                _loc_17++;
            }// end while
            return;
        }// end function

        public function onToolTip(param1:CharacterLogicItem, param2:int, param3:int, param4:ToolTipEvent) : void
        {
            var _loc_5:* = new HeroEquipmentTips();
            param4.toolTip = _loc_5;
            var _loc_6:* = this.characterItemList.getHeroEcquipItemsByHeroId(this._currentHero.id);
            _loc_5.setHeroEquInfo(this.getItemByHeroAndSubType(_loc_6, param1.subType), param2, param3);
            _loc_5.setPackEquInfo(param1, param2, param3);
            return;
        }// end function

        public function get hp() : Label
        {
            return this._3336hp;
        }// end function

        public function set leftBorder4(param1:Image) : void
        {
            var _loc_2:* = this._1107541119leftBorder4;
            if (_loc_2 !== param1)
            {
                this._1107541119leftBorder4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leftBorder4", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function getNotEcquipByPage(param1:int) : ArrayCollection
        {
            var _loc_2:* = new ArrayCollection();
            var _loc_3:* = 12 * param1--;
            var _loc_5:int;
            while (_loc_5 < 12)
            {
                // label
                if (this.characterItemList.equipList && _loc_3 + _loc_5 < this.characterItemList.equipList.length)
                {
                    _loc_2.addItem(this.characterItemList.equipList[_loc_3 + _loc_5]);
                }
                else
                {
                    _loc_2.addItem(new CharacterLogicItem());
                }// end else if
                _loc_5++;
            }// end while
            return _loc_2;
        }// end function

        public function get left4() : Image
        {
            return this._102850829left4;
        }// end function

        public function set leftBorder3(param1:Image) : void
        {
            var _loc_2:* = this._1107541120leftBorder3;
            if (_loc_2 !== param1)
            {
                this._1107541120leftBorder3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leftBorder3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get left1() : Image
        {
            return this._102850826left1;
        }// end function

        public function get left2() : Image
        {
            return this._102850827left2;
        }// end function

        private function onUnsetEcquip(param1:MouseEvent) : void
        {
            var _loc_2:* = param1.currentTarget.data;
            if (_loc_2 == null)
            {
                return;
            }// end if
            var _loc_3:* = new HeroEvent(HeroEvent.UNSET_HERO_ECQUIPMENT_EVENT, true);
            _loc_3.heroId = this.heroList.selectedItem.id;
            _loc_3.itemId = _loc_2.id;
            dispatchEvent(_loc_3);
            return;
        }// end function

        public function set leftBorder1(param1:Image) : void
        {
            var _loc_2:* = this._1107541122leftBorder1;
            if (_loc_2 !== param1)
            {
                this._1107541122leftBorder1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leftBorder1", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onItemClick(param1:ListEvent) : void
        {
            return;
        }// end function

        public function get left3() : Image
        {
            return this._102850828left3;
        }// end function

        private function get _nextEnabled() : Boolean
        {
            return this._879800561_nextEnabled;
        }// end function

        public function init(param1:Object = null) : void
        {
            this.setEcquipItems();
            var _loc_2:* = this.owner.parent as HeroComponent;
            _loc_2.currentHeroSelectedIndex = Math.min(_loc_2.currentHeroSelectedIndex, this.characterHerosList.heroes.length--);
            if (_loc_2.currentHeroSelectedIndex == -1)
            {
                _loc_2.currentHeroSelectedIndex = 0;
            }// end if
            callLater(this.laterInit);
            return;
        }// end function

        public function set leftBorder2(param1:Image) : void
        {
            var _loc_2:* = this._1107541121leftBorder2;
            if (_loc_2 !== param1)
            {
                this._1107541121leftBorder2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "leftBorder2", _loc_2, param1));
            }// end if
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

        private function _HeroEquipCompoment_ClassFactory2_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = HeroItemRenderer;
            return _loc_1;
        }// end function

        public function set right4(param1:Image) : void
        {
            var _loc_2:* = this._931102312right4;
            if (_loc_2 !== param1)
            {
                this._931102312right4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "right4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set right3(param1:Image) : void
        {
            var _loc_2:* = this._931102313right3;
            if (_loc_2 !== param1)
            {
                this._931102313right3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "right3", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onNextClick(param1:MouseEvent) : void
        {
            if (this._currentPage < this._totalPages)
            {
                var _loc_2:String;
                _loc_2._currentPage = this._currentPage++;
            }// end if
            this._nextEnabled = this._currentPage < this._totalPages;
            this._preEnabled = this._currentPage > 1;
            this.itemList.dataProvider = this.getNotEcquipByPage(this._currentPage);
            return;
        }// end function

        public function set right1(param1:Image) : void
        {
            var _loc_2:* = this._931102315right1;
            if (_loc_2 !== param1)
            {
                this._931102315right1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "right1", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function getItemByHeroAndSubType(param1:Array, param2:int) : CharacterLogicItem
        {
            var _loc_3:int;
            while (_loc_3 < param1.length)
            {
                // label
                if ((param1[_loc_3] as CharacterLogicItem).subType == param2)
                {
                    return param1[_loc_3] as CharacterLogicItem;
                }// end if
                _loc_3++;
            }// end while
            return null;
        }// end function

        public function set critical(param1:Label) : void
        {
            var _loc_2:* = this._1952151455critical;
            if (_loc_2 !== param1)
            {
                this._1952151455critical = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "critical", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function ___HeroEquipCompoment_Button2_click(param1:MouseEvent) : void
        {
            this.onNextClick(param1);
            return;
        }// end function

        public function get type() : Label
        {
            return this._3575610type;
        }// end function

        private function _HeroEquipCompoment_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("equipmentBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkill");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
            _loc_1 = Lang.msg("????2") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("????") + ":";
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("??");
            _loc_1 = this._preEnabled;
            _loc_1 = this._preEnabled;
            _loc_1 = Lang.msg("???");
            _loc_1 = this._preEnabled;
            _loc_1 = this._preEnabled;
            _loc_1 = this._nextEnabled;
            _loc_1 = this._nextEnabled;
            _loc_1 = Lang.msg("???");
            _loc_1 = this._nextEnabled;
            _loc_1 = this._nextEnabled;
            _loc_1 = Lang.msg("????");
            _loc_1 = this.characterHerosList.heroes;
            return;
        }// end function

        public function set heroName(param1:Label) : void
        {
            var _loc_2:* = this._619105883heroName;
            if (_loc_2 !== param1)
            {
                this._619105883heroName = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroName", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set right2(param1:Image) : void
        {
            var _loc_2:* = this._931102314right2;
            if (_loc_2 !== param1)
            {
                this._931102314right2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "right2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get command() : Label
        {
            return this._950394699command;
        }// end function

        public function onOver(param1:CharacterLogicItem, param2:Event = null) : void
        {
            if (param2 && param2.currentTarget)
            {
                (param2.currentTarget as Image).toolTip = ItemToolTipFormat.getHeroEquipDesc(param1, this._currentHeroLv) + "\n" + Lang.msg("Shift+??:?????");
            }// end if
            if (ToolTipManager.currentToolTip)
            {
                ToolTipManager.currentToolTip.text = ItemToolTipFormat.getHeroEquipDesc(param1, this._currentHeroLv) + "\n" + Lang.msg("Shift+??:?????");
            }// end if
            return;
        }// end function

        public function ___HeroEquipCompoment_LinkButton2_click(param1:MouseEvent) : void
        {
            this.onNextClick(param1);
            return;
        }// end function

        private function _HeroEquipCompoment_ClassFactory1_c() : ClassFactory
        {
            var _loc_1:* = new ClassFactory();
            _loc_1.generator = HeroEquipCompoment_inlineComponent1;
            _loc_1.properties = {outerDocument:this};
            return _loc_1;
        }// end function

        public function get heroImg() : Image
        {
            return this._811308393heroImg;
        }// end function

        public function set heroList(param1:MyTileList) : void
        {
            var _loc_2:* = this._619157576heroList;
            if (_loc_2 !== param1)
            {
                this._619157576heroList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "heroList", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __left2_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        public function __right2_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        public function get level() : Label
        {
            return this._102865796level;
        }// end function

        public function get leftBorder2() : Image
        {
            return this._1107541121leftBorder2;
        }// end function

        public function get leftBorder4() : Image
        {
            return this._1107541119leftBorder4;
        }// end function

        public function ___HeroEquipCompoment_MyBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.onComplete();
            return;
        }// end function

        public function get leftBorder3() : Image
        {
            return this._1107541120leftBorder3;
        }// end function

        override public function initialize() : void
        {
            var target:HeroEquipCompoment;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._HeroEquipCompoment_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_hero_HeroEquipCompomentWatcherSetupUtil");
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

        public function set rightBorder1(param1:Image) : void
        {
            var _loc_2:* = this._2105905097rightBorder1;
            if (_loc_2 !== param1)
            {
                this._2105905097rightBorder1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rightBorder1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get hit() : Label
        {
            return this._103315hit;
        }// end function

        public function set rightBorder2(param1:Image) : void
        {
            var _loc_2:* = this._2105905098rightBorder2;
            if (_loc_2 !== param1)
            {
                this._2105905098rightBorder2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rightBorder2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function setEcquipItems() : void
        {
            var _loc_1:HeroComponent;
            this._totalPages = (this.characterItemList.equipList.length + 11) / 12;
            if (this._totalPages == 0)
            {
                this._totalPages = 1;
            }// end if
            this._currentPage = Math.min(this._currentPage, this._totalPages);
            this._preEnabled = this._currentPage > 1;
            this._nextEnabled = this._currentPage < this._totalPages;
            if (this.itemList)
            {
                this.itemList.dataProvider = this.getNotEcquipByPage(this._currentPage);
                _loc_1 = this.owner.parent as HeroComponent;
                _loc_1.currentHeroSelectedIndex = Math.min(_loc_1.currentHeroSelectedIndex, this.characterHerosList.heroes.length--);
                if (_loc_1.currentHeroSelectedIndex == -1)
                {
                    _loc_1.currentHeroSelectedIndex = 0;
                }// end if
            }// end if
            return;
        }// end function

        public function get right1() : Image
        {
            return this._931102315right1;
        }// end function

        public function get right3() : Image
        {
            return this._931102313right3;
        }// end function

        public function get critical() : Label
        {
            return this._1952151455critical;
        }// end function

        public function get leftBorder1() : Image
        {
            return this._1107541122leftBorder1;
        }// end function

        private function set characterHerosList(param1:CharacterHerosList) : void
        {
            var _loc_2:* = this._470332110characterHerosList;
            if (_loc_2 !== param1)
            {
                this._470332110characterHerosList = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "characterHerosList", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onPreClick(param1:MouseEvent) : void
        {
            if (this._currentPage > 1)
            {
                var _loc_2:String;
                _loc_2._currentPage = this._currentPage--;
            }// end if
            this._preEnabled = this._currentPage > 1;
            this._nextEnabled = this._currentPage < this._totalPages;
            this.itemList.dataProvider = this.getNotEcquipByPage(this._currentPage);
            return;
        }// end function

        public function get heroName() : Label
        {
            return this._619105883heroName;
        }// end function

        public function get right4() : Image
        {
            return this._931102312right4;
        }// end function

        public function get right2() : Image
        {
            return this._931102314right2;
        }// end function

        public function set rightBorder4(param1:Image) : void
        {
            var _loc_2:* = this._2105905100rightBorder4;
            if (_loc_2 !== param1)
            {
                this._2105905100rightBorder4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rightBorder4", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function set _preEnabled(param1:Boolean) : void
        {
            var _loc_2:* = this._647502013_preEnabled;
            if (_loc_2 !== param1)
            {
                this._647502013_preEnabled = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "_preEnabled", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get heroList() : MyTileList
        {
            return this._619157576heroList;
        }// end function

        private function laterInit() : void
        {
            var _loc_1:* = this.owner.parent as HeroComponent;
            this.heroList.selectedIndex = _loc_1.currentHeroSelectedIndex;
            return;
        }// end function

        public function set rightBorder3(param1:Image) : void
        {
            var _loc_2:* = this._2105905099rightBorder3;
            if (_loc_2 !== param1)
            {
                this._2105905099rightBorder3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "rightBorder3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get rightBorder1() : Image
        {
            return this._2105905097rightBorder1;
        }// end function

        public function get rightBorder2() : Image
        {
            return this._2105905098rightBorder2;
        }// end function

        public function get rightBorder3() : Image
        {
            return this._2105905099rightBorder3;
        }// end function

        public function get rightBorder4() : Image
        {
            return this._2105905100rightBorder4;
        }// end function

        public function set skillBorder0(param1:Image) : void
        {
            var _loc_2:* = this._1449405965skillBorder0;
            if (_loc_2 !== param1)
            {
                this._1449405965skillBorder0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder1(param1:Image) : void
        {
            var _loc_2:* = this._1449405964skillBorder1;
            if (_loc_2 !== param1)
            {
                this._1449405964skillBorder1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set skillBorder2(param1:Image) : void
        {
            var _loc_2:* = this._1449405963skillBorder2;
            if (_loc_2 !== param1)
            {
                this._1449405963skillBorder2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder2", _loc_2, param1));
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

        public function ___HeroEquipCompoment_Button1_click(param1:MouseEvent) : void
        {
            this.onPreClick(param1);
            return;
        }// end function

        public function get skillBorder0() : Image
        {
            return this._1449405965skillBorder0;
        }// end function

        public function get skillBorder1() : Image
        {
            return this._1449405964skillBorder1;
        }// end function

        public function get skillBorder2() : Image
        {
            return this._1449405963skillBorder2;
        }// end function

        public function __left4_click(param1:MouseEvent) : void
        {
            this.onUnsetEcquip(param1);
            return;
        }// end function

        private function _HeroEquipCompoment_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image10.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image10.source");
            result[0] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image11.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image11.source");
            result[1] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image12.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image12.source");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image13.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image13.source");
            result[3] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image14.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image14.source");
            result[4] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image15.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image15.source");
            result[5] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image16.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image16.source");
            result[6] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("equipmentBorder");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image17.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image17.source");
            result[7] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkill");
}// end function
, 
function (param1:Object) : void
{
    _HeroEquipCompoment_Image26.source = param1;
    return;
}// end function
, "_HeroEquipCompoment_Image26.source");
            result[8] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder0.source = param1;
    return;
}// end function
, "skillBorder0.source");
            result[9] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder1.source = param1;
    return;
}// end function
, "skillBorder1.source");
            result[10] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder2.source = param1;
    return;
}// end function
, "skillBorder2.source");
            result[11] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder3.source = param1;
    return;
}// end function
, "skillBorder3.source");
            result[12] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder4.source = param1;
    return;
}// end function
, "skillBorder4.source");
            result[13] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getImgClass("bgHeroSkillBorder");
}// end function
, 
function (param1:Object) : void
{
    skillBorder5.source = param1;
    return;
}// end function
, "skillBorder5.source");
            result[14] = binding;
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
    _HeroEquipCompoment_Label1.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label1.text");
            result[15] = binding;
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
    _HeroEquipCompoment_Label1.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label1.toolTip");
            result[16] = binding;
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
    _HeroEquipCompoment_Label4.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label4.text");
            result[17] = binding;
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
    _HeroEquipCompoment_Label4.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label4.toolTip");
            result[18] = binding;
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
    _HeroEquipCompoment_Label6.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label6.text");
            result[19] = binding;
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
    _HeroEquipCompoment_Label6.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label6.toolTip");
            result[20] = binding;
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
    _HeroEquipCompoment_Label8.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label8.text");
            result[21] = binding;
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
    _HeroEquipCompoment_Label8.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label8.toolTip");
            result[22] = binding;
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
    _HeroEquipCompoment_Label10.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label10.text");
            result[23] = binding;
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
    _HeroEquipCompoment_Label10.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label10.toolTip");
            result[24] = binding;
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
    _HeroEquipCompoment_Label12.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label12.text");
            result[25] = binding;
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
    _HeroEquipCompoment_Label12.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label12.toolTip");
            result[26] = binding;
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
    _HeroEquipCompoment_Label14.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label14.text");
            result[27] = binding;
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
    _HeroEquipCompoment_Label14.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label14.toolTip");
            result[28] = binding;
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
    _HeroEquipCompoment_Label16.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label16.text");
            result[29] = binding;
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
    _HeroEquipCompoment_Label16.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label16.toolTip");
            result[30] = binding;
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
    _HeroEquipCompoment_Label18.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label18.text");
            result[31] = binding;
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
    _HeroEquipCompoment_Label18.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label18.toolTip");
            result[32] = binding;
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
    _HeroEquipCompoment_Label20.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label20.text");
            result[33] = binding;
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
    _HeroEquipCompoment_Label20.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label20.toolTip");
            result[34] = binding;
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
    _HeroEquipCompoment_Label22.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label22.text");
            result[35] = binding;
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
    _HeroEquipCompoment_Label22.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label22.toolTip");
            result[36] = binding;
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
    _HeroEquipCompoment_Label24.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label24.text");
            result[37] = binding;
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
    _HeroEquipCompoment_Label24.toolTip = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label24.toolTip");
            result[38] = binding;
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
    _HeroEquipCompoment_Label26.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label26.text");
            result[39] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _preEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_Button1.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_Button1.buttonMode");
            result[40] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _preEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_Button1.enabled = param1;
    return;
}// end function
, "_HeroEquipCompoment_Button1.enabled");
            result[41] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("???");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroEquipCompoment_LinkButton1.label = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton1.label");
            result[42] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _preEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_LinkButton1.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton1.buttonMode");
            result[43] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _preEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_LinkButton1.enabled = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton1.enabled");
            result[44] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _nextEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_Button2.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_Button2.buttonMode");
            result[45] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _nextEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_Button2.enabled = param1;
    return;
}// end function
, "_HeroEquipCompoment_Button2.enabled");
            result[46] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("???");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _HeroEquipCompoment_LinkButton2.label = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton2.label");
            result[47] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _nextEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_LinkButton2.buttonMode = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton2.buttonMode");
            result[48] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return _nextEnabled;
}// end function
, 
function (param1:Boolean) : void
{
    _HeroEquipCompoment_LinkButton2.enabled = param1;
    return;
}// end function
, "_HeroEquipCompoment_LinkButton2.enabled");
            result[49] = binding;
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
    _HeroEquipCompoment_Label27.text = param1;
    return;
}// end function
, "_HeroEquipCompoment_Label27.text");
            result[50] = binding;
            binding = new Binding(this, 
function () : Object
{
    return characterHerosList.heroes;
}// end function
, 
function (param1:Object) : void
{
    heroList.dataProvider = param1;
    return;
}// end function
, "heroList.dataProvider");
            result[51] = binding;
            return result;
        }// end function

        public function set skillBorder3(param1:Image) : void
        {
            var _loc_2:* = this._1449405962skillBorder3;
            if (_loc_2 !== param1)
            {
                this._1449405962skillBorder3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skillBorder3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get currentHeroLv() : int
        {
            return this._currentHeroLv;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            HeroEquipCompoment._watcherSetupUtil = param1;
            return;
        }// end function

    }
}
