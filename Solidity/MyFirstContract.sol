pragma solidity 0.4.20;

library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns(uint256) {
        if(a == 0) {
            return 0;
        }
        uint256 c = a*b;
        assert(c/a == b);
        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns(uint256) {
        uint256 c = a/b;
        return c;
    }
    
    function add(uint256 a, uint256 b) internal pure returns(uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns(uint256) {
        assert(b <= a);
        return a-b;
    }
    
}


contract ERC20 {
        function totalSupply()public view returns (uint total_Supply);
        function balanceOf(address who)public view returns(uint256);
        function allowance(address owner, address spender)public view returns(uint);
        function transferFrom(address from, address to, uint value)public returns(bool ok);
        function approve(address spender, uint value)public returns(bool ok);
        function transfer(address to, uint value)public returns(bool ok);
        event Transfer(address indexed from, address indexed to, uint value);
        event Approval(address indexed owner, address indexed spender, uint value);
}

contract CLASS is ERC20 {
    using SafeMath for uint256;
    // Name of The Token
    string public constant name = "CLASS";
    
    //Token Symbol like ETH ,BTC,BCH etc.
    string public constant symbol = "CLS";
    uint8 public constant decimals = 18;
    uint public _totalsupply = 2500000000 * 10 * 18; //2.5 Billion CLS Coin
    address public owner;
    uint256 constant public _price_token = 20000;
    uint256 no_of_tokens;
    uint256 bonus_token;
    uint256 total_token;
    bool stopped = false;
    uint256 public pre_startdate;
    uint256 public ico_startdate;
    uint256 pre_enddate;
    uint256 ico_enddate;
    uint256 maxCap_PRE;
    uint256 maxCap_ICO;
    bool public icoRunningStatus = true;
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;
    address ethFunMain= 0xD5f7F3249087c981941Fca0b5651fb4F6f5DcEF1;
    
    
}