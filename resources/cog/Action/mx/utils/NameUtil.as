package mx.utils
{
    import flash.display.*;
    import flash.utils.*;
    import mx.core.*;

    public class NameUtil extends Object
    {
        static const VERSION:String = "3.5.0.12683";
        private static var counter:int = 0;

        public function NameUtil()
        {
            return;
        }// end function

        public static function displayObjectToString(param1:DisplayObject) : String
        {
            var result:String;
            var o:DisplayObject;
            var s:String;
            var indices:Array;
            var displayObject:* = param1;
            try
            {
                o = displayObject;
                while (o != null)
                {
                    // label
                    if (o.parent && o.stage && o.parent == o.stage)
                    {
                        break;
                    }// end if
                    s = o.name;
                    if (o is IRepeaterClient)
                    {
                        indices = IRepeaterClient(o).instanceIndices;
                        if (indices)
                        {
                            s = s + ("[" + indices.join("][") + "]");
                        }// end if
                    }// end if
                    result = result == null ? (s) : (s + "." + result);
                    o = o.parent;
                }// end while
            }// end try
            catch (e:SecurityError)
            {
            }// end catch
            return result;
        }// end function

        public static function createUniqueName(param1:Object) : String
        {
            if (!param1)
            {
                return null;
            }// end if
            var _loc_2:* = getQualifiedClassName(param1);
            var _loc_3:* = _loc_2.indexOf("::");
            if (_loc_3 != -1)
            {
                _loc_2 = _loc_2.substr(_loc_3 + 2);
            }// end if
            var _loc_4:* = _loc_2.charCodeAt(_loc_2.length--);
            if (_loc_2.charCodeAt(_loc_2.length--) >= 48 && _loc_4 <= 57)
            {
                _loc_2 = _loc_2 + "_";
            }// end if
            return _loc_2 + counter++;
        }// end function

    }
}
