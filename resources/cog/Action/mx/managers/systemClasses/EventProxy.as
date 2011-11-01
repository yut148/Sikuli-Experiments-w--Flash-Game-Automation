package mx.managers.systemClasses
{
    import flash.events.*;
    import mx.events.*;
    import mx.managers.*;
    import mx.utils.*;

    public class EventProxy extends EventDispatcher
    {
        private var systemManager:ISystemManager;

        public function EventProxy(param1:ISystemManager)
        {
            this.systemManager = param1;
            return;
        }// end function

        public function marshalListener(param1:Event) : void
        {
            var _loc_2:MouseEvent;
            var _loc_3:SandboxMouseEvent;
            if (param1 is MouseEvent)
            {
                _loc_2 = param1 as MouseEvent;
                _loc_3 = new SandboxMouseEvent(EventUtil.mouseEventMap[param1.type], false, false, _loc_2.ctrlKey, _loc_2.altKey, _loc_2.shiftKey, _loc_2.buttonDown);
                systemManager.dispatchEventFromSWFBridges(_loc_3, null, true, true);
            }
            else if (param1.type == Event.MOUSE_LEAVE)
            {
                _loc_3 = new SandboxMouseEvent(SandboxMouseEvent.MOUSE_UP_SOMEWHERE);
                systemManager.dispatchEventFromSWFBridges(_loc_3, null, true, true);
                systemManager.dispatchEvent(_loc_3);
            }// end else if
            return;
        }// end function

    }
}
