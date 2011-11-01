package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.itemRender.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_itemRender_HeroItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_itemRender_HeroItemRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[10] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[5]], null);
            watchers[6] = new PropertyWatcher("listBase", {propertyChange:true}, [bindings[2]], propertyGetter);
            watchers[7] = new PropertyWatcher("selectedItem", {valueCommit:true, change:true}, [bindings[2]], null);
            watchers[3] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[1]], null);
            watchers[0] = new PropertyWatcher("data", {dataChange:true}, [bindings[0], bindings[1], bindings[2], bindings[3], bindings[4], bindings[6]], propertyGetter);
            watchers[12] = new PropertyWatcher("soldierCount", null, [bindings[6]], null);
            watchers[9] = new PropertyWatcher("level", null, [bindings[4]], null);
            watchers[14] = new PropertyWatcher("soldierId", null, [bindings[6]], null);
            watchers[5] = new PropertyWatcher("photoId", null, [bindings[1]], null);
            watchers[1] = new PropertyWatcher("state", null, [bindings[0], bindings[3]], null);
            watchers[10].updateParent(ImageResource);
            watchers[6].updateParent(target);
            watchers[6].addChild(watchers[7]);
            watchers[3].updateParent(ImageResource);
            watchers[0].updateParent(target);
            watchers[0].addChild(watchers[12]);
            watchers[0].addChild(watchers[9]);
            watchers[0].addChild(watchers[14]);
            watchers[0].addChild(watchers[5]);
            watchers[0].addChild(watchers[1]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroItemRenderer.watcherSetupUtil = new _modules_hero_itemRender_HeroItemRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
