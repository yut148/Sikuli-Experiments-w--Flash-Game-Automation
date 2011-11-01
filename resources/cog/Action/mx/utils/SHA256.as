package mx.utils
{
    import flash.utils.*;

    public class SHA256 extends Object
    {
        public static const TYPE_ID:String = "SHA-256";
        private static var k:Array = [1116352408, 1899447441, 3049323471, 3921009573, 961987163, 1508970993, 2453635748, 2870763221, 3624381080, 310598401, 607225278, 1426881987, 1925078388, 2162078206, 2614888103, 3248222580, 3835390401, 4022224774, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, 2554220882, 2821834349, 2952996808, 3210313671, 3336571891, 3584528711, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, 2177026350, 2456956037, 2730485921, 2820302411, 3259730800, 3345764771, 3516065817, 3600352804, 4094571909, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, 2227730452, 2361852424, 2428436474, 2756734187, 3204031479, 3329325298];

        public function SHA256()
        {
            return;
        }// end function

        public static function computeDigest(param1:ByteArray) : String
        {
            var _loc_6:int;
            var _loc_16:int;
            var _loc_17:int;
            var _loc_18:int;
            var _loc_19:int;
            var _loc_20:int;
            var _loc_21:int;
            var _loc_22:int;
            var _loc_23:int;
            var _loc_28:uint;
            var _loc_29:int;
            var _loc_30:int;
            var _loc_31:uint;
            var _loc_32:uint;
            var _loc_33:int;
            var _loc_34:int;
            var _loc_35:int;
            var _loc_2:* = param1.length % 64;
            _loc_2 = 64 - _loc_2;
            if (_loc_2 < 1 + 8)
            {
                _loc_2 = _loc_2 + 64;
            }// end if
            var _loc_3:* = new Array(_loc_2);
            var _loc_4:* = (param1.length + _loc_2) / 64;
            var _loc_5:* = param1.length * 8;
            _loc_3[0] = 128;
            _loc_6 = 1;
            while (_loc_6 < _loc_2 - 8)
            {
                // label
                _loc_3[_loc_6] = 0;
                _loc_6++;
            }// end while
            _loc_6 = 0;
            while (_loc_6 < 4)
            {
                // label
                _loc_3[_loc_3.length-- - _loc_6] = _loc_5 >> (_loc_6 << 3) & 255;
                _loc_6++;
            }// end while
            var _loc_8:int;
            var _loc_9:int;
            var _loc_10:int;
            var _loc_11:int;
            var _loc_12:int;
            var _loc_13:int;
            var _loc_14:int;
            var _loc_15:int;
            var _loc_24:* = new ByteArray();
            var _loc_25:* = new Array(64);
            var _loc_26:uint;
            var _loc_27:uint;
            _loc_6 = 0;
            while (_loc_6 < _loc_4)
            {
                // label
                getMessageBlock(param1, _loc_24);
                if (_loc_6 == _loc_4 - 2 && _loc_3.length > 64)
                {
                    _loc_26 = 64 - _loc_3.length % 64;
                    _loc_27 = 64 - _loc_26;
                    _loc_28 = 0;
                    while (_loc_28++ < _loc_27)
                    {
                        // label
                        _loc_24[_loc_28 + _loc_26] = _loc_3[_loc_28];
                    }// end while
                }
                else if (_loc_6 == _loc_4--)
                {
                    _loc_35 = _loc_27;
                    if (_loc_3.length > 64)
                    {
                        _loc_26 = 0;
                        _loc_27 = 64;
                    }
                    else
                    {
                        _loc_26 = 64 - _loc_3.length;
                        _loc_27 = _loc_3.length;
                    }// end else if
                    _loc_28 = 0;
                    while (_loc_28++ < _loc_27)
                    {
                        // label
                        _loc_24[_loc_28 + _loc_26] = _loc_3[_loc_28 + _loc_35];
                    }// end while
                }// end else if
                _loc_31 = 0;
                while (_loc_31++ < 64)
                {
                    // label
                    if (_loc_31 < 16)
                    {
                        _loc_32 = _loc_31 << 2;
                        _loc_25[_loc_31] = int(_loc_24[_loc_32] << 24 | _loc_24[_loc_32 + 1] << 16 | _loc_24[_loc_32 + 2] << 8 | _loc_24[_loc_32 + 3]);
                        continue;
                    }// end if
                    _loc_33 = _loc_25[_loc_31 - 2];
                    _loc_34 = _loc_25[_loc_31 - 15];
                    _loc_25[_loc_31] = int(int((_loc_33 >>> 17 | _loc_33 << 15) ^ (_loc_33 >>> 19 | _loc_33 << 13) ^ _loc_33 >>> 10) + int(_loc_25[_loc_31 - 7]) + int((_loc_34 >>> 7 | _loc_34 << 25) ^ (_loc_34 >>> 18 | _loc_34 << 14) ^ _loc_34 >>> 3) + int(_loc_25[_loc_31 - 16]));
                }// end while
                _loc_16 = _loc_8;
                _loc_17 = _loc_9;
                _loc_18 = _loc_10;
                _loc_19 = _loc_11;
                _loc_20 = _loc_12;
                _loc_21 = _loc_13;
                _loc_22 = _loc_14;
                _loc_23 = _loc_15;
                _loc_31 = 0;
                while (_loc_31++ < 64)
                {
                    // label
                    _loc_29 = _loc_23 + int((_loc_20 >>> 6 | _loc_20 << 26) ^ (_loc_20 >>> 11 | _loc_20 << 21) ^ (_loc_20 >>> 25 | _loc_20 << 7)) + int(_loc_20 & _loc_21 ^ ~_loc_20 & _loc_22) + int(k[_loc_31]) + int(_loc_25[_loc_31]);
                    _loc_30 = int((_loc_16 >>> 2 | _loc_16 << 30) ^ (_loc_16 >>> 13 | _loc_16 << 19) ^ (_loc_16 >>> 22 | _loc_16 << 10)) + int(_loc_16 & _loc_17 ^ _loc_16 & _loc_18 ^ _loc_17 & _loc_18);
                    _loc_23 = _loc_22;
                    _loc_22 = _loc_21;
                    _loc_21 = _loc_20;
                    _loc_20 = _loc_19 + _loc_29;
                    _loc_19 = _loc_18;
                    _loc_18 = _loc_17;
                    _loc_17 = _loc_16;
                    _loc_16 = _loc_29 + _loc_30;
                }// end while
                _loc_8 = _loc_8 + _loc_16;
                _loc_9 = _loc_9 + _loc_17;
                _loc_10 = _loc_10 + _loc_18;
                _loc_11 = _loc_11 + _loc_19;
                _loc_12 = _loc_12 + _loc_20;
                _loc_13 = _loc_13 + _loc_21;
                _loc_14 = _loc_14 + _loc_22;
                _loc_15 = _loc_15 + _loc_23;
                _loc_6++;
            }// end while
            return toHex(_loc_8) + toHex(_loc_9) + toHex(_loc_10) + toHex(_loc_11) + toHex(_loc_12) + toHex(_loc_13) + toHex(_loc_14) + toHex(_loc_15);
        }// end function

        private static function getMessageBlock(param1:ByteArray, param2:ByteArray) : void
        {
            param1.readBytes(param2, 0, Math.min(param1.bytesAvailable, 64));
            return;
        }// end function

        private static function toHex(param1:uint) : String
        {
            var _loc_3:String;
            var _loc_4:int;
            var _loc_5:int;
            var _loc_2:* = param1.toString(16);
            if (_loc_2.length < 8)
            {
                _loc_3 = "0";
                _loc_4 = 8 - _loc_2.length;
                _loc_5 = 1;
                while (_loc_5 < _loc_4)
                {
                    // label
                    _loc_3 = _loc_3.concat("0");
                    _loc_5++;
                }// end while
                return _loc_3 + _loc_2;
            }// end if
            return _loc_2;
        }// end function

    }
}
