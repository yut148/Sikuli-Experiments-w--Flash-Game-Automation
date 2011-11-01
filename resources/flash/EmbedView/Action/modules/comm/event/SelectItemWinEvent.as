package modules.comm.event
{
    import flash.events.*;

    public class SelectItemWinEvent extends Event
    {
        public var gemCount:int;
        public var gemAddType:int;
        public var selectType:int;
        public var data:Object;
        public static const SELECTED_ITEM_EVENT:String = "selected_item_event";

        public function SelectItemWinEvent(param1:String, param2:Boolean = true, param3:Boolean = false)
        {
            super(param1, param2, param3);
            return;
        }// end function

    }
}
