package 
{
    import flash.events.*;
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.events.*;

    private class ModuleInfoProxy extends EventDispatcher implements IModuleInfo
    {
        private var _data:Object;
        private var info:ModuleInfo;
        private var referenced:Boolean = false;

        private function ModuleInfoProxy(param1:ModuleInfo)
        {
            this.info = param1;
            param1.addEventListener(ModuleEvent.SETUP, moduleEventHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.PROGRESS, moduleEventHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.READY, moduleEventHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.ERROR, moduleEventHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.UNLOAD, moduleEventHandler, false, 0, true);
            return;
        }// end function

        public function get loaded() : Boolean
        {
            return info.loaded;
        }// end function

        public function release() : void
        {
            if (referenced)
            {
                info.removeReference();
                referenced = false;
            }// end if
            return;
        }// end function

        public function get error() : Boolean
        {
            return info.error;
        }// end function

        public function get factory() : IFlexModuleFactory
        {
            return info.factory;
        }// end function

        public function publish(param1:IFlexModuleFactory) : void
        {
            info.publish(param1);
            return;
        }// end function

        public function set data(param1:Object) : void
        {
            _data = param1;
            return;
        }// end function

        public function get ready() : Boolean
        {
            return info.ready;
        }// end function

        public function load(param1:ApplicationDomain = null, param2:SecurityDomain = null, param3:ByteArray = null) : void
        {
            var _loc_4:ModuleEvent;
            info.resurrect();
            if (!referenced)
            {
                info.addReference();
                referenced = true;
            }// end if
            if (info.error)
            {
                dispatchEvent(new ModuleEvent(ModuleEvent.ERROR));
            }
            else if (info.loaded)
            {
                if (info.setup)
                {
                    dispatchEvent(new ModuleEvent(ModuleEvent.SETUP));
                    if (info.ready)
                    {
                        _loc_4 = new ModuleEvent(ModuleEvent.PROGRESS);
                        _loc_4.bytesLoaded = info.size;
                        _loc_4.bytesTotal = info.size;
                        dispatchEvent(_loc_4);
                        dispatchEvent(new ModuleEvent(ModuleEvent.READY));
                    }// end if
                }// end if
            }
            else
            {
                info.load(param1, param2, param3);
            }// end else if
            return;
        }// end function

        private function moduleEventHandler(param1:ModuleEvent) : void
        {
            dispatchEvent(param1);
            return;
        }// end function

        public function get url() : String
        {
            return info.url;
        }// end function

        public function get data() : Object
        {
            return _data;
        }// end function

        public function get setup() : Boolean
        {
            return info.setup;
        }// end function

        public function unload() : void
        {
            info.unload();
            info.removeEventListener(ModuleEvent.SETUP, moduleEventHandler);
            info.removeEventListener(ModuleEvent.PROGRESS, moduleEventHandler);
            info.removeEventListener(ModuleEvent.READY, moduleEventHandler);
            info.removeEventListener(ModuleEvent.ERROR, moduleEventHandler);
            info.removeEventListener(ModuleEvent.UNLOAD, moduleEventHandler);
            return;
        }// end function

    }
}
