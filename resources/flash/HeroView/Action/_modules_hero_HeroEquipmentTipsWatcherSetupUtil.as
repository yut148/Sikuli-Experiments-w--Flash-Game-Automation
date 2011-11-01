package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroEquipmentTipsWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroEquipmentTipsWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[7] = new PropertyWatcher("img1", {propertyChange:true}, [bindings[4]], propertyGetter);
            watchers[8] = new PropertyWatcher("width", {widthChanged:true}, [bindings[4]], null);
            watchers[19] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[15]], null);
            watchers[5] = new PropertyWatcher("txt1", {propertyChange:true}, [bindings[4], bindings[7], bindings[8]], propertyGetter);
            watchers[6] = new PropertyWatcher("width", {widthChanged:true}, [bindings[4], bindings[7], bindings[8]], null);
            watchers[10] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[9]], null);
            watchers[17] = new PropertyWatcher("txt2", {propertyChange:true}, [bindings[13], bindings[14]], propertyGetter);
            watchers[18] = new PropertyWatcher("width", {widthChanged:true}, [bindings[13], bindings[14]], null);
            watchers[0] = new PropertyWatcher("heroEqu", {propertyChange:true}, [bindings[0], bindings[4], bindings[5]], propertyGetter);
            watchers[2] = new PropertyWatcher("can1", {propertyChange:true}, [bindings[2], bindings[3]], propertyGetter);
            watchers[4] = new PropertyWatcher("height", {heightChanged:true}, [bindings[3]], null);
            watchers[3] = new PropertyWatcher("width", {widthChanged:true}, [bindings[2]], null);
            watchers[13] = new PropertyWatcher("can2", {propertyChange:true}, [bindings[10], bindings[11]], propertyGetter);
            watchers[15] = new PropertyWatcher("height", {heightChanged:true}, [bindings[11]], null);
            watchers[14] = new PropertyWatcher("width", {widthChanged:true}, [bindings[10]], null);
            watchers[7].updateParent(target);
            watchers[7].addChild(watchers[8]);
            watchers[19].updateParent(ImageResource);
            watchers[5].updateParent(target);
            watchers[5].addChild(watchers[6]);
            watchers[10].updateParent(ImageResource);
            watchers[17].updateParent(target);
            watchers[17].addChild(watchers[18]);
            watchers[0].updateParent(target);
            watchers[2].updateParent(target);
            watchers[2].addChild(watchers[4]);
            watchers[2].addChild(watchers[3]);
            watchers[13].updateParent(target);
            watchers[13].addChild(watchers[15]);
            watchers[13].addChild(watchers[14]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroEquipmentTips.watcherSetupUtil = new _modules_hero_HeroEquipmentTipsWatcherSetupUtil;
            return;
        }// end function

    }
}
