package com.utils
{
    import mx.collections.*;

    public class ArrayCllectionUtil extends Object
    {

        public function ArrayCllectionUtil()
        {
            return;
        }// end function

        public static function countTotalPage(param1:ArrayCollection, param2:int) : int
        {
            if (param1.length == 0)
            {
                return 0;
            }// end if
            return Math.ceil(param1.length / param2);
        }// end function

        public static function getThePageData(param1:ArrayCollection, param2:int, param3:int) : ArrayCollection
        {
            if (!param1 || param3 < 1)
            {
                return null;
            }// end if
            var _loc_4:* = param3-- * param2;
            var _loc_5:* = Math.min(param1.length, param3 * param2);
            var _loc_6:* = new ArrayCollection();
            var _loc_7:* = _loc_4;
            while (_loc_7 < _loc_5)
            {
                // label
                _loc_6.addItem(param1[_loc_7]);
                _loc_7++;
            }// end while
            return _loc_6;
        }// end function

        public static function getPageIndexByItemIndex(param1:int, param2:int) : int
        {
            return Math.ceil(param1 / param2);
        }// end function

        public static function getThePageDataByItemIndex(param1:ArrayCollection, param2:int, param3:int) : ArrayCollection
        {
            return getThePageData(param1, param2, getPageIndexByItemIndex(param3, param2));
        }// end function

    }
}
