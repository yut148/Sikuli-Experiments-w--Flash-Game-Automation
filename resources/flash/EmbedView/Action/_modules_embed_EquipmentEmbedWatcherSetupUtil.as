package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.embed.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_embed_EquipmentEmbedWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_embed_EquipmentEmbedWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[39] = new PropertyWatcher("check1", {propertyChange:true}, [bindings[25]], propertyGetter);
            watchers[40] = new PropertyWatcher("selected", {valueCommit:true, click:true}, [bindings[25]], null);
            watchers[43] = new PropertyWatcher("check2", {propertyChange:true}, [bindings[27]], propertyGetter);
            watchers[44] = new PropertyWatcher("selected", {valueCommit:true, click:true}, [bindings[27]], null);
            watchers[27] = new PropertyWatcher("gemImg5", {propertyChange:true}, [bindings[16]], propertyGetter);
            watchers[28] = new PropertyWatcher("data", {dataChange:true}, [bindings[16]], null);
            watchers[12] = new PropertyWatcher("gemImg4", {propertyChange:true}, [bindings[6]], propertyGetter);
            watchers[13] = new PropertyWatcher("data", {dataChange:true}, [bindings[6]], null);
            watchers[15] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[9]], null);
            watchers[37] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[24]], null);
            watchers[30] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[19]], null);
            watchers[5] = new PropertyWatcher("equImg", {propertyChange:true}, [bindings[16], bindings[2], bindings[4], bindings[6], bindings[12], bindings[14]], propertyGetter);
            watchers[6] = new PropertyWatcher("data", {dataChange:true}, [bindings[16], bindings[2], bindings[4], bindings[6], bindings[12], bindings[14]], null);
            watchers[3] = new PropertyWatcher("gemImg0", {propertyChange:true}, [bindings[2]], propertyGetter);
            watchers[4] = new PropertyWatcher("data", {dataChange:true}, [bindings[2]], null);
            watchers[21] = new PropertyWatcher("gemImg1", {propertyChange:true}, [bindings[12]], propertyGetter);
            watchers[22] = new PropertyWatcher("data", {dataChange:true}, [bindings[12]], null);
            watchers[9] = new PropertyWatcher("gemImg2", {propertyChange:true}, [bindings[4]], propertyGetter);
            watchers[10] = new PropertyWatcher("data", {dataChange:true}, [bindings[4]], null);
            watchers[24] = new PropertyWatcher("gemImg3", {propertyChange:true}, [bindings[14]], propertyGetter);
            watchers[25] = new PropertyWatcher("data", {dataChange:true}, [bindings[14]], null);
            watchers[41] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[26]], null);
            watchers[45] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[28]], null);
            watchers[39].updateParent(target);
            watchers[39].addChild(watchers[40]);
            watchers[43].updateParent(target);
            watchers[43].addChild(watchers[44]);
            watchers[27].updateParent(target);
            watchers[27].addChild(watchers[28]);
            watchers[12].updateParent(target);
            watchers[12].addChild(watchers[13]);
            watchers[15].updateParent(ConfigResource);
            watchers[37].updateParent(ImageResource);
            watchers[30].updateParent(ConfigResource);
            watchers[5].updateParent(target);
            watchers[5].addChild(watchers[6]);
            watchers[3].updateParent(target);
            watchers[3].addChild(watchers[4]);
            watchers[21].updateParent(target);
            watchers[21].addChild(watchers[22]);
            watchers[9].updateParent(target);
            watchers[9].addChild(watchers[10]);
            watchers[24].updateParent(target);
            watchers[24].addChild(watchers[25]);
            watchers[41].updateParent(ImageResource);
            watchers[45].updateParent(ImageResource);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            EquipmentEmbed.watcherSetupUtil = new _modules_embed_EquipmentEmbedWatcherSetupUtil;
            return;
        }// end function

    }
}
