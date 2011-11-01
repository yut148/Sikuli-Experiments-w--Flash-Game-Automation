package ResourceManagerImpl.as$91
{
    import flash.events.*;
    import mx.events.*;
    import mx.modules.*;

    private class ResourceEventDispatcher extends EventDispatcher
    {

        private function ResourceEventDispatcher(:IModuleInfo)
        {
            addEventListener(ModuleEvent.ERROR, moduleInfo_errorHandler, false, 0, true);
            addEventListener(ModuleEvent.PROGRESS, moduleInfo_progressHandler, false, 0, true);
            addEventListener(ModuleEvent.READY, moduleInfo_readyHandler, false, 0, true);
            return;
        }// end function

        private function moduleInfo_progressHandler(errorHandler:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.PROGRESS, errorHandler.bubbles, errorHandler.cancelable);
            _loc_2.bytesLoaded = errorHandler.bytesLoaded;
            _loc_2.bytesTotal = errorHandler.bytesTotal;
            dispatchEvent(_loc_2);
            return;
        }// end function

        private function moduleInfo_readyHandler(errorHandler:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.COMPLETE);
            dispatchEvent(_loc_2);
            return;
        }// end function

        private function moduleInfo_errorHandler(errorHandler:ModuleEvent) : void
        {
            var _loc_2:* = new ResourceEvent(ResourceEvent.ERROR, errorHandler.bubbles, errorHandler.cancelable);
            _loc_2.bytesLoaded = errorHandler.bytesLoaded;
            _loc_2.bytesTotal = errorHandler.bytesTotal;
            _loc_2.errorText = errorHandler.errorText;
            dispatchEvent(_loc_2);
            return;
        }// end function

    }
}
