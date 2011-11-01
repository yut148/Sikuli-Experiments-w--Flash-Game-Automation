package LocaleSorter.as$107
{
    import ModuleManager.as$26.*;

    private class LocaleRegistry extends Object
    {
        private static const SCRIPT_ID_BY_LANG:Object = {ab:5, af:1, am:2, ar:3, as:4, ay:1, be:5, bg:5, bn:4, bs:1, ca:1, ch:1, cs:1, cy:1, da:1, de:1, dv:6, dz:7, el:8, en:1, eo:1, es:1, et:1, eu:1, fa:3, fi:1, fj:1, fo:1, fr:1, frr:1, fy:1, ga:1, gl:1, gn:1, gu:9, gv:1, he:10, hi:11, hr:1, ht:1, hu:1, hy:12, id:1, in:1, is:1, it:1, iw:10, ja:13, ka:14, kk:5, kl:1, km:15, kn:16, ko:17, la:1, lb:1, ln:1, lo:18, lt:1, lv:1, mg:1, mh:1, mk:5, ml:19, mo:1, mr:11, ms:1, mt:1, my:20, na:1, nb:1, nd:1, ne:11, nl:1, nn:1, no:1, nr:1, ny:1, om:1, or:21, pa:22, pl:1, ps:3, pt:1, qu:1, rn:1, ro:1, ru:5, rw:1, sg:1, si:23, sk:1, sl:1, sm:1, so:1, sq:1, ss:1, st:1, sv:1, sw:1, ta:24, te:25, th:26, ti:2, tl:1, tn:1, to:1, tr:1, ts:1, uk:5, ur:3, ve:1, vi:1, wo:1, xh:1, yi:10, zu:1, cpe:1, dsb:1, frs:1, gsw:1, hsb:1, kok:11, mai:11, men:1, nds:1, niu:1, nqo:27, nso:1, son:1, tem:1, tkl:1, tmh:1, tpi:1, tvl:1, zbl:28};
        private static const SCRIPTS:Array = ["", "latn", "ethi", "arab", "beng", "cyrl", "thaa", "tibt", "grek", "gujr", "hebr", "deva", "armn", "jpan", "geor", "khmr", "knda", "kore", "laoo", "mlym", "mymr", "orya", "guru", "sinh", "taml", "telu", "thai", "nkoo", "blis", "hans", "hant", "mong", "syrc"];
        private static const DEFAULT_REGION_BY_LANG_AND_SCRIPT:Object = {bg:{5:"bg"}, ca:{1:"es"}, zh:{30:"tw", 29:"cn"}, cs:{1:"cz"}, da:{1:"dk"}, de:{1:"de"}, el:{8:"gr"}, en:{1:"us"}, es:{1:"es"}, fi:{1:"fi"}, fr:{1:"fr"}, he:{10:"il"}, hu:{1:"hu"}, is:{1:"is"}, it:{1:"it"}, ja:{13:"jp"}, ko:{17:"kr"}, nl:{1:"nl"}, nb:{1:"no"}, pl:{1:"pl"}, pt:{1:"br"}, ro:{1:"ro"}, ru:{5:"ru"}, hr:{1:"hr"}, sk:{1:"sk"}, sq:{1:"al"}, sv:{1:"se"}, th:{26:"th"}, tr:{1:"tr"}, ur:{3:"pk"}, id:{1:"id"}, uk:{5:"ua"}, be:{5:"by"}, sl:{1:"si"}, et:{1:"ee"}, lv:{1:"lv"}, lt:{1:"lt"}, fa:{3:"ir"}, vi:{1:"vn"}, hy:{12:"am"}, az:{1:"az", 5:"az"}, eu:{1:"es"}, mk:{5:"mk"}, af:{1:"za"}, ka:{14:"ge"}, fo:{1:"fo"}, hi:{11:"in"}, ms:{1:"my"}, kk:{5:"kz"}, ky:{5:"kg"}, sw:{1:"ke"}, uz:{1:"uz", 5:"uz"}, tt:{5:"ru"}, pa:{22:"in"}, gu:{9:"in"}, ta:{24:"in"}, te:{25:"in"}, kn:{16:"in"}, mr:{11:"in"}, sa:{11:"in"}, mn:{5:"mn"}, gl:{1:"es"}, kok:{11:"in"}, syr:{32:"sy"}, dv:{6:"mv"}, nn:{1:"no"}, sr:{1:"cs", 5:"cs"}, cy:{1:"gb"}, mi:{1:"nz"}, mt:{1:"mt"}, quz:{1:"bo"}, tn:{1:"za"}, xh:{1:"za"}, zu:{1:"za"}, nso:{1:"za"}, se:{1:"no"}, smj:{1:"no"}, sma:{1:"no"}, sms:{1:"fi"}, smn:{1:"fi"}, bs:{1:"ba"}};
        private static const SCRIPT_BY_ID:Object = {latn:1, ethi:2, arab:3, beng:4, cyrl:5, thaa:6, tibt:7, grek:8, gujr:9, hebr:10, deva:11, armn:12, jpan:13, geor:14, khmr:15, knda:16, kore:17, laoo:18, mlym:19, mymr:20, orya:21, guru:22, sinh:23, taml:24, telu:25, thai:26, nkoo:27, blis:28, hans:29, hant:30, mong:31, syrc:32};
        private static const SCRIPT_ID_BY_LANG_AND_REGION:Object = {zh:{cn:29, sg:29, tw:30, hk:30, mo:30}, mn:{cn:31, sg:5}, pa:{pk:3, in:22}, ha:{gh:1, ne:1}};

        private function LocaleRegistry()
        {
//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 83 08 
_as3_debugline line number: 1027
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//f0 8c 08 
_as3_debugline line number: 1036
//47 
_as3_returnvoid 
        }// end function

        public static function getScriptByLangAndRegion(ModuleManagerImpl:String, ModuleManagerImpl:String) : String
        {
1  0 9881  1 9881  2 9911  3 995//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 dc 07 
_as3_debugline line number: 988
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e5 03 00 dc 07 
_as3_debug 1, 485, 0, 988
//ef 01 e7 03 01 dc 07 
_as3_debug 1, 487, 1, 988
//ef 01 e4 0a 02 df 07 
_as3_debug 1, 1380, 2, 991
//ef 01 e5 0a 03 e3 07 
_as3_debug 1, 1381, 3, 995
//f0 df 07 
_as3_debugline line number: 991
//60 e3 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::SCRIPT_ID_BY_LANG_AND_REGION
//d1 
_as3_getlocal <1> 
//66 82 04 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//f0 e0 07 
_as3_debugline line number: 992
//d3 
_as3_getlocal <3> 
//20 
_as3_pushnull 
//14 06 00 00 
_as3_ifne offset: 6
//2c 01 
_as3_pushstring ""
//f0 e1 07 
_as3_debugline line number: 993
//48 
_as3_returnvalue 
//f0 e3 07 
_as3_debugline line number: 995
//d3 
_as3_getlocal <3> 
//d2 
_as3_getlocal <2> 
//66 82 04 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//63 04 
_as3_setlocal <4>
//f0 e4 07 
_as3_debugline line number: 996
//62 04 
_as3_getlocal <4>
//20 
_as3_pushnull 
//14 06 00 00 
_as3_ifne offset: 6
//2c 01 
_as3_pushstring ""
//f0 e5 07 
_as3_debugline line number: 997
//48 
_as3_returnvalue 
//f0 e7 07 
_as3_debugline line number: 999
//60 de 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::SCRIPTS
//5d 11 
_as3_findpropstrict int
//62 04 
_as3_getlocal <4>
//46 11 01 
_as3_callproperty int(param count:1)
//66 82 04 
_as3_getproperty {}
//46 83 04 00 
_as3_callproperty toLowerCase(param count:0)
//48 
_as3_returnvalue 
        }// end function

        public static function getScriptByLang(ModuleManagerImpl:String) : String
        {
1  0 10091  1 1011//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 f1 07 
_as3_debugline line number: 1009
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e5 03 00 f1 07 
_as3_debug 1, 485, 0, 1009
//ef 01 e5 0a 01 f3 07 
_as3_debug 1, 1381, 1, 1011
//f0 f3 07 
_as3_debugline line number: 1011
//60 dd 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::SCRIPT_ID_BY_LANG
//d1 
_as3_getlocal <1> 
//66 82 04 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d6 
_as3_setlocal <2> 
//f0 f4 07 
_as3_debugline line number: 1012
//d2 
_as3_getlocal <2> 
//20 
_as3_pushnull 
//14 06 00 00 
_as3_ifne offset: 6
//2c 01 
_as3_pushstring ""
//f0 f5 07 
_as3_debugline line number: 1013
//48 
_as3_returnvalue 
//f0 f7 07 
_as3_debugline line number: 1015
//60 de 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::SCRIPTS
//5d 11 
_as3_findpropstrict int
//d2 
_as3_getlocal <2> 
//46 11 01 
_as3_callproperty int(param count:1)
//66 82 04 
_as3_getproperty {}
//46 83 04 00 
_as3_callproperty toLowerCase(param count:0)
//48 
_as3_returnvalue 
        }// end function

        public static function getDefaultRegionForLangAndScript(ModuleManagerImpl:String, ModuleManagerImpl:String) : String
        {
1  0 10251  1 10251  2 10281  3 1029//f1 f0 01 
_as3_debugfile "C:\autobuild\3.5.0\frameworks\projects\framework\src;mx\resources;LocaleSorter.as"
//f0 81 08 
_as3_debugline line number: 1025
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//ef 01 e5 03 00 81 08 
_as3_debug 1, 485, 0, 1025
//ef 01 df 03 01 81 08 
_as3_debug 1, 479, 1, 1025
//ef 01 e6 0a 02 84 08 
_as3_debug 1, 1382, 2, 1028
//ef 01 e5 0a 03 85 08 
_as3_debug 1, 1381, 3, 1029
//f0 84 08 
_as3_debugline line number: 1028
//60 df 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::DEFAULT_REGION_BY_LANG_AND_SCRIPT
//d1 
_as3_getlocal <1> 
//66 82 04 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//d7 
_as3_setlocal <3> 
//f0 85 08 
_as3_debugline line number: 1029
//60 e1 02 
_as3_getlex LocaleSorter.as$107:LocaleRegistry::SCRIPT_BY_ID
//d2 
_as3_getlocal <2> 
//66 82 04 
_as3_getproperty {}
//80 03 
_as3_coerce Object
//63 04 
_as3_setlocal <4>
//f0 86 08 
_as3_debugline line number: 1030
//d3 
_as3_getlocal <3> 
//20 
_as3_pushnull 
//ab 
_as3_equals 
//2a 
_as3_dup 
//11 05 00 00 
_as3_iftrue offset: 5
//29 
_as3_pop 
//62 04 
_as3_getlocal <4>
//20 
_as3_pushnull 
//ab 
_as3_equals 
//12 06 00 00 
_as3_iffalse offset: 6
//2c 01 
_as3_pushstring ""
//f0 87 08 
_as3_debugline line number: 1031
//48 
_as3_returnvalue 
//f0 89 08 
_as3_debugline line number: 1033
//d3 
_as3_getlocal <3> 
//5d 11 
_as3_findpropstrict int
//62 04 
_as3_getlocal <4>
//46 11 01 
_as3_callproperty int(param count:1)
//66 82 04 
_as3_getproperty {}
//85 
_as3_coerce_s 
//2a 
_as3_dup 
//11 03 00 00 
_as3_iftrue offset: 3
//29 
_as3_pop 
//2c 01 
_as3_pushstring ""
//48 
_as3_returnvalue 
        }// end function

    }
}
