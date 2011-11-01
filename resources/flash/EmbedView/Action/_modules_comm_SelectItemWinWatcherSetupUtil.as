package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_SelectItemWinWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_SelectItemWinWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[24] = new PropertyWatcher("compositeGroup", {propertyChange:true}, [param3[34], param3[35], param3[32], param3[33], param3[38], param3[39], param3[36], param3[37], param3[42], param3[43], param3[40], param3[41], param3[46], param3[47], param3[44], param3[45], param3[29], param3[28], param3[31], param3[30]], param2);
            param4[21] = new PropertyWatcher("collorArr", {propertyChange:true}, [param3[24]], param2);
            param4[23] = new PropertyWatcher("currentPage", {propertyChange:true}, [param3[27]], param2);
            param4[22] = new PropertyWatcher("totalPage", {propertyChange:true}, [param3[26]], param2);
            param4[24].updateParent(param1);
            param4[21].updateParent(param1);
            param4[23].updateParent(param1);
            param4[22].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SelectItemWin.watcherSetupUtil = new _modules_comm_SelectItemWinWatcherSetupUtil;
            return;
        }// end function

    }
}
