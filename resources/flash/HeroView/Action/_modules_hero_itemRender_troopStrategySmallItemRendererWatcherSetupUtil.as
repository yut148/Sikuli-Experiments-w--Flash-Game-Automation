package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_itemRender_troopStrategySmallItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_itemRender_troopStrategySmallItemRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[1] = new PropertyWatcher("listBase", {propertyChange:true}, [bindings[0]], propertyGetter);
            watchers[2] = new PropertyWatcher("selectedItem", {valueCommit:true, change:true}, [bindings[0]], null);
            watchers[4] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[1]], null);
            watchers[3] = new PropertyWatcher("data", {dataChange:true}, [bindings[0]], propertyGetter);
            watchers[1].updateParent(target);
            watchers[1].addChild(watchers[2]);
            watchers[4].updateParent(ImageResource);
            watchers[3].updateParent(target);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            troopStrategySmallItemRenderer.watcherSetupUtil = new _modules_hero_itemRender_troopStrategySmallItemRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
