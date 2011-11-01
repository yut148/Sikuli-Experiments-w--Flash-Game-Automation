package 
{
    import en_US$effects_properties.*;
    import mx.resources.*;

    public class en_US$effects_properties extends ResourceBundle
    {

        public function en_US$effects_properties()
        {
//d0 
_as3_getlocal <0> 
//30 
_as3_pushscope 
//d0 
_as3_getlocal <0> 
//2c cd 05 
_as3_pushstring "en_US"
//2c d3 05 
_as3_pushstring "effects"
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
//2c e2 07 
_as3_pushstring "incorrectTrigger"
//2c e3 07 
_as3_pushstring "The Zoom effect can not be triggered by a moveEffect trigger."
//2c e4 07 
_as3_pushstring "incorrectSource"
//2c e5 07 
_as3_pushstring "Source property must be a Class or String."
//55 02 
_as3_newobject {object count:2}
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
