package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroDistributeComponentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroDistributeComponentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[31] = new PropertyWatcher("strategyChanged", {propertyChange:true}, [bindings[24], bindings[31]], propertyGetter);
            watchers[11] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[6]], null);
            watchers[13] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[7]], null);
            watchers[35] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[27]], null);
            watchers[1] = new PropertyWatcher("characterHerosList", {propertyChange:true}, [bindings[1]], propertyGetter);
            watchers[2] = new PropertyWatcher("heroes", {propertyChange:true}, [bindings[1]], null);
            watchers[32] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[25]], null);
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
, null, [bindings[4]], null);
            watchers[5] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[3]], null);
            watchers[3] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[2]], null);
            watchers[31].updateParent(target);
            watchers[11].updateParent(ImageResource);
            watchers[13].updateParent(ImageResource);
            watchers[35].updateParent(ImageResource);
            watchers[1].updateParent(target);
            watchers[1].addChild(watchers[2]);
            watchers[32].updateParent(ImageResource);
            watchers[9].updateParent(ImageResource);
            watchers[7].updateParent(ImageResource);
            watchers[5].updateParent(ImageResource);
            watchers[3].updateParent(ImageResource);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroDistributeComponent.watcherSetupUtil = new _modules_hero_HeroDistributeComponentWatcherSetupUtil;
            return;
        }// end function

    }
}
