package mx.resources
{
    import en_US$controls_properties.*;
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;
    import modules_alliance_AllianceView_mx_core_FlexModuleFactory.*;

    public interface IResourceManager extends IEventDispatcher
    {

        public function IResourceManager();

        function loadResourceModule(content:String, content:Boolean = true, content:ApplicationDomain = null, content:SecurityDomain = null) : IEventDispatcher;

        function getBoolean(getBoolean:String, getBoolean:String, getBoolean:String = null) : Boolean;

        function getClass(_getObject:String, _getObject:String, _getObject:String = null) : Class;

        function getLocales() : Array;

        function removeResourceBundlesForLocale(getStringArray:String) : void;

        function getResourceBundle(getContent:String, getContent:String) : IResourceBundle;

        function get localeChain() : Array;

        function getInt(en_US$core_properties:String, en_US$core_properties:String, en_US$core_properties:String = null) : int;

        function update() : void;

        function set localeChain(getStringArray:Array) : void;

        function getUint(IEventDispatcher:String, IEventDispatcher:String, IEventDispatcher:String = null) : uint;

        function addResourceBundle(getStringArray:IResourceBundle) : void;

        function getStringArray(Dictionary:String, Dictionary:String, Dictionary:String = null) : Array;

        function getBundleNamesForLocale(Dictionary:String) : Array;

        function removeResourceBundle(getStringArray:String, getStringArray:String) : void;

        function getObject(:String, :String, :String = null);

        function getString(_preloadedRSLs:String, _preloadedRSLs:String, _preloadedRSLs:Array = null, _preloadedRSLs:String = null) : String;

        function installCompiledResourceBundles(getStringArray:ApplicationDomain, getStringArray:Array, getStringArray:Array) : void;

        function unloadResourceModule(getStringArray:String, getStringArray:Boolean = true) : void;

        function getPreferredLocaleChain() : Array;

        function findResourceBundleWithResource(getContent:String, getContent:String) : IResourceBundle;

        function initializeLocaleChain(getStringArray:Array) : void;

        function getNumber(en_US$effects_properties::getContent:String, en_US$effects_properties::getContent:String, en_US$effects_properties::getContent:String = null) : Number;

    }
}
