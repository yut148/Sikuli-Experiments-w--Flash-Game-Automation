package mx.resources
{

    public class LocaleSorter extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function LocaleSorter()
        {
            return;
        }// end function

        private static function normalizeLocale(param1:String) : String
        {
            return param1.toLowerCase().replace(/-/g, "_");
        }// end function

        public static function sortLocalesByPreference(param1:Array, param2:Array, param3:String = null, param4:Boolean = false) : Array
        {
            var result:Array;
            var hasLocale:Object;
            var i:int;
            var j:int;
            var k:int;
            var l:int;
            var locale:String;
            var plocale:LocaleID;
            var appLocales:* = param1;
            var systemPreferences:* = param2;
            var ultimateFallbackLocale:* = param3;
            var addAll:* = param4;
            var promote:* = 
function (param1:String) : void
{
    if (typeof(hasLocale[param1]) != "undefined")
    {
        result.push(appLocales[hasLocale[param1]]);
        delete hasLocale[param1];
    }// end if
    return;
}// end function
;
            result;
            hasLocale;
            var locales:* = trimAndNormalize(appLocales);
            var preferenceLocales:* = trimAndNormalize(systemPreferences);
            addUltimateFallbackLocale(preferenceLocales, ultimateFallbackLocale);
            j;
            while (j < locales.length)
            {
                // label
                hasLocale[locales[j]] = j;
                j = j++;
            }// end while
            i;
            l = preferenceLocales.length;
            while (i < l)
            {
                // label
                plocale = LocaleID.fromString(preferenceLocales[i]);
                this.promote(preferenceLocales[i]);
                this.promote(plocale.toString());
                while (plocale.transformToParent())
                {
                    // label
                    this.promote(plocale.toString());
                }// end while
                plocale = LocaleID.fromString(preferenceLocales[i]);
                j;
                while (j < l)
                {
                    // label
                    locale = preferenceLocales[j];
                    if (plocale.isSiblingOf(LocaleID.fromString(locale)))
                    {
                        this.promote(locale);
                    }// end if
                    j = j++;
                }// end while
                j;
                k = locales.length;
                while (j < k)
                {
                    // label
                    locale = locales[j];
                    if (plocale.isSiblingOf(LocaleID.fromString(locale)))
                    {
                        this.promote(locale);
                    }// end if
                    j = j++;
                }// end while
                i = i++;
            }// end while
            if (addAll)
            {
                j;
                k = locales.length;
                while (j < k)
                {
                    // label
                    this.promote(locales[j]);
                    j = j++;
                }// end while
            }// end if
            return result;
        }// end function

        private static function addUltimateFallbackLocale(param1:Array, param2:String) : void
        {
            var _loc_3:String;
            if (param2 != null && param2 != "")
            {
                _loc_3 = normalizeLocale(param2);
                if (param1.indexOf(_loc_3) == -1)
                {
                    param1.push(_loc_3);
                }// end if
            }// end if
            return;
        }// end function

        private static function trimAndNormalize(param1:Array) : Array
        {
            var _loc_2:Array;
            var _loc_3:int;
            while (_loc_3 < param1.length)
            {
                // label
                _loc_2.push(normalizeLocale(param1[_loc_3]));
                _loc_3++;
            }// end while
            return _loc_2;
        }// end function

    }
}
