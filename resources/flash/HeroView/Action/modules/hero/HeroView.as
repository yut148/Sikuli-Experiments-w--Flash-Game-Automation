package modules.hero
{
    import com.cgame.common.layer.*;
    import com.cgame.view.guide.event.*;
    import flash.events.*;
    import mx.modules.*;

    public class HeroView extends Module implements IHeroView
    {
        private var _heroComponent:HeroComponent;

        public function HeroView()
        {
            this.width = 864;
            this.height = 522;
            this.mouseEnabled = false;
            this._heroComponent = new HeroComponent();
            this._heroComponent.addEventListener(Event.CLOSE, this.onClose);
            addChild(this._heroComponent);
            return;
        }// end function

        public function heroIsShow() : Boolean
        {
            var _loc_1:Boolean;
            if (this.parent)
            {
                _loc_1 = true;
            }// end if
            return _loc_1;
        }// end function

        public function removeView() : void
        {
            LayerController.instance.removeComponent(this);
            return;
        }// end function

        public function hideWinForGuide() : void
        {
            if (this.parent)
            {
                LayerController.instance.removeComponent(this);
            }// end if
            return;
        }// end function

        public function updateHeroByHeroId(param1:int) : void
        {
            if (this._heroComponent)
            {
                this._heroComponent.updateHeroByHeroId(param1);
            }// end if
            return;
        }// end function

        private function onClose(param1:Event) : void
        {
            if (param1.isDefaultPrevented())
            {
                param1.preventDefault();
            }// end if
            if (LayerController.inGuide)
            {
                LayerController.addMouseUnableLayer();
            }// end if
            dispatchEvent(new GuideEvent(GuideEvent.GUIDE_CLICKED));
            this.removeView();
            return;
        }// end function

        public function fireHero(param1:int) : void
        {
            if (this._heroComponent)
            {
                this._heroComponent.fireHero(param1);
            }// end if
            return;
        }// end function

        public function setEcquipItems() : void
        {
            if (this._heroComponent && this._heroComponent.parent)
            {
                this._heroComponent.setEcquipItems();
            }// end if
            return;
        }// end function

        public function updateSoldier() : void
        {
            if (this._heroComponent)
            {
                this._heroComponent.updateSoldier();
            }// end if
            return;
        }// end function

        public function guideTragHero() : void
        {
            this._heroComponent.guideTragHero();
            return;
        }// end function

        public function setTroopstrategyRes() : void
        {
            this._heroComponent.setTroopstrategyRes();
            return;
        }// end function

        public function init(param1:Object = null) : void
        {
            if (param1)
            {
                if (param1.hasOwnProperty("index"))
                {
                    this._heroComponent.setViewIndex(param1.index);
                }
                else
                {
                    this._heroComponent.init();
                }// end else if
            }
            else
            {
                this._heroComponent.init();
            }// end else if
            return;
        }// end function

    }
}
