package modules.character
{
    import flash.events.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;

    public class ItemRenderer extends Canvas implements IBindingClient
    {
        var _bindingsByDestination:Object;
        private var _41667817lableCount:Label;
        var _watchers:Array;
        private var _1410965406iconImage:Image;
        public var _ItemRenderer_Image1:Image;
        public var _ItemRenderer_Image3:Image;
        var _bindingsBeginWithWord:Object;
        var _bindings:Array;
        public var _ItemRenderer_Canvas2:Canvas;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;

        public function ItemRenderer()
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
//60 0f 
_as3_getlex mx.containers::Canvas
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 c1 01 
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
//24 46 
_as3_pushbyte 70
//2c ef 01 
_as3_pushstring "height"
//24 46 
_as3_pushbyte 70
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 19 
_as3_getlex mx.controls::Image
//2c c1 02 
_as3_pushstring "id"
//2c b5 01 
_as3_pushstring "_ItemRenderer_Image1"
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 bb 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 f7 
_as3_pushbyte -9
//2c 90 02 
_as3_pushstring "y"
//24 f7 
_as3_pushbyte -9
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 03 
_as3_newobject {object count:3}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 19 
_as3_getlex mx.controls::Image
//2c c1 02 
_as3_pushstring "id"
//2c b8 01 
_as3_pushstring "iconImage"
//2c d4 02 
_as3_pushstring "events"
//2c d1 03 
_as3_pushstring "mouseOver"
//2c b3 01 
_as3_pushstring "__iconImage_mouseOver"
//2c d2 03 
_as3_pushstring "mouseOut"
//2c ae 01 
_as3_pushstring "__iconImage_mouseOut"
//2c d5 02 
_as3_pushstring "click"
//2c af 01 
_as3_pushstring "__iconImage_click"
//55 03 
_as3_newobject {object count:3}
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 bc 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 02 
_as3_pushbyte 2
//2c 90 02 
_as3_pushstring "y"
//24 02 
_as3_pushbyte 2
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
//2c b9 01 
_as3_pushstring "_ItemRenderer_Canvas2"
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 bf 01 
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
//2c cf 03 
_as3_pushstring "ItemCountStyle"
//2c 8f 02 
_as3_pushstring "x"
//24 2c 
_as3_pushbyte 44
//2c 90 02 
_as3_pushstring "y"
//24 2c 
_as3_pushbyte 44
//2c 94 02 
_as3_pushstring "mouseEnabled"
//27 
_as3_pushfalse 
//2c 93 02 
_as3_pushstring "mouseChildren"
//27 
_as3_pushfalse 
//2c bf 02 
_as3_pushstring "childDescriptors"
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 10 
_as3_getlex mx.controls::Label
//2c c1 02 
_as3_pushstring "id"
//2c b1 01 
_as3_pushstring "lableCount"
//2c c2 02 
_as3_pushstring "stylesFactory"
//40 bd 01 
_as3_newfunction 
                function () : void
                {
//d0 
_as3_getlocal <0> 
//2c c8 02 
_as3_pushstring "0"
//61 de 02 
_as3_setproperty horizontalCenter
//47 
_as3_returnvoid 
                }// end function

//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 be 01 
_as3_newfunction 
                function () : Object
                {
//2c ee 01 
_as3_pushstring "width"
//24 14 
_as3_pushbyte 20
//2c ef 01 
_as3_pushstring "height"
//24 14 
_as3_pushbyte 20
//55 02 
_as3_newobject {object count:2}
//48 
_as3_returnvalue 
                }// end function

//55 04 
_as3_newobject {object count:4}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 01 
_as3_newarray [array size:1]
//55 06 
_as3_newobject {object count:6}
//48 
_as3_returnvalue 
                }// end function

//55 03 
_as3_newobject {object count:3}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//5d 82 01 
_as3_findpropstrict mx.core::UIComponentDescriptor
//2c c0 02 
_as3_pushstring "type"
//60 19 
_as3_getlex mx.controls::Image
//2c c1 02 
_as3_pushstring "id"
//2c b6 01 
_as3_pushstring "_ItemRenderer_Image3"
//2c c3 02 
_as3_pushstring "propertiesFactory"
//40 c0 01 
_as3_newfunction 
                function () : Object
                {
//2c 8f 02 
_as3_pushstring "x"
//24 fe 
_as3_pushbyte -2
//2c 90 02 
_as3_pushstring "y"
//24 fe 
_as3_pushbyte -2
//2c d0 03 
_as3_pushstring "alpha"
//2f 02 
_as3_pushdouble 0.7
//2c ee 01 
_as3_pushstring "width"
//24 46 
_as3_pushbyte 70
//2c ef 01 
_as3_pushstring "height"
//24 46 
_as3_pushbyte 70
//2c 94 02 
_as3_pushstring "mouseEnabled"
//27 
_as3_pushfalse 
//55 06 
_as3_newobject {object count:6}
//48 
_as3_returnvalue 
                }// end function

//55 03 
_as3_newobject {object count:3}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//56 04 
_as3_newarray [array size:4]
//55 03 
_as3_newobject {object count:3}
//48 
_as3_returnvalue 
                }// end function

