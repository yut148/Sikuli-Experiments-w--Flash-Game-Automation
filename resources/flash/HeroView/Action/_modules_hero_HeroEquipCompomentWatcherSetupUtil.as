package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroEquipCompomentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroEquipCompomentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[57] = new PropertyWatcher("_nextEnabled", {propertyChange:true}, [bindings[49], bindings[48], bindings[46], bindings[45]], propertyGetter);
            watchers[55] = new PropertyWatcher("_preEnabled", {propertyChange:true}, [bindings[43], bindings[40], bindings[41], bindings[44]], propertyGetter);
            watchers[16] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[8]], null);
            watchers[18] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[9]], null);
            watchers[10] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[5]], null);
            watchers[12] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[6]], null);
            watchers[14] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[7]], null);
            watchers[60] = new PropertyWatcher("characterHerosList", {propertyChange:true}, [bindings[51]], propertyGetter);
            watchers[61] = new PropertyWatcher("heroes", {propertyChange:true}, [bindings[51]], null);
            watchers[8] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[4]], null);
            watchers[6] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[3]], null);
            watchers[4] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[2]], null);
            watchers[28] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[14]], null);
            watchers[2] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[1]], null);
            watchers[0] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[0]], null);
            watchers[26] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[13]], null);
            watchers[24] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[12]], null);
            watchers[22] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[11]], null);
            watchers[20] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[10]], null);
            watchers[57].updateParent(target);
            watchers[55].updateParent(target);
            watchers[16].updateParent(ImageResource);
            watchers[18].updateParent(ImageResource);
            watchers[10].updateParent(ImageResource);
            watchers[12].updateParent(ImageResource);
            watchers[14].updateParent(ImageResource);
            watchers[60].updateParent(target);
            watchers[60].addChild(watchers[61]);
            watchers[8].updateParent(ImageResource);
            watchers[6].updateParent(ImageResource);
            watchers[4].updateParent(ImageResource);
            watchers[28].updateParent(ImageResource);
            watchers[2].updateParent(ImageResource);
            watchers[0].updateParent(ImageResource);
            watchers[26].updateParent(ImageResource);
            watchers[24].updateParent(ImageResource);
            watchers[22].updateParent(ImageResource);
            watchers[20].updateParent(ImageResource);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroEquipCompoment.watcherSetupUtil = new _modules_hero_HeroEquipCompomentWatcherSetupUtil;
            return;
        }// end function

    }
}
