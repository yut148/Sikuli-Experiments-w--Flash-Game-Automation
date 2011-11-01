package com.adobe.serialization.json
{

    public class JSONTokenizer extends Object
    {
        private var loc:int;
        private var ch:String;
        private var obj:Object;
        private var jsonString:String;

        public function JSONTokenizer(param1:String)
        {
            this.jsonString = param1;
            this.loc = 0;
            this.nextChar();
            return;
        }// end function

        private function skipComments() : void
        {
            if (this.ch == "/")
            {
                this.nextChar();
                switch(this.ch)
                {
                    case "/":
                    {
                        do
                        {
                            // label
                            this.nextChar();
                        }while (this.ch != "\n" && this.ch != "")
                        this.nextChar();
                        break;
                    }// end case
                    case "*":
                    {
                        this.nextChar();
                        while (true)
                        {
                            // label
                            if (this.ch == "*")
                            {
                                this.nextChar();
                                if (this.ch == "/")
                                {
                                    this.nextChar();
                                    break;
                                }// end if
                            }
                            else
                            {
                                this.nextChar();
                            }// end else if
                            if (this.ch == "")
                            {
                                this.parseError("Multi-line comment not closed");
                            }// end if
                        }// end while
                        break;
                    }// end case
                    default:
                    {
                        this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
                        break;
                    }// end default
                }// end switch
            }// end if
            return;
        }// end function

        private function isDigit(param1:String) : Boolean
        {
            if (param1 >= "0")
            {
            }// end if
            return param1 <= "9";
        }// end function

        private function readString() : JSONToken
        {
            var _loc_3:String;
            var _loc_4:int;
            var _loc_1:* = new JSONToken();
            _loc_1.type = JSONTokenType.STRING;
            var _loc_2:String;
            this.nextChar();
            while (this.ch != "\"" && this.ch != "")
            {
                // label
                if (this.ch == "\\")
                {
                    this.nextChar();
                    switch(this.ch)
                    {
                        case "\"":
                        {
                            _loc_2 = _loc_2 + "\"";
                            break;
                        }// end case
                        case "/":
                        {
                            _loc_2 = _loc_2 + "/";
                            break;
                        }// end case
                        case "\\":
                        {
                            _loc_2 = _loc_2 + "\\";
                            break;
                        }// end case
                        case "b":
                        {
                            _loc_2 = _loc_2 + "\b";
                            break;
                        }// end case
                        case "f":
                        {
                            _loc_2 = _loc_2 + "\f";
                            break;
                        }// end case
                        case "n":
                        {
                            _loc_2 = _loc_2 + "\n";
                            break;
                        }// end case
                        case "r":
                        {
                            _loc_2 = _loc_2 + "\r";
                            break;
                        }// end case
                        case "t":
                        {
                            _loc_2 = _loc_2 + "\t";
                            break;
                        }// end case
                        case "u":
                        {
                            _loc_3 = "";
                            _loc_4 = 0;
                            while (_loc_4 < 4)
                            {
                                // label
                                if (!this.isHexDigit(this.nextChar()))
                                {
                                    this.parseError(" Excepted a hex digit, but found: " + this.ch);
                                }// end if
                                _loc_3 = _loc_3 + this.ch;
                                _loc_4++;
                            }// end while
                            _loc_2 = _loc_2 + String.fromCharCode(parseInt(_loc_3, 16));
                            break;
                        }// end case
                        default:
                        {
                            _loc_2 = _loc_2 + ("\\" + this.ch);
                            break;
                        }// end default
                    }// end switch
                }
                else
                {
                    _loc_2 = _loc_2 + this.ch;
                }// end else if
                this.nextChar();
            }// end while
            if (this.ch == "")
            {
                this.parseError("Unterminated string literal");
            }// end if
            this.nextChar();
            _loc_1.value = _loc_2;
            return _loc_1;
        }// end function

        private function nextChar() : String
        {
            var _loc_1:String;
            _loc_1.loc = this.loc++;
            var _loc_1:* = this.jsonString.charAt(this.loc++);
            this.ch = this.jsonString.charAt(this.loc++);
            return _loc_1;
        }// end function

        public function getNextToken() : JSONToken
        {
            var _loc_2:String;
            var _loc_3:String;
            var _loc_4:String;
            var _loc_1:* = new JSONToken();
            this.skipIgnored();
            switch(this.ch)
            {
                case "{":
                {
                    _loc_1.type = JSONTokenType.LEFT_BRACE;
                    _loc_1.value = "{";
                    this.nextChar();
                    break;
                }// end case
                case "}":
                {
                    _loc_1.type = JSONTokenType.RIGHT_BRACE;
                    _loc_1.value = "}";
                    this.nextChar();
                    break;
                }// end case
                case "[":
                {
                    _loc_1.type = JSONTokenType.LEFT_BRACKET;
                    _loc_1.value = "[";
                    this.nextChar();
                    break;
                }// end case
                case "]":
                {
                    _loc_1.type = JSONTokenType.RIGHT_BRACKET;
                    _loc_1.value = "]";
                    this.nextChar();
                    break;
                }// end case
                case ",":
                {
                    _loc_1.type = JSONTokenType.COMMA;
                    _loc_1.value = ",";
                    this.nextChar();
                    break;
                }// end case
                case ":":
                {
                    _loc_1.type = JSONTokenType.COLON;
                    _loc_1.value = ":";
                    this.nextChar();
                    break;
                }// end case
                case "t":
                {
                    _loc_2 = "t" + this.nextChar() + this.nextChar() + this.nextChar();
                    if (_loc_2 == "true")
                    {
                        _loc_1.type = JSONTokenType.TRUE;
                        _loc_1.value = true;
                        this.nextChar();
                    }
                    else
                    {
                        this.parseError("Expecting \'true\' but found " + _loc_2);
                    }// end else if
                    break;
                }// end case
                case "f":
                {
                    _loc_3 = "f" + this.nextChar() + this.nextChar() + this.nextChar() + this.nextChar();
                    if (_loc_3 == "false")
                    {
                        _loc_1.type = JSONTokenType.FALSE;
                        _loc_1.value = false;
                        this.nextChar();
                    }
                    else
                    {
                        this.parseError("Expecting \'false\' but found " + _loc_3);
                    }// end else if
                    break;
                }// end case
                case "n":
                {
                    _loc_4 = "n" + this.nextChar() + this.nextChar() + this.nextChar();
                    if (_loc_4 == "null")
                    {
                        _loc_1.type = JSONTokenType.NULL;
                        _loc_1.value = null;
                        this.nextChar();
                    }
                    else
                    {
                        this.parseError("Expecting \'null\' but found " + _loc_4);
                    }// end else if
                    break;
                }// end case
                case "\"":
                {
                    _loc_1 = this.readString();
                    break;
                }// end case
                default:
                {
                    if (this.isDigit(this.ch) || this.ch == "-")
                    {
                        _loc_1 = this.readNumber();
                    }
                    else
                    {
                        if (this.ch == "")
                        {
                            return null;
                        }// end if
                        this.parseError("Unexpected " + this.ch + " encountered");
                    }// end else if
                    break;
                }// end default
            }// end switch
            return _loc_1;
        }// end function

        private function skipWhite() : void
        {
            while (this.isWhiteSpace(this.ch))
            {
                // label
                this.nextChar();
            }// end while
            return;
        }// end function

        public function parseError(param1:String) : void
        {
            trace(this.jsonString);
            throw new JSONParseError(param1, this.loc, this.jsonString);
        }// end function

        private function isWhiteSpace(param1:String) : Boolean
        {
            if (!(param1 == " " || param1 == "\t" || param1 == "\n"))
            {
            }// end if
            return param1 == "\r";
        }// end function

        private function skipIgnored() : void
        {
            var _loc_1:int;
            do
            {
                // label
                _loc_1 = this.loc;
                this.skipWhite();
                this.skipComments();
            }while (_loc_1 != this.loc)
            return;
        }// end function

        private function isHexDigit(param1:String) : Boolean
        {
            var _loc_2:* = param1.toUpperCase();
            if (this.isDigit(param1) || _loc_2 >= "A")
            {
            }// end if
            return _loc_2 <= "F";
        }// end function

        private function readNumber() : JSONToken
        {
            var _loc_1:* = new JSONToken();
            _loc_1.type = JSONTokenType.NUMBER;
            var _loc_2:String;
            if (this.ch == "-")
            {
                _loc_2 = _loc_2 + "-";
                this.nextChar();
            }// end if
            if (!this.isDigit(this.ch))
            {
                this.parseError("Expecting a digit");
            }// end if
            if (this.ch == "0")
            {
                _loc_2 = _loc_2 + this.ch;
                this.nextChar();
                if (this.isDigit(this.ch))
                {
                    this.parseError("A digit cannot immediately follow 0");
                }// end if
            }
            else
            {
                while (this.isDigit(this.ch))
                {
                    // label
                    _loc_2 = _loc_2 + this.ch;
                    this.nextChar();
                }// end while
            }// end else if
            if (this.ch == ".")
            {
                _loc_2 = _loc_2 + ".";
                this.nextChar();
                if (!this.isDigit(this.ch))
                {
                    this.parseError("Expecting a digit");
                }// end if
                while (this.isDigit(this.ch))
                {
                    // label
                    _loc_2 = _loc_2 + this.ch;
                    this.nextChar();
                }// end while
            }// end if
            if (this.ch == "e" || this.ch == "E")
            {
                _loc_2 = _loc_2 + "e";
                this.nextChar();
                if (this.ch == "+" || this.ch == "-")
                {
                    _loc_2 = _loc_2 + this.ch;
                    this.nextChar();
                }// end if
                if (!this.isDigit(this.ch))
                {
                    this.parseError("Scientific notation number needs exponent value");
                }// end if
                while (this.isDigit(this.ch))
                {
                    // label
                    _loc_2 = _loc_2 + this.ch;
                    this.nextChar();
                }// end while
            }// end if
            var _loc_3:* = Number(_loc_2);
            if (isFinite(_loc_3) && !isNaN(_loc_3))
            {
                _loc_1.value = _loc_3;
                return _loc_1;
            }// end if
            this.parseError("Number " + _loc_3 + " is not valid!");
            return null;
        }// end function

    }
}
