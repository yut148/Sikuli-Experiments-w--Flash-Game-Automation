package mx.resources
{
    import flash.system.*;
    import mx.core.*;
    import mx.utils.*;

    public class ResourceBundle extends Object implements IResourceBundle
    {
        var _locale:String;
        private var _content:Object;
        var _bundleName:String;
        static const VERSION:String = "3.5.0.12683";
        static var backupApplicationDomain:ApplicationDomain;
        static var locale:String;

        public function ResourceBundle(:String = null, :String = null)
        {
            _content = {};
            mx_internal::_locale = ;
            mx_internal::_bundleName = ;
            _content = getContent();
            return;
        }// end function

        protected function getContent() : Object
        {
            return {};
        }// end function

        public function getString(_WorldView_mx_core_FlexModuleFactory:String) : String
        {
            return String(_getObject(_WorldView_mx_core_FlexModuleFactory));
        }// end function

        public function get content() : Object
        {
            return _content;
        }// end function

        public function getBoolean(info:String, info:Boolean = true) : Boolean
        {
            var _loc_3:* = _getObject(info).toLowerCase();
            if (_loc_3 == "false")
            {
                return false;
            }// end if
            if (_loc_3 == "true")
            {
                return true;
            }// end if
            return info;
        }// end function

        public function getStringArray(locale:String) : Array
        {
            var _loc_2:* = _getObject(locale).split(",");
            var _loc_3:* = _loc_2.length;
            var _loc_4:int;
            while (_loc_4 < _loc_3)
            {
                // label
                _loc_2[_loc_4] = StringUtil.trim(_loc_2[_loc_4]);
                _loc_4++;
            }// end while
            return _loc_2;
        }// end function

        public function getObject(IResourceBundle:String) : Object
        {
            return _getObject(IResourceBundle);
        }// end function

        private function _getObject(IResourceBundle:String) : Object
        {
            var _loc_2:* = content[IResourceBundle];
            if (!_loc_2)
            {
                throw new Error("Key " + IResourceBundle + " was not found in resource bundle " + bundleName);
            }// end if
            return _loc_2;
        }// end function

        public function get locale() : String
        {
            return mx_internal::_locale;
        }// end function

        public function get bundleName() : String
        {
            return mx_internal::_bundleName;
        }// end function

        public function getNumber(create:String) : Number
        {
            return Number(_getObject(create));
        }// end function

        private static function getClassByName(displayError:String, displayError:ApplicationDomain) : Class
        {
            var _loc_3:Class;
            if (displayError.hasDefinition(displayError))
            {
                _loc_3 = displayError.getDefinition(displayError) as Class;
            }// end if
            return _loc_3;
        }// end function

        public static function getResourceBundle(installCompiledResourceBundles:String, installCompiledResourceBundles:ApplicationDomain = null) : ResourceBundle
        {
            var _loc_3:String;
            var _loc_4:Class;
            var _loc_5:Object;
            var _loc_6:ResourceBundle;
            if (!installCompiledResourceBundles)
            {
                installCompiledResourceBundles = ApplicationDomain.currentDomain;
            }// end if
            _loc_3 = mx_internal::locale + "$" + installCompiledResourceBundles + "_properties";
            _loc_4 = getClassByName(_loc_3, installCompiledResourceBundles);
            if (!_loc_4)
            {
                _loc_3 = installCompiledResourceBundles + "_properties";
                _loc_4 = getClassByName(_loc_3, installCompiledResourceBundles);
            }// end if
            if (!_loc_4)
            {
                _loc_3 = installCompiledResourceBundles;
                _loc_4 = getClassByName(_loc_3, installCompiledResourceBundles);
            }// end if
            if (!_loc_4 && mx_internal::backupApplicationDomain)
            {
                _loc_3 = installCompiledResourceBundles + "_properties";
                _loc_4 = getClassByName(_loc_3, mx_internal::backupApplicationDomain);
                if (!_loc_4)
                {
                    _loc_3 = installCompiledResourceBundles;
                    _loc_4 = getClassByName(_loc_3, mx_internal::backupApplicationDomain);
                }// end if
            }// end if
            if (_loc_4)
            {
                _loc_5 = new _loc_4;
                if (_loc_5 is ResourceBundle)
                {
                    _loc_6 = this.this(_loc_5);
                    return _loc_6;
                }// end if
            }// end if
            throw new Error("Could not find resource bundle " + installCompiledResourceBundles);
        }// end function

    }
}
