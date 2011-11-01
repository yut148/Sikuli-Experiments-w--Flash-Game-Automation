package mx.modules
{
    import ModuleManager.as$26.*;
    import en_US$controls_properties.*;
    import mx.core.*;

    public class ModuleManager extends Object
    {
        static const VERSION:String = "3.5.0.12683";

        public function ModuleManager()
        {
            return;
        }// end function

        public static function getModule(installCompiledResourceBundles:String) : IModuleInfo
        {
            return getSingleton().getModule(installCompiledResourceBundles);
        }// end function

        private static function getSingleton() : Object
        {
            if (!ModuleManagerGlobals.managerSingleton)
            {
                ModuleManagerGlobals.managerSingleton = new ModuleManagerImpl();
            }// end if
            return ModuleManagerGlobals.managerSingleton;
        }// end function

        public static function getAssociatedFactory(getContent:Object) : IFlexModuleFactory
        {
            return getSingleton().getAssociatedFactory(getContent);
        }// end function

    }
}
