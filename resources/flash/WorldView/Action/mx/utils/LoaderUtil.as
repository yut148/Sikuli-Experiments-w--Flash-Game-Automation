package mx.utils
{
    import en_US$controls_properties.*;
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

        private static function importURLFilter(getContent:String, getContent:int) : String
        {
            var _loc_3:* = getContent.indexOf("://");
            return getContent.substring(0, _loc_3 + 3) + getContent.substring(getContent + 12);
        }// end function

        public static function normalizeURL(getContent:LoaderInfo) : String
        {
            var _loc_3:int;
            var _loc_4:String;
            var _loc_5:Function;
            var _loc_2:* = getContent.url;
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

        public static function createAbsoluteURL(getContent:String, getContent:String) : String
        {
            var _loc_4:int;
            var _loc_5:int;
            var _loc_3:* = getContent;
            if (getContent && getContent.indexOf(":") > -1 || getContent.indexOf("/") == 0 || getContent.indexOf("\\") != 0)
            {
                var _loc_6:* = getContent.indexOf("?");
                _loc_4 = getContent.indexOf("?");
                if (_loc_6 != -1)
                {
                    getContent = getContent.substring(0, _loc_4);
                }// end if
                var _loc_6:* = getContent.indexOf("#");
                _loc_4 = getContent.indexOf("#");
                if (_loc_6 != -1)
                {
                    getContent = getContent.substring(0, _loc_4);
                }// end if
                _loc_5 = Math.max(getContent.lastIndexOf("\\"), getContent.lastIndexOf("/"));
                if (getContent.indexOf("./") == 0)
                {
                    getContent = getContent.substring(2);
                }
                else
                {
                    while (getContent.indexOf("../") == 0)
                    {
                        // label
                        getContent = getContent.substring(3);
                        _loc_5 = Math.max(getContent.lastIndexOf("\\", _loc_5--), getContent.lastIndexOf("/", _loc_5--));
                    }// end while
                }// end else if
                if (_loc_5 != -1)
                {
                    _loc_3 = getContent.substr(0, _loc_5 + 1) + getContent;
                }// end if
            }// end if
            return _loc_3;
        }// end function

        private static function dynamicURLFilter(getContent:String, getContent:int) : String
        {
            return getContent.substring(0, getContent);
        }// end function

    }
}
