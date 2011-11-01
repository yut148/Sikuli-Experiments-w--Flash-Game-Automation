package modules.embed
{
    import com.cgame.cache.*;
    import com.cgame.cache.msg.logic.*;
    import com.cgame.common.layer.*;
    import com.cgame.config.*;
    import com.cgame.view.embed.event.*;
    import com.game.common.*;
    import com.game.manager.*;
    import com.utils.*;
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import modules.comm.*;
    import modules.comm.event.*;
    import modules.embed.itemRender.*;
    import mx.binding.*;
    import mx.collections.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class EquipmentEmbed extends TitleBorderCanvas implements IBindingClient
    {
        public var _EquipmentEmbed_Button1:Button;
        public var _EquipmentEmbed_Button2:Button;
        private var _429652523replaceBtn3:LinkButton;
        private var _1826122086addGemBtn4:LinkButton;
        private var _1098045436removeBtn4:LinkButton;
        private var animationMC:MovieClip;
        private var _1047487580punchBtn2:LinkButton;
        private var _81910594gemImg2:Image;
        var _bindingsByDestination:Object;
        private var itemList:CharacterItemList;
        private var _1110417475label1:Label;
        private var pos:int = 0;
        private var _1979413801coverImg5:Image;
        private var _1073123241dismantleBtn2:LinkButton;
        private var _1047487578punchBtn4:LinkButton;
        private var _1047487582punchBtn0:LinkButton;
        private var _81910592gemImg4:Image;
        private var _1979413797coverImg1:Image;
        private var _1826122084addGemBtn2:LinkButton;
        private var _1732202386skyCount:Label;
        private var _1110417472label4:Label;
        private var selectEquip:SelectItemWin;
        private var _1098045434removeBtn2:LinkButton;
        private var _1361527767check1:CheckBox;
        private var isThunderCountEnough:Boolean = false;
        private var _429652522replaceBtn2:LinkButton;
        private var selectGemPop:SelectItemWin;
        private var _1979413799coverImg3:Image;
        private var _1073123240dismantleBtn3:LinkButton;
        private var _429652525replaceBtn5:LinkButton;
        private var _1826122087addGemBtn5:LinkButton;
        private var skyHammerId:int;
        private var forClassUse:EmbedItemRenderer;
        private var thunderHammer:CharacterLogicItem;
        private var targetData:CharacterLogicItem;
        private var _601108392currentPage:int = 1;
        public var _EquipmentEmbed_Label10:Label;
        public var _EquipmentEmbed_Label11:Label;
        public var _EquipmentEmbed_Label13:Label;
        private var _1098045437removeBtn5:LinkButton;
        private var _1295505990equImg:Image;
        public const ViewName:String = "embedView";
        private var _embed_mxml_images_comm_embed_5108007_png_1742474476:Class;
        private var _1826122082addGemBtn0:LinkButton;
        private var _81910595gemImg1:Image;
        private var _1110417474label2:Label;
        private var _1098045432removeBtn0:LinkButton;
        private var _1073123239dismantleBtn4:LinkButton;
        private var pageSize:int = 25;
        private var _embed_mxml_images_comm_embed_bg_the_toy_png_1265170508:Class;
        private var _1979413800coverImg4:Image;
        private var _1047487577punchBtn5:LinkButton;
        private var _1047487581punchBtn1:LinkButton;
        private var isSkyCountEnough:Boolean = false;
        private var _1826122085addGemBtn3:LinkButton;
        private var _429652521replaceBtn1:LinkButton;
        private var skyHammer:CharacterLogicItem;
        private var _81910593gemImg3:Image;
        private var _1110417471label5:Label;
        private var _embed_mxml_images_comm_embed_5108006_png_1744322286:Class;
        private var _1979413796coverImg0:Image;
        private var _261018733hammer_toy2:SWFLoader;
        private var _1361527766check2:CheckBox;
        private var _1098045435removeBtn3:LinkButton;
        private var _429652524replaceBtn4:LinkButton;
        private var equipItems:ArrayCollection;
        private var gemLevel:Object;
        private var _equItemIdList:Array;
        private var _1073123238dismantleBtn5:LinkButton;
        private var _embed_mxml_images_comm_embed_new_metagem_bg_jpg_705321841:Class;
        private var _115038toy:SWFLoader;
        private var _1047487579punchBtn3:LinkButton;
        public var _EquipmentEmbed_Image10:Image;
        public var _EquipmentEmbed_Image18:Image;
        private var _1110417476label0:Label;
        private var _81910591gemImg5:Image;
        public var _EquipmentEmbed_Label4:Label;
        public var _EquipmentEmbed_Label5:Label;
        private var _1073123243dismantleBtn0:LinkButton;
        private var _1979413798coverImg2:Image;
        var _watchers:Array;
        private var thunderHammerId:int;
        private var posItemIds:Object;
        private var animation:MovieClip;
        public const ViewLevel:int = 2;
        private var _577409037totalPage:int = 1;
        private var _1826122083addGemBtn1:LinkButton;
        var _bindingsBeginWithWord:Object;
        private var _1919438197thunderCount:Label;
        private var _1110417473label3:Label;
        private var _1098045433removeBtn1:LinkButton;
        private var _81910596gemImg0:Image;
        var _bindings:Array;
        private var slot1:Class;
        private var slot2:Class;
        private var slot3:Class;
        private var slot4:Class;
        private var _429652520replaceBtn0:LinkButton;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var _1073123242dismantleBtn1:LinkButton;
        private var _261018732hammer_toy1:SWFLoader;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function EquipmentEmbed()
        {
            this._documentDescriptor_ = new UIComponentDescriptor({type:TitleBorderCanvas, propertiesFactory:
function () : Object
{
    return {width:515, height:490, childDescriptors:[new UIComponentDescriptor({type:Image, propertiesFactory:
function () : Object
{
    return {x:17, y:35, source:_embed_mxml_images_comm_embed_new_metagem_bg_jpg_705321841};
}// end function
}), new UIComponentDescriptor({type:Image, id:"equImg", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:70, width:62, height:62};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_EquipmentEmbed_Button1", events:{click:"___EquipmentEmbed_Button1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:143, styleName:"brownEmptyBtnW74H25", buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:Canvas, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:202, width:440, height:220, childDescriptors:[new UIComponentDescriptor({type:HBox, stylesFactory:
function () : void
{
    this.horizontalGap = 5;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.verticalGap = 6;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg0", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg0", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label0", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn0", events:{click:"__dismantleBtn0_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn0", events:{click:"__addGemBtn0_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn0", events:{click:"__punchBtn0_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn0", events:{click:"__replaceBtn0_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn0", events:{click:"__removeBtn0_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg2", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg2", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label2", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn2", events:{click:"__dismantleBtn2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn2", events:{click:"__addGemBtn2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn2", events:{click:"__punchBtn2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn2", events:{click:"__replaceBtn2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn2", events:{click:"__removeBtn2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg4", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg4", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label4", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn4", events:{click:"__dismantleBtn4_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn4", events:{click:"__addGemBtn4_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn4", events:{click:"__punchBtn4_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn4", events:{click:"__replaceBtn4_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn4", events:{click:"__removeBtn4_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:CheckBox, id:"check1", events:{click:"__check1_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:11, styleName:"checkBoxAndRadioButton2", buttonMode:false};
}// end function
}), new UIComponentDescriptor({type:Image, propertiesFactory:
function () : Object
{
    return {x:47, source:_embed_mxml_images_comm_embed_bg_the_toy_png_1265170508};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_EquipmentEmbed_Image10", propertiesFactory:
function () : Object
{
    return {x:47, width:32, height:32, source:_embed_mxml_images_comm_embed_5108006_png_1744322286};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_EquipmentEmbed_Label4", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.fontWeight = "bold";
    this.textAlign = "center";
    this.fontSize = 12;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:85, y:1, width:120};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_EquipmentEmbed_Label5", stylesFactory:
function () : void
{
    this.color = 16777149;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:85, y:17, width:83};
}// end function
}), new UIComponentDescriptor({type:Label, id:"skyCount", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:147, y:17, width:65};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:VBox, stylesFactory:
function () : void
{
    this.verticalGap = 6;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg1", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg1", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label1", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn1", events:{click:"__dismantleBtn1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn1", events:{click:"__addGemBtn1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn1", events:{click:"__punchBtn1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn1", events:{click:"__replaceBtn1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn1", events:{click:"__removeBtn1_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg3", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg3", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label3", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn3", events:{click:"__dismantleBtn3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn3", events:{click:"__addGemBtn3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn3", events:{click:"__punchBtn3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn3", events:{click:"__replaceBtn3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn3", events:{click:"__removeBtn3_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {childDescriptors:[new UIComponentDescriptor({type:Image, id:"gemImg5", propertiesFactory:
function () : Object
{
    return {x:6, y:5, width:32, height:32};
}// end function
}), new UIComponentDescriptor({type:Image, id:"coverImg5", propertiesFactory:
function () : Object
{
    return {width:216, height:42, mouseEnabled:false};
}// end function
}), new UIComponentDescriptor({type:Label, id:"label5", stylesFactory:
function () : void
{
    this.fontWeight = "bold";
    this.color = 6931200;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:56, y:3, width:135};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"dismantleBtn5", events:{click:"__dismantleBtn5_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Dismantle Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"addGemBtn5", events:{click:"__addGemBtn5_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Add Gem)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"punchBtn5", events:{click:"__punchBtn5_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "22";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Create Socket)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"replaceBtn5", events:{click:"__replaceBtn5_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "-15";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Change)", styleName:"embedLinkBtn"};
}// end function
}), new UIComponentDescriptor({type:LinkButton, id:"removeBtn5", events:{click:"__removeBtn5_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "59";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {visible:false, y:17, label:"(Remove)", styleName:"embedLinkBtn"};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Canvas, propertiesFactory:
function () : Object
{
    return {verticalScrollPolicy:"off", horizontalScrollPolicy:"off", childDescriptors:[new UIComponentDescriptor({type:CheckBox, id:"check2", events:{click:"__check2_click"}, stylesFactory:
function () : void
{
    this.verticalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:11, styleName:"checkBoxAndRadioButton2", buttonMode:false};
}// end function
}), new UIComponentDescriptor({type:Image, propertiesFactory:
function () : Object
{
    return {x:47, source:_embed_mxml_images_comm_embed_bg_the_toy_png_1265170508};
}// end function
}), new UIComponentDescriptor({type:Image, id:"_EquipmentEmbed_Image18", propertiesFactory:
function () : Object
{
    return {x:47, width:32, height:32, source:_embed_mxml_images_comm_embed_5108007_png_1742474476};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_EquipmentEmbed_Label10", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.fontWeight = "bold";
    this.textAlign = "center";
    this.fontSize = 12;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:85, y:1, width:120};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_EquipmentEmbed_Label11", stylesFactory:
function () : void
{
    this.color = 16777149;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:85, y:17, width:83};
}// end function
}), new UIComponentDescriptor({type:Label, id:"thunderCount", stylesFactory:
function () : void
{
    this.color = 16776960;
    this.textAlign = "center";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {x:147, y:17, width:65};
}// end function
})]};
}// end function
})]};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Label, id:"_EquipmentEmbed_Label13", stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    this.color = 16777149;
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:194};
}// end function
})]};
}// end function
}), new UIComponentDescriptor({type:Button, id:"_EquipmentEmbed_Button2", events:{click:"___EquipmentEmbed_Button2_click"}, stylesFactory:
function () : void
{
    this.horizontalCenter = "0";
    return;
}// end function
, propertiesFactory:
function () : Object
{
    return {y:435, styleName:"blackBtnw167h37", buttonMode:true};
}// end function
}), new UIComponentDescriptor({type:SWFLoader, id:"hammer_toy1", propertiesFactory:
function () : Object
{
    return {x:76, y:337};
}// end function
}), new UIComponentDescriptor({type:SWFLoader, id:"hammer_toy2", propertiesFactory:
function () : Object
{
    return {x:297, y:337};
}// end function
}), new UIComponentDescriptor({type:SWFLoader, id:"toy", events:{creationComplete:"__toy_creationComplete"}, propertiesFactory:
function () : Object
{
    return {x:17, y:15, visible:false};
}// end function
})]};
}// end function
});
            this.itemList = CacheManager.getInstance().getCache(CacheType.PACKAGE_ITEMS) as CharacterItemList;
            this.slot1 = EquipmentEmbed_slot1;
            this.slot2 = EquipmentEmbed_slot2;
            this.slot3 = EquipmentEmbed_slot3;
            this.slot4 = EquipmentEmbed_slot4;
            this.skyHammerId = int(ConfigResource.getInstance().getGlobalConstStr("item.enchaseGem.hammer.itemId1"));
            this.thunderHammerId = int(ConfigResource.getInstance().getGlobalConstStr("item.enchaseGem.hammer.itemId2"));
            this.skyHammer = new CharacterLogicItem();
            this.thunderHammer = new CharacterLogicItem();
            this.posItemIds = {};
            this.gemLevel = {};
            this._embed_mxml_images_comm_embed_5108006_png_1744322286 = EquipmentEmbed__embed_mxml_images_comm_embed_5108006_png_1744322286;
            this._embed_mxml_images_comm_embed_5108007_png_1742474476 = EquipmentEmbed__embed_mxml_images_comm_embed_5108007_png_1742474476;
            this._embed_mxml_images_comm_embed_bg_the_toy_png_1265170508 = EquipmentEmbed__embed_mxml_images_comm_embed_bg_the_toy_png_1265170508;
            this._embed_mxml_images_comm_embed_new_metagem_bg_jpg_705321841 = EquipmentEmbed__embed_mxml_images_comm_embed_new_metagem_bg_jpg_705321841;
            this._bindings = [];
            this._watchers = [];
            this._bindingsByDestination = {};
            this._bindingsBeginWithWord = {};
            mx_internal::_document = this;
            this.width = 515;
            this.height = 490;
            this.showHelp = true;
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "off";
            this.addEventListener("removedFromStage", this.___EquipmentEmbed_TitleBorderCanvas1_removedFromStage);
            this.addEventListener("creationComplete", this.___EquipmentEmbed_TitleBorderCanvas1_creationComplete);
            return;
        }// end function

        public function set removeBtn5(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045437removeBtn5;
            if (_loc_2 !== param1)
            {
                this._1098045437removeBtn5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get removeBtn3() : LinkButton
        {
            return this._1098045435removeBtn3;
        }// end function

        public function set removeBtn2(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045434removeBtn2;
            if (_loc_2 !== param1)
            {
                this._1098045434removeBtn2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __toy_creationComplete(param1:FlexEvent) : void
        {
            this.creatSWFEffect(param1);
            return;
        }// end function

        public function set removeBtn4(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045436removeBtn4;
            if (_loc_2 !== param1)
            {
                this._1098045436removeBtn4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn4", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function skyHammerCount() : int
        {
            var _loc_3:CharacterLogicItem;
            var _loc_1:int;
            var _loc_2:int;
            while (_loc_2 < this.itemList.packageList.length)
            {
                // label
                _loc_3 = this.itemList.packageList[_loc_2];
                if (_loc_3.itemId == this.skyHammerId)
                {
                    _loc_1 = _loc_1 + _loc_3.count;
                }// end if
                _loc_2++;
            }// end while
            return _loc_1;
        }// end function

        private function openEquipWin() : void
        {
            if (!this.selectEquip)
            {
                this.selectEquip = new SelectItemWin();
            }// end if
            if (this.animationMC)
            {
                this.animationMC.play();
            }// end if
            this.selectEquip.addEventListener(SelectItemWinEvent.SELECTED_ITEM_EVENT, this.onSelectedEqu);
            this.equipItems = new ArrayCollection();
            this.equipItems.removeAll();
            var _loc_1:int;
            while (_loc_1 < this.itemList.equipList.length)
            {
                // label
                if ((this.itemList.equipList[_loc_1] as CharacterLogicItem).slotItemIds.length > 0)
                {
                    this.equipItems.addItem(this.itemList.equipList[_loc_1]);
                }// end if
                _loc_1++;
            }// end while
            this.equipItems.filterFunction = this.itemSubTypeFilter;
            this.equipItems.refresh();
            this.totalPage = ArrayCllectionUtil.countTotalPage(this.equipItems, this.pageSize);
            this.currentPage = this.totalPage == 0 ? (0) : (1);
            this.selectEquip.selectType = ItemType.EQUIPMENT;
            this.selectEquip.itemsUsed = this.equipItems.toArray();
            this.selectEquip.itemType = ItemType.EQUIPMENT;
            this.selectEquip.isShowCombox(false);
            LayerController.addWindowLayer(this.selectEquip, true);
            return;
        }// end function

        private function onAddReplace(param1:MouseEvent) : void
        {
            if (param1.currentTarget == this.replaceBtn0 || param1.currentTarget == this.addGemBtn0)
            {
                this.pos = 1;
            }
            else if (param1.currentTarget == this.replaceBtn1 || param1.currentTarget == this.addGemBtn1)
            {
                this.pos = 2;
            }
            else if (param1.currentTarget == this.replaceBtn2 || param1.currentTarget == this.addGemBtn2)
            {
                this.pos = 3;
            }
            else if (param1.currentTarget == this.replaceBtn3 || param1.currentTarget == this.addGemBtn3)
            {
                this.pos = 4;
            }
            else if (param1.currentTarget == this.replaceBtn4 || param1.currentTarget == this.addGemBtn4)
            {
                this.pos = 5;
            }
            else if (param1.currentTarget == this.replaceBtn5 || param1.currentTarget == this.addGemBtn5)
            {
                this.pos = 5;
            }// end else if
            if (!this.selectGemPop)
            {
                this.selectGemPop = new SelectItemWin();
                this.selectGemPop.addEventListener(SelectItemWinEvent.SELECTED_ITEM_EVENT, this.onSelectedGem);
            }// end if
            this.selectGemPop.itemsUsed = this.getUsedItems();
            this.selectGemPop.itemType = ItemType.JEWEL;
            LayerController.addWindowLayer(this.selectGemPop, true);
            this.selectEquip.isShowCombox(false);
            this.showHammerCount();
            return;
        }// end function

        public function __punchBtn1_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        public function __addGemBtn3_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function __replaceBtn1_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function ___EquipmentEmbed_TitleBorderCanvas1_creationComplete(param1:FlexEvent) : void
        {
            this.onComplete();
            return;
        }// end function

        public function get removeBtn4() : LinkButton
        {
            return this._1098045436removeBtn4;
        }// end function

        public function set removeBtn3(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045435removeBtn3;
            if (_loc_2 !== param1)
            {
                this._1098045435removeBtn3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __removeBtn3_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        public function get replaceBtn0() : LinkButton
        {
            return this._429652520replaceBtn0;
        }// end function

        private function creatSWFEffect(param1:Event) : void
        {
            this.animation = this.toy.content as MovieClip;
            return;
        }// end function

        public function get replaceBtn3() : LinkButton
        {
            return this._429652523replaceBtn3;
        }// end function

        public function get replaceBtn4() : LinkButton
        {
            return this._429652524replaceBtn4;
        }// end function

        public function get replaceBtn5() : LinkButton
        {
            return this._429652525replaceBtn5;
        }// end function

        public function get check1() : CheckBox
        {
            return this._1361527767check1;
        }// end function

        public function get check2() : CheckBox
        {
            return this._1361527766check2;
        }// end function

        public function get removeBtn5() : LinkButton
        {
            return this._1098045437removeBtn5;
        }// end function

        private function addIdInList(param1:Array) : void
        {
            this._equItemIdList = [];
            var _loc_2:int;
            while (_loc_2 < param1.length)
            {
                // label
                this._equItemIdList.push((param1[_loc_2] as CharacterLogicItem).itemId);
                _loc_2++;
            }// end while
            return;
        }// end function

        private function onComplete() : void
        {
            this.skyHammer.initById(this.skyHammerId);
            this.thunderHammer.initById(this.thunderHammerId);
            return;
        }// end function

        public function get replaceBtn2() : LinkButton
        {
            return this._429652522replaceBtn2;
        }// end function

        private function onEmbed() : void
        {
            var _loc_2:int;
            var _loc_3:EmbedEvent;
            if (this.equImg.data == null)
            {
                return;
            }// end if
            this.addIdInList((this.equImg.data as CharacterLogicItem).slotItemIds);
            var _loc_1:Boolean;
            for each (_loc_2 in this.posItemIds)
            {
                // label
                _loc_1 = true;
                break;
            }// end of for each ... in
            if (_loc_1)
            {
                if (this.check1.selected)
                {
                    if (!this.isSkyCountEnough)
                    {
                        MyAlert.show(Lang.msg("??????"));
                        return;
                    }// end if
                }// end if
                if (this.check2.selected)
                {
                    if (!this.isThunderCountEnough)
                    {
                        MyAlert.show(Lang.msg("??????"));
                        return;
                    }// end if
                }// end if
                _loc_3 = new EmbedEvent(EmbedEvent.EMBED_GEM_EVENT, true);
                _loc_3.hammerType = this.getHammerType();
                _loc_3.data = {characterItemId:this.targetData.id, posItemIds:this.posItemIds};
                dispatchEvent(_loc_3);
                this.posItemIds = {};
                this.gemLevel = {};
                if (this.check1 || this.check2)
                {
                    this.toy.visible = true;
                    if (this.animation)
                    {
                        this.animation.play();
                    }// end if
                    this.toy.addEventListener("completeEvent", this.completeHandle);
                }// end if
            }// end if
            return;
        }// end function

        private function setGemItem(param1:int, param2:int) : void
        {
            var _loc_3:CharacterLogicItem;
            if (param1 == -1)
            {
                this["coverImg" + param2].source = this["slot" + 3];
                this["gemImg" + param2].source = null;
                this["gemImg" + param2].data = null;
                this["dismantleBtn" + param2].visible = false;
                this["punchBtn" + param2].visible = true;
                this["addGemBtn" + param2].visible = false;
                this["replaceBtn" + param2].visible = false;
                this["removeBtn" + param2].visible = false;
                this["label" + param2].visible = true;
                this["label" + param2].text = "No Socket";
                this["label" + param2].setStyle("color", "#6F6E6A");
                this["label" + param2].setStyle("fontWeight", "normal");
            }
            else if (param1 == 0)
            {
                this["coverImg" + param2].source = this["slot" + 2];
                this["gemImg" + param2].source = null;
                this["gemImg" + param2].data = null;
                this["dismantleBtn" + param2].visible = false;
                this["punchBtn" + param2].visible = false;
                this["addGemBtn" + param2].visible = true;
                this["replaceBtn" + param2].visible = false;
                this["removeBtn" + param2].visible = false;
                this["label" + param2].visible = true;
                this["label" + param2].text = "Socket " + (param2 + 1);
                this["label" + param2].setStyle("color", "#FFFF00");
                this["label" + param2].setStyle("fontWeight", "bold");
            }
            else if (param1 > 0)
            {
                this["coverImg" + param2].source = this["slot" + 1];
                _loc_3 = new CharacterLogicItem();
                _loc_3.initById(param1);
                this["gemImg" + param2].data = _loc_3;
                this["gemImg" + param2].source = ImageResource.getInstance().getItemImageURL(_loc_3.photoId);
                this["dismantleBtn" + param2].visible = true;
                this["punchBtn" + param2].visible = false;
                this["addGemBtn" + param2].visible = false;
                this["replaceBtn" + param2].visible = false;
                this["removeBtn" + param2].visible = false;
                this["label" + param2].visible = true;
                this["label" + param2].text = _loc_3.name;
                this["label" + param2].setStyle("color", ColorConfig.getItemColor(_loc_3.color));
                this["label" + param2].setStyle("fontWeight", "bold");
            }
            else
            {
                this["coverImg" + param2].source = this["slot" + 4];
                this["gemImg" + param2].source = null;
                this["gemImg" + param2].data = null;
                this["dismantleBtn" + param2].visible = false;
                this["punchBtn" + param2].visible = false;
                this["addGemBtn" + param2].visible = false;
                this["replaceBtn" + param2].visible = false;
                this["removeBtn" + param2].visible = false;
                this["label" + param2].visible = false;
            }// end else if
            return;
        }// end function

        public function get replaceBtn1() : LinkButton
        {
            return this._429652521replaceBtn1;
        }// end function

        private function onDismantle(param1:MouseEvent) : void
        {
            var pos:int;
            var event:* = param1;
            this.addIdInList((this.equImg.data as CharacterLogicItem).slotItemIds);
            pos;
            if (event.currentTarget == this.dismantleBtn0)
            {
                pos;
            }
            else if (event.currentTarget == this.dismantleBtn1)
            {
                pos;
            }
            else if (event.currentTarget == this.dismantleBtn2)
            {
                pos;
            }
            else if (event.currentTarget == this.dismantleBtn3)
            {
                pos;
            }
            else if (event.currentTarget == this.dismantleBtn4)
            {
                pos;
            }
            else if (event.currentTarget == this.dismantleBtn5)
            {
                pos;
            }// end else if
            MyAlert.show(Lang.msg("????????"), "", MyAlert.CONFIRM | MyAlert.CANCEL, null, 
function (param1:CloseEvent)
{
    var _loc_2:EmbedEvent;
    if (param1.detail == MyAlert.CONFIRM)
    {
        _loc_2 = new EmbedEvent(EmbedEvent.REMOVE_GEM_EVENT, true);
        _loc_2.data = {characterItemId:targetData.id, pos:pos};
        dispatchEvent(_loc_2);
    }// end if
    return;
}// end function
);
            this.showHammerCount();
            return;
        }// end function

        private function selectCheck1() : void
        {
            this.check2.selected = false;
            return;
        }// end function

        private function selectCheck2() : void
        {
            this.check1.selected = false;
            return;
        }// end function

        private function get totalPage() : int
        {
            return this._577409037totalPage;
        }// end function

        public function set coverImg0(param1:Image) : void
        {
            var _loc_2:* = this._1979413796coverImg0;
            if (_loc_2 !== param1)
            {
                this._1979413796coverImg0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __dismantleBtn4_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        public function __addGemBtn0_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function set coverImg2(param1:Image) : void
        {
            var _loc_2:* = this._1979413798coverImg2;
            if (_loc_2 !== param1)
            {
                this._1979413798coverImg2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set coverImg3(param1:Image) : void
        {
            var _loc_2:* = this._1979413799coverImg3;
            if (_loc_2 !== param1)
            {
                this._1979413799coverImg3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set coverImg4(param1:Image) : void
        {
            var _loc_2:* = this._1979413800coverImg4;
            if (_loc_2 !== param1)
            {
                this._1979413800coverImg4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get dismantleBtn0() : LinkButton
        {
            return this._1073123243dismantleBtn0;
        }// end function

        public function get dismantleBtn1() : LinkButton
        {
            return this._1073123242dismantleBtn1;
        }// end function

        public function get dismantleBtn2() : LinkButton
        {
            return this._1073123241dismantleBtn2;
        }// end function

        public function get dismantleBtn3() : LinkButton
        {
            return this._1073123240dismantleBtn3;
        }// end function

        public function set check1(param1:CheckBox) : void
        {
            var _loc_2:* = this._1361527767check1;
            if (_loc_2 !== param1)
            {
                this._1361527767check1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "check1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get dismantleBtn5() : LinkButton
        {
            return this._1073123238dismantleBtn5;
        }// end function

        public function set check2(param1:CheckBox) : void
        {
            var _loc_2:* = this._1361527766check2;
            if (_loc_2 !== param1)
            {
                this._1361527766check2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "check2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get punchBtn0() : LinkButton
        {
            return this._1047487582punchBtn0;
        }// end function

        public function __removeBtn0_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        public function set replaceBtn2(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652522replaceBtn2;
            if (_loc_2 !== param1)
            {
                this._429652522replaceBtn2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get dismantleBtn4() : LinkButton
        {
            return this._1073123239dismantleBtn4;
        }// end function

        public function set replaceBtn5(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652525replaceBtn5;
            if (_loc_2 !== param1)
            {
                this._429652525replaceBtn5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set coverImg5(param1:Image) : void
        {
            var _loc_2:* = this._1979413801coverImg5;
            if (_loc_2 !== param1)
            {
                this._1979413801coverImg5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg5", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function thunderHammerCount() : int
        {
            var _loc_3:CharacterLogicItem;
            var _loc_1:int;
            var _loc_2:int;
            while (_loc_2 < this.itemList.packageList.length)
            {
                // label
                _loc_3 = this.itemList.packageList[_loc_2];
                if (_loc_3.itemId == this.thunderHammerId)
                {
                    _loc_1 = _loc_1 + _loc_3.count;
                }// end if
                _loc_2++;
            }// end while
            return _loc_1;
        }// end function

        public function get hammer_toy2() : SWFLoader
        {
            return this._261018733hammer_toy2;
        }// end function

        public function reFreshItem(param1:CharacterLogicItem) : void
        {
            this.targetData = param1;
            this.setEmbedInfo(this.targetData);
            this.showHammerCount();
            return;
        }// end function

        public function set replaceBtn4(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652524replaceBtn4;
            if (_loc_2 !== param1)
            {
                this._429652524replaceBtn4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get hammer_toy1() : SWFLoader
        {
            return this._261018732hammer_toy1;
        }// end function

        public function ___EquipmentEmbed_Button2_click(param1:MouseEvent) : void
        {
            this.onEmbed();
            return;
        }// end function

        public function get skyCount() : Label
        {
            return this._1732202386skyCount;
        }// end function

        public function set coverImg1(param1:Image) : void
        {
            var _loc_2:* = this._1979413797coverImg1;
            if (_loc_2 !== param1)
            {
                this._1979413797coverImg1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "coverImg1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set replaceBtn3(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652523replaceBtn3;
            if (_loc_2 !== param1)
            {
                this._429652523replaceBtn3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn3", _loc_2, param1));
            }// end if
            return;
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

        private function isSameGem(param1:CharacterLogicItem) : Boolean
        {
            var _loc_2:Boolean;
            var _loc_3:int;
            while (_loc_3 < 6)
            {
                // label
                if (this["gemImg" + _loc_3].data && this["gemImg" + _loc_3].data.subType == param1.subType)
                {
                    _loc_2 = true;
                    return _loc_2;
                }// end if
                _loc_3++;
            }// end while
            return _loc_2;
        }// end function

        public function __dismantleBtn1_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        public function set replaceBtn1(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652521replaceBtn1;
            if (_loc_2 !== param1)
            {
                this._429652521replaceBtn1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get thunderCount() : Label
        {
            return this._1919438197thunderCount;
        }// end function

        public function __addGemBtn5_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function __punchBtn3_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        private function onPunch(param1:MouseEvent) : void
        {
            var pos:int;
            var event:* = param1;
            pos;
            if (event.currentTarget == this.punchBtn0)
            {
                pos;
            }
            else if (event.currentTarget == this.punchBtn1)
            {
                pos;
            }
            else if (event.currentTarget == this.punchBtn2)
            {
                pos;
            }
            else if (event.currentTarget == this.punchBtn3)
            {
                pos;
            }
            else if (event.currentTarget == this.punchBtn4)
            {
                pos;
            }
            else if (event.currentTarget == this.punchBtn5)
            {
                pos;
            }// end else if
            var targetDataCount:* = ConfigResource.getInstance().getItem(this.targetData.itemId).slotCount;
            var count:* = this.targetData.slotCount - targetDataCount;
            MyAlert.show(Lang.msg("??????").replace(/{!value}/gi, this.goldCount(count)), "", MyAlert.CONFIRM | MyAlert.CANCEL, null, 
function (param1:CloseEvent)
{
    var _loc_2:EmbedEvent;
    if (param1.detail == MyAlert.CONFIRM)
    {
        _loc_2 = new EmbedEvent(EmbedEvent.PUNCH_HOLE_EVENT, true);
        _loc_2.data = {characterItemId:targetData.id, pos:pos};
        dispatchEvent(_loc_2);
    }// end if
    return;
}// end function
);
            this.showHammerCount();
            return;
        }// end function

        public function set replaceBtn0(param1:LinkButton) : void
        {
            var _loc_2:* = this._429652520replaceBtn0;
            if (_loc_2 !== param1)
            {
                this._429652520replaceBtn0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "replaceBtn0", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function goldCount(param1:int) : int
        {
            var _loc_2:int;
            switch(param1)
            {
                case 0:
                {
                    _loc_2 = 10;
                    break;
                }// end case
                case 1:
                {
                    _loc_2 = 25;
                    break;
                }// end case
                case 2:
                {
                    _loc_2 = 50;
                    break;
                }// end case
                case 3:
                {
                    _loc_2 = 100;
                    break;
                }// end case
                case 4:
                {
                    _loc_2 = 250;
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            return _loc_2;
        }// end function

        public function set dismantleBtn0(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123243dismantleBtn0;
            if (_loc_2 !== param1)
            {
                this._1073123243dismantleBtn0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set dismantleBtn2(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123241dismantleBtn2;
            if (_loc_2 !== param1)
            {
                this._1073123241dismantleBtn2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set dismantleBtn3(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123240dismantleBtn3;
            if (_loc_2 !== param1)
            {
                this._1073123240dismantleBtn3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set dismantleBtn4(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123239dismantleBtn4;
            if (_loc_2 !== param1)
            {
                this._1073123239dismantleBtn4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn4", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function showHammerCount() : void
        {
            var _loc_2:CharacterLogicItem;
            var _loc_3:int;
            var _loc_1:int;
            for each (_loc_2 in this.gemLevel)
            {
                // label
                _loc_3 = _loc_2.color + 1;
                _loc_1 = _loc_1 + this.hammerCountByGemLevel(_loc_3);
            }// end of for each ... in
            if (_loc_1 > this.skyHammerCount())
            {
                this.skyCount.htmlText = "<font color = \'#ff0000\'>" + _loc_1 + "/" + this.skyHammerCount() + "</font>";
                this.isSkyCountEnough = false;
            }
            else if (_loc_1 <= this.skyHammerCount())
            {
                this.skyCount.htmlText = "<font color = \'#FFFF00\'>" + _loc_1 + "/" + this.skyHammerCount() + "</font>";
                this.isSkyCountEnough = true;
            }// end else if
            if (_loc_1 > this.thunderHammerCount())
            {
                this.thunderCount.htmlText = "<font color = \'#ff0000\'>" + _loc_1 + "/" + this.thunderHammerCount() + "</font>";
                this.isThunderCountEnough = false;
            }
            else if (_loc_1 <= this.thunderHammerCount())
            {
                this.thunderCount.htmlText = "<font color = \'#FFFF00\'>" + _loc_1 + "/" + this.thunderHammerCount() + "</font>";
                this.isThunderCountEnough = true;
            }// end else if
            return;
        }// end function

        public function set dismantleBtn5(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123238dismantleBtn5;
            if (_loc_2 !== param1)
            {
                this._1073123238dismantleBtn5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __removeBtn5_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        public function set dismantleBtn1(param1:LinkButton) : void
        {
            var _loc_2:* = this._1073123242dismantleBtn1;
            if (_loc_2 !== param1)
            {
                this._1073123242dismantleBtn1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "dismantleBtn1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get gemImg0() : Image
        {
            return this._81910596gemImg0;
        }// end function

        public function get gemImg3() : Image
        {
            return this._81910593gemImg3;
        }// end function

        public function set toy(param1:SWFLoader) : void
        {
            var _loc_2:* = this._115038toy;
            if (_loc_2 !== param1)
            {
                this._115038toy = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "toy", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get gemImg2() : Image
        {
            return this._81910594gemImg2;
        }// end function

        public function get gemImg4() : Image
        {
            return this._81910592gemImg4;
        }// end function

        private function completeHandle(param1:Event) : void
        {
            this.toy.visible = false;
            return;
        }// end function

        public function __punchBtn0_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        public function __addGemBtn2_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function set addGemBtn5(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122087addGemBtn5;
            if (_loc_2 !== param1)
            {
                this._1826122087addGemBtn5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get gemImg5() : Image
        {
            return this._81910591gemImg5;
        }// end function

        public function get equItemList() : Array
        {
            return this._equItemIdList;
        }// end function

        public function set addGemBtn0(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122082addGemBtn0;
            if (_loc_2 !== param1)
            {
                this._1826122082addGemBtn0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set addGemBtn1(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122083addGemBtn1;
            if (_loc_2 !== param1)
            {
                this._1826122083addGemBtn1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set addGemBtn2(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122084addGemBtn2;
            if (_loc_2 !== param1)
            {
                this._1826122084addGemBtn2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __replaceBtn3_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function set skyCount(param1:Label) : void
        {
            var _loc_2:* = this._1732202386skyCount;
            if (_loc_2 !== param1)
            {
                this._1732202386skyCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "skyCount", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set addGemBtn3(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122085addGemBtn3;
            if (_loc_2 !== param1)
            {
                this._1826122085addGemBtn3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __removeBtn2_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        private function setEmbedInfo(param1:CharacterLogicItem) : void
        {
            var _loc_3:int;
            this.posItemIds = {};
            this.gemLevel = {};
            if (!param1)
            {
                this.equImg.source = null;
                this.equImg.toolTip = null;
                _loc_3 = 0;
                while (_loc_3 < 6)
                {
                    // label
                    this.setGemItem(-2, _loc_3);
                    _loc_3++;
                }// end while
                return;
            }// end if
            this.equImg.source = ImageResource.getInstance().getItemImageURL(param1.photoId);
            this.equImg.toolTip = ItemToolTipFormat.getToolTipDesc(param1);
            var _loc_2:* = param1.slotItemIds;
            if (_loc_2 == null || _loc_2.length == 0)
            {
                _loc_3 = 0;
                while (_loc_3 < 6)
                {
                    // label
                    this.setGemItem(-2, _loc_3);
                    _loc_3++;
                }// end while
                return;
            }// end if
            _loc_3 = 0;
            while (_loc_3 < 6)
            {
                // label
                if (_loc_3 < _loc_2.length)
                {
                    if (_loc_2[_loc_3].hasOwnProperty("itemId"))
                    {
                        this.setGemItem(_loc_2[_loc_3].itemId, _loc_3);
                    }
                    else
                    {
                        this.setGemItem(-2, _loc_3);
                    }// end else if
                }
                else
                {
                    this.setGemItem(-2, _loc_3);
                }// end else if
                _loc_3++;
            }// end while
            return;
        }// end function

        public function __replaceBtn0_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function set addGemBtn4(param1:LinkButton) : void
        {
            var _loc_2:* = this._1826122086addGemBtn4;
            if (_loc_2 !== param1)
            {
                this._1826122086addGemBtn4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "addGemBtn4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set hammer_toy2(param1:SWFLoader) : void
        {
            var _loc_2:* = this._261018733hammer_toy2;
            if (_loc_2 !== param1)
            {
                this._261018733hammer_toy2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hammer_toy2", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onRemovedFromStage() : void
        {
            UIManager.instance.removeView(this.ViewLevel);
            return;
        }// end function

        public function __dismantleBtn3_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        public function get gemImg1() : Image
        {
            return this._81910595gemImg1;
        }// end function

        public function init() : void
        {
            this.equImg.source = null;
            this.reFreshItem(null);
            this.check1.selected = false;
            this.check2.selected = false;
            this.skyCount.htmlText = "0/" + this.skyHammerCount();
            this.thunderCount.htmlText = "0/" + this.thunderHammerCount();
            return;
        }// end function

        private function getHammerType() : int
        {
            var _loc_1:int;
            if (this.check1.selected)
            {
                _loc_1 = 1;
            }
            else if (this.check2.selected)
            {
                _loc_1 = 2;
            }
            else
            {
                _loc_1 = 0;
            }// end else if
            return _loc_1;
        }// end function

        public function __replaceBtn5_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function __punchBtn5_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        public function __check2_click(param1:MouseEvent) : void
        {
            this.selectCheck2();
            return;
        }// end function

        public function get coverImg0() : Image
        {
            return this._1979413796coverImg0;
        }// end function

        public function get coverImg1() : Image
        {
            return this._1979413797coverImg1;
        }// end function

        public function get coverImg3() : Image
        {
            return this._1979413799coverImg3;
        }// end function

        public function get coverImg5() : Image
        {
            return this._1979413801coverImg5;
        }// end function

        public function set thunderCount(param1:Label) : void
        {
            var _loc_2:* = this._1919438197thunderCount;
            if (_loc_2 !== param1)
            {
                this._1919438197thunderCount = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "thunderCount", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function ___EquipmentEmbed_Button1_click(param1:MouseEvent) : void
        {
            this.openEquipWin();
            return;
        }// end function

        public function get coverImg2() : Image
        {
            return this._1979413798coverImg2;
        }// end function

        public function get coverImg4() : Image
        {
            return this._1979413800coverImg4;
        }// end function

        public function __dismantleBtn0_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        private function _EquipmentEmbed_bindingsSetup() : Array
        {
            var binding:Binding;
            var result:Array;
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
    this.title = param1;
    return;
}// end function
, "this.title");
            result[0] = binding;
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
    _EquipmentEmbed_Button1.label = param1;
    return;
}// end function
, "_EquipmentEmbed_Button1.label");
            result[1] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg0.data, equImg.data, 0);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg0.toolTip = param1;
    return;
}// end function
, "gemImg0.toolTip");
            result[2] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg0.source = param1;
    return;
}// end function
, "coverImg0.source");
            result[3] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg2.data, equImg.data, 2);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg2.toolTip = param1;
    return;
}// end function
, "gemImg2.toolTip");
            result[4] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg2.source = param1;
    return;
}// end function
, "coverImg2.source");
            result[5] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg4.data, equImg.data, 4);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg4.toolTip = param1;
    return;
}// end function
, "gemImg4.toolTip");
            result[6] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg4.source = param1;
    return;
}// end function
, "coverImg4.source");
            result[7] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Image10.toolTip = param1;
    return;
}// end function
, "_EquipmentEmbed_Image10.toolTip");
            result[8] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = ConfigResource.getInstance().getItemName(skyHammerId);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Label4.text = param1;
    return;
}// end function
, "_EquipmentEmbed_Label4.text");
            result[9] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Label5.text = param1;
    return;
}// end function
, "_EquipmentEmbed_Label5.text");
            result[10] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = "0/" + skyHammerCount();
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    skyCount.htmlText = param1;
    return;
}// end function
, "skyCount.htmlText");
            result[11] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg1.data, equImg.data, 1);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg1.toolTip = param1;
    return;
}// end function
, "gemImg1.toolTip");
            result[12] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg1.source = param1;
    return;
}// end function
, "coverImg1.source");
            result[13] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg3.data, equImg.data, 3);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg3.toolTip = param1;
    return;
}// end function
, "gemImg3.toolTip");
            result[14] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg3.source = param1;
    return;
}// end function
, "coverImg3.source");
            result[15] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = EmbedGemToolTip.gemToolTip(gemImg5.data, equImg.data, 5);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    gemImg5.toolTip = param1;
    return;
}// end function
, "gemImg5.toolTip");
            result[16] = binding;
            binding = new Binding(this, 
function () : Object
{
    return slot4;
}// end function
, 
function (param1:Object) : void
{
    coverImg5.source = param1;
    return;
}// end function
, "coverImg5.source");
            result[17] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Image18.toolTip = param1;
    return;
}// end function
, "_EquipmentEmbed_Image18.toolTip");
            result[18] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = ConfigResource.getInstance().getItemName(thunderHammerId);
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Label10.text = param1;
    return;
}// end function
, "_EquipmentEmbed_Label10.text");
            result[19] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??") + ":";
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Label11.text = param1;
    return;
}// end function
, "_EquipmentEmbed_Label11.text");
            result[20] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = "0/" + thunderHammerCount();
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    thunderCount.htmlText = param1;
    return;
}// end function
, "thunderCount.htmlText");
            result[21] = binding;
            binding = new Binding(this, 
function () : String
{
    var _loc_1:* = Lang.msg("??????");
    var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
    return _loc_2;
}// end function
, 
function (param1:String) : void
{
    _EquipmentEmbed_Label13.text = param1;
    return;
}// end function
, "_EquipmentEmbed_Label13.text");
            result[22] = binding;
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
    _EquipmentEmbed_Button2.label = param1;
    return;
}// end function
, "_EquipmentEmbed_Button2.label");
            result[23] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getCompositeEffectURL("hammer_toy");
}// end function
, 
function (param1:Object) : void
{
    hammer_toy1.source = param1;
    return;
}// end function
, "hammer_toy1.source");
            result[24] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return check1.selected;
}// end function
, 
function (param1:Boolean) : void
{
    hammer_toy1.visible = param1;
    return;
}// end function
, "hammer_toy1.visible");
            result[25] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getCompositeEffectURL("hammer_toy");
}// end function
, 
function (param1:Object) : void
{
    hammer_toy2.source = param1;
    return;
}// end function
, "hammer_toy2.source");
            result[26] = binding;
            binding = new Binding(this, 
function () : Boolean
{
    return check2.selected;
}// end function
, 
function (param1:Boolean) : void
{
    hammer_toy2.visible = param1;
    return;
}// end function
, "hammer_toy2.visible");
            result[27] = binding;
            binding = new Binding(this, 
function () : Object
{
    return ImageResource.getInstance().getCompositeEffectURL("toy");
}// end function
, 
function (param1:Object) : void
{
    toy.source = param1;
    return;
}// end function
, "toy.source");
            result[28] = binding;
            return result;
        }// end function

        private function onRemove(param1:MouseEvent) : void
        {
            var _loc_3:Image;
            var _loc_2:int;
            if (param1.currentTarget == this.removeBtn0)
            {
                _loc_2 = 1;
            }
            else if (param1.currentTarget == this.removeBtn1)
            {
                _loc_2 = 2;
            }
            else if (param1.currentTarget == this.removeBtn2)
            {
                _loc_2 = 3;
            }
            else if (param1.currentTarget == this.removeBtn3)
            {
                _loc_2 = 4;
            }
            else if (param1.currentTarget == this.removeBtn4)
            {
                _loc_2 = 5;
            }
            else if (param1.currentTarget == this.removeBtn5)
            {
                _loc_2 = 6;
            }// end else if
            if (this.posItemIds.hasOwnProperty(_loc_2.toString()))
            {
                delete this.posItemIds[_loc_2];
                delete this.gemLevel[_loc_2];
            }// end if
            if (this.hasOwnProperty("gemImg" + _loc_2--))
            {
                _loc_3 = this["gemImg" + _loc_2--] as Image;
            }// end if
            if (!_loc_3)
            {
                return;
            }// end if
            this["addGemBtn" + _loc_2--].visible = true;
            this["replaceBtn" + _loc_2--].visible = false;
            this["removeBtn" + _loc_2--].visible = false;
            _loc_3.source = null;
            _loc_3.data = null;
            this.showHammerCount();
            return;
        }// end function

        private function getUsedItems() : Array
        {
            var _loc_2:Object;
            var _loc_1:* = new Array();
            for each (_loc_2 in this.posItemIds)
            {
                // label
                _loc_1.push(_loc_2);
            }// end of for each ... in
            return _loc_1;
        }// end function

        private function onSelectedEqu(param1:SelectItemWinEvent) : void
        {
            param1.stopImmediatePropagation();
            this.targetData = param1.data as CharacterLogicItem;
            this.setEmbedInfo(this.targetData);
            var _loc_2:* = param1.data as CharacterLogicItem;
            this.equImg.source = ImageResource.getInstance().getItemImageURL(_loc_2.photoId);
            this.equImg.data = _loc_2;
            this.addIdInList(_loc_2.slotItemIds);
            return;
        }// end function

        public function set punchBtn3(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487579punchBtn3;
            if (_loc_2 !== param1)
            {
                this._1047487579punchBtn3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __punchBtn2_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        private function onSelectedGem(param1:SelectItemWinEvent) : void
        {
            var _loc_3:Image;
            var _loc_2:* = param1.data as CharacterLogicItem;
            if (param1.gemCount == 0)
            {
                MyAlert.show(Lang.msg("????????"));
                return;
            }// end if
            if (_loc_2.gemEquipLevel > this.targetData.level)
            {
                MyAlert.show(Lang.msg("????????,???????!"));
                return;
            }// end if
            if (this.isSameGem(_loc_2))
            {
                MyAlert.show(Lang.msg("???????"));
                return;
            }// end if
            LayerController.removePopup(this.selectGemPop);
            if (this.hasOwnProperty("gemImg" + this.pos--))
            {
                _loc_3 = this["gemImg" + this.pos--] as Image;
            }// end if
            if (!_loc_3)
            {
                return;
            }// end if
            this["addGemBtn" + this.pos--].visible = false;
            this["replaceBtn" + this.pos--].visible = true;
            this["removeBtn" + this.pos--].visible = true;
            _loc_3.source = ImageResource.getInstance().getItemImageURL(_loc_2.photoId);
            _loc_3.data = _loc_2;
            this.posItemIds[this.pos] = _loc_2.id;
            this.gemLevel[this.pos] = _loc_2;
            this.showHammerCount();
            return;
        }// end function

        public function __addGemBtn4_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function __replaceBtn2_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function set punchBtn4(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487578punchBtn4;
            if (_loc_2 !== param1)
            {
                this._1047487578punchBtn4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set hammer_toy1(param1:SWFLoader) : void
        {
            var _loc_2:* = this._261018732hammer_toy1;
            if (_loc_2 !== param1)
            {
                this._261018732hammer_toy1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hammer_toy1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set punchBtn1(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487581punchBtn1;
            if (_loc_2 !== param1)
            {
                this._1047487581punchBtn1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set punchBtn2(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487580punchBtn2;
            if (_loc_2 !== param1)
            {
                this._1047487580punchBtn2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __removeBtn4_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        private function itemSubTypeFilter(param1:Object) : Boolean
        {
            if (!this.slotablFilter(param1))
            {
                return false;
            }// end if
            return true;
        }// end function

        public function get addGemBtn5() : LinkButton
        {
            return this._1826122087addGemBtn5;
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

        public function get addGemBtn0() : LinkButton
        {
            return this._1826122082addGemBtn0;
        }// end function

        public function get addGemBtn1() : LinkButton
        {
            return this._1826122083addGemBtn1;
        }// end function

        public function get addGemBtn2() : LinkButton
        {
            return this._1826122084addGemBtn2;
        }// end function

        public function get addGemBtn4() : LinkButton
        {
            return this._1826122086addGemBtn4;
        }// end function

        public function set punchBtn0(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487582punchBtn0;
            if (_loc_2 !== param1)
            {
                this._1047487582punchBtn0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get addGemBtn3() : LinkButton
        {
            return this._1826122085addGemBtn3;
        }// end function

        public function set gemImg0(param1:Image) : void
        {
            var _loc_2:* = this._81910596gemImg0;
            if (_loc_2 !== param1)
            {
                this._81910596gemImg0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set gemImg2(param1:Image) : void
        {
            var _loc_2:* = this._81910594gemImg2;
            if (_loc_2 !== param1)
            {
                this._81910594gemImg2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set gemImg1(param1:Image) : void
        {
            var _loc_2:* = this._81910595gemImg1;
            if (_loc_2 !== param1)
            {
                this._81910595gemImg1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set gemImg5(param1:Image) : void
        {
            var _loc_2:* = this._81910591gemImg5;
            if (_loc_2 !== param1)
            {
                this._81910591gemImg5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function __dismantleBtn5_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        public function set gemImg4(param1:Image) : void
        {
            var _loc_2:* = this._81910592gemImg4;
            if (_loc_2 !== param1)
            {
                this._81910592gemImg4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg4", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set label1(param1:Label) : void
        {
            var _loc_2:* = this._1110417475label1;
            if (_loc_2 !== param1)
            {
                this._1110417475label1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set label4(param1:Label) : void
        {
            var _loc_2:* = this._1110417472label4;
            if (_loc_2 !== param1)
            {
                this._1110417472label4 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label4", _loc_2, param1));
            }// end if
            return;
        }// end function

        override public function initialize() : void
        {
            var target:EquipmentEmbed;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(this._documentDescriptor_);
            var bindings:* = this._EquipmentEmbed_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null)
            {
                watcherSetupUtilClass = getDefinitionByName("_modules_embed_EquipmentEmbedWatcherSetupUtil");
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

        public function set label5(param1:Label) : void
        {
            var _loc_2:* = this._1110417471label5;
            if (_loc_2 !== param1)
            {
                this._1110417471label5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set label0(param1:Label) : void
        {
            var _loc_2:* = this._1110417476label0;
            if (_loc_2 !== param1)
            {
                this._1110417476label0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set equImg(param1:Image) : void
        {
            var _loc_2:* = this._1295505990equImg;
            if (_loc_2 !== param1)
            {
                this._1295505990equImg = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "equImg", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function onAddedToStage() : void
        {
            UIManager.instance.changeView(this.ViewLevel, this.ViewName);
            this.equipItems = new ArrayCollection();
            var _loc_1:int;
            while (_loc_1 < this.itemList.equipList.length)
            {
                // label
                if ((this.itemList.equipList[_loc_1] as CharacterLogicItem).slotItemIds.length > 0)
                {
                    this.equipItems.addItem(this.itemList.equipList[_loc_1]);
                }// end if
                _loc_1++;
            }// end while
            this.equipItems.filterFunction = this.itemSubTypeFilter;
            this.equipItems.refresh();
            this.totalPage = ArrayCllectionUtil.countTotalPage(this.equipItems, this.pageSize);
            this.currentPage = this.totalPage == 0 ? (0) : (1);
            return;
        }// end function

        public function get punchBtn1() : LinkButton
        {
            return this._1047487581punchBtn1;
        }// end function

        public function __addGemBtn1_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        private function get currentPage() : int
        {
            return this._601108392currentPage;
        }// end function

        public function __removeBtn1_click(param1:MouseEvent) : void
        {
            this.onRemove(param1);
            return;
        }// end function

        public function set gemImg3(param1:Image) : void
        {
            var _loc_2:* = this._81910593gemImg3;
            if (_loc_2 !== param1)
            {
                this._81910593gemImg3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gemImg3", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get punchBtn3() : LinkButton
        {
            return this._1047487579punchBtn3;
        }// end function

        public function get punchBtn4() : LinkButton
        {
            return this._1047487578punchBtn4;
        }// end function

        public function get punchBtn5() : LinkButton
        {
            return this._1047487577punchBtn5;
        }// end function

        public function get punchBtn2() : LinkButton
        {
            return this._1047487580punchBtn2;
        }// end function

        private function hammerCountByGemLevel(param1:int) : int
        {
            var _loc_2:int;
            switch(param1)
            {
                case 1:
                {
                    _loc_2 = 1;
                    break;
                }// end case
                case 2:
                {
                    _loc_2 = 1;
                    break;
                }// end case
                case 3:
                {
                    _loc_2 = 2;
                    break;
                }// end case
                case 4:
                {
                    _loc_2 = 4;
                    break;
                }// end case
                case 5:
                {
                    _loc_2 = 8;
                    break;
                }// end case
                case 6:
                {
                    _loc_2 = 15;
                    break;
                }// end case
                default:
                {
                    break;
                }// end default
            }// end switch
            return _loc_2;
        }// end function

        public function set label3(param1:Label) : void
        {
            var _loc_2:* = this._1110417473label3;
            if (_loc_2 !== param1)
            {
                this._1110417473label3 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label3", _loc_2, param1));
            }// end if
            return;
        }// end function

        private function _EquipmentEmbed_bindingExprs() : void
        {
            var _loc_1:*;
            _loc_1 = Lang.msg("????");
            _loc_1 = Lang.msg("??");
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg0.data, this.equImg.data, 0);
            _loc_1 = this.slot4;
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg2.data, this.equImg.data, 2);
            _loc_1 = this.slot4;
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg4.data, this.equImg.data, 4);
            _loc_1 = this.slot4;
            _loc_1 = Lang.msg("??????");
            _loc_1 = ConfigResource.getInstance().getItemName(this.skyHammerId);
            _loc_1 = Lang.msg("??") + ":";
            _loc_1 = "0/" + this.skyHammerCount();
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg1.data, this.equImg.data, 1);
            _loc_1 = this.slot4;
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg3.data, this.equImg.data, 3);
            _loc_1 = this.slot4;
            _loc_1 = EmbedGemToolTip.gemToolTip(this.gemImg5.data, this.equImg.data, 5);
            _loc_1 = this.slot4;
            _loc_1 = Lang.msg("??????");
            _loc_1 = ConfigResource.getInstance().getItemName(this.thunderHammerId);
            _loc_1 = Lang.msg("??") + ":";
            _loc_1 = "0/" + this.thunderHammerCount();
            _loc_1 = Lang.msg("??????");
            _loc_1 = Lang.msg("??");
            _loc_1 = ImageResource.getInstance().getCompositeEffectURL("hammer_toy");
            _loc_1 = this.check1.selected;
            _loc_1 = ImageResource.getInstance().getCompositeEffectURL("hammer_toy");
            _loc_1 = this.check2.selected;
            _loc_1 = ImageResource.getInstance().getCompositeEffectURL("toy");
            return;
        }// end function

        public function __dismantleBtn2_click(param1:MouseEvent) : void
        {
            this.onDismantle(param1);
            return;
        }// end function

        public function get equImg() : Image
        {
            return this._1295505990equImg;
        }// end function

        public function get label0() : Label
        {
            return this._1110417476label0;
        }// end function

        public function get label1() : Label
        {
            return this._1110417475label1;
        }// end function

        public function get label2() : Label
        {
            return this._1110417474label2;
        }// end function

        public function get label5() : Label
        {
            return this._1110417471label5;
        }// end function

        private function slotablFilter(param1:Object) : Boolean
        {
            if (param1.characterAuctionId > 0)
            {
                return false;
            }// end if
            if (param1.slotable > 0)
            {
                return true;
            }// end if
            return false;
        }// end function

        public function get label3() : Label
        {
            return this._1110417473label3;
        }// end function

        public function __punchBtn4_click(param1:MouseEvent) : void
        {
            this.onPunch(param1);
            return;
        }// end function

        public function get toy() : SWFLoader
        {
            return this._115038toy;
        }// end function

        public function __check1_click(param1:MouseEvent) : void
        {
            this.selectCheck1();
            return;
        }// end function

        public function __replaceBtn4_click(param1:MouseEvent) : void
        {
            this.onAddReplace(param1);
            return;
        }// end function

        public function ___EquipmentEmbed_TitleBorderCanvas1_removedFromStage(param1:Event) : void
        {
            this.onRemovedFromStage();
            return;
        }// end function

        public function get label4() : Label
        {
            return this._1110417472label4;
        }// end function

        public function set punchBtn5(param1:LinkButton) : void
        {
            var _loc_2:* = this._1047487577punchBtn5;
            if (_loc_2 !== param1)
            {
                this._1047487577punchBtn5 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "punchBtn5", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set label2(param1:Label) : void
        {
            var _loc_2:* = this._1110417474label2;
            if (_loc_2 !== param1)
            {
                this._1110417474label2 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "label2", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set removeBtn0(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045432removeBtn0;
            if (_loc_2 !== param1)
            {
                this._1098045432removeBtn0 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn0", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function set removeBtn1(param1:LinkButton) : void
        {
            var _loc_2:* = this._1098045433removeBtn1;
            if (_loc_2 !== param1)
            {
                this._1098045433removeBtn1 = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "removeBtn1", _loc_2, param1));
            }// end if
            return;
        }// end function

        public function get removeBtn0() : LinkButton
        {
            return this._1098045432removeBtn0;
        }// end function

        public function get removeBtn1() : LinkButton
        {
            return this._1098045433removeBtn1;
        }// end function

        public function get removeBtn2() : LinkButton
        {
            return this._1098045434removeBtn2;
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
            _watcherSetupUtil = param1;
            return;
        }// end function

    }
}
