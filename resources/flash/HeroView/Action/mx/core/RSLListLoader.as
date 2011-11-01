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

        public function RSLListLoader(param1:Array)
        {
            rslList = [];
            this.rslList = param1;
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

        public function load(param1:Function, param2:Function, param3:Function, param4:Function, param5:Function) : void
        {
            chainedProgressHandler = param1;
            chainedCompleteHandler = param2;
            chainedIOErrorHandler = param3;
            chainedSecurityErrorHandler = param4;
            chainedRSLErrorHandler = param5;
            currentIndex = -1;
            loadNext();
            return;
        }// end function

        private function listCompleteHandler(param1:Event) : void
        {
            if (chainedCompleteHandler != null)
            {
                chainedCompleteHandler(param1);
            }// end if
            loadNext();
            return;
        }// end function

        public function isDone() : Boolean
        {
            return currentIndex >= rslList.length;
        }// end function

        private function listSecurityErrorHandler(param1:Event) : void
        {
            if (chainedSecurityErrorHandler != null)
            {
                chainedSecurityErrorHandler(param1);
            }// end if
            return;
        }// end function

        public function getItemCount() : int
        {
            return rslList.length;
        }// end function

        public function getItem(param1:int) : RSLItem
        {
            if (param1 < 0 || param1 >= rslList.length)
            {
                return null;
            }// end if
            return rslList[param1];
        }// end function

        private function listIOErrorHandler(param1:Event) : void
        {
            if (chainedIOErrorHandler != null)
            {
                chainedIOErrorHandler(param1);
            }// end if
            return;
        }// end function

    }
}
