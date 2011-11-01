package 
{
    import flash.display.*;
    import modules.hero.*;
    import mx.binding.*;
    import mx.core.*;

    public class _modules_hero_HeroComponentWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_hero_HeroComponentWatcherSetupUtil()
        {
            return;
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
            param4[3] = new PropertyWatcher("viewStackHeros", {propertyChange:true}, [param3[3]], param2);
            param4[3].updateParent(param1);
            return;
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
            HeroComponent.watcherSetupUtil = new _modules_hero_HeroComponentWatcherSetupUtil;
            return;
        }// end function

    }
}
