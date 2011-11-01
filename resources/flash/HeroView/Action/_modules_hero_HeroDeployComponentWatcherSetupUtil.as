package 
{
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroDeployComponentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroDeployComponentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[9] = new PropertyWatcher("characterHerosList", {propertyChange:true}, [param3[6]], param2);
            param4[10] = new PropertyWatcher("heroes", {propertyChange:true}, [param3[6]], null);
            param4[3] = new PropertyWatcher("characterLogicResource", {propertyChange:true}, [param3[2], param3[3], param3[4], param3[26]], param2);
            param4[30] = new PropertyWatcher("soldiers", {propertyChange:true}, [param3[26]], null);
            param4[4] = new PropertyWatcher("totalDeployed", {propertyChange:true}, [param3[2], param3[3]], null);
            param4[5] = new PropertyWatcher("totalUndeployed", {propertyChange:true}, [param3[2], param3[4]], null);
            param4[9].updateParent(param1);
            param4[9].addChild(param4[10]);
            param4[3].updateParent(param1);
            param4[3].addChild(param4[30]);
            param4[3].addChild(param4[4]);
            param4[3].addChild(param4[5]);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroDeployComponent.watcherSetupUtil = new _modules_hero_HeroDeployComponentWatcherSetupUtil;
            return;
        }// end function

    }
}
