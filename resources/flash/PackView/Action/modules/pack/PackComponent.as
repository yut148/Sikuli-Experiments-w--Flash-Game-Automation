package modules.pack
{
    import com.cgame.cache.msg.logic.*;
    import com.game.common.*;
    import com.game.common.event.*;
    import flash.events.*;
    import modules.character.event.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;

    public class PackComponent extends TitleBorderCanvas implements IBindingClient
    {
        private var _1584105757viewStack:ViewStack;
        private var _1234375354listTotal:TileList;
        private var _881418178tabBar:TabBar;
        private var _1012011798canvasEquipment:Canvas;
        private var _1235154329listStone:TileList;
        private var _1883690515canvasStone:Canvas;
        private var _1177280081itemList:CharacterItemList;
        private var _382289795listThings:TileList;
        private var initPackageSize:int;
        private var _embed_mxml_images_comm_background_inventory_bg_jpg_778895754:Class;
        var _bindingsByDestination:Object;
        private var targetLargeSize:int;
        private var goldCost:int;
        private var _1170854112listEquiptment:TileList;
        private const VIEW_LEVEL:int = 2;
        private var _1345641283listTask:TileList;
        private var _1345118375listBook:TileList;
        private var _currentItem:int;
        private var _1887391592canvasOther:Canvas;
        private var _1675486597labelCount:Label;
        var _watchers:Array;
        public var _PackComponent_Button1:Button;
        public var _PackComponent_Button2:Button;
        private var tooltipComp:UIComponent;
        private var tabArrar:Array;
        private var _items:Array;
        var _bindingsBeginWithWord:Object;
        private var _1463268093canvasTask:Canvas;
        private var _1882911540canvasTotal:Canvas;
        private var _1462745185canvasBook:Canvas;
        private const VIEW_NAME:String = "package";
        var _bindings:Array;
        private var _documentDescriptor_:UIComponentDescriptor;
        private var defaultItems:Array;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function PackComponent()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 31 
_as3_getlex com.game.common::TitleBorderCanvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 2f 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c ee 01 
_as3_pushstring "width"
//25 be 05 
_as3_pushshort 702
//2c ef 01 
_as3_pushstring "height"
//25 f4 03 
_as3_pushshort 500
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 0e 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 11 
_as3_pushbyte 17
//2c 90 02 
_as3_pushstring "y"
//24 4c 
_as3_pushbyte 76
//2c ee 01 
_as3_pushstring "width"
//25 9b 05 
_as3_pushshort 667
//2c ef 01 
_as3_pushstring "height"
//25 9a 03 
_as3_pushshort 410
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c 93 02 
_as3_pushstring "mouseChildren"
//27 
_as3_pushfalse 
//2c 94 02 
_as3_pushstring "mouseEnabled"
//27 
_as3_pushfalse 
//55 07 
_as3_newobject {object count:7}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 13 
_as3_getlex mx.containers::ViewStack
//2c c1 02 
_as3_pushstring "id"
//2c 8a 01 
_as3_pushstring "viewStack"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 0f 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//24 05 
_as3_pushbyte 5
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 06 
_as3_pushbyte 6
//61 f6 01 
_as3_setproperty paddingLeft
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 28 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 8f 02 
_as3_pushstring "x"
//24 11 
_as3_pushbyte 17
//2c 90 02 
_as3_pushstring "y"
//24 4c 
_as3_pushbyte 76
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 83 01 
_as3_pushstring "canvasTotal"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 10 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 13 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 60 
_as3_pushstring "listTotal"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 11 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 f6 01 
_as3_setproperty paddingLeft
//d0 
_as3_getlocal <0> 
//24 02 
_as3_pushbyte 2
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 12 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 60 
_as3_findpropstrict _PackComponent_ClassFactory1_c
//46 60 00 
_as3_callproperty _PackComponent_ClassFactory1_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 59 
_as3_pushstring "canvasOther"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 14 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 17 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 4f 
_as3_pushstring "listThings"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 15 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 f6 01 
_as3_setproperty paddingLeft
//d0 
_as3_getlocal <0> 
//24 02 
_as3_pushbyte 2
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 16 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 5b 
_as3_findpropstrict _PackComponent_ClassFactory2_c
//46 5b 00 
_as3_callproperty _PackComponent_ClassFactory2_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 54 
_as3_pushstring "canvasEquipment"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 18 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 1b 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 88 01 
_as3_pushstring "listEquiptment"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 19 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 02 
_as3_pushbyte 2
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 1a 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 38 
_as3_findpropstrict _PackComponent_ClassFactory3_c
//46 38 00 
_as3_callproperty _PackComponent_ClassFactory3_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 53 
_as3_pushstring "canvasStone"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 1c 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 1f 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c c4 02 
_as3_pushstring "visible"
//27 
_as3_pushfalse 
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 71 
_as3_pushstring "listStone"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 1d 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 01 
_as3_pushbyte 1
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 1e 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 79 
_as3_findpropstrict _PackComponent_ClassFactory4_c
//46 79 00 
_as3_callproperty _PackComponent_ClassFactory4_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 9b 01 
_as3_pushstring "canvasTask"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 20 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 23 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 5f 
_as3_pushstring "listTask"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 21 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 02 
_as3_pushbyte 2
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 22 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 61 
_as3_findpropstrict _PackComponent_ClassFactory5_c
//46 61 00 
_as3_callproperty _PackComponent_ClassFactory5_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c1 02 
_as3_pushstring "id"
//2c 6f 
_as3_pushstring "canvasBook"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 24 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 27 
_as3_newfunction 
                function () : Object
                {
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//2c 91 02 
_as3_pushstring "styleName"
//2c 92 02 
_as3_pushstring "packcomponentCanvasStyle"
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 11 
_as3_getlex mx.controls::TileList
//2c c1 02 
_as3_pushstring "id"
//2c 6d 
_as3_pushstring "listBook"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 25 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c b2 02 
_as3_pushstring "100%"
//61 f7 01 
_as3_setproperty backgroundSize
//d0 
_as3_getlocal <0> 
//60 43 
_as3_getlex _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//61 f8 01 
_as3_setproperty backgroundImage
//d0 
_as3_getlocal <0> 
//2c b5 02 
_as3_pushstring "none"
//61 f9 01 
_as3_setproperty borderStyle
//d0 
_as3_getlocal <0> 
//24 02 
_as3_pushbyte 2
//61 f5 01 
_as3_setproperty paddingTop
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 fa 01 
_as3_setproperty paddingBottom
//d0 
_as3_getlocal <0> 
//2d 02 
_as3_pushint 16773993
//61 fb 01 
_as3_setproperty borderColor
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 26 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//25 88 05 
_as3_pushshort 648
//2c ef 01 
_as3_pushstring "height"
//25 ea 02 
_as3_pushshort 362
//2c b9 02 
_as3_pushstring "horizontalScrollPolicy"
//2c ba 02 
_as3_pushstring "off"
//2c bb 02 
_as3_pushstring "verticalScrollPolicy"
//2c bc 02 
_as3_pushstring "on"
//2c 8f 02 
_as3_pushstring "x"
//24 06 
_as3_pushbyte 6
//2c 90 02 
_as3_pushstring "y"
//24 06 
_as3_pushbyte 6
//2c bd 02 
_as3_pushstring "itemRenderer"
//5d 4c 
_as3_findpropstrict _PackComponent_ClassFactory6_c
//46 4c 00 
_as3_callproperty _PackComponent_ClassFactory6_c(param count:0)
//2c be 02 
_as3_pushstring "selectable"
//27 
_as3_pushfalse 
//55 08 
_as3_newobject {object count:8}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 06 
_as3_newarray [array size:6]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 10 
_as3_getlex mx.controls::Label
//2c c1 02 
_as3_pushstring "id"
//2c 4e 
_as3_pushstring "labelCount"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 29 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c c5 02 
_as3_pushstring "center"
//61 fc 01 
_as3_setproperty textAlign
//d0 
_as3_getlocal <0> 
//2d 03 
_as3_pushint 6503168
//61 fd 01 
_as3_setproperty color
//d0 
_as3_getlocal <0> 
//2c c8 02 
_as3_pushstring "0"
//61 fe 01 
_as3_setproperty horizontalCenter
//d0 
_as3_getlocal <0> 
//24 0c 
_as3_pushbyte 12
//61 ff 01 
_as3_setproperty fontSize
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 2a 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//24 64 
_as3_pushbyte 100
//2c 90 02 
_as3_pushstring "y"
//25 cc 03 
_as3_pushshort 460
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 12 
_as3_getlex mx.controls::TabBar
//2c c1 02 
_as3_pushstring "id"
//2c 5e 
_as3_pushstring "tabBar"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 2b 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//24 00 
_as3_pushbyte 0
//61 80 02 
_as3_setproperty horizontalGap
//d0 
_as3_getlocal <0> 
//2c cc 02 
_as3_pushstring "packcomponentTabBarButtonPack"
//61 81 02 
_as3_setproperty tabStyleName
//d0 
_as3_getlocal <0> 
//2c ce 02 
_as3_pushstring "packcomponentTabBarSelectText"
//61 82 02 
_as3_setproperty selectedTabTextStyleName
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 2c 
_as3_newfunction 
                function () : Object
                {
//2c d0 02 
_as3_pushstring "selectedIndex"
//24 00 
_as3_pushbyte 0
//2c 8f 02 
_as3_pushstring "x"
//24 1e 
_as3_pushbyte 30
//2c 90 02 
_as3_pushstring "y"
//24 2e 
_as3_pushbyte 46
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 68 
_as3_getlex mx.controls::Button
//2c c1 02 
_as3_pushstring "id"
//2c 80 01 
_as3_pushstring "_PackComponent_Button1"
//2c d4 02 
_as3_pushstring "events"
//2c d5 02 
_as3_pushstring "click"
//2c 6a 
_as3_pushstring "___PackComponent_Button1_click"
//55 01 
_as3_newobject {object count:1}
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 2d 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 1e 
_as3_pushbyte 30
//2c 90 02 
_as3_pushstring "y"
//25 c3 03 
_as3_pushshort 451
//2c 91 02 
_as3_pushstring "styleName"
//2c d1 02 
_as3_pushstring "enlargeBagBtn"
//2c d2 02 
_as3_pushstring "buttonMode"
//26 
_as3_pushtrue 
//55 04 
_as3_newobject {object count:4}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 68 
_as3_getlex mx.controls::Button
//2c c1 02 
_as3_pushstring "id"
//2c 82 01 
_as3_pushstring "_PackComponent_Button2"
//2c d4 02 
_as3_pushstring "events"
//2c d5 02 
_as3_pushstring "click"
//2c 7b 
_as3_pushstring "___PackComponent_Button2_click"
//55 01 
_as3_newobject {object count:1}
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 2e 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//25 ef 04 
_as3_pushshort 623
//2c 90 02 
_as3_pushstring "y"
//25 c3 03 
_as3_pushshort 451
//2c 91 02 
_as3_pushstring "styleName"
//2c d3 02 
_as3_pushstring "tidyBagBtn"
//2c d2 02 
_as3_pushstring "buttonMode"
//26 
_as3_pushtrue 
//55 04 
_as3_newobject {object count:4}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 06 
_as3_newarray [array size:6]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//68 81 01 
_as3_initproperty _documentDescriptor_
//d0 
_as3_getlocal <0> 
//5d 06 
_as3_findpropstrict Array
//4a 06 00 
_as3_constructprop Array(param count:0)
//68 84 01 
_as3_initproperty defaultItems
//d0 
_as3_getlocal <0> 
//60 83 02 
_as3_getlex com.cgame.cache::CacheManager
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 85 02 
_as3_getlex com.cgame.cache::CacheType
//66 86 02 
_as3_getproperty PACKAGE_ITEMS
//46 87 02 01 
_as3_callproperty getCache(param count:1)
//60 14 
_as3_getlex com.cgame.cache.msg.logic::CharacterItemList
//87 
_as3_astypelate 
//68 3f 
_as3_initproperty _1177280081itemList
//d0 
_as3_getlocal <0> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dc 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dd 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c de 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c df 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//56 04 
_as3_newarray [array size:4]
//68 6e 
_as3_initproperty tabArrar
//d0 
_as3_getlocal <0> 
//5d 06 
_as3_findpropstrict Array
//4a 06 00 
_as3_constructprop Array(param count:0)
//68 70 
_as3_initproperty _items
//d0 
_as3_getlocal <0> 
//5d 6d 
_as3_findpropstrict mx.core::UIComponent
//4a 6d 00 
_as3_constructprop mx.core::UIComponent(param count:0)
//68 6c 
_as3_initproperty tooltipComp
//d0 
_as3_getlocal <0> 
//5d 0a 
_as3_findpropstrict int
//60 88 02 
_as3_getlex com.cgame.config::ConfigResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//2c e1 02 
_as3_pushstring "item.backpack.init.size"
//46 89 02 01 
_as3_callproperty getGlobalConstStr(param count:1)
//46 0a 01 
_as3_callproperty int(param count:1)
//68 42 
_as3_initproperty initPackageSize
//d0 
_as3_getlocal <0> 
//5d 0a 
_as3_findpropstrict int
//60 88 02 
_as3_getlex com.cgame.config::ConfigResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//2c e3 02 
_as3_pushstring "item.backpack.enlarge1.size"
//46 89 02 01 
_as3_callproperty getGlobalConstStr(param count:1)
//46 0a 01 
_as3_callproperty int(param count:1)
//68 4a 
_as3_initproperty targetLargeSize
//d0 
_as3_getlocal <0> 
//5d 0a 
_as3_findpropstrict int
//60 88 02 
_as3_getlex com.cgame.config::ConfigResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//2c e4 02 
_as3_pushstring "item.backpack.enlarge1.currency1"
//46 89 02 01 
_as3_callproperty getGlobalConstStr(param count:1)
//46 0a 01 
_as3_callproperty int(param count:1)
//68 4b 
_as3_initproperty goldCost
//d0 
_as3_getlocal <0> 
//60 a2 01 
_as3_getlex modules.pack::PackComponent__embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//68 43 
_as3_initproperty _embed_mxml_images_comm_background_inventory_bg_jpg_778895754
//d0 
_as3_getlocal <0> 
//56 00 
_as3_newarray [array size:0]
//68 7e 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindings
//d0 
_as3_getlocal <0> 
//56 00 
_as3_newarray [array size:0]
//68 65 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_watchers
//d0 
_as3_getlocal <0> 
//55 00 
_as3_newobject {object count:0}
//68 49 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindingsByDestination
//d0 
_as3_getlocal <0> 
//55 00 
_as3_newobject {object count:0}
//68 73 
_as3_initproperty http://www.adobe.com/2006/flex/mx/internal::_bindingsBeginWithWord
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 8c 02 
_as3_findpropstrict _document
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//d0 
_as3_getlocal <0> 
//61 8c 02 
_as3_setproperty _document
//d0 
_as3_getlocal <0> 
//25 be 05 
_as3_pushshort 702
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//25 f4 03 
_as3_pushshort 500
//68 d9 01 
_as3_initproperty height
//d0 
_as3_getlocal <0> 
//2c e8 02 
_as3_pushstring "recruit"
//68 8d 02 
_as3_initproperty styleName
//d0 
_as3_getlocal <0> 
//26 
_as3_pushtrue 
//68 8e 02 
_as3_initproperty cacheAsBitmap
//d0 
_as3_getlocal <0> 
//26 
_as3_pushtrue 
//68 8f 02 
_as3_initproperty showHelp
//d0 
_as3_getlocal <0> 
//2c 7c 
_as3_pushstring "initialize"
//d0 
_as3_getlocal <0> 
//66 48 
_as3_getproperty ___PackComponent_TitleBorderCanvas1_initialize
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//2c eb 02 
_as3_pushstring "addedToStage"
//d0 
_as3_getlocal <0> 
//66 75 
_as3_getproperty ___PackComponent_TitleBorderCanvas1_addedToStage
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//d0 
_as3_getlocal <0> 
//2c ec 02 
_as3_pushstring "removedFromStage"
//d0 
_as3_getlocal <0> 
//66 6b 
_as3_getproperty ___PackComponent_TitleBorderCanvas1_removedFromStage
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function set labelCount(param1:Label) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 5e 
_as3_getproperty _1675486597labelCount
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 5e 
_as3_setproperty _1675486597labelCount
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 4e 
_as3_pushstring "labelCount"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set listThings(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 41 
_as3_getproperty _382289795listThings
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 41 
_as3_setproperty _382289795listThings
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 4f 
_as3_pushstring "listThings"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory3_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function init(param1:Object = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d dc 01 
_as3_findpropstrict addEventListener
//60 09 
_as3_getlex com.game.common.event::TitleBorderCanvasEvent
//66 9f 02 
_as3_getproperty SHOW_HELP
//d0 
_as3_getlocal <0> 
//66 7b 
_as3_getproperty onShowHelp
//4f dc 01 02 
_as3_callpropvoid addEventListener(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function set canvasStone(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3e 
_as3_getproperty _1883690515canvasStone
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 3e 
_as3_setproperty _1883690515canvasStone
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 53 
_as3_pushstring "canvasStone"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get canvasEquipment() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 39 
_as3_getproperty _1012011798canvasEquipment
//48 
_as3_returnvalue 
        }// end function

        private function onHideTip(param1:PackageEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 a3 02 
_as3_getproperty itemCanvas
//66 a4 02 
_as3_getproperty transform
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//46 a8 02 00 
_as3_callproperty getItemOutTransform(param count:0)
//61 a7 02 
_as3_setproperty colorTransform
//47 
_as3_returnvoid 
        }// end function

        public function set canvasOther(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 5d 
_as3_getproperty _1887391592canvasOther
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 5d 
_as3_setproperty _1887391592canvasOther
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 59 
_as3_pushstring "canvasOther"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set canvasEquipment(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 39 
_as3_getproperty _1012011798canvasEquipment
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 39 
_as3_setproperty _1012011798canvasEquipment
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 54 
_as3_pushstring "canvasEquipment"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get tabBar() : TabBar
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 37 
_as3_getproperty _881418178tabBar
//48 
_as3_returnvalue 
        }// end function

        public function get listTask() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 55 
_as3_getproperty _1345641283listTask
//48 
_as3_returnvalue 
        }// end function

        public function get listTotal() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 34 
_as3_getproperty _1234375354listTotal
//48 
_as3_returnvalue 
        }// end function

        public function ___PackComponent_TitleBorderCanvas1_initialize(param1:FlexEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 29 00 
_as3_callpropvoid init(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory6_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function reset() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 45 
_as3_getproperty tabBar
//24 00 
_as3_pushbyte 0
//61 ac 02 
_as3_setproperty selectedIndex
//d0 
_as3_getlocal <0> 
//66 47 
_as3_getproperty listTotal
//24 00 
_as3_pushbyte 0
//4f ad 02 01 
_as3_callpropvoid scrollToIndex(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onCompile() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c 88 03 
_as3_pushstring "things"
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b1 02 
_as3_getproperty debrisList
//2c 8a 03 
_as3_pushstring "equips"
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b2 02 
_as3_getproperty equipList
//2c 8c 03 
_as3_pushstring "gemstones"
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b3 02 
_as3_getproperty gemstoneList
//55 03 
_as3_newobject {object count:3}
//80 02 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//5d 04 
_as3_findpropstrict modules.character.event::PackageEvent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 b4 02 
_as3_getproperty SHOW_COMPITE_PANEL_EVENT
//4a 04 01 
_as3_constructprop modules.character.event::PackageEvent(param count:1)
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//61 b5 02 
_as3_setproperty cloneData
//5d ea 01 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function ___PackComponent_Button1_click(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 5a 00 
_as3_callpropvoid onEnlarge(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function get itemList() : CharacterItemList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3f 
_as3_getproperty _1177280081itemList
//48 
_as3_returnvalue 
        }// end function

        public function onOver(param1:int, param2:Event = null) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//47 
_as3_returnvoid 
        }// end function

        public function set listBook(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 57 
_as3_getproperty _1345118375listBook
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 57 
_as3_setproperty _1345118375listBook
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 6d 
_as3_pushstring "listBook"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get canvasBook() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 77 
_as3_getproperty _1462745185canvasBook
//48 
_as3_returnvalue 
        }// end function

        public function get listStone() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3d 
_as3_getproperty _1235154329listStone
//48 
_as3_returnvalue 
        }// end function

        private function onShowOperate(param1:PackageEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//20 
_as3_pushnull 
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//66 a9 02 
_as3_getproperty itemType
//60 aa 02 
_as3_getlex com.cgame.config::ItemType
//66 ab 02 
_as3_getproperty TASK
//13 1d 00 00 
_as3_ifeq offset: 29
//5d 04 
_as3_findpropstrict modules.character.event::PackageEvent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 db 01 
_as3_getproperty SHOW_PACKAGE_OPERATE
//4a 04 01 
_as3_constructprop modules.character.event::PackageEvent(param count:1)
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//66 99 01 
_as3_getproperty data
//61 99 01 
_as3_setproperty data
//5d ea 01 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onEnlarge() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 bb 02 
_as3_getproperty backpackItemCountMax
//d0 
_as3_getlocal <0> 
//66 4a 
_as3_getproperty targetLargeSize
//0f 12 00 00 
_as3_ifnge offset: 18
//60 b8 02 
_as3_getlex com.utils::MyAlert
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 97 03 
_as3_pushstring "?????????????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//4f bc 02 01 
_as3_callpropvoid show(param count:1)
//47 
_as3_returnvoid 
//60 b8 02 
_as3_getlex com.utils::MyAlert
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 99 03 
_as3_pushstring "??????{!targetSize}{!gold}"
//2c 9a 03 
_as3_pushstring "targetSize"
//d0 
_as3_getlocal <0> 
//66 4a 
_as3_getproperty targetLargeSize
//2c 9b 03 
_as3_pushstring "gold"
//d0 
_as3_getlocal <0> 
//66 4b 
_as3_getproperty goldCost
//55 02 
_as3_newobject {object count:2}
//46 ed 01 02 
_as3_callproperty msg(param count:2)
//2c 01 
_as3_pushstring ""
//60 b8 02 
_as3_getlex com.utils::MyAlert
//66 b9 02 
_as3_getproperty CONFIRM
//60 b8 02 
_as3_getlex com.utils::MyAlert
//66 bd 02 
_as3_getproperty CANCEL
//a9 
_as3_bitor 
//20 
_as3_pushnull 
//40 3f 
_as3_newfunction 
                function (param1:CloseEvent) : void
                {
//20 
_as3_pushnull 
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d6 
_as3_setlocal <2> 
//d1 
_as3_getlocal <1> 
//66 b7 02 
_as3_getproperty detail
//60 b8 02 
_as3_getlex com.utils::MyAlert
//66 b9 02 
_as3_getproperty CONFIRM
//14 16 00 00 
_as3_ifne offset: 22
//5d 04 
_as3_findpropstrict modules.character.event::PackageEvent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 ba 02 
_as3_getproperty ENLARGE_PACKAGE_EVENT
//26 
_as3_pushtrue 
//4a 04 02 
_as3_constructprop modules.character.event::PackageEvent(param count:2)
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d6 
_as3_setlocal <2> 
//5d ea 01 
_as3_findpropstrict dispatchEvent
//d2 
_as3_getlocal <2> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
                }// end function

//4f bc 02 05 
_as3_callpropvoid show(param count:5)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory2_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function get labelCount() : Label
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 5e 
_as3_getproperty _1675486597labelCount
//48 
_as3_returnvalue 
        }// end function

        public function set tabBar(param1:TabBar) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 37 
_as3_getproperty _881418178tabBar
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 37 
_as3_setproperty _881418178tabBar
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 5e 
_as3_pushstring "tabBar"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onShowTip(param1:PackageEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 a3 02 
_as3_getproperty itemCanvas
//66 a4 02 
_as3_getproperty transform
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//46 a6 02 00 
_as3_callproperty getItemOverTransform(param count:0)
//61 a7 02 
_as3_setproperty colorTransform
//47 
_as3_returnvoid 
        }// end function

        public function get listThings() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 41 
_as3_getproperty _382289795listThings
//48 
_as3_returnvalue 
        }// end function

        public function set listTask(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 55 
_as3_getproperty _1345641283listTask
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 55 
_as3_setproperty _1345641283listTask
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 5f 
_as3_pushstring "listTask"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory1_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function set listTotal(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 34 
_as3_getproperty _1234375354listTotal
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 34 
_as3_setproperty _1234375354listTotal
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 60 
_as3_pushstring "listTotal"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory5_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function ___PackComponent_Button2_click(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 72 00 
_as3_callpropvoid onTidyUp(param count:0)
//47 
_as3_returnvoid 
        }// end function

        override public function initialize() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 26 
_as3_coerce modules.pack::PackComponent
//6d 03 
_as3_setslot <3>
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 02 
_as3_coerce Object
//6d 05 
_as3_setslot <5>
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 92 02 
_as3_findpropstrict setDocumentDescriptor
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 92 02 
_as3_getproperty setDocumentDescriptor
//d2 
_as3_getlocal <2> 
//d0 
_as3_getlocal <0> 
//66 81 01 
_as3_getproperty _documentDescriptor_
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 02 
_as3_kill <2>
//65 01 
_as3_getscopeobject 1
//d0 
_as3_getlocal <0> 
//46 64 00 
_as3_callproperty _PackComponent_bindingsSetup(param count:0)
//80 06 
_as3_coerce Array
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 06 
_as3_coerce Array
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//d0 
_as3_getlocal <0> 
//80 26 
_as3_coerce modules.pack::PackComponent
//6d 03 
_as3_setslot <3>
//60 d2 01 
_as3_getlex _watcherSetupUtil
//20 
_as3_pushnull 
//14 22 00 00 
_as3_ifne offset: 34
//65 01 
_as3_getscopeobject 1
//5d 93 02 
_as3_findpropstrict flash.utils::getDefinitionByName
//2c a7 01 
_as3_pushstring "_modules_pack_PackComponentWatcherSetupUtil"
//46 93 02 01 
_as3_callproperty flash.utils::getDefinitionByName(param count:1)
//80 02 
_as3_coerce Object
//6d 05 
_as3_setslot <5>
//65 01 
_as3_getscopeobject 1
//6c 05 
_as3_getslot <5>
//2a 
_as3_dup 
//d6 
_as3_setlocal <2> 
//2c 3f 
_as3_pushstring "init"
//66 91 02 
_as3_getproperty {}
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//41 01 
_as3_call (param count:1)
//29 
_as3_pop 
//08 02 
_as3_kill <2>
//60 d2 01 
_as3_getlex _watcherSetupUtil
//d0 
_as3_getlocal <0> 
//40 31 
_as3_newfunction 
                function (param1:String)
                {
//60 90 02 
_as3_getlex modules.pack::target
//d1 
_as3_getlocal <1> 
//66 91 02 
_as3_getproperty {}
//48 
_as3_returnvalue 
                }// end function

//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//4f 94 02 04 
_as3_callpropvoid mx.binding:IWatcherSetupUtil::setup(param count:4)
//65 01 
_as3_getscopeobject 1
//24 00 
_as3_pushbyte 0
//74 
_as3_convert_u 
//6d 04 
_as3_setslot <4>
//10 22 00 00 
_as3_jump offset: 34
//09 
_as3_label 
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//66 91 02 
_as3_getproperty {}
//46 95 02 01 
_as3_callproperty mx.binding::Binding(param count:1)
//4f 96 02 00 
_as3_callpropvoid execute(param count:0)
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//91 
_as3_increment 
//74 
_as3_convert_u 
//65 01 
_as3_getscopeobject 1
//2b 
_as3_swap 
//6d 04 
_as3_setslot <4>
//65 01 
_as3_getscopeobject 1
//6c 04 
_as3_getslot <4>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//66 97 02 
_as3_getproperty length
//15 cf ff ff 
_as3_iflt offset: -49
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 98 02 
_as3_findpropstrict _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 98 02 
_as3_findpropstrict _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 98 02 
_as3_getproperty _bindings
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//46 99 02 01 
_as3_callproperty concat(param count:1)
//61 98 02 
_as3_setproperty _bindings
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 9a 02 
_as3_findpropstrict _watchers
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//5d 9a 02 
_as3_findpropstrict _watchers
//60 8a 02 
_as3_getlex mx.core::mx_internal
//80 8b 02 
_as3_coerce Namespace
//66 9a 02 
_as3_getproperty _watchers
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//46 99 02 01 
_as3_callproperty concat(param count:1)
//61 9a 02 
_as3_setproperty _watchers
//d0 
_as3_getlocal <0> 
//4e 63 00 
_as3_callsupervoid initialize(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_bindingsSetup() : Array
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//57 
_as3_newactivation 
//2a 
_as3_dup 
//d5 
_as3_setlocal <1> 
//30 
_as3_pushscope 
//65 01 
_as3_getscopeobject 1
//20 
_as3_pushnull 
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//56 00 
_as3_newarray [array size:0]
//80 06 
_as3_coerce Array
//6d 01 
_as3_setslot <1>
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 4e 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9e 03 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 4f 
_as3_newfunction 
                function (param1:String) : void
                {
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 c0 02 
_as3_setproperty title
//47 
_as3_returnvoid 
                }// end function

//2c ae 03 
_as3_pushstring "this.title"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 00 
_as3_pushbyte 0
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 50 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dc 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 51 
_as3_newfunction 
                function (param1:String) : void
                {
//60 6a 
_as3_getlex canvasTotal
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c af 03 
_as3_pushstring "canvasTotal.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 01 
_as3_pushbyte 1
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 52 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 c2 02 
_as3_getproperty packageList
//48 
_as3_returnvalue 
                }// end function

//40 53 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 47 
_as3_getlex listTotal
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c b0 03 
_as3_pushstring "listTotal.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 02 
_as3_pushbyte 2
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 54 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 55 
_as3_newfunction 
                function (param1:int) : void
                {
//60 47 
_as3_getlex listTotal
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c b1 03 
_as3_pushstring "listTotal.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 03 
_as3_pushbyte 3
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 56 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dd 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 57 
_as3_newfunction 
                function (param1:String) : void
                {
//60 40 
_as3_getlex canvasOther
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c b2 03 
_as3_pushstring "canvasOther.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 04 
_as3_pushbyte 4
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 58 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 b1 02 
_as3_getproperty debrisList
//48 
_as3_returnvalue 
                }// end function

//40 59 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 36 
_as3_getlex listThings
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c b3 03 
_as3_pushstring "listThings.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 05 
_as3_pushbyte 5
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 5a 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 5b 
_as3_newfunction 
                function (param1:int) : void
                {
//60 36 
_as3_getlex listThings
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c b4 03 
_as3_pushstring "listThings.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 06 
_as3_pushbyte 6
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 5c 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c de 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 5d 
_as3_newfunction 
                function (param1:String) : void
                {
//60 3b 
_as3_getlex canvasEquipment
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c b5 03 
_as3_pushstring "canvasEquipment.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 07 
_as3_pushbyte 7
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 5e 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 b2 02 
_as3_getproperty equipList
//48 
_as3_returnvalue 
                }// end function

//40 5f 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 6f 
_as3_getlex listEquiptment
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c b6 03 
_as3_pushstring "listEquiptment.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 08 
_as3_pushbyte 8
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 60 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 61 
_as3_newfunction 
                function (param1:int) : void
                {
//60 6f 
_as3_getlex listEquiptment
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c b7 03 
_as3_pushstring "listEquiptment.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 09 
_as3_pushbyte 9
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 62 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c a5 03 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 63 
_as3_newfunction 
                function (param1:String) : void
                {
//60 3a 
_as3_getlex canvasStone
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c b8 03 
_as3_pushstring "canvasStone.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0a 
_as3_pushbyte 10
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 64 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 b3 02 
_as3_getproperty gemstoneList
//48 
_as3_returnvalue 
                }// end function

//40 65 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 58 
_as3_getlex listStone
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c b9 03 
_as3_pushstring "listStone.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0b 
_as3_pushbyte 11
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 66 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 67 
_as3_newfunction 
                function (param1:int) : void
                {
//60 58 
_as3_getlex listStone
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c ba 03 
_as3_pushstring "listStone.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0c 
_as3_pushbyte 12
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 68 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c df 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 69 
_as3_newfunction 
                function (param1:String) : void
                {
//60 83 01 
_as3_getlex canvasTask
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c bb 03 
_as3_pushstring "canvasTask.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0d 
_as3_pushbyte 13
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 6a 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 c5 02 
_as3_getproperty taskList
//48 
_as3_returnvalue 
                }// end function

//40 6b 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 46 
_as3_getlex listTask
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c bc 03 
_as3_pushstring "listTask.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0e 
_as3_pushbyte 14
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 6c 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 6d 
_as3_newfunction 
                function (param1:int) : void
                {
//60 46 
_as3_getlex listTask
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c bd 03 
_as3_pushstring "listTask.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 0f 
_as3_pushbyte 15
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 6e 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c a7 03 
_as3_pushstring "?"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 6f 
_as3_newfunction 
                function (param1:String) : void
                {
//60 56 
_as3_getlex canvasBook
//d1 
_as3_getlocal <1> 
//61 c1 02 
_as3_setproperty label
//47 
_as3_returnvoid 
                }// end function

//2c be 03 
_as3_pushstring "canvasBook.label"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 10 
_as3_pushbyte 16
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 70 
_as3_newfunction 
                function () : Object
                {
//60 51 
_as3_getlex itemList
//66 c6 02 
_as3_getproperty bookList
//48 
_as3_returnvalue 
                }// end function

//40 71 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 54 
_as3_getlex listBook
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c bf 03 
_as3_pushstring "listBook.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 11 
_as3_pushbyte 17
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 72 
_as3_newfunction 
                function () : int
                {
//24 09 
_as3_pushbyte 9
//48 
_as3_returnvalue 
                }// end function

//40 73 
_as3_newfunction 
                function (param1:int) : void
                {
//60 54 
_as3_getlex listBook
//d1 
_as3_getlocal <1> 
//61 c4 02 
_as3_setproperty maxColumns
//47 
_as3_returnvoid 
                }// end function

//2c c0 03 
_as3_pushstring "listBook.maxColumns"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 12 
_as3_pushbyte 18
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 74 
_as3_newfunction 
                function () : String
                {
//60 51 
_as3_getlex itemList
//66 c2 02 
_as3_getproperty packageList
//66 97 02 
_as3_getproperty length
//2c a9 03 
_as3_pushstring "/"
//a0 
_as3_add 
//60 51 
_as3_getlex itemList
//66 bb 02 
_as3_getproperty backpackItemCountMax
//a0 
_as3_add 
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 75 
_as3_newfunction 
                function (param1:String) : void
                {
//60 35 
_as3_getlex labelCount
//d1 
_as3_getlocal <1> 
//61 c7 02 
_as3_setproperty text
//47 
_as3_returnvoid 
                }// end function

//2c c1 03 
_as3_pushstring "labelCount.text"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 13 
_as3_pushbyte 19
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 76 
_as3_newfunction 
                function () : Object
                {
//60 71 
_as3_getlex viewStack
//48 
_as3_returnvalue 
                }// end function

//40 77 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 45 
_as3_getlex tabBar
//d1 
_as3_getlocal <1> 
//61 c3 02 
_as3_setproperty dataProvider
//47 
_as3_returnvoid 
                }// end function

//2c c2 03 
_as3_pushstring "tabBar.dataProvider"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 14 
_as3_pushbyte 20
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 78 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c ab 03 
_as3_pushstring "????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 79 
_as3_newfunction 
                function (param1:String) : void
                {
//60 67 
_as3_getlex _PackComponent_Button1
//d1 
_as3_getlocal <1> 
//61 c8 02 
_as3_setproperty toolTip
//47 
_as3_returnvoid 
                }// end function

//2c c3 03 
_as3_pushstring "_PackComponent_Button1.toolTip"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 15 
_as3_pushbyte 21
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 7a 
_as3_newfunction 
                function () : String
                {
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c ad 03 
_as3_pushstring "????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 bf 02 
_as3_getlex undefined
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//10 07 00 00 
_as3_jump offset: 7
//5d 08 
_as3_findpropstrict String
//d1 
_as3_getlocal <1> 
//46 08 01 
_as3_callproperty String(param count:1)
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//48 
_as3_returnvalue 
                }// end function

//40 7b 
_as3_newfunction 
                function (param1:String) : void
                {
//60 69 
_as3_getlex _PackComponent_Button2
//d1 
_as3_getlocal <1> 
//61 c8 02 
_as3_setproperty toolTip
//47 
_as3_returnvoid 
                }// end function

//2c c4 03 
_as3_pushstring "_PackComponent_Button2.toolTip"
//4a 95 02 04 
_as3_constructprop mx.binding::Binding(param count:4)
//80 95 02 
_as3_coerce mx.binding::Binding
//6d 02 
_as3_setslot <2>
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//24 16 
_as3_pushbyte 22
//65 01 
_as3_getscopeobject 1
//6c 02 
_as3_getslot <2>
//61 91 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//48 
_as3_returnvalue 
        }// end function

        public function get canvasOther() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 5d 
_as3_getproperty _1887391592canvasOther
//48 
_as3_returnvalue 
        }// end function

        private function onAddedToStage() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 e3 01 
_as3_getlex com.game.manager::UIManager
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//66 52 
_as3_getproperty VIEW_LEVEL
//d0 
_as3_getlocal <0> 
//66 7c 
_as3_getproperty VIEW_NAME
//4f e4 01 02 
_as3_callpropvoid changeView(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function set canvasTotal(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 76 
_as3_getproperty _1882911540canvasTotal
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 16 00 00 
_as3_ifstricteq offset: 22
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 76 
_as3_setproperty _1882911540canvasTotal
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 83 01 
_as3_pushstring "canvasTotal"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function set itemList(param1:CharacterItemList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3f 
_as3_getproperty _1177280081itemList
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 3f 
_as3_setproperty _1177280081itemList
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 6b 
_as3_pushstring "itemList"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function ___PackComponent_TitleBorderCanvas1_removedFromStage(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 80 01 00 
_as3_callpropvoid onRemovedFromStage(param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function get listBook() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 57 
_as3_getproperty _1345118375listBook
//48 
_as3_returnvalue 
        }// end function

        public function set listEquiptment(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 4e 
_as3_getproperty _1170854112listEquiptment
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 16 00 00 
_as3_ifstricteq offset: 22
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 4e 
_as3_setproperty _1170854112listEquiptment
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 88 01 
_as3_pushstring "listEquiptment"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set canvasBook(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 77 
_as3_getproperty _1462745185canvasBook
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 77 
_as3_setproperty _1462745185canvasBook
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 6f 
_as3_pushstring "canvasBook"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set viewStack(param1:ViewStack) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 33 
_as3_getproperty _1584105757viewStack
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 16 00 00 
_as3_ifstricteq offset: 22
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 33 
_as3_setproperty _1584105757viewStack
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 8a 01 
_as3_pushstring "viewStack"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function onTidyUp() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 04 
_as3_findpropstrict modules.character.event::PackageEvent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 b6 02 
_as3_getproperty TIDY_UP_EVENT
//26 
_as3_pushtrue 
//4a 04 02 
_as3_constructprop modules.character.event::PackageEvent(param count:2)
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d5 
_as3_setlocal <1> 
//5d ea 01 
_as3_findpropstrict dispatchEvent
//d1 
_as3_getlocal <1> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function set listStone(param1:TileList) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3d 
_as3_getproperty _1235154329listStone
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 15 00 00 
_as3_ifstricteq offset: 21
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 3d 
_as3_setproperty _1235154329listStone
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 71 
_as3_pushstring "listStone"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function ___PackComponent_TitleBorderCanvas1_addedToStage(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//4f 66 00 
_as3_callpropvoid onAddedToStage(param count:0)
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_bindingExprs() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//21 
_as3_pushundefined 
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c 9e 03 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dc 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 c2 02 
_as3_getproperty packageList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c dd 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b1 02 
_as3_getproperty debrisList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c de 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b2 02 
_as3_getproperty equipList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c a5 03 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 b3 02 
_as3_getproperty gemstoneList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c df 02 
_as3_pushstring "??"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 c5 02 
_as3_getproperty taskList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c a7 03 
_as3_pushstring "?"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 c6 02 
_as3_getproperty bookList
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//24 09 
_as3_pushbyte 9
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 c2 02 
_as3_getproperty packageList
//66 97 02 
_as3_getproperty length
//2c a9 03 
_as3_pushstring "/"
//a0 
_as3_add 
//d0 
_as3_getlocal <0> 
//66 51 
_as3_getproperty itemList
//66 bb 02 
_as3_getproperty backpackItemCountMax
//a0 
_as3_add 
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//d0 
_as3_getlocal <0> 
//66 71 
_as3_getproperty viewStack
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c ab 03 
_as3_pushstring "????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c ad 03 
_as3_pushstring "????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//47 
_as3_returnvoid 
        }// end function

        private function _PackComponent_ClassFactory4_c() : ClassFactory
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d 0d 
_as3_findpropstrict mx.core::ClassFactory
//4a 0d 00 
_as3_constructprop mx.core::ClassFactory(param count:0)
//80 0d 
_as3_coerce mx.core::ClassFactory
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//60 93 01 
_as3_getlex modules.character::ItemRenderer
//61 be 02 
_as3_setproperty generator
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

        public function onClickPackItem(param1:Object) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//47 
_as3_returnvoid 
        }// end function

        private function onShowHelp(param1:TitleBorderCanvasEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d a0 02 
_as3_findpropstrict trace
//2c fa 02 
_as3_pushstring "ShowHelp: PACKAGE - "
//60 a1 02 
_as3_getlex com.cgame.config::HelpType
//66 a2 02 
_as3_getproperty PACK
//4f a0 02 02 
_as3_callpropvoid trace(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function get viewStack() : ViewStack
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 33 
_as3_getproperty _1584105757viewStack
//48 
_as3_returnvalue 
        }// end function

        public function get canvasTotal() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 76 
_as3_getproperty _1882911540canvasTotal
//48 
_as3_returnvalue 
        }// end function

        public function get listEquiptment() : TileList
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 4e 
_as3_getproperty _1170854112listEquiptment
//48 
_as3_returnvalue 
        }// end function

        private function initData() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//47 
_as3_returnvoid 
        }// end function

        public function onOut(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 eb 01 
_as3_getproperty target
//66 ae 02 
_as3_getproperty parent
//66 af 02 
_as3_getproperty transform
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//46 a8 02 00 
_as3_callproperty getItemOutTransform(param count:0)
//61 b0 02 
_as3_setproperty colorTransform
//47 
_as3_returnvoid 
        }// end function

        private function onRemovedFromStage() : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 e3 01 
_as3_getlex com.game.manager::UIManager
//66 df 01 
_as3_getproperty instance
//d0 
_as3_getlocal <0> 
//66 52 
_as3_getproperty VIEW_LEVEL
//4f 2d 01 
_as3_callpropvoid removeView(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get canvasStone() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 3e 
_as3_getproperty _1883690515canvasStone
//48 
_as3_returnvalue 
        }// end function

        public function set canvasTask(param1:Canvas) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 74 
_as3_getproperty _1463268093canvasTask
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 16 00 00 
_as3_ifstricteq offset: 22
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 74 
_as3_setproperty _1463268093canvasTask
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c 9b 01 
_as3_pushstring "canvasTask"
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//46 cc 02 04 
_as3_callproperty createUpdateEvent(param count:4)
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function get canvasTask() : Canvas
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 74 
_as3_getproperty _1463268093canvasTask
//48 
_as3_returnvalue 
        }// end function

        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//64 
_as3_getglobalscope 
//6c 01 
_as3_getslot <1>
//d1 
_as3_getlocal <1> 
//61 d2 01 
_as3_setproperty _watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
