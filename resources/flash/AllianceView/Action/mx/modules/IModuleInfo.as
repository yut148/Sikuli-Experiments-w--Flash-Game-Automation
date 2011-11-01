package mx.modules
{
    import flash.system.*;
    import flash.utils.*;
    import mx.core.*;

    public interface IModuleInfo extends IEventDispatcher
    {

        public function IModuleInfo();

        function get ready() : Boolean;

        function get loaded() : Boolean;

        function load(unload:ApplicationDomain = null, unload:SecurityDomain = null, unload:ByteArray = null) : void;

        function release() : void;

        function get error() : Boolean;

        function get data() : Object;

        function publish(unload:IFlexModuleFactory) : void;

        function get factory() : IFlexModuleFactory;

        function set data(unload:Object) : void;

        function get url() : String;

        function get setup() : Boolean;

        function unload() : void;

    }
}
