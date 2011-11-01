package ModuleManager.as$26
{
    import en_US$controls_properties.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.modules.*;

    private class ModuleManagerImpl extends EventDispatcher
    {
        private var moduleList:Object;

        private function ModuleManagerImpl()
        {
            moduleList = {};
            return;
        }// end function

        public function getModule(installCompiledResourceBundles:String) : IModuleInfo
        {
            var _loc_2:* = moduleList[installCompiledResourceBundles] as ModuleInfo;
            if (!_loc_2)
            {
                _loc_2 = new ModuleInfo(installCompiledResourceBundles);
                moduleList[installCompiledResourceBundles] = _loc_2;
            }// end if
            return new ModuleInfoProxy(_loc_2);
        }// end function

        public function getAssociatedFactory(getContent:Object) : IFlexModuleFactory
        {
            var m:Object;
            var info:ModuleInfo;
            var domain:ApplicationDomain;
            var cls:Class;
            var object:* = getContent;
            var className:* = getQualifiedClassName(object);
            var _loc_3:int;
            var _loc_4:* = moduleList;
            do
            {
                // label
                m = _loc_4[_loc_3];
                info = m as ModuleInfo;
                if (!info.ready)
                {
                }
                else
                {
                    domain = info.applicationDomain;
                    try
                    {
                        cls = Class(domain.getDefinition(className));
                        if (object is cls)
                        {
                            return info.factory;
                        }// end if
                    }// end try
                    catch (error:Error)
                    {
                    }// end else if
                }// end catch
            }while (_loc_4 in _loc_3)
            return null;
        }// end function

    }
}
