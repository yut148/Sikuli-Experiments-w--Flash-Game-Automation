package mx.core
{
    import flash.display.*;
    import mx.utils.*;

    public class FlexSprite extends Sprite
    {
        static const VERSION:String = "3.5.0.12683";

        public function FlexSprite()
        {
            try
            {
                name = NameUtil.createUniqueName(this);
            }// end try
            catch (e:Error)
            {
            }// end catch
            return;
        }// end function

        override public function toString() : String
        {
            return NameUtil.displayObjectToString(this);
        }// end function

    }
}
