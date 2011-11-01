package modules.comm.event
{
    import flash.events.*;

    public class PageEvent extends Event
    {
        public var pageId:int;
        public static const CHANGE_PAGE:String = "chagePage";

        public function PageEvent(param1:String, param2:Boolean = true, param3:Boolean = false)
        {
            super(param1, param2, param3);
            return;
        }// end function

    }
}
