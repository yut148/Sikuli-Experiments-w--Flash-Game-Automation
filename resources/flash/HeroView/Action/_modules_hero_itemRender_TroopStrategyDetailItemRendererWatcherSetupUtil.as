package 
{
    import flash.display.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_itemRender_TroopStrategyDetailItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_itemRender_TroopStrategyDetailItemRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[1] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1]], param2);
            param4[2] = new PropertyWatcher("id", null, [param3[0]], null);
            param4[1].updateParent(param1);
            param4[1].addChild(param4[2]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            TroopStrategyDetailItemRenderer.watcherSetupUtil = new _modules_hero_itemRender_TroopStrategyDetailItemRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
