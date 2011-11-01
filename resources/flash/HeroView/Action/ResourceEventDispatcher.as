package 
{
    import flash.events.*;
    import mx.events.*;
    import mx.modules.*;

    private class ResourceEventDispatcher extends EventDispatcher
    {

        private function ResourceEventDispatcher(param1:IModuleInfo)
        {
            param1.addEventListener(ModuleEvent.ERROR, moduleInfo_errorHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.PROGRESS, moduleInfo_progressHandler, false, 0, true);
            param1.addEventListener(ModuleEvent.READY, moduleInfo_readyHandler, false, 0, true);
            return;
        }// end function

        private function moduleInfo_progressHandler(param1:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.PROGRESS, param1.bubbles, param1.cancelable);
            _loc_2.bytesLoaded = param1.bytesLoaded;
            _loc_2.bytesTotal = param1.bytesTotal;
            dispatchEvent(_loc_2);
            return;
        }// end function

        private function moduleInfo_readyHandler(param1:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.COMPLETE);
            dispatchEvent(_loc_2);
            return;
        }// end function

        private function moduleInfo_errorHandler(param1:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.ERROR, param1.bubbles, param1.cancelable);
            _loc_2.bytesLoaded = param1.bytesLoaded;
            _loc_2.bytesTotal = param1.bytesTotal;
            _loc_2.errorText = param1.errorText;
            dispatchEvent(_loc_2);
            return;
        }// end function

    }
}
