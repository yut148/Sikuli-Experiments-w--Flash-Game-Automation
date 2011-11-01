package 
{
    import com.cgame.config.*;
    import flash.display.*;
    import modules.embed.itemRender.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_embed_itemRender_EmbedItemRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_embed_itemRender_EmbedItemRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            var target:* = param1;
            var propertyGetter:* = param2;
            var bindings:* = param3;
            var watchers:* = param4;
            watchers[12] = new FunctionReturnWatcher("getInstance", target, 
function () : Array
{
    return [];
}// end function
, null, [bindings[7]], null);
            watchers[17] = new PropertyWatcher("_radioButtonGroup", {propertyChange:true}, [bindings[9]], propertyGetter);
            watchers[15] = new PropertyWatcher("radioButton", {propertyChange:true}, [bindings[8]], propertyGetter);
            watchers[16] = new PropertyWatcher("selected", {valueCommit:true, click:true}, [bindings[8]], null);
            watchers[4] = new PropertyWatcher("data", {dataChange:true}, [bindings[1], bindings[2], bindings[3], bindings[4], bindings[5], bindings[6], bindings[7]], propertyGetter);
            watchers[11] = new PropertyWatcher("count", null, [bindings[6]], null);
            watchers[6] = new PropertyWatcher("visible", null, [bindings[2], bindings[5]], null);
            watchers[14] = new PropertyWatcher("color", null, [bindings[7]], null);
            watchers[5] = new PropertyWatcher("photoId", null, [bindings[1]], null);
            watchers[7] = new PropertyWatcher("characterAuctionId", null, [bindings[3]], null);
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
            watchers[12].updateParent(ItemBorderResource);
            watchers[17].updateParent(target);
            watchers[15].updateParent(target);
            watchers[15].addChild(watchers[16]);
            watchers[4].updateParent(target);
            watchers[4].addChild(watchers[11]);
            watchers[4].addChild(watchers[6]);
            watchers[4].addChild(watchers[14]);
            watchers[4].addChild(watchers[5]);
            watchers[4].addChild(watchers[7]);
            watchers[2].updateParent(ImageResource);
            watchers[0].updateParent(ImageResource);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            EmbedItemRenderer.watcherSetupUtil = new _modules_embed_itemRender_EmbedItemRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
