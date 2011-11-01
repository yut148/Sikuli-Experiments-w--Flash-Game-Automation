package mx.styles
{
    import flash.display.*;
    import flash.events.*;
    import flash.utils.*;
    import mx.core.*;
    import mx.managers.*;

    public class CSSStyleDeclaration extends EventDispatcher
    {
        var effects:Array;
        protected var overrides:Object;
        public var defaultFactory:Function;
        public var factory:Function;
        var selectorRefCount:int = 0;
        private var styleManager:IStyleManager2;
        private var clones:Dictionary;
        static const VERSION:String = "3.5.0.12683";
        private static const NOT_A_COLOR:uint = 4.29497e+009;
        private static const FILTERMAP_PROP:String = "__reserved__filterMap";

        public function CSSStyleDeclaration(param1:String = null)
        {
            clones = new Dictionary(true);
            if (param1)
            {
                styleManager = Singleton.getInstance("mx.styles::IStyleManager2") as IStyleManager2;
                styleManager.setStyleDeclaration(param1, this, false);
            }// end if
            return;
        }// end function

        function addStyleToProtoChain(param1:Object, param2:DisplayObject, param3:Object = null) : Object
        {
            var p:String;
            var emptyObjectFactory:Function;
            var filteredChain:Object;
            var filterObjectFactory:Function;
            var i:String;
            var chain:* = param1;
            var target:* = param2;
            var filterMap:* = param3;
            var nodeAddedToChain:Boolean;
            var originalChain:* = chain;
            if (filterMap)
            {
                chain;
            }// end if
            if (defaultFactory != null)
            {
                defaultFactory.prototype = chain;
                chain = new defaultFactory();
                nodeAddedToChain;
            }// end if
            if (factory != null)
            {
                factory.prototype = chain;
                chain = new factory();
                nodeAddedToChain;
            }// end if
            if (overrides)
            {
                if (defaultFactory == null && factory == null)
                {
                    emptyObjectFactory = 
function () : void
{
    return;
}// end function
;
                    emptyObjectFactory.prototype = chain;
                    chain = new emptyObjectFactory;
                    nodeAddedToChain;
                }// end if
                var _loc_5:int;
                var _loc_6:* = overrides;
                while (_loc_6 in _loc_5)
                {
                    // label
                    p = _loc_6[_loc_5];
                    if (overrides[p] === undefined)
                    {
                        delete chain[p];
                        continue;
                    }// end if
                    chain[p] = overrides[p];
                }// end while
            }// end if
            if (filterMap)
            {
                if (nodeAddedToChain)
                {
                    filteredChain;
                    filterObjectFactory = 
function () : void
{
    return;
}// end function
;
                    filterObjectFactory.prototype = originalChain;
                    filteredChain = new filterObjectFactory;
                    var _loc_5:int;
                    var _loc_6:* = chain;
                    while (_loc_6 in _loc_5)
                    {
                        // label
                        i = _loc_6[_loc_5];
                        if (filterMap[i] != null)
                        {
                            filteredChain[filterMap[i]] = chain[i];
                        }// end if
                    }// end while
                    chain = filteredChain;
                    chain[FILTERMAP_PROP] = filterMap;
                }
                else
                {
                    chain = originalChain;
                }// end if
            }// end else if
            if (nodeAddedToChain)
            {
                clones[chain] = 1;
            }// end if
            return chain;
        }// end function

        public function getStyle(param1:String)
        {
            var _loc_2:*;
            var _loc_3:*;
            if (overrides)
            {
                if (param1 in overrides && overrides[param1] === undefined)
                {
                    return undefined;
                }// end if
                _loc_3 = overrides[param1];
                if (_loc_3 !== undefined)
                {
                    return _loc_3;
                }// end if
            }// end if
            if (factory != null)
            {
                factory.prototype = {};
                _loc_2 = new factory();
                _loc_3 = _loc_2[param1];
                if (_loc_3 !== undefined)
                {
                    return _loc_3;
                }// end if
            }// end if
            if (defaultFactory != null)
            {
                defaultFactory.prototype = {};
                _loc_2 = new defaultFactory();
                _loc_3 = _loc_2[param1];
                if (_loc_3 !== undefined)
                {
                    return _loc_3;
                }// end if
            }// end if
            return undefined;
        }// end function

        public function clearStyle(param1:String) : void
        {
            setStyle(param1, undefined);
            return;
        }// end function

        public function setStyle(param1:String, param2) : void
        {
            var _loc_7:int;
            var _loc_8:Object;
            var _loc_3:* = getStyle(param1);
            var _loc_4:Boolean;
            if (selectorRefCount > 0 && factory == null && defaultFactory == null && !overrides && _loc_3 !== param2)
            {
                _loc_4 = true;
            }// end if
            if (param2 !== undefined)
            {
                setStyle(param1, param2);
            }
            else
            {
                if (param2 == _loc_3)
                {
                    return;
                }// end if
                setStyle(param1, param2);
            }// end else if
            var _loc_5:* = SystemManagerGlobals.topLevelSystemManagers;
            var _loc_6:* = SystemManagerGlobals.topLevelSystemManagers.length;
            if (_loc_4)
            {
                _loc_7 = 0;
                while (_loc_7 < _loc_6)
                {
                    // label
                    _loc_8 = _loc_5[_loc_7];
                    _loc_8.regenerateStyleCache(true);
                    _loc_7++;
                }// end while
            }// end if
            _loc_7 = 0;
            while (_loc_7 < _loc_6)
            {
                // label
                _loc_8 = _loc_5[_loc_7];
                _loc_8.notifyStyleChangeInChildren(param1, true);
                _loc_7++;
            }// end while
            return;
        }// end function

        private function clearStyleAttr(param1:String) : void
        {
            var _loc_2:*;
            if (!overrides)
            {
                overrides = {};
            }// end if
            overrides[param1] = undefined;
            for (_loc_2 in clones)
            {
                // label
                delete _loc_2[param1];
            }// end of for ... in
            return;
        }// end function

        function createProtoChainRoot() : Object
        {
            var _loc_1:Object;
            if (defaultFactory != null)
            {
                defaultFactory.prototype = _loc_1;
                _loc_1 = new defaultFactory();
            }// end if
            if (factory != null)
            {
                factory.prototype = _loc_1;
                _loc_1 = new factory();
            }// end if
            clones[_loc_1] = 1;
            return _loc_1;
        }// end function

        function clearOverride(param1:String) : void
        {
            if (overrides && overrides[param1])
            {
                delete overrides[param1];
            }// end if
            return;
        }// end function

        function setStyle(param1:String, param2) : void
        {
            var _loc_3:Object;
            var _loc_4:*;
            var _loc_5:Number;
            var _loc_6:Object;
            if (param2 === undefined)
            {
                clearStyleAttr(param1);
                return;
            }// end if
            if (param2 is String)
            {
                if (!styleManager)
                {
                    styleManager = Singleton.getInstance("mx.styles::IStyleManager2") as IStyleManager2;
                }// end if
                _loc_5 = styleManager.getColorName(param2);
                if (_loc_5 != NOT_A_COLOR)
                {
                    param2 = _loc_5;
                }// end if
            }// end if
            if (defaultFactory != null)
            {
                _loc_3 = new defaultFactory();
                if (_loc_3[param1] !== param2)
                {
                    if (!overrides)
                    {
                        overrides = {};
                    }// end if
                    overrides[param1] = param2;
                }
                else if (overrides)
                {
                    delete overrides[param1];
                }// end if
            }// end else if
            if (factory != null)
            {
                _loc_3 = new factory();
                if (_loc_3[param1] !== param2)
                {
                    if (!overrides)
                    {
                        overrides = {};
                    }// end if
                    overrides[param1] = param2;
                }
                else if (overrides)
                {
                    delete overrides[param1];
                }// end if
            }// end else if
            if (defaultFactory == null && factory == null)
            {
                if (!overrides)
                {
                    overrides = {};
                }// end if
                overrides[param1] = param2;
            }// end if
            for (_loc_4 in clones)
            {
                // label
                _loc_6 = _loc_4[FILTERMAP_PROP];
                if (_loc_6)
                {
                    if (_loc_6[param1] != null)
                    {
                        _loc_4[_loc_6[param1]] = param2;
                    }// end if
                    continue;
                }// end if
                _loc_4[param1] = param2;
            }// end of for ... in
            return;
        }// end function

    }
}
