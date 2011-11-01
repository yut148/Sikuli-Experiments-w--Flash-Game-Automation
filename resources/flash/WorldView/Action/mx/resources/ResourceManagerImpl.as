package mx.resources
{
    import ResourceManagerImpl.as$91.*;
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

        public function set localeChain(errorHandler:Array) : void
        {
            _localeChain = errorHandler;
            update();
            return;
        }// end function

        public function getStringArray(findBundle:String, findBundle:String, findBundle:String = null) : Array
        {
            var _loc_4:* = findBundle(findBundle, findBundle, findBundle);
            if (!_loc_4)
            {
                return null;
            }// end if
            var _loc_5:* = _loc_4.content[findBundle];
            var _loc_6:* = String(_loc_5).split(",");
            var _loc_7:* = _loc_6.length;
            var _loc_8:int;
            while (_loc_8 < _loc_7)
            {
                // label
                _loc_6[_loc_8] = StringUtil.trim(_loc_6[_loc_8]);
                _loc_8++;
            }// end while
            return _loc_6;
        }// end function

        function installCompiledResourceBundle(errorHandler:ApplicationDomain, errorHandler:String, errorHandler:String) : void
        {
            var _loc_4:String;
            var _loc_5:* = errorHandler;
            var _loc_6:* = errorHandler.indexOf(":");
            if (_loc_6 != -1)
            {
                _loc_4 = errorHandler.substring(0, _loc_6);
                _loc_5 = errorHandler.substring(_loc_6 + 1);
            }// end if
            if (getResourceBundle(errorHandler, errorHandler))
            {
                return;
            }// end if
            var _loc_7:* = errorHandler + "$" + _loc_5 + "_properties";
            if (_loc_4 != null)
            {
                _loc_7 = _loc_4 + "." + _loc_7;
            }// end if
            var _loc_8:Class;
            if (errorHandler.hasDefinition(_loc_7))
            {
                _loc_8 = Class(errorHandler.getDefinition(_loc_7));
            }// end if
            if (!_loc_8)
            {
                _loc_7 = errorHandler;
                if (errorHandler.hasDefinition(_loc_7))
                {
                    _loc_8 = Class(errorHandler.getDefinition(_loc_7));
                }// end if
            }// end if
            if (!_loc_8)
            {
                _loc_7 = errorHandler + "_properties";
                if (errorHandler.hasDefinition(_loc_7))
                {
                    _loc_8 = Class(errorHandler.getDefinition(_loc_7));
                }// end if
            }// end if
            if (!_loc_8)
            {
                throw new Error("Could not find compiled resource bundle \'" + errorHandler + "\' for locale \'" + errorHandler + "\'.");
            }// end if
            var _loc_9:* = ResourceBundle(new _loc_8);
            mx_internal::_locale = errorHandler;
            mx_internal::_bundleName = errorHandler;
            addResourceBundle(_loc_9);
            return;
        }// end function

        public function getString(_localeChain:String, _localeChain:String, _localeChain:Array = null, _localeChain:String = null) : String
        {
            var _loc_5:* = findBundle(_localeChain, _localeChain, _localeChain);
            if (!_loc_5)
            {
                return null;
            }// end if
            var _loc_6:* = String(_loc_5.content[_localeChain]);
            if (_localeChain)
            {
                _loc_6 = StringUtil.substitute(_loc_6, _localeChain);
            }// end if
            return _loc_6;
        }// end function

        public function loadResourceModule(resourceModules:String, resourceModules:Boolean = true, resourceModules:ApplicationDomain = null, resourceModules:SecurityDomain = null) : IEventDispatcher
        {
            var moduleInfo:IModuleInfo;
            var resourceEventDispatcher:ResourceEventDispatcher;
            var timer:Timer;
            var timerHandler:Function;
            var url:* = resourceModules;
            var updateFlag:* = resourceModules;
            var applicationDomain:* = resourceModules;
            var securityDomain:* = resourceModules;
            moduleInfo = ModuleManager.getModule(url);
            resourceEventDispatcher = new ResourceEventDispatcher(moduleInfo);
            var readyHandler:* = 
function (errorHandler:ModuleEvent) : void
{
    var _loc_2:* = errorHandler.module.factory.create();
    resourceModules[errorHandler.module.url].resourceModule = _loc_2;
    if (updateFlag)
    {
        update();
    }// end if
    return;
}// end function
;
            moduleInfo.addEventListener(ModuleEvent.READY, readyHandler, false, 0, true);
            var errorHandler:* = 
function (errorHandler:ModuleEvent) : void
{
    var _loc_3:ResourceEvent;
    var _loc_2:* = "Unable to load resource module from " + url;
    if (resourceEventDispatcher.willTrigger(ResourceEvent.ERROR))
    {
        _loc_3 = new ResourceEvent(ResourceEvent.ERROR, errorHandler.bubbles, errorHandler.cancelable);
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
function (errorHandler:TimerEvent) : void
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

        public function removeResourceBundlesForLocale(errorHandler:String) : void
        {
            delete localeMap[errorHandler];
            return;
        }// end function

        public function getResourceBundle(localeMap:String, localeMap:String) : IResourceBundle
        {
            var _loc_3:* = localeMap[localeMap];
            if (!_loc_3)
            {
                return null;
            }// end if
            return _loc_3[localeMap];
        }// end function

        private function dumpResourceModule(errorHandler) : void
        {
            var _loc_2:ResourceBundle;
            var _loc_3:String;
            for each (_loc_2 in errorHandler.resourceBundles)
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

        public function addResourceBundle(errorHandler:IResourceBundle) : void
        {
            var _loc_2:* = errorHandler.locale;
            var _loc_3:* = errorHandler.bundleName;
            if (!localeMap[_loc_2])
            {
                localeMap[_loc_2] = {};
            }// end if
            localeMap[_loc_2][_loc_3] = errorHandler;
            return;
        }// end function

        public function getObject(:String, :String, :String = null)
        {
            var _loc_4:* = findBundle(, , );
            if (!_loc_4)
            {
                return undefined;
            }// end if
            return _loc_4.content[];
        }// end function

        public function getInt(findResourceBundleWithResource:String, findResourceBundleWithResource:String, findResourceBundleWithResource:String = null) : int
        {
            var _loc_4:* = findBundle(findResourceBundleWithResource, findResourceBundleWithResource, findResourceBundleWithResource);
            if (!_loc_4)
            {
                return 0;
            }// end if
            var _loc_5:* = _loc_4.content[findResourceBundleWithResource];
            return int(_loc_5);
        }// end function

        private function findBundle(localeMap:String, localeMap:String, localeMap:String) : IResourceBundle
        {
            supportNonFrameworkApps();
            return localeMap != null ? (getResourceBundle(localeMap, localeMap)) : (findResourceBundleWithResource(localeMap, localeMap));
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

        public function getBundleNamesForLocale(findBundle:String) : Array
        {
            var _loc_3:String;
            var _loc_2:Array;
            for (_loc_3 in localeMap[findBundle])
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

        public function getNumber(removeResourceBundle:String, removeResourceBundle:String, removeResourceBundle:String = null) : Number
        {
            var _loc_4:* = findBundle(removeResourceBundle, removeResourceBundle, removeResourceBundle);
            if (!_loc_4)
            {
                return NaN;
            }// end if
            var _loc_5:* = _loc_4.content[removeResourceBundle];
            return Number(_loc_5);
        }// end function

        public function update() : void
        {
            dispatchEvent(new Event(Event.CHANGE));
            return;
        }// end function

        public function getClass(IResourceModule:String, IResourceModule:String, IResourceModule:String = null) : Class
        {
            var _loc_4:* = findBundle(IResourceModule, IResourceModule, IResourceModule);
            if (!_loc_4)
            {
                return null;
            }// end if
            var _loc_5:* = _loc_4.content[IResourceModule];
            return _loc_5 as Class;
        }// end function

        public function removeResourceBundle(errorHandler:String, errorHandler:String) : void
        {
            delete localeMap[errorHandler][errorHandler];
            if (getBundleNamesForLocale(errorHandler).length == 0)
            {
                delete localeMap[errorHandler];
            }// end if
            return;
        }// end function

        public function initializeLocaleChain(errorHandler:Array) : void
        {
            localeChain = LocaleSorter.sortLocalesByPreference(errorHandler, getSystemPreferredLocales(), null, true);
            return;
        }// end function

        public function findResourceBundleWithResource(localeMap:String, localeMap:String) : IResourceBundle
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
                    _loc_7 = _loc_6[localeMap];
                    if (!_loc_7)
                    {
                    }
                    else if (localeMap in _loc_7.content)
                    {
                        return _loc_7;
                    }// end else if
                }// end else if
                _loc_4++;
            }// end while
            return null;
        }// end function

        public function getUint(extraFrameListener:String, extraFrameListener:String, extraFrameListener:String = null) : uint
        {
            var _loc_4:* = findBundle(extraFrameListener, extraFrameListener, extraFrameListener);
            if (!_loc_4)
            {
                return 0;
            }// end if
            var _loc_5:* = _loc_4.content[extraFrameListener];
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

        public function installCompiledResourceBundles(errorHandler:ApplicationDomain, errorHandler:Array, errorHandler:Array) : void
        {
            var _loc_7:String;
            var _loc_8:int;
            var _loc_9:String;
            var _loc_4:* = errorHandler ? (errorHandler.length) : (0);
            var _loc_5:* = errorHandler ? (errorHandler.length) : (0);
            var _loc_6:int;
            while (_loc_6 < _loc_4)
            {
                // label
                _loc_7 = errorHandler[_loc_6];
                _loc_8 = 0;
                while (_loc_8 < _loc_5)
                {
                    // label
                    _loc_9 = errorHandler[_loc_8];
                    .mx_internal::installCompiledResourceBundle(errorHandler, _loc_7, _loc_9);
                    _loc_8++;
                }// end while
                _loc_6++;
            }// end while
            return;
        }// end function

        public function getBoolean(findResourceBundleWithResource:String, findResourceBundleWithResource:String, findResourceBundleWithResource:String = null) : Boolean
        {
            var _loc_4:* = findBundle(findResourceBundleWithResource, findResourceBundleWithResource, findResourceBundleWithResource);
            if (!_loc_4)
            {
                return false;
            }// end if
            var _loc_5:* = _loc_4.content[findResourceBundleWithResource];
            return String(_loc_5).toLowerCase() == "true";
        }// end function

        public function unloadResourceModule(errorHandler:String, errorHandler:Boolean = true) : void
        {
            var _loc_4:Array;
            var _loc_5:int;
            var _loc_6:int;
            var _loc_7:String;
            var _loc_8:String;
            var _loc_3:* = resourceModules[errorHandler];
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
            resourceModules[errorHandler] = null;
            delete resourceModules[errorHandler];
            _loc_3.moduleInfo.unload();
            if (errorHandler)
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
