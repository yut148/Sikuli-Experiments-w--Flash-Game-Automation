package mx.core
{
    import flash.events.*;

    public class RSLListLoader extends Object
    {
        private var chainedSecurityErrorHandler:Function;
        private var chainedIOErrorHandler:Function;
        private var rslList:Array;
        private var chainedRSLErrorHandler:Function;
        private var chainedCompleteHandler:Function;
        private var currentIndex:int = 0;
        private var chainedProgressHandler:Function;
        static const VERSION:String = "3.5.0.12683";

        public function RSLListLoader(:Array)
        {
            rslList = [];
            this.rslList = ;
            return;
        }// end function

        private function loadNext() : void
        {
            if (!isDone())
            {
                currentIndex++;
                if (currentIndex < rslList.length)
                {
                    rslList[currentIndex].load(chainedProgressHandler, listCompleteHandler, listIOErrorHandler, listSecurityErrorHandler, chainedRSLErrorHandler);
                }// end if
            }// end if
            return;
        }// end function

        public function getIndex() : int
        {
            return currentIndex;
        }// end function

        public function load(unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function, unloadResourceModule:Function) : void
        {
            chainedProgressHandler = unloadResourceModule;
            chainedCompleteHandler = unloadResourceModule;
            chainedIOErrorHandler = unloadResourceModule;
            chainedSecurityErrorHandler = unloadResourceModule;
            chainedRSLErrorHandler = unloadResourceModule;
            currentIndex = -1;
            loadNext();
            return;
        }// end function

        private function listCompleteHandler(unloadResourceModule:Event) : void
        {
            if (chainedCompleteHandler != null)
            {
                chainedCompleteHandler(unloadResourceModule);
            }// end if
            loadNext();
            return;
        }// end function

        public function isDone() : Boolean
        {
            return currentIndex >= rslList.length;
        }// end function

        private function listSecurityErrorHandler(unloadResourceModule:Event) : void
        {
            if (chainedSecurityErrorHandler != null)
            {
                chainedSecurityErrorHandler(unloadResourceModule);
            }// end if
            return;
        }// end function

        public function getItemCount() : int
        {
            return rslList.length;
        }// end function

        public function getItem(mx.core:RSLItem::chainedSecurityErrorHandler:int) : RSLItem
        {
            if (mx.core:RSLItem::chainedSecurityErrorHandler < 0 || mx.core:RSLItem::chainedSecurityErrorHandler >= rslList.length)
            {
                return null;
            }// end if
            return rslList[mx.core:RSLItem::chainedSecurityErrorHandler];
        }// end function

        private function listIOErrorHandler(unloadResourceModule:Event) : void
        {
            if (chainedIOErrorHandler != null)
            {
                chainedIOErrorHandler(unloadResourceModule);
            }// end if
            return;
        }// end function

    }
}
