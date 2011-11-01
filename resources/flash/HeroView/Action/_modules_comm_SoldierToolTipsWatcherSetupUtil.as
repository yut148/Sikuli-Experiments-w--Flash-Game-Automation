package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_SoldierToolTipsWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_SoldierToolTipsWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("dataObject", {propertyChange:true}, [param3[0], param3[1], param3[2], param3[3], param3[4]], param2);
            param4[6] = new PropertyWatcher("photoId", null, [param3[2]], null);
            param4[5] = new PropertyWatcher("typeSoldier", null, [param3[2]], null);
            param4[7] = new PropertyWatcher("attrs", null, [param3[3]], null);
            param4[2] = new PropertyWatcher("tId", null, [param3[0]], null);
            param4[3] = new PropertyWatcher("fp", null, [param3[1]], null);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[6]);
            param4[1].addChild(param4[5]);
            param4[1].addChild(param4[7]);
            param4[1].addChild(param4[2]);
            param4[1].addChild(param4[3]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SoldierToolTips.watcherSetupUtil = new _modules_comm_SoldierToolTipsWatcherSetupUtil;
            return;
        }// end function

    }
}
