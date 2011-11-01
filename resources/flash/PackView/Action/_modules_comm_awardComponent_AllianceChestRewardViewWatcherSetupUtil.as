package 
{
    import flash.display.*;
    import mx.core.*;

    public class _modules_comm_awardComponent_AllianceChestRewardViewWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
    {

        public function _modules_comm_awardComponent_AllianceChestRewardViewWatcherSetupUtil()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//49 00 
_as3_constructsuper (param count:0)
//47 
_as3_returnvoid 
        }// end function

        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//62 04 
_as3_getlocal <4>
//24 00 
_as3_pushbyte 0
//5d da 02 
_as3_findpropstrict mx.binding::PropertyWatcher
//2c a1 01 
_as3_pushstring "_titleLabel"
//2c 2c 
_as3_pushstring "propertyChange"
//26 
_as3_pushtrue 
//55 01 
_as3_newobject {object count:1}
//d3 
_as3_getlocal <3> 
//24 00 
_as3_pushbyte 0
//66 96 03 
_as3_getproperty {}
//56 01 
_as3_newarray [array size:1]
//d2 
_as3_getlocal <2> 
//4a da 02 04 
_as3_constructprop mx.binding::PropertyWatcher(param count:4)
//61 96 03 
_as3_setproperty {}
//62 04 
_as3_getlocal <4>
//24 00 
_as3_pushbyte 0
//66 96 03 
_as3_getproperty {}
//d1 
_as3_getlocal <1> 
//4f 97 03 01 
_as3_callpropvoid updateParent(param count:1)
//47 
_as3_returnvoid 
        }// end function

        public static function init(param1:IFlexModuleFactory) : void
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//60 23 
_as3_getlex modules.comm.awardComponent::AllianceChestRewardView
//d0 
_as3_getlocal <0> 
//42 00 
_as3_construct (param count:0)
//61 d3 01 
_as3_setproperty watcherSetupUtil
//47 
_as3_returnvoid 
        }// end function

    }
}
