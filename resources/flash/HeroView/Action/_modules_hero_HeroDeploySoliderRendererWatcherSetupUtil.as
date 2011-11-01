package 
{
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroDeploySoliderRendererWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroDeploySoliderRendererWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[0] = new PropertyWatcher("data", {dataChange:true}, [param3[0], param3[1], param3[2], param3[3]], param2);
            param4[3] = new PropertyWatcher("photoId", null, [param3[1]], null);
            param4[1] = new PropertyWatcher("name", null, [param3[0]], null);
            param4[5] = new PropertyWatcher("deployed", null, [param3[2]], null);
            param4[7] = new PropertyWatcher("undeployed", null, [param3[3]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[3]);
            param4[0].addChild(param4[1]);
            param4[0].addChild(param4[5]);
            param4[0].addChild(param4[7]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroDeploySoliderRenderer.watcherSetupUtil = new _modules_hero_HeroDeploySoliderRendererWatcherSetupUtil;
            return;
        }// end function

    }
}
