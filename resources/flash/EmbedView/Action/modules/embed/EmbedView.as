package modules.embed
{
    import com.cgame.cache.msg.logic.*;
    import com.cgame.common.layer.*;
    import com.cgame.config.*;
    import com.utils.*;
    import flash.events.*;
    import mx.modules.*;

    public class EmbedView extends Module implements IEmbedView
    {
        private var _equipmentEmbedComponent:EquipmentEmbed;

        public function EmbedView()
        {
            this.width = 515;
            this.height = 490;
            this.mouseEnabled = false;
            this._equipmentEmbedComponent = new EquipmentEmbed();
            this._equipmentEmbedComponent.addEventListener(Event.CLOSE, this.onClose);
            addChild(this._equipmentEmbedComponent);
            return;
        }// end function

        private function formatInfo(param1:Object) : String
        {
            var _loc_2:String;
            var _loc_3:* = param1["slotItemAdd"] as Array;
            var _loc_4:* = param1["slotItemIds"] as Array;
            var _loc_5:int;
            while (_loc_5 < _loc_4.length)
            {
                // label
                if (_loc_4[_loc_5])
                {
                    if (this.hasInlay(int(_loc_4[_loc_5])))
                    {
                    }
                    else if (_loc_3[_loc_5].ratio == 0)
                    {
                    }
                    else
                    {
                        _loc_2 = _loc_2 + ConfigResource.getInstance().getItemName(int(_loc_4[_loc_5]));
                        _loc_2 = _loc_2 + (" " + Lang.msg("??????") + " " + _loc_3[_loc_5].ratio + "%");
                        _loc_2 = _loc_2 + "<br>";
                    }// end else if
                }// end else if
                _loc_5++;
            }// end while
            return _loc_2;
        }// end function

        private function getItemList() : Array
        {
            return this._equipmentEmbedComponent.equItemList;
        }// end function

        public function init(param1:Object = null) : void
        {
            this._equipmentEmbedComponent.init();
            return;
        }// end function

        private function hasInlay(param1:int) : Boolean
        {
            var _loc_2:Boolean;
            var _loc_3:int;
            while (_loc_3 < this.getItemList().length)
            {
                // label
                if (this.getItemList()[_loc_3] == param1)
                {
                    _loc_2 = true;
                    return _loc_2;
                }// end if
                _loc_3++;
            }// end while
            return _loc_2;
        }// end function

        public function reFreshItem(param1:CharacterLogicItem) : void
        {
            this._equipmentEmbedComponent.reFreshItem(param1);
            return;
        }// end function

        private function onClose(param1:Event) : void
        {
            if (param1.isDefaultPrevented())
            {
                param1.preventDefault();
            }// end if
            LayerController.instance.removeComponent(this);
            return;
        }// end function

        public function showHammerGem(param1:Object) : void
        {
            var _loc_2:* = this.formatInfo(param1);
            if (_loc_2 != "")
            {
                MyAlert.show(_loc_2);
            }// end if
            return;
        }// end function

    }
}
