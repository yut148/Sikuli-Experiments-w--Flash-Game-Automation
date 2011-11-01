package mx.utils
{
    import mx.core.*;

    public class StringUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function StringUtil()
        {
            return;
        }// end function

        public static function trim(_module:String) : String
        {
            if (_module == null)
            {
                return "";
            }// end if
            var _loc_2:int;
            while (isWhitespace(_module.charAt(_loc_2)))
            {
                // label
                _loc_2++;
            }// end while
            while (isWhitespace(_module.charAt(_module.length----)))
            {
                // label
            }// end while
            if (_loc_3 >= _loc_2)
            {
                return _module.slice(_loc_2, _loc_3 + 1);
            }// end if
            return "";
        }// end function

        public static function isWhitespace(Singleton:String) : Boolean
        {
            switch(Singleton)
            {
                case " ":
                case "\t":
                case "\r":
                case "\n":
                case "\f":
                {
                    return true;
                }// end case
                default:
                {
                    return false;
                    break;
                }// end default
            }// end switch
        }// end function

        public static function substitute(_module:String, ... args) : String
        {
            var _loc_4:Array;
            if (_module == null)
            {
                return "";
            }// end if
            var _loc_3:* = args.length;
            if (_loc_3 == 1 && args[0] is Array)
            {
                _loc_4 = args[0] as Array;
                _loc_3 = _loc_4.length;
            }
            else
            {
                _loc_4 = args;
            }// end else if
            var _loc_5:int;
            while (_loc_5 < _loc_3)
            {
                // label
                _module = _module.replace(new RegExp("\\{" + _loc_5 + "\\}", "g"), _loc_4[_loc_5]);
                _loc_5++;
            }// end while
            return _module;
        }// end function

        public static function trimArrayElements(_module:String, _module:String) : String
        {
            var _loc_3:Array;
            var _loc_4:int;
            var _loc_5:int;
            if (_module != "" && _module != null)
            {
                _loc_3 = _module.split(_module);
                _loc_4 = _loc_3.length;
                _loc_5 = 0;
                while (_loc_5 < _loc_4)
                {
                    // label
                    _loc_3[_loc_5] = StringUtil.trim(_loc_3[_loc_5]);
                    _loc_5++;
                }// end while
                if (_loc_4 > 0)
                {
                    _module = _loc_3.join(_module);
                }// end if
            }// end if
            return _module;
        }// end function

    }
}
