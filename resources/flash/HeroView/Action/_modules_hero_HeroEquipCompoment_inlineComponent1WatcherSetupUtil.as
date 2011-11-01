package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroEquipCompoment_inlineComponent1WatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroEquipCompoment_inlineComponent1WatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[9] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[5]], null);
            watchers[7] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[3]], null);
            watchers[2] = new PropertyWatcher("data", {dataChange:true}, [bindings[1], bindings[2], bindings[3], bindings[4], bindings[5], bindings[6]], propertyGetter);
            watchers[3] = new PropertyWatcher("id", null, [bindings[1], bindings[4], bindings[6]], null);
            watchers[11] = new PropertyWatcher("color", null, [bindings[5]], null);
            watchers[6] = new PropertyWatcher("photoId", null, [bindings[3]], null);
            watchers[4] = new PropertyWatcher("characterAuctionId", null, [bindings[2]], null);
            watchers[0] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[0]], null);
            watchers[9].updateParent(ItemBorderResource);
            watchers[7].updateParent(ImageResource);
            watchers[2].updateParent(target);
            watchers[2].addChild(watchers[3]);
            watchers[2].addChild(watchers[11]);
            watchers[2].addChild(watchers[6]);
            watchers[2].addChild(watchers[4]);
            watchers[0].updateParent(ImageResource);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroEquipCompoment_inlineComponent1.watcherSetupUtil = new _modules_hero_HeroEquipCompoment_inlineComponent1WatcherSetupUtil;
            return;
        }// end function

    }
}
