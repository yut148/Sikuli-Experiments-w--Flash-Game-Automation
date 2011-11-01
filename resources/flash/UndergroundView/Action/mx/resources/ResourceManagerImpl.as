package mx.resources
{
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.events.*;
    import mx.modules.*;
    import mx.utils.*;

    public class ResourceManagerImpl extends EventDispatcher implements IResourceManager
    {
        private var resourceModules:Object;
        private var initializedForNonFrameworkApp:Boolean = false;
        private var localeMap:Object;
        private var _localeChain:Array;
        static const VERSION:String = "3.5.0.12683";
        private static var instance:IResourceManager;

        public function ResourceManagerImpl()
        {
            localeMap = {};
            resourceModules = {};
            return;
        }// end function

        public function get localeChain() : Array
        {
            return _localeChain;
        }// end function

        public function set localeChain(param1:Array) : void
        {
            _localeChain = param1;
            update();
            return;
        }// end function

        public function getStringArray(param1:String, param2:String, param3:String = null) : Array
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return null;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            var _loc_6:* = String(_loc_5).split(",");
            var _loc_7:* = String(_loc_5).split(",").length;
            var _loc_8:int;
            while (_loc_8 < _loc_7)
            {
                // label
                _loc_6[_loc_8] = StringUtil.trim(_loc_6[_loc_8]);
                _loc_8++;
            }// end while
            return _loc_6;
        }// end function

        function installCompiledResourceBundle(param1:ApplicationDomain, param2:String, param3:String) : void
        {
            var _loc_4:String;
            var _loc_5:* = param3;
            var _loc_6:* = param3.indexOf(":");
            if (param3.indexOf(":") != -1)
            {
                _loc_4 = param3.substring(0, _loc_6);
                _loc_5 = param3.substring(_loc_6 + 1);
            }// end if
            if (getResourceBundle(param2, param3))
            {
                return;
            }// end if
            var _loc_7:* = param2 + "$" + _loc_5 + "_properties";
            if (_loc_4 != null)
            {
                _loc_7 = _loc_4 + "." + _loc_7;
            }// end if
            var _loc_8:Class;
            if (param1.hasDefinition(_loc_7))
            {
                _loc_8 = Class(param1.getDefinition(_loc_7));
            }// end if
            if (!_loc_8)
            {
                _loc_7 = param3;
                if (param1.hasDefinition(_loc_7))
                {
                    _loc_8 = Class(param1.getDefinition(_loc_7));
                }// end if
            }// end if
            if (!_loc_8)
            {
                _loc_7 = param3 + "_properties";
                if (param1.hasDefinition(_loc_7))
                {
                    _loc_8 = Class(param1.getDefinition(_loc_7));
                }// end if
            }// end if
            if (!_loc_8)
            {
                throw new Error("Could not find compiled resource bundle \'" + param3 + "\' for locale \'" + param2 + "\'.");
            }// end if
            var _loc_9:* = ResourceBundle(new _loc_8);
            mx_internal::_locale = param2;
            mx_internal::_bundleName = param3;
            addResourceBundle(_loc_9);
            return;
        }// end function

        public function getString(param1:String, param2:String, param3:Array = null, param4:String = null) : String
        {
            var _loc_5:* = findBundle(param1, param2, param4);
            if (!findBundle(param1, param2, param4))
            {
                return null;
            }// end if
            var _loc_6:* = String(_loc_5.content[param2]);
            if (param3)
            {
                _loc_6 = StringUtil.substitute(_loc_6, param3);
            }// end if
            return _loc_6;
        }// end function

        public function loadResourceModule(param1:String, param2:Boolean = true, param3:ApplicationDomain = null, param4:SecurityDomain = null) : IEventDispatcher
        {
            var moduleInfo:IModuleInfo;
            var resourceEventDispatcher:ResourceEventDispatcher;
            var timer:Timer;
            var timerHandler:Function;
            var url:* = param1;
            var updateFlag:* = param2;
            var applicationDomain:* = param3;
            var securityDomain:* = param4;
            moduleInfo = ModuleManager.getModule(url);
            resourceEventDispatcher = new ResourceEventDispatcher(moduleInfo);
            var readyHandler:* = 
function (param1:ModuleEvent) : void
{
    var _loc_2:* = param1.module.factory.create();
    resourceModules[param1.module.url].resourceModule = _loc_2;
    if (updateFlag)
    {
        update();
    }// end if
    return;
}// end function
;
            moduleInfo.addEventListener(ModuleEvent.READY, readyHandler, false, 0, true);
            var errorHandler:* = 
function (param1:ModuleEvent) : void
{
    var _loc_3:ResourceEvent;
    var _loc_2:* = "Unable to load resource module from " + url;
    if (resourceEventDispatcher.willTrigger(ResourceEvent.ERROR))
    {
        _loc_3 = new ResourceEvent(ResourceEvent.ERROR, param1.bubbles, param1.cancelable);
        _loc_3.bytesLoaded = 0;
        _loc_3.bytesTotal = 0;
        _loc_3.errorText = _loc_2;
        resourceEventDispatcher.dispatchEvent(_loc_3);
    }
    else
    {
        throw new Error(_loc_2);
    }// end else if
    return;
}// end function
;
            moduleInfo.addEventListener(ModuleEvent.ERROR, errorHandler, false, 0, true);
            resourceModules[url] = new ResourceModuleInfo(moduleInfo, readyHandler, errorHandler);
            timer = new Timer(0);
            timerHandler = 
function (param1:TimerEvent) : void
{
    timer.removeEventListener(TimerEvent.TIMER, timerHandler);
    timer.stop();
    moduleInfo.load(applicationDomain, securityDomain);
    return;
}// end function
;
            timer.addEventListener(TimerEvent.TIMER, timerHandler, false, 0, true);
            timer.start();
            return resourceEventDispatcher;
        }// end function

        public function getLocales() : Array
        {
            var _loc_2:String;
            var _loc_1:Array;
            for (_loc_2 in localeMap)
            {
                // label
                _loc_1.push(_loc_2);
            }// end of for ... in
            return _loc_1;
        }// end function

        public function removeResourceBundlesForLocale(param1:String) : void
        {
            delete localeMap[param1];
            return;
        }// end function

        public function getResourceBundle(param1:String, param2:String) : IResourceBundle
        {
            var _loc_3:* = localeMap[param1];
            if (!_loc_3)
            {
                return null;
            }// end if
            return _loc_3[param2];
        }// end function

        private function dumpResourceModule(param1) : void
        {
            var _loc_2:ResourceBundle;
            var _loc_3:String;
            for each (_loc_2 in param1.resourceBundles)
            {
                // label
                trace(_loc_2.locale, _loc_2.bundleName);
                for (_loc_3 in _loc_2.content)
                {
                    // label
                }// end of for ... in
            }// end of for each ... in
            return;
        }// end function

        public function addResourceBundle(param1:IResourceBundle) : void
        {
            var _loc_2:* = param1.locale;
            var _loc_3:* = param1.bundleName;
            if (!localeMap[_loc_2])
            {
                localeMap[_loc_2] = {};
            }// end if
            localeMap[_loc_2][_loc_3] = param1;
            return;
        }// end function

        public function getObject(param1:String, param2:String, param3:String = null)
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return undefined;
            }// end if
            return _loc_4.content[param2];
        }// end function

        public function getInt(param1:String, param2:String, param3:String = null) : int
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return 0;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            return int(_loc_5);
        }// end function

        private function findBundle(param1:String, param2:String, param3:String) : IResourceBundle
        {
            supportNonFrameworkApps();
            return param3 != null ? (getResourceBundle(param3, param1)) : (findResourceBundleWithResource(param1, param2));
        }// end function

        private function supportNonFrameworkApps() : void
        {
            if (initializedForNonFrameworkApp)
            {
                return;
            }// end if
            initializedForNonFrameworkApp = true;
            if (getLocales().length > 0)
            {
                return;
            }// end if
            var _loc_1:* = ApplicationDomain.currentDomain;
            if (!_loc_1.hasDefinition("_CompiledResourceBundleInfo"))
            {
                return;
            }// end if
            var _loc_2:* = Class(_loc_1.getDefinition("_CompiledResourceBundleInfo"));
            var _loc_3:* = _loc_2.compiledLocales;
            var _loc_4:* = _loc_2.compiledResourceBundleNames;
            installCompiledResourceBundles(_loc_1, _loc_3, _loc_4);
            localeChain = _loc_3;
            return;
        }// end function

        public function getBundleNamesForLocale(param1:String) : Array
        {
            var _loc_3:String;
            var _loc_2:Array;
            for (_loc_3 in localeMap[param1])
            {
                // label
                _loc_2.push(_loc_3);
            }// end of for ... in
            return _loc_2;
        }// end function

        public function getPreferredLocaleChain() : Array
        {
            return LocaleSorter.sortLocalesByPreference(getLocales(), getSystemPreferredLocales(), null, true);
        }// end function

        public function getNumber(param1:String, param2:String, param3:String = null) : Number
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return NaN;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            return Number(_loc_5);
        }// end function

        public function update() : void
        {
            dispatchEvent(new Event(Event.CHANGE));
            return;
        }// end function

        public function getClass(param1:String, param2:String, param3:String = null) : Class
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return null;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            return _loc_4.content[param2] as Class;
        }// end function

        public function removeResourceBundle(param1:String, param2:String) : void
        {
            delete localeMap[param1][param2];
            if (getBundleNamesForLocale(param1).length == 0)
            {
                delete localeMap[param1];
            }// end if
            return;
        }// end function

        public function initializeLocaleChain(param1:Array) : void
        {
            localeChain = LocaleSorter.sortLocalesByPreference(param1, getSystemPreferredLocales(), null, true);
            return;
        }// end function

        public function findResourceBundleWithResource(param1:String, param2:String) : IResourceBundle
        {
            var _loc_5:String;
            var _loc_6:Object;
            var _loc_7:ResourceBundle;
            if (!_localeChain)
            {
                return null;
            }// end if
            var _loc_3:* = _localeChain.length;
            var _loc_4:int;
            while (_loc_4 < _loc_3)
            {
                // label
                _loc_5 = localeChain[_loc_4];
                _loc_6 = localeMap[_loc_5];
                if (!_loc_6)
                {
                }
                else
                {
                    _loc_7 = _loc_6[param1];
                    if (!_loc_7)
                    {
                    }
                    else if (param2 in _loc_7.content)
                    {
                        return _loc_7;
                    }// end else if
                }// end else if
                _loc_4++;
            }// end while
            return null;
        }// end function

        public function getUint(param1:String, param2:String, param3:String = null) : uint
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return 0;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            return uint(_loc_5);
        }// end function

        private function getSystemPreferredLocales() : Array
        {
            var _loc_1:Array;
            if (Capabilities["languages"])
            {
                _loc_1 = Capabilities["languages"];
            }
            else
            {
                _loc_1 = [Capabilities.language];
            }// end else if
            return _loc_1;
        }// end function

        public function installCompiledResourceBundles(param1:ApplicationDomain, param2:Array, param3:Array) : void
        {
            var _loc_7:String;
            var _loc_8:int;
            var _loc_9:String;
            var _loc_4:* = param2 ? (param2.length) : (0);
            var _loc_5:* = param3 ? (param3.length) : (0);
            var _loc_6:int;
            while (_loc_6 < _loc_4)
            {
                // label
                _loc_7 = param2[_loc_6];
                _loc_8 = 0;
                while (_loc_8 < _loc_5)
                {
                    // label
                    _loc_9 = param3[_loc_8];
                    .mx_internal::installCompiledResourceBundle(param1, _loc_7, _loc_9);
                    _loc_8++;
                }// end while
                _loc_6++;
            }// end while
            return;
        }// end function

        public function getBoolean(param1:String, param2:String, param3:String = null) : Boolean
        {
            var _loc_4:* = findBundle(param1, param2, param3);
            if (!findBundle(param1, param2, param3))
            {
                return false;
            }// end if
            var _loc_5:* = _loc_4.content[param2];
            return String(_loc_5).toLowerCase() == "true";
        }// end function

        public function unloadResourceModule(param1:String, param2:Boolean = true) : void
        {
            var _loc_4:Array;
            var _loc_5:int;
            var _loc_6:int;
            var _loc_7:String;
            var _loc_8:String;
            var _loc_3:* = resourceModules[param1];
            if (!_loc_3)
            {
                return;
            }// end if
            if (_loc_3.resourceModule)
            {
                _loc_4 = _loc_3.resourceModule.resourceBundles;
                if (_loc_4)
                {
                    _loc_5 = _loc_4.length;
                    _loc_6 = 0;
                    while (_loc_6 < _loc_5)
                    {
                        // label
                        _loc_7 = _loc_4[_loc_6].locale;
                        _loc_8 = _loc_4[_loc_6].bundleName;
                        removeResourceBundle(_loc_7, _loc_8);
                        _loc_6++;
                    }// end while
                }// end if
            }// end if
            resourceModules[param1] = null;
            delete resourceModules[param1];
            _loc_3.moduleInfo.unload();
            if (param2)
            {
                this.update();
            }// end if
            return;
        }// end function

        public static function getInstance() : IResourceManager
        {
            if (!instance)
            {
                instance = new ResourceManagerImpl;
            }// end if
            return instance;
        }// end function

    }
}
