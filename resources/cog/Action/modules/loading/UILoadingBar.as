package modules.loading
{
    import com.adobe.serialization.json.*;
    import flash.display.*;
    import flash.events.*;
    import flash.net.*;
    import flash.text.*;
    import flash.utils.*;

    public class UILoadingBar extends Sprite
    {
        private var txt1:String;
        private var refreshTime:Timer;
        private var _loadingConnectURL:String;
        public var txtProgress:TextField;
        private var _loadingImgURL:String;
        private var txt2:String;
        public var tipsTxt:TextField;
        public var logoImg:MovieClip;
        public var loadIntroduction:TextField;
        public var mcMask:Sprite;
        public var txtMsg:TextField;
        public var mcBall:Sprite;
        private var loading:URLLoader;
        public var loadImg:Loader;
        private var obj:Object;

        public function UILoadingBar()
        {
            this.loadImg = new Loader();
            this.obj = new Object();
            this.loading = new URLLoader();
            this.mcMask.scaleX = 0;
            this.mcBall.x = this.mcMask.x + this.mcMask.width;
            if (!this.refreshTime)
            {
                this.refreshTime = new Timer(1000);
            }// end if
            this.refreshTime.addEventListener(TimerEvent.TIMER, this.onTime);
            this.refreshTime.start();
            this.loadIntroduction.text = "If it\'s the first time you enter the game, please wait patiently because the loading file is large.";
            this.tipsTxt.text = "[tips] Vip can give you many privileges in COG.";
            return;
        }// end function

        public function showProgress(param1:Number) : void
        {
            this.mcMask.scaleX = param1;
            this.mcBall.x = this.mcMask.x + this.mcMask.width;
            this.txtProgress.text = Math.floor(param1 * 100) + "%";
            return;
        }// end function

        private function onImgComplete(param1:Event) : void
        {
            this.logoImg.addChild(this.loadImg);
            return;
        }// end function

        private function onLoadingComp(param1:Event) : void
        {
            this.obj = JSON.decode(this.loading.data);
            if (this.obj.picture != null && this.obj.picture != "")
            {
                this.loadImg.load(new URLRequest(this._loadingImgURL + this.obj.picture));
                this.loadImg.contentLoaderInfo.addEventListener(Event.COMPLETE, this.onImgComplete);
            }// end if
            if (this.obj.loadingword != null)
            {
                this.loadIntroduction.text = this.obj.loadingword;
            }// end if
            this.txt1 = this.obj.tips[0];
            this.txt2 = this.obj.tips[1];
            return;
        }// end function

        public function showMsg(param1:String) : void
        {
            this.txtMsg.text = param1;
            return;
        }// end function

        private function onTime(param1:TimerEvent) : void
        {
            if (this.txt1 != null && this.txt2 != null)
            {
                if (int(this.refreshTime.currentCount / 8) % 2 == 0)
                {
                    if (this.txt1 != "")
                    {
                        this.tipsTxt.text = this.txt1;
                    }// end if
                }
                else if (this.txt2 != "")
                {
                    this.tipsTxt.text = this.txt2;
                }// end if
            }// end else if
            return;
        }// end function

        public function removeListener() : void
        {
            this.refreshTime.stop();
            this.refreshTime.removeEventListener(TimerEvent.TIMER, this.onTime);
            return;
        }// end function

        public function setLoadingConnectURL(param1:String, param2:String) : void
        {
            this._loadingConnectURL = param1;
            this._loadingImgURL = param2;
            this.loading.load(new URLRequest(this._loadingConnectURL));
            this.loading.dataFormat = URLLoaderDataFormat.TEXT;
            this.loading.addEventListener(Event.COMPLETE, this.onLoadingComp);
            return;
        }// end function

    }
}
