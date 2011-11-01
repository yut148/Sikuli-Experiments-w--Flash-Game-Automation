package mx.resources
{
    import LocaleSorter.as$107.*;
    import ModuleManager.as$26.*;

    public class LocaleSorter extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function LocaleSorter()
        {
            return;
        }// end function

        private static function normalizeLocale(ModuleManagerImpl:String) : String
        {
            return ModuleManagerImpl.toLowerCase().replace(/-/g, "_");
        }// end function

        public static function sortLocalesByPreference(preloadedRSLs:Array, preloadedRSLs:Array, preloadedRSLs:String = null, preloadedRSLs:Boolean = false) : Array
        {
            var result:Array;
            var hasLocale:Object;
            var i:int;
            var j:int;
            var k:int;
            var l:int;
            var locale:String;
            var plocale:LocaleID;
            var appLocales:* = preloadedRSLs;
            var systemPreferences:* = preloadedRSLs;
            var ultimateFallbackLocale:* = preloadedRSLs;
            var addAll:* = preloadedRSLs;
            var promote:* = 
function (extended_langs:String) : void
{
    if (typeof(hasLocale[extended_langs]) != "undefined")
    {
        result.push(appLocales[hasLocale[extended_langs]]);
        delete hasLocale[extended_langs];
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

        private static function addUltimateFallbackLocale(extended_langs:Array, extended_langs:String) : void
        {
            var _loc_3:String;
            if (extended_langs != null && extended_langs != "")
            {
                _loc_3 = normalizeLocale(extended_langs);
                if (extended_langs.indexOf(_loc_3) == -1)
                {
                    extended_langs.push(_loc_3);
                }// end if
            }// end if
            return;
        }// end function

        private static function trimAndNormalize(preloadedRSLs:Array) : Array
        {
            var _loc_2:Array;
            var _loc_3:int;
            while (_loc_3 < preloadedRSLs.length)
            {
                // label
                _loc_2.push(normalizeLocale(preloadedRSLs[_loc_3]));
                _loc_3++;
            }// end while
            return _loc_2;
        }// end function

    }
}
