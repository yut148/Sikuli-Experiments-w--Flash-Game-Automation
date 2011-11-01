package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.core.*;

    public class _modules_comm_HeroTooTiopsWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_HeroTooTiopsWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroTooTiops.watcherSetupUtil = new _modules_comm_HeroTooTiopsWatcherSetupUtil;
            return;
        }// end function

    }
}
