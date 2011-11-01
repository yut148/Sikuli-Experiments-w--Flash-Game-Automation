package modules.comm.data
{
    import com.cgame.cache.msg.logic.*;

    public class CharacterToolTipData extends Object
    {
        public var heroData:CharacterLogicHero;
        public var heroNoSoldier:String;
        public var soldierData:Object;
        public var positionTip:String;
        public var soldierByHero:Object;
        public var heroTemp:CharacterLogicHero;
        public var heroTipSelect:Boolean;
        private static var instance:CharacterToolTipData = null;

        public function CharacterToolTipData()
        {
            return;
        }// end function

        public function isNull() : void
        {
            this.heroData = null;
            this.soldierData = null;
            this.heroNoSoldier = null;
            this.positionTip = null;
            this.heroTemp = null;
            this.soldierByHero = null;
            return;
        }// end function

        public static function getInstance() : CharacterToolTipData
        {
            if (!instance)
            {
            }// end if
            var _loc_1:* = new CharacterToolTipData;
            instance = new CharacterToolTipData;
            return _loc_1;
        }// end function

    }
}
