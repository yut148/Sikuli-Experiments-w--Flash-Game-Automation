package 
{
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_PageComponentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_PageComponentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[5] = new PropertyWatcher("_showFirstLastBtn", {propertyChange:true}, [param3[4], param3[6], param3[8], param3[11]], param2);
            param4[4] = new PropertyWatcher("_hGap", {propertyChange:true}, [param3[3], param3[6], param3[8], param3[10]], param2);
            param4[0] = new PropertyWatcher("pageLabel", {propertyChange:true}, [param3[0], param3[1], param3[2]], param2);
            param4[1] = new PropertyWatcher("width", {widthChanged:true}, [param3[0]], null);
            param4[3] = new PropertyWatcher("y", {yChanged:true}, [param3[2]], null);
            param4[2] = new PropertyWatcher("x", {xChanged:true}, [param3[1]], null);
            param4[7] = new PropertyWatcher("_pageCount", {propertyChange:true}, [param3[9], param3[12]], param2);
            param4[6] = new PropertyWatcher("_currentPageId", {propertyChange:true}, [param3[5], param3[7], param3[9], param3[12]], param2);
            param4[5].updateParent(param1);
            param4[4].updateParent(param1);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            param4[0].addChild(param4[3]);
            param4[0].addChild(param4[2]);
            param4[7].updateParent(param1);
            param4[6].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            PageComponent.watcherSetupUtil = new _modules_comm_PageComponentWatcherSetupUtil;
            return;
        }// end function

    }
}
