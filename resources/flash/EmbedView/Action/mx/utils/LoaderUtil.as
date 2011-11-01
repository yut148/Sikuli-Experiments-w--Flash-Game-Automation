package mx.utils
{
    import flash.display.*;
    import mx.core.*;

    public class LoaderUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";
        static var urlFilters:Array = [{searchString:"/[[DYNAMIC]]/", filterFunction:dynamicURLFilter}, {searchString:"/[[IMPORT]]/", filterFunction:importURLFilter}];

        public function LoaderUtil()
        {
            return;
        }// end function

        private static function importURLFilter(param1:String, param2:int) : String
        {
            var _loc_3:* = param1.indexOf("://");
            return param1.substring(0, _loc_3 + 3) + param1.substring(param2 + 12);
        }// end function

        public static function normalizeURL(param1:LoaderInfo) : String
        {
            var _loc_3:int;
            var _loc_4:String;
            var _loc_5:Function;
            var _loc_2:* = param1.url;
            var _loc_6:* = mx_internal::urlFilters.length;
            var _loc_7:uint;
            while (_loc_7++ < _loc_6)
            {
                // label
                _loc_4 = mx_internal::urlFilters[_loc_7].searchString;
                var _loc_8:* = _loc_2.indexOf(_loc_4);
                _loc_3 = _loc_2.indexOf(_loc_4);
                if (_loc_8 != -1)
                {
                    _loc_5 = mx_internal::urlFilters[_loc_7].filterFunction;
                    _loc_2 = this._loc_5(_loc_2, _loc_3);
                }// end if
            }// end while
            return _loc_2;
        }// end function

        public static function createAbsoluteURL(param1:String, param2:String) : String
        {
            var _loc_4:int;
            var _loc_5:int;
            var _loc_3:* = param2;
            if (param1 && param2.indexOf(":") > -1 || param2.indexOf("/") == 0 || param2.indexOf("\\") != 0)
            {
                var _loc_6:* = param1.indexOf("?");
                _loc_4 = param1.indexOf("?");
                if (_loc_6 != -1)
                {
                    param1 = param1.substring(0, _loc_4);
                }// end if
                var _loc_6:* = param1.indexOf("#");
                _loc_4 = param1.indexOf("#");
                if (_loc_6 != -1)
                {
                    param1 = param1.substring(0, _loc_4);
                }// end if
                _loc_5 = Math.max(param1.lastIndexOf("\\"), param1.lastIndexOf("/"));
                if (param2.indexOf("./") == 0)
                {
                    param2 = param2.substring(2);
                }
                else
                {
                    while (param2.indexOf("../") == 0)
                    {
                        // label
                        param2 = param2.substring(3);
                        _loc_5 = Math.max(param1.lastIndexOf("\\", _loc_5--), param1.lastIndexOf("/", _loc_5--));
                    }// end while
                }// end else if
                if (_loc_5 != -1)
                {
                    _loc_3 = param1.substr(0, _loc_5 + 1) + param2;
                }// end if
            }// end if
            return _loc_3;
        }// end function

        private static function dynamicURLFilter(param1:String, param2:int) : String
        {
            return param1.substring(0, param2);
        }// end function

    }
}
