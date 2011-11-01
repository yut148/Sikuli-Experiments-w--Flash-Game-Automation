package com.game.common
{
    import flash.events.*;
    import mx.controls.*;

    public class NumericTextInput extends TextInput
    {
        public var minValue:int = 1;
        public var maxValue:int = 100;

        public function NumericTextInput()
        {
            addEventListener(TextEvent.TEXT_INPUT, this.onTextInput);
            addEventListener(Event.CHANGE, this.onChange);
            return;
        }// end function

        private function onTextInput(param1:TextEvent) : void
        {
            var _loc_2:* = this.selectionBeginIndex;
            var _loc_3:* = textField.text;
            var _loc_4:* = param1.text;
            var _loc_5:* = _loc_3.substr(0, _loc_2) + _loc_4 + _loc_3.substr(selectionEndIndex);
            var _loc_6:* = int(_loc_5);
            if (isNaN(_loc_6))
            {
                param1.preventDefault();
            }// end if
            return;
        }// end function

        private function onChange(param1:Event) : void
        {
            var _loc_2:* = int(textField.text);
            if (isNaN(_loc_2) || _loc_2 < this.minValue)
            {
                this.text = this.minValue.toString();
            }// end if
            if (_loc_2 > this.maxValue)
            {
                this.text = this.maxValue.toString();
            }// end if
            return;
        }// end function

    }
}
