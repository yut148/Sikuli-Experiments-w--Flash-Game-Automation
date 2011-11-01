package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_CharacterToolTipsWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_CharacterToolTipsWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("vHeight", {propertyChange:true}, [param3[0]], param2);
            param4[0].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            CharacterToolTips.watcherSetupUtil = new _modules_comm_CharacterToolTipsWatcherSetupUtil;
            return;
        }// end function

    }
}
