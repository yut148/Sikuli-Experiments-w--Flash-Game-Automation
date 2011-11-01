package mx.core
{
    import flash.utils.*;

    public interface IFlexModule
    {

        public function IFlexModule();

        function set moduleFactory(Dictionary:IFlexModuleFactory) : void;

        function get moduleFactory() : IFlexModuleFactory;

    }
}
