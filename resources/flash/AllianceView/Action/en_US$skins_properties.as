package 
{
    import en_US$skins_properties.*;
    import mx.resources.*;

    public class en_US$skins_properties extends ResourceBundle
    {

        public function en_US$skins_properties()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//2c cd 05 
_as3_pushstring "en_US"
//2c d5 05 
_as3_pushstring "skins"
//49 02 
_as3_constructsuper (param count:2)
//47 
_as3_returnvoid 
        }// end function

        override protected function getContent() : Object
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//2c e1 07 
_as3_pushstring "notLoaded"
//2c b1 07 
_as3_pushstring "Unable to load '{0}'."
//55 01 
_as3_newobject {object count:1}
//80 03 
_as3_coerce Object
//d5 
_as3_setlocal <1> 
//d1 
_as3_getlocal <1> 
//48 
_as3_returnvalue 
        }// end function

    }
}
