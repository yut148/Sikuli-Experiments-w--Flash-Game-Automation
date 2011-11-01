package mx.core
{
    import flash.text.*;
    import flash.utils.*;

    public class TextFieldFactory extends Object implements ITextFieldFactory
    {
        private var textFields:Dictionary;
        static const VERSION:String = "3.5.0.12683";
        private static var instance:ITextFieldFactory;

        public function TextFieldFactory()
        {
            textFields = new Dictionary(true);
            return;
        }// end function

        public function createTextField(param1:IFlexModuleFactory) : TextField
        {
            var _loc_4:Object;
            var _loc_2:TextField;
            var _loc_3:* = textFields[param1];
            if (_loc_3)
            {
                for (_loc_4 in _loc_3)
                {
                    // label
                    _loc_2 = TextField(_loc_4);
                    break;
                }// end of for ... in
            }// end if
            if (!_loc_2)
            {
                if (param1)
                {
                    _loc_2 = TextField(param1.create("flash.text.TextField"));
                }
                else
                {
                    _loc_2 = new TextField();
                }// end else if
                if (!_loc_3)
                {
                    _loc_3 = new Dictionary(true);
                }// end if
                _loc_3[_loc_2] = 1;
                textFields[param1] = _loc_3;
            }// end if
            return _loc_2;
        }// end function

        public static function getInstance() : ITextFieldFactory
        {
            if (!instance)
            {
                instance = new TextFieldFactory;
            }// end if
            return instance;
        }// end function

    }
}