//55 02 
_as3_newobject {object count:2}
//4a 82 01 01 
_as3_constructprop mx.core::UIComponentDescriptor(param count:1)
//68 a1 01 
_as3_initproperty _documentDescriptor_
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
//24 46 
_as3_pushbyte 70
//68 d8 01 
_as3_initproperty width
//d0 
_as3_getlocal <0> 
//24 46 
_as3_pushbyte 70
//68 d9 01 
_as3_initproperty height
//d0 
_as3_getlocal <0> 
//2c ba 02 
_as3_pushstring "off"
//68 df 02 
_as3_initproperty horizontalScrollPolicy
//d0 
_as3_getlocal <0> 
//2c ba 02 
_as3_pushstring "off"
//68 e0 02 
_as3_initproperty verticalScrollPolicy
//47 
_as3_returnvoid 
        }// end function

        private function _ItemRenderer_bindingsSetup() : Array
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
//40 cc 01 
_as3_newfunction 
                function () : Object
                {
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//2c e8 03 
_as3_pushstring "bgItem"
//46 fa 02 01 
_as3_callproperty getImgClass(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 cd 01 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 9c 01 
_as3_getlex _ItemRenderer_Image1
//d1 
_as3_getlocal <1> 
//61 fb 02 
_as3_setproperty source
//47 
_as3_returnvoid 
                }// end function

//2c f2 03 
_as3_pushstring "_ItemRenderer_Image1.source"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 ce 01 
_as3_newfunction 
                function () : Object
                {
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 99 01 
_as3_getlex data
//66 fc 02 
_as3_getproperty photoId
//46 fd 02 01 
_as3_callproperty getItemImageURL(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 cf 01 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 9f 01 
_as3_getlex iconImage
//d1 
_as3_getlocal <1> 
//61 fb 02 
_as3_setproperty source
//47 
_as3_returnvoid 
                }// end function

//2c f3 03 
_as3_pushstring "iconImage.source"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 d0 01 
_as3_newfunction 
                function () : Boolean
                {
//60 99 01 
_as3_getlex data
//66 fe 02 
_as3_getproperty visible
//48 
_as3_returnvalue 
                }// end function

//40 d1 01 
_as3_newfunction 
                function (param1:Boolean) : void
                {
//60 9f 01 
_as3_getlex iconImage
//d1 
_as3_getlocal <1> 
//61 ff 02 
_as3_setproperty visible
//47 
_as3_returnvoid 
                }// end function

//2c f4 03 
_as3_pushstring "iconImage.visible"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 d2 01 
_as3_newfunction 
                function () : Array
                {
//60 99 01 
_as3_getlex data
//66 f7 02 
_as3_getproperty characterAuctionId
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//12 0c 00 00 
_as3_iffalse offset: 12
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//66 80 03 
_as3_getproperty blackFilters
//80 06 
_as3_coerce Array
//10 03 00 00 
_as3_jump offset: 3
//20 
_as3_pushnull 
//80 06 
_as3_coerce Array
//48 
_as3_returnvalue 
                }// end function

//40 d3 01 
_as3_newfunction 
                function (param1:Array) : void
                {
//60 9f 01 
_as3_getlex iconImage
//d1 
_as3_getlocal <1> 
//61 81 03 
_as3_setproperty filters
//47 
_as3_returnvoid 
                }// end function

//2c f5 03 
_as3_pushstring "iconImage.filters"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 d4 01 
_as3_newfunction 
                function () : Boolean
                {
//60 99 01 
_as3_getlex data
//66 fe 02 
_as3_getproperty visible
//48 
_as3_returnvalue 
                }// end function

//40 d5 01 
_as3_newfunction 
                function (param1:Boolean) : void
                {
//60 a0 01 
_as3_getlex _ItemRenderer_Canvas2
//d1 
_as3_getlocal <1> 
//61 ff 02 
_as3_setproperty visible
//47 
_as3_returnvoid 
                }// end function

//2c f6 03 
_as3_pushstring "_ItemRenderer_Canvas2.visible"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 d6 01 
_as3_newfunction 
                function () : String
                {
//60 99 01 
_as3_getlex data
//66 82 03 
_as3_getproperty count
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

//40 d7 01 
_as3_newfunction 
                function (param1:String) : void
                {
//60 98 01 
_as3_getlex lableCount
//d1 
_as3_getlocal <1> 
//61 c7 02 
_as3_setproperty text
//47 
_as3_returnvoid 
                }// end function

//2c f7 03 
_as3_pushstring "lableCount.text"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//5d 95 02 
_as3_findpropstrict mx.binding::Binding
//d0 
_as3_getlocal <0> 
//40 d8 01 
_as3_newfunction 
                function () : Object
                {
//60 83 03 
_as3_getlex com.cgame.config::ItemBorderResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 99 01 
_as3_getlex data
//60 f8 02 
_as3_getlex com.cgame.cache.msg.logic::CharacterLogicItem
//87 
_as3_astypelate 
//66 84 03 
_as3_getproperty color
//46 85 03 01 
_as3_callproperty getItemBorderClass_66(param count:1)
//48 
_as3_returnvalue 
                }// end function

//40 d9 01 
_as3_newfunction 
                function (param1:Object) : void
                {
//60 9d 01 
_as3_getlex _ItemRenderer_Image3
//d1 
_as3_getlocal <1> 
//61 fb 02 
_as3_setproperty source
//47 
_as3_returnvoid 
                }// end function

//2c f8 03 
_as3_pushstring "_ItemRenderer_Image3.source"
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
//61 e2 02 
_as3_setproperty {}
//65 01 
_as3_getscopeobject 1
//6c 01 
_as3_getslot <1>
//48 
_as3_returnvalue 
        }// end function

        public function __iconImage_mouseOut(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//4f 7f 01 
_as3_callpropvoid onOut(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public function __iconImage_click(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//60 99 01 
_as3_getlex data
//4f 7a 02 
_as3_callpropvoid onClickPackItem(param count:2)
//47 
_as3_returnvoid 
        }// end function

        public function set lableCount(param1:Label) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 97 01 
_as3_getproperty _41667817lableCount
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 97 01 
_as3_setproperty _41667817lableCount
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c b1 01 
_as3_pushstring "lableCount"
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

        public function onOver(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//5d a0 02 
_as3_findpropstrict trace
//2c d7 03 
_as3_pushstring "itemId="
//60 99 01 
_as3_getlex data
//66 ea 02 
_as3_getproperty itemId
//a0 
_as3_add 
//4f a0 02 01 
_as3_callpropvoid trace(param count:1)
//5d a0 02 
_as3_findpropstrict trace
//2c d9 03 
_as3_pushstring "color="
//60 99 01 
_as3_getlex data
//66 eb 02 
_as3_getproperty color
//a0 
_as3_add 
//4f a0 02 01 
_as3_callpropvoid trace(param count:1)
//5d a0 02 
_as3_findpropstrict trace
//2c da 03 
_as3_pushstring "obtainTime="
//60 99 01 
_as3_getlex data
//66 ec 02 
_as3_getproperty obtainTime
//a0 
_as3_add 
//4f a0 02 01 
_as3_callpropvoid trace(param count:1)
//d1 
_as3_getlocal <1> 
//66 ed 02 
_as3_getproperty currentTarget
//66 ee 02 
_as3_getproperty transform
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//46 a6 02 00 
_as3_callproperty getItemOverTransform(param count:0)
//61 ef 02 
_as3_setproperty colorTransform
//47 
_as3_returnvoid 
        }// end function

        override public function set data(param1:Object) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//05 99 01 
_as3_setsuper data
//d1 
_as3_getlocal <1> 
//12 1d 00 00 
_as3_iffalse offset: 29
//5e c8 02 
_as3_findproperty toolTip
//60 e8 02 
_as3_getlex com.game.common::ItemToolTipFormat
//d1 
_as3_getlocal <1> 
//46 e9 02 01 
_as3_callproperty getToolTipDesc(param count:1)
//2c d5 03 
_as3_pushstring "
"
//a0 
_as3_add 
//60 ec 01 
_as3_getlex com.cgame.config::Lang
//2c d6 03 
_as3_pushstring "Shift+??:?????"
//46 ed 01 01 
_as3_callproperty msg(param count:1)
//a0 
_as3_add 
//68 c8 02 
_as3_initproperty toolTip
//47 
_as3_returnvoid 
        }// end function

        public function onClickPackItem(param1:MouseEvent, param2:Object) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 f0 02 
_as3_getproperty shiftKey
//12 34 00 00 
_as3_iffalse offset: 52
//60 f1 02 
_as3_getlex org.puremvc.as3.patterns.facade::Facade
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 f2 02 
_as3_getlex com.cgame.command::ControlCmd
//66 f3 02 
_as3_getproperty CHAT_SEND_ITEM_HERO
//2c c0 02 
_as3_pushstring "type"
//24 01 
_as3_pushbyte 1
//2c c1 02 
_as3_pushstring "id"
//60 99 01 
_as3_getlex data
//66 f4 02 
_as3_getproperty id
//2c e3 03 
_as3_pushstring "name"
//60 99 01 
_as3_getlex data
//66 f5 02 
_as3_getproperty name
//2c c7 02 
_as3_pushstring "color"
//60 99 01 
_as3_getlex data
//66 eb 02 
_as3_getproperty color
//55 04 
_as3_newobject {object count:4}
//4f f6 02 02 
_as3_callpropvoid org.puremvc.as3.interfaces:INotifier::sendNotification(param count:2)
//47 
_as3_returnvoid 
//60 99 01 
_as3_getlex data
//66 f7 02 
_as3_getproperty characterAuctionId
//24 00 
_as3_pushbyte 0
//0e 01 00 00 
_as3_ifngt offset: 1
//47 
_as3_returnvoid 
//5d 04 
_as3_findpropstrict modules.character.event::PackageEvent
//60 04 
_as3_getlex modules.character.event::PackageEvent
//66 db 01 
_as3_getproperty SHOW_PACKAGE_OPERATE
//26 
_as3_pushtrue 
//4a 04 02 
_as3_constructprop modules.character.event::PackageEvent(param count:2)
//80 04 
_as3_coerce modules.character.event::PackageEvent
//d7 
_as3_setlocal <3> 
//d3 
_as3_getlocal <3> 
//60 99 01 
_as3_getlex data
//60 f8 02 
_as3_getlex com.cgame.cache.msg.logic::CharacterLogicItem
//87 
_as3_astypelate 
//61 99 01 
_as3_setproperty data
//d3 
_as3_getlocal <3> 
//d0 
_as3_getlocal <0> 
//61 a3 02 
_as3_setproperty itemCanvas
//d3 
_as3_getlocal <3> 
//60 99 01 
_as3_getlex data
//66 f9 02 
_as3_getproperty type
//61 a9 02 
_as3_setproperty itemType
//d0 
_as3_getlocal <0> 
//d3 
_as3_getlocal <3> 
//4f ea 01 01 
_as3_callpropvoid dispatchEvent(param count:1)
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
//80 93 01 
_as3_coerce modules.character::ItemRenderer
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
//66 a1 01 
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
//46 94 01 00 
_as3_callproperty _ItemRenderer_bindingsSetup(param count:0)
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
//80 93 01 
_as3_coerce modules.character::ItemRenderer
//6d 03 
_as3_setslot <3>
//60 d5 01 
_as3_getlex _watcherSetupUtil
//20 
_as3_pushnull 
//14 22 00 00 
_as3_ifne offset: 34
//65 01 
_as3_getscopeobject 1
//5d 93 02 
_as3_findpropstrict flash.utils::getDefinitionByName
//2c c6 01 
_as3_pushstring "_modules_character_ItemRendererWatcherSetupUtil"
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
//66 e2 02 
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
//60 d5 01 
_as3_getlex _watcherSetupUtil
//d0 
_as3_getlocal <0> 
//40 c3 01 
_as3_newfunction 
                function (param1:String)
                {
//60 e1 02 
_as3_getlex modules.character::target
//d1 
_as3_getlocal <1> 
//66 e2 02 
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
//66 e2 02 
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
//46 e3 02 01 
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
//46 e3 02 01 
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

        public function __iconImage_mouseOver(param1:MouseEvent) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//4f 53 01 
_as3_callpropvoid onOver(param count:1)
//47 
_as3_returnvoid 
        }// end function

        private function _ItemRenderer_bindingExprs() : void
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
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//2c e8 03 
_as3_pushstring "bgItem"
//46 fa 02 01 
_as3_callproperty getImgClass(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 99 01 
_as3_getlex data
//66 fc 02 
_as3_getproperty photoId
//46 fd 02 01 
_as3_callproperty getItemImageURL(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 fe 02 
_as3_getproperty visible
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 f7 02 
_as3_getproperty characterAuctionId
//24 00 
_as3_pushbyte 0
//af 
_as3_greaterthan 
//12 0b 00 00 
_as3_iffalse offset: 11
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//66 80 03 
_as3_getproperty blackFilters
//82 
_as3_coerce_a 
//10 02 00 00 
_as3_jump offset: 2
//20 
_as3_pushnull 
//82 
_as3_coerce_a 
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 fe 02 
_as3_getproperty visible
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 99 01 
_as3_getlex data
//66 82 03 
_as3_getproperty count
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//60 83 03 
_as3_getlex com.cgame.config::ItemBorderResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//60 99 01 
_as3_getlex data
//60 f8 02 
_as3_getlex com.cgame.cache.msg.logic::CharacterLogicItem
//87 
_as3_astypelate 
//66 84 03 
_as3_getproperty color
//46 85 03 01 
_as3_callproperty getItemBorderClass_66(param count:1)
//82 
_as3_coerce_a 
//d5 
_as3_setlocal <1> 
//47 
_as3_returnvoid 
        }// end function

        public function set iconImage(param1:Image) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 9b 01 
_as3_getproperty _1410965406iconImage
//80 02 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//d2 
_as3_getlocal <2> 
//d1 
_as3_getlocal <1> 
//19 17 00 00 
_as3_ifstricteq offset: 23
//d0 
_as3_getlocal <0> 
//d1 
_as3_getlocal <1> 
//61 9b 01 
_as3_setproperty _1410965406iconImage
//d0 
_as3_getlocal <0> 
//60 cb 02 
_as3_getlex mx.events::PropertyChangeEvent
//d0 
_as3_getlocal <0> 
//2c b8 01 
_as3_pushstring "iconImage"
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

        public function get iconImage() : Image
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 9b 01 
_as3_getproperty _1410965406iconImage
//48 
_as3_returnvalue 
        }// end function

        public function onOut(param1:Event) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d1 
_as3_getlocal <1> 
//66 ed 02 
_as3_getproperty currentTarget
//66 ee 02 
_as3_getproperty transform
//60 a5 02 
_as3_getlex com.cgame.config::ImageResource
//46 84 02 00 
_as3_callproperty getInstance(param count:0)
//46 a8 02 00 
_as3_callproperty getItemOutTransform(param count:0)
//61 ef 02 
_as3_setproperty colorTransform
//47 
_as3_returnvoid 
        }// end function

        public function get lableCount() : Label
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//66 97 01 
_as3_getproperty _41667817lableCount
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
//61 d5 01 
_as3_setproperty _watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
