package mx.utils
{

    public class StringUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function StringUtil()
        {
            return;
        }// end function

        public static function trim(param1:String) : String
        {
            if (param1 == null)
            {
                return "";
            }// end if
            var _loc_2:int;
            while (isWhitespace(param1.charAt(_loc_2)))
            {
                // label
                _loc_2++;
            }// end while
            while (isWhitespace(param1.charAt(param1.length----)))
            {
                // label
            }// end while
            if (_loc_3 >= _loc_2)
            {
                return param1.slice(_loc_2, _loc_3 + 1);
            }// end if
            return "";
        }// end function

        public static function isWhitespace(param1:String) : Boolean
        {
            switch(param1)
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

        public static function substitute(param1:String, ... args) : String
        {
            var _loc_4:Array;
            if (param1 == null)
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
                param1 = param1.replace(new RegExp("\\{" + _loc_5 + "\\}", "g"), _loc_4[_loc_5]);
                _loc_5++;
            }// end while
            return param1;
        }// end function

        public static function trimArrayElements(param1:String, param2:String) : String
        {
            var _loc_3:Array;
            var _loc_4:int;
            var _loc_5:int;
            if (param1 != "" && param1 != null)
            {
                _loc_3 = param1.split(param2);
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
                    param1 = _loc_3.join(param2);
                }// end if
            }// end if
            return param1;
        }// end function

    }
}
