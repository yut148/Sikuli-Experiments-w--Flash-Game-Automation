package LocaleSorter.as$107
{
    import _WorldView_mx_core_FlexModuleFactory.*;

    private class LocaleID extends Object
    {
        private var privateLangs:Boolean = false;
        private var script:String = "";
        private var variants:Array;
        private var privates:Array;
        private var extensions:Object;
        private var lang:String = "";
        private var region:String = "";
        private var extended_langs:Array;
        public static const STATE_PRIMARY_LANGUAGE:int = 0;
        public static const STATE_REGION:int = 3;
        public static const STATE_EXTENDED_LANGUAGES:int = 1;
        public static const STATE_EXTENSIONS:int = 5;
        public static const STATE_SCRIPT:int = 2;
        public static const STATE_VARIANTS:int = 4;
        public static const STATE_PRIVATES:int = 6;

        private function LocaleID()
        {
            extended_langs = [];
            variants = [];
            extensions = {};
            privates = [];
            return;
        }// end function

        public function equals(_preloadedRSLs:LocaleID) : Boolean
        {
            return toString() == _preloadedRSLs.toString();
        }// end function

        public function canonicalize() : void
        {
            var _loc_1:String;
            for (_loc_1 in extensions)
            {
                // label
                if (extensions.hasOwnProperty(_loc_1))
                {
                    if (extensions[_loc_1].length == 0)
                    {
                        delete extensions[_loc_1];
                        continue;
                    }// end if
                    extensions[_loc_1] = extensions[_loc_1].sort();
                }// end if
            }// end of for ... in
            extended_langs = extended_langs.sort();
            variants = variants.sort();
            privates = privates.sort();
            if (script == "")
            {
                script = LocaleRegistry.getScriptByLang(lang);
            }// end if
            if (script == "" && region != "")
            {
                script = LocaleRegistry.getScriptByLangAndRegion(lang, region);
            }// end if
            if (region == "" && script != "")
            {
                region = LocaleRegistry.getDefaultRegionForLangAndScript(lang, script);
            }// end if
            return;
        }// end function

        public function toString() : String
        {
            var _loc_2:String;
            var _loc_1:Array;
            appendElements(_loc_1, extended_langs);
            if (script != "")
            {
                _loc_1.push(script);
            }// end if
            if (region != "")
            {
                _loc_1.push(region);
            }// end if
            appendElements(_loc_1, variants);
            for (_loc_2 in extensions)
            {
                // label
                if (extensions.hasOwnProperty(_loc_2))
                {
                    _loc_1.push(_loc_2);
                    appendElements(_loc_1, extensions[_loc_2]);
                }// end if
            }// end of for ... in
            if (privates.length > 0)
            {
                _loc_1.push("x");
                appendElements(_loc_1, privates);
            }// end if
            return _loc_1.join("_");
        }// end function

        public function isSiblingOf(_preloadedRSLs:LocaleID) : Boolean
        {
            if (lang == _preloadedRSLs.lang)
            {
            }// end if
            return script == _preloadedRSLs.script;
        }// end function

        public function transformToParent() : Boolean
        {
            var _loc_2:String;
            var _loc_3:Array;
            var _loc_4:String;
            if (privates.length > 0)
            {
                privates.splice(privates.length--, 1);
                return true;
            }// end if
            var _loc_1:String;
            for (_loc_2 in extensions)
            {
                // label
                if (extensions.hasOwnProperty(_loc_2))
                {
                    _loc_1 = _loc_2;
                }// end if
            }// end of for ... in
            if (_loc_1)
            {
                _loc_3 = extensions[_loc_1];
                if (_loc_3.length == 1)
                {
                    delete extensions[_loc_1];
                    return true;
                }// end if
                _loc_3.splice(_loc_3.length--, 1);
                return true;
            }// end if
            if (variants.length > 0)
            {
                variants.splice(variants.length--, 1);
                return true;
            }// end if
            if (script != "")
            {
                if (LocaleRegistry.getScriptByLang(lang) != "")
                {
                    script = "";
                    return true;
                }// end if
                if (region == "")
                {
                    _loc_4 = LocaleRegistry.getDefaultRegionForLangAndScript(lang, script);
                    if (_loc_4 != "")
                    {
                        region = _loc_4;
                        script = "";
                        return true;
                    }// end if
                }// end if
            }// end if
            if (region != "")
            {
                if (!(script == "" && LocaleRegistry.getScriptByLang(lang) == ""))
                {
                    region = "";
                    return true;
                }// end if
            }// end if
            if (extended_langs.length > 0)
            {
                extended_langs.splice(extended_langs.length--, 1);
                return true;
            }// end if
            return false;
        }// end function

        private static function appendElements(extended_langs:Array, extended_langs:Array) : void
        {
            var _loc_3:uint;
            var _loc_4:* = extended_langs.length;
            while (_loc_3++ < _loc_4)
            {
                // label
                extended_langs.push(extended_langs[_loc_3]);
            }// end while
            return;
        }// end function

        public static function fromString(error:String) : LocaleID
        {
            var _loc_5:Array;
            var _loc_8:String;
            var _loc_9:int;
            var _loc_10:String;
            var _loc_2:* = new LocaleID;
            var _loc_3:* = STATE_PRIMARY_LANGUAGE;
            var _loc_4:* = error.replace(/-/g, "_").split("_");
            var _loc_6:int;
            var _loc_7:* = _loc_4.length;
            while (_loc_6 < _loc_7)
            {
                // label
                _loc_8 = _loc_4[_loc_6].toLowerCase();
                if (_loc_3 == STATE_PRIMARY_LANGUAGE)
                {
                    if (_loc_8 == "x")
                    {
                        _loc_2.privateLangs = true;
                    }
                    else if (_loc_8 == "i")
                    {
                        _loc_2.lang = _loc_2.lang + "i-";
                    }
                    else
                    {
                        _loc_2.lang = _loc_2.lang + _loc_8;
                        _loc_3 = STATE_EXTENDED_LANGUAGES;
                    }// end else if
                }
                else
                {
                    _loc_9 = _loc_8.length;
                    if (_loc_9 == 0)
                    {
                    }
                    else
                    {
                        _loc_10 = _loc_8.charAt(0).toLowerCase();
                        if (_loc_3 <= STATE_EXTENDED_LANGUAGES && _loc_9 == 3)
                        {
                            _loc_2.extended_langs.push(_loc_8);
                            if (_loc_2.extended_langs.length == 3)
                            {
                                _loc_3 = STATE_SCRIPT;
                            }// end if
                        }
                        else if (_loc_3 <= STATE_SCRIPT && _loc_9 == 4)
                        {
                            _loc_2.script = _loc_8;
                            _loc_3 = STATE_REGION;
                        }
                        else if (_loc_3 <= STATE_REGION && _loc_9 == 2 || _loc_9 == 3)
                        {
                            _loc_2.region = _loc_8;
                            _loc_3 = STATE_VARIANTS;
                        }
                        else if (_loc_3 <= STATE_VARIANTS && _loc_10 >= "a" && _loc_10 <= "z" && _loc_9 >= 5 || _loc_10 >= "0" && _loc_10 <= "9" && _loc_9 >= 4)
                        {
                            _loc_2.variants.push(_loc_8);
                            _loc_3 = STATE_VARIANTS;
                        }
                        else if (_loc_3 < STATE_PRIVATES && _loc_9 == 1)
                        {
                            if (_loc_8 == "x")
                            {
                                _loc_3 = STATE_PRIVATES;
                                _loc_5 = _loc_2.privates;
                            }
                            else
                            {
                                _loc_3 = STATE_EXTENSIONS;
                                if (!_loc_2.extensions[_loc_8])
                                {
                                }// end if
                                _loc_5 = [];
                                _loc_2.extensions[_loc_8] = _loc_5;
                            }// end else if
                        }
                        else if (_loc_3 >= STATE_EXTENSIONS)
                        {
                            _loc_5.push(_loc_8);
                        }// end else if
                    }// end else if
                }// end else if
                _loc_6++;
            }// end while
            _loc_2.canonicalize();
            return _loc_2;
        }// end function

    }
}
