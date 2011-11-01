package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_SoldierToolTips_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_SoldierToolTips_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1]], param2);
            param4[2] = new PropertyWatcher("text", null, [param3[1]], null);
            param4[1] = new PropertyWatcher("name", null, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[2]);
            param4[0].addChild(param4[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SoldierToolTips_inlineComponent1.watcherSetupUtil = new _modules_comm_SoldierToolTips_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}
