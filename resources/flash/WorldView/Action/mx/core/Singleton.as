package mx.core
{

    public class Singleton extends Object
    {
        private static var classMap:Object = {};
        static const VERSION:String = "3.5.0.12683";

        public function Singleton()
        {
            return;
        }// end function

        public static function registerClass(rootURL:String, rootURL:Class) : void
        {
            var _loc_3:* = classMap[rootURL];
            if (!_loc_3)
            {
                classMap[rootURL] = rootURL;
            }// end if
            return;
        }// end function

        public static function getClass(installCompiledResourceBundles:String) : Class
        {
            return classMap[installCompiledResourceBundles];
        }// end function

        public static function getInstance(loadNext:String) : Object
        {
            var _loc_2:* = classMap[loadNext];
            if (!_loc_2)
            {
                throw new Error("No class registered for interface \'" + loadNext + "\'.");
            }// end if
            var _loc_3:* = _loc_2;
            return _loc_3._loc_2["getInstance"]();
        }// end function

    }
}
