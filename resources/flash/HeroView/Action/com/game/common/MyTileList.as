package com.game.common
{
    import flash.display.*;
    import flash.events.*;
    import mx.controls.*;
    import mx.controls.listClasses.*;
    import mx.events.*;

    public class MyTileList extends TileList
    {
        private var img:Class;
        private var highlight_img:Class;

        public function MyTileList()
        {
            return;
        }// end function

        override protected function mouseClickHandler(param1:MouseEvent) : void
        {
            if (param1.ctrlKey)
            {
                param1.ctrlKey = false;
                param1.shiftKey = true;
            }// end if
            super.mouseClickHandler(param1);
            return;
        }// end function

        override protected function keyDownHandler(param1:KeyboardEvent) : void
        {
            if (param1.ctrlKey)
            {
                param1.ctrlKey = false;
                param1.shiftKey = true;
            }// end if
            super.keyDownHandler(param1);
            return;
        }// end function

        override protected function mouseDownHandler(param1:MouseEvent) : void
        {
            if (param1.ctrlKey)
            {
                param1.ctrlKey = false;
                param1.shiftKey = true;
            }// end if
            super.mouseDownHandler(param1);
            return;
        }// end function

        override protected function drawSelectionIndicator(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:IListItemRenderer) : void
        {
            var _loc_8:Object;
            if (this.img)
            {
                _loc_8 = new this.img();
                param1.addChild(_loc_8 as DisplayObject);
            }// end if
            super.drawSelectionIndicator(param1, param2, param3, param4, param5, 4294967295, param7);
            return;
        }// end function

        override public function stylesInitialized() : void
        {
            this.img = this.getStyle("selectionImg");
            return;
        }// end function

        override protected function dragDropHandler(param1:DragEvent) : void
        {
            hideDropFeedback(param1);
            return;
        }// end function

        override protected function dragExitHandler(param1:DragEvent) : void
        {
            return;
        }// end function

        override protected function scrollHandler(param1:Event) : void
        {
            super.scrollHandler(param1);
            this.updateList();
            return;
        }// end function

        override protected function drawHighlightIndicator(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:IListItemRenderer) : void
        {
            return;
        }// end function

    }
}
