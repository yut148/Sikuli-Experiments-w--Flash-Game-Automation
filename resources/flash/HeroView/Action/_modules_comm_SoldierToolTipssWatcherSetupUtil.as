package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.comm.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_comm_SoldierToolTipssWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_SoldierToolTipssWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[3] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[2]], null);
            watchers[1] = new PropertyWatcher("dataObject", {propertyChange:true}, [bindings[0], bindings[1], bindings[2], bindings[3], bindings[4], bindings[5]], propertyGetter);
            watchers[5] = new PropertyWatcher("photoId", null, [bindings[2]], null);
            watchers[7] = new PropertyWatcher("attrs", null, [bindings[4]], null);
            watchers[2] = new PropertyWatcher("fp", null, [bindings[1]], null);
            watchers[3].updateParent(ImageResource);
            watchers[1].updateParent(target);
            watchers[1].addChild(watchers[5]);
            watchers[1].addChild(watchers[7]);
            watchers[1].addChild(watchers[2]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            SoldierToolTipss.watcherSetupUtil = new _modules_comm_SoldierToolTipssWatcherSetupUtil;
            return;
        }// end function

    }
}
