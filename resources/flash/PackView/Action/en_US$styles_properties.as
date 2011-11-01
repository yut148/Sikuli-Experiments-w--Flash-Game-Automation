package 
{
    import en_US$styles_properties.*;
    import mx.resources.*;

    public class en_US$styles_properties extends ResourceBundle
    {

        public function en_US$styles_properties()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//2c b4 03 
_as3_pushstring "en_US"
//2c bd 03 
_as3_pushstring "styles"
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
//2c fd 03 
_as3_pushstring "unableToLoad"
//2c fe 03 
_as3_pushstring "Unable to load style({0}): {1}."
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
