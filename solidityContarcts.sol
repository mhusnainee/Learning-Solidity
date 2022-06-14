////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract starting
{
    string name;
    uint age;

    constructor ()
    {
        name = "Husnain Abbas";
        age = 24;

    }

    function getName() view public returns (string memory)
    {
        return name;
    }

    function getAge() view public returns (uint)
    {
        return age;
    }

    function setAge() public
    {
        age = age + 1;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract youtube
{
    function test() pure public returns (uint)
    {
        uint age = 24;
        return age;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract assignment
{
    uint first;
    uint second;

    function getf(uint one) public
    {
        first = one;
    }

    function gets(uint two) public
    {
        second = two;
    }

    function add() public view returns (uint)
    {
        uint sum;
        sum = first + second;
        return sum;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract hello
{
    string public myString = "Hello World";
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 <0.9.0;

contract guessNumber
{
    uint8 public number = 2;
    string public myString;
    bool public myBool;
    address public myAddress;


    function guess(uint _number) public view returns (string memory)
    {
        if (_number == number)
        {
            return ("Well done : You guessed it");
        }

        else
        {
            return ("Try next time");
        }

    }

    function udemy(string memory str, bool _bool) public
    {
        myString = str;
        myBool = _bool;
    }

    function increment() public
    {
        number++;
    }

    function decrement() public
    {
        number--;
    }

    function setAddress(address _address) public
    {
        myAddress = _address;
    }

    function getBalance() public view returns (uint)
    {
        return myAddress.balance;
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract login
{
    string username = "mhusnainabbas2@gmail.com"; //State variable for username
    string password = "Blockchain@cohort3";      // State variable for password

    string public myUsername;
    string public myPassword;

    function USERNAME(string memory _username) public   // Function to get username from user
    {
        myUsername = _username;
    }

    function PASSWORD(string memory _password) public   // Function to get password from user
    {
        myPassword = _password;
    }

    function LOGIN() public view returns (string memory)    // Function to login
    {
        if (sha256(abi.encodePacked(myUsername)) == sha256(abi.encodePacked(username)) && // Using sha256 hashing to compare
        sha256(abi.encodePacked(myPassword)) == sha256(abi.encodePacked(password)))
        {
            return ("Successfully LogedIn");        // Returning message on login
        }
        else
        {
            return ("Wrong credentials Plz Try Again"); // Returning message on unsuccessfull login
        }
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract hashing
{
    function hash(string memory text) external pure returns (bytes32)
    {
        return sha256(abi.encode(text));
    }

    function encode(string memory str1, string memory str2) external pure returns (bytes memory)
    {
        return abi.encode(str1, str2);
    }

    function encodePacked(string memory str1, string memory str2) external pure returns (bytes memory)
    {
        return abi.encodePacked(str1, str2);
    }

    function collision_0(string memory text0, string memory text1) external pure returns (bytes32)
    {
        return sha256(abi.encodePacked(text0, text1));
    }

    function collision_1(string memory text0, string memory text1) external pure returns (bytes32)
    {
        return sha256(abi.encodePacked(text0, text1));
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Constructor
{
    uint public x;
    address public owner;

    constructor (uint _x)
    {
        x = _x;
        owner = msg.sender;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.6.12;

contract wrap
{
    uint8 public myUint8;

    function set(uint8 num) public
    
    {
        myUint8 = num;
    }

    function increment() public
    {
        myUint8 ++;
    }

    function decrement() public
    {
        myUint8 --;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

// Transfering ether from account to smart contract

pragma solidity >=0.7.0 <0.9.0;

contract sendMoney
{
    uint public balanceReceived;
    address public addrs;

    event message(string info);

    function accountBalance(address addr) public view returns (uint) // Check any account balance by entering its address
    {
        return addr.balance;
    }

    function contractBalance() public view returns (uint) //Check balance of this contract
    {
        return address(this).balance;
    }

    function receiveMoney() public payable // Receive ethers (from account used by this contract) into this contract
    {
        balanceReceived += msg.value;
    }

    function check() public payable
    {
        //uint eth = msg.value;
        if (msg.value > 10)
        {
            //msg.sender.transfer(address(this).balance);
            emit message("More than 5");
        //payable(msg.sender).transfer(address(this).balance);
        }

        else
        {
            emit message("Equal to 5");
        }

    }
    

    function sendingMoney(address addr) internal //Send money to any account by entering its address
    {
        payable(addr).transfer(msg.value);
    }

    function sendToSender() public // Send money to account from which was received previously
    {
        address payable to = payable(msg.sender);
        to.transfer(this.contractBalance());
        addrs = address(msg.sender);
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract viewPublic
{
    uint stateVar;
    function funcPublic() public returns (uint)
    {
       return stateVar = 5;
    }

    function funcPrivate() private returns(uint)
    {
        return stateVar = 5;
    }

    function funcInternal() internal returns (uint)
    {
        return stateVar = 5;
    }

    function funcExternal() external returns (uint)
    {
        return stateVar = 5;
    }
}

contract second is viewPublic
{
    uint its;

    function child() public
    {
        its = funcPublic();
    }
    // Findings

    // Public function can be accessed in ingerited contract
    // Private function can not be accessed in ingerited contract
    // Internal function can be accessed in ingerited contract
    // External function can not be accessed in ingerited contract
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;

contract startUpdate
{
    address owner;
    bool paused;

    constructor()
    {
        owner = msg.sender;
    }

    function sendMoney() public payable
    {
        //
    }

    function setPaused(bool _paused) public
    {
        require(msg.sender == owner, "You are not the owner");
        paused = _paused;
    }

    function withdrawAllMoney(address payable _address) public payable
    {
        require(msg.sender == owner, "You are not the owner");
        require(!paused, "Contract is paused");
        _address.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public
    {
        require(msg.sender == owner,"You are not the Owner");
        selfdestruct(_to);
    }

    function returnAddress() public view returns(address)
    {
        return address(this);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract fixedArray
{
    uint[4] public myArray = [10,20,30,40];

    function setValueAtIndex(uint index, uint value) public
    {
        myArray[index] = value;
    }

    function arrayLength() public view returns(uint)
    {
        return myArray.length;
    }

//     function getArray() public view returns(uint[] memory) //I tried to return fixed uint array but got error
//     {
//         return myArray;
//     }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract dynamicArray
{
    uint[] public myArray;

    function pushElement(uint element) public
    {
        myArray.push(element);
    }

    function arrayLength() public view returns (uint)
    {
        return myArray.length;
    }

    function popElement() public
    {
        myArray.pop();
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract loopArray
{
    // uint[5] public myArray;

    // function pushElement(uint index) public
    // {
    //     for (uint i = 0; i <= 4; i++)
    //     {
    //         myArray[i] = index+i;
    //     }
    // }


    function loop(uint count) public pure returns(string[] memory)
    {
        string[] memory myArray = new string[](3);

        for (uint i = 0; i<count; i++)
        {
            myArray[i] = "Husnain";
        }

        return myArray;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract stringArray
{
    string[] public myArray;

    function pushElement(string memory name) public 
    {
        myArray.push(name);
    }

    function popElement() public
    {
        myArray.pop();
    }

    function getArray() public view returns(string[] memory)
    {
        return myArray;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract studentRecord
{
    address owner;

    constructor() // Constructor to make deployer the Owner of Contract
    {
        owner = msg.sender;
    }

    struct student // Student struct to customerise student data
    {
        string Name;
        string Address;
        string Phone_Num;
        uint16 Roll_Num;
        string DOB;
        uint8 Sem;
        uint8 CGPA;
        string Uni_Name;
    }

    student[] StudentRecord; // Decleration of array

    // Function to set student records
    // Input will be = "Husnain","Islamabad","0307-6557305",434,"27-10-1997",8,3,"UET"
    function setStudentRecords(string memory _name, string memory _address, string memory _phoneNumber, uint16 _rollNumber,
                              string memory _DOB, uint8 _sem, uint8 _CGPA, string memory _UniName) public
    {
        StudentRecord.push(student(_name,_address,_phoneNumber,_rollNumber,_DOB,_sem,_CGPA,_UniName));
    }

    // Function to delete student records
    function deleteStudent() public
    {
        require(msg.sender == owner, "You are not the Owner");
        StudentRecord.pop();
    }

    // Function to get student records
    function GetStudentRecord(uint index) public view returns(student memory)
    {
        require(msg.sender == owner, "You are not the Owner");
        return StudentRecord[index];
    }

    function studentCount() public view returns(uint)
    {
        return StudentRecord.length;
    }
}
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract studentRecord
{
    address owner;

    constructor()
    {
        owner = msg.sender;
    }

    string[] StudentRecord;

    function setStudentRecords(string memory _name, string memory _address, string memory _phoneNumber, string memory _rollNumber,
                                string memory _DOB, string memory _sem, string memory _CGPA, string memory _UniName) public
    {
        StudentRecord[0] = _name;
        StudentRecord[1] = _address;
        StudentRecord[2] = _phoneNumber;
        StudentRecord[3] = _rollNumber;
        StudentRecord[4] = _DOB;
        StudentRecord[5] = _sem;
        StudentRecord[6] = _CGPA;
        StudentRecord[7] = _UniName;
    }
//"Husnain","Islamabad","0307-6557305","2017-EE-434","27-10-1997","8th","3.4","UET"
//"Husnain","Islamabad",0307,434,27,8,3,"UET"
    // function GetStudentRecord(uint index) public view returns(string memory, string memory, string memory, uint,
    //                           string memory, string memory, uint, string memory)
    // {
    //     require(msg.sender == owner, "You are not the owner");
    //     return (StudentRecord[index].Name, StudentRecord[index].Address, StudentRecord[index].Phone_Num,
    //             StudentRecord[index].Roll_Num, StudentRecord[index].DOB, StudentRecord[index].Sem,
    //             StudentRecord[index].CGPA, StudentRecord[index].Uni_Name);
    // }

    function GetStudentRecord() public view returns(string[] memory)
    {
        return StudentRecord;
    }

    function studentCount() public view returns(uint)
    {
        return StudentRecord.length;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract assignmentArray
{
    address owner;
    constructor()
    {
        owner = msg. sender;
    }

    string[] public studentRecord;

    // Input to function
    // "Husnain Abbas","Islamabad","0307-6557305","2017-EE-434","27-10-1997","3.384","UET"
    function setStudentRecords(string memory _name, string memory _address, string memory _phoneNumber, string memory _rollNumber,
                               string memory _dob, string memory _sem, string memory _cgpa, string memory _uni) public
    {
        studentRecord.push(_name);
        studentRecord.push(_address);
        studentRecord.push(_phoneNumber);
        studentRecord.push(_rollNumber);
        studentRecord.push(_dob);
        studentRecord.push(_sem);
        studentRecord.push(_cgpa);
        studentRecord.push(_uni);
    }

    function getStudentRecord() public view returns (string[] memory)
    {
        require(msg.sender == owner, "You are not the owner");
        return studentRecord;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract bytesArray
{
    bytes public b1="abc";

    function setter() public
    {
        b1.push("d");
    }

    function delet() public
    {
        b1.pop();
    }

    function specificByte(uint i) public view returns(bytes1)
    {
        return b1[i];
    }

    function getLength() public view returns (uint)
    {
        return b1.length;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract whileLoop
{
    uint[5] public array;
    string[5] public array2;
    uint public count = 0;

    function loop() public
    {
        while(count < array.length)
        {
            array[count] = count;
            count++;
        }
    }

    function forLoop() public
    {
        for(uint i = 0; i<array2.length;i++)
        {
            array2[i] = "Husnain";
        }
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract events
{
    event log(string message, uint val);
    event message(address sender, address receiver, string message);

    function triggerEvent() public
    {
        //
        emit log("Event is triggered now",434);
    }

    function sendMessage(address _to, string memory _message) public
    {
        //
        emit message(msg.sender, _to, _message);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;
pragma experimental ABIEncoderV2;

contract Mapping
{
    struct student
    {
        string name;
        uint age;
        string class;
        uint flag;
    }
    mapping(uint=>student) public studentMap;

    student public s1;

    function setS1(string memory _name, uint _age, string memory _class) public
    {
        s1.name = _name;
        s1.age = _age;
        s1.class = _class;
    }

    function check(uint _id) public view returns(string memory)
    {
        if (studentMap[_id].flag !=1)
        {
            return "Not registered";
        }
        else
        {
            return "Already registered";
        }
    }

    function getS1() public view returns(uint)
    {
        return s1.age;
    }

    function setStudentMap(uint id, string memory _name, uint _age, string memory _class) public
    {
        studentMap[id] = student(_name,_age,_class, 1);
    }

    function getOne(uint _id) public view returns(uint)
    {
        student memory s2 = studentMap[_id];
        return s2.age;
    }

    function getStudentMap(uint _id) public view returns(student memory)
    {
        return studentMap[_id];
    }
    mapping(uint => string) public myMapping;

    function setMapping(uint _uint, string memory _string) public
    {
        myMapping[_uint] = _string;
    }

    function getMapping(uint _uint) public view returns(string memory)
    {
        return myMapping[_uint];
    }

    function delMapping(uint _uint) public
    {
        delete myMapping[_uint];
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;

contract funcInsideFunc
{
    uint public number = 1;

    function func1() public
    {
        number = 2;
    }

    function func2(uint num) public returns(uint)
    {
        number = num;
        return number;
    }

    function retn(uint x) public returns(uint)
    {
        return func2(x);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;
contract sendEther
{
    address public owner;
    constructor()
    {
        owner = msg.sender;
    }
    uint public bal;
    function getBalance(address payable _address, uint _price) payable public
    {
        _address.transfer(msg.value-(msg.value-_price));
    }

    function getBalanceInContract() public payable
    {
        bal = bal + msg.value;
    }

    function callerBalance() public view returns(uint)
    {
        return msg.sender.balance;
    }

    function contractBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function buy(address payable _address, uint _price) public payable
    {
        _address.transfer(_price);
    }
    function transferEther(address payable receiveEth, uint amount) public payable
    {
        require(msg.sender == owner, "You are not the owner");
        //require(amount <= 3, "Not suitable amount");
        receiveEth.transfer(amount);
    }
}
contract receiveEther
{
    uint public number = 10;
    event test(uint n);

    function get() public
    {
        //uint num = 5;
        emit test(5);
    }

    receive() external payable
    {
    }
    fallback() external payable
    {
    }
    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }
    
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

contract ethertransfer
{    
  function fundtransfer(address payable etherreceive, uint256 amount) public
  {
    if(!etherreceive.send(amount))
    {
       revert();
    }
  }
}

contract etherreceiver {

  function _etherreceiver() public payable
  {
      //
  }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

contract Hash
{
    function hashing(string memory _text, uint _number, address _address) public pure returns(bytes32)
    {
        return keccak256(abi.encodePacked(_text, _number, _address));
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

contract Game
{
    string private word = "Ethereum";
    function Word(string memory _word) public view returns(string memory)
    {
        if (keccak256(abi.encode(word)) == keccak256(abi.encode(_word)))
        {
            return ("Well done : You guessed it");
        }
        else
        {
            return ("Try next time");
        }
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

// Calling one contrcat from a second contract without inheritence
contract callMe
{
    uint public x;
    uint public value;

    function setX(uint _x) public returns(uint)
    {
        x = _x;
        return x;
    }

    function setXandSendEther(uint _x) public payable returns(uint, uint)
    {
        x = _x;
        value = msg.value;
        return (x, value);
    }
}

contract Caller
{
    function setX(callMe _call, uint _x) public returns(uint)
    {
        uint x = _call.setX(_x);
        return x;
    }

    function setXandSendEther(callMe _address, uint _x) public
    {
        //
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.1 <0.9.0;
contract aaa {
    mapping(uint256 => uint256) map_abcd;
    uint256 abcd = 1;
    uint256[] abcd_list;
 
    function change_abcd(uint256 num) public  returns(uint256){
        abcd = num;
        return abcd;
    }
 
    function show_abcd() public  view  returns(uint256) {
       return abcd;
    }
 
    function map_add() public {
        map_abcd[0]=abcd;
    }
 
     function show_map_add(uint256 num) public  view  returns(uint256) {
       return map_abcd[num];
    }
 
    function list_add() public {
        abcd_list.push(abcd);
    }
 
    function show_abcd_list(uint256 num) public  view  returns(uint256) {
       return abcd_list[num];
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.13;

/* transfer
*mint
*supply
*burn
*balanceof
*Aprove
*allowance
*transferFrom
*/
// We can only declare functions in Interface, we can not implement them
interface ITOKEN
{
    function totalSupply() external view returns(uint);
    function balanceOf(address account) external view returns(uint);
    function transfer(address rcipient, uint amount) external returns(bool);
    function allowance(address owner, address spender) external view returns(uint);
    function approve(address spender, uint amount) external returns(bool);
    function transferFrom(address spender, address recipient, uint amount) external returns(bool);

    event Transfer(address from, address to, uint value);
    event Approve(address owner, address spender, uint value);
}

abstract contract Token is ITOKEN
{
    uint public tottalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    string public name = "IEC-Token";
    string public symbol = "IT";

    function transfer(address recipient, uint amount) external returns(bool)
    {
        balanceOf[msg.sender] -= amount;
        balanceOf[msg.sender] += amount;

        emit Transfer(msg.sender, recipient, amount);
        return true;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

// Class Activity

contract Activity
{
    address private owner;
    bool private matching;

    mapping(address => bool) private user;
    

    constructor()
    {
        owner = msg.sender;
    }



    function setMatching(bool _match) public
    {
        require(msg.sender == owner, "You are not the owner");
        matching = _match;
    }



    event playerCreated(uint _id, string _name, address _address);
    event playerUpdated(uint _id, string _name, address _address);



    struct myPlayer
    {
        uint id;
        string Name;
        address Address;
        uint flag;
    }



    mapping(uint => myPlayer) private player;



    function approveUser(address _address, bool _status) public
    {
        require(msg.sender == owner, "You are not the owner");
        user[_address] = _status;
    }



    function createPlyer(uint _id, string memory _name, address _address) public
    {
        require(matching, "Matching is disabled, please come back latter");
        require(user[msg.sender], "You are not approved user");
        require(player[_id].flag !=1, "Already player exists by this id");

        player[_id] = myPlayer(_id, _name, _address, 1);
        emit playerCreated(_id, _name, _address);

    }




    function updatePlyer(uint _id, string memory _name, address _address) public
    {
        require(player[_id].flag !=0, "No player exists by this id, create player first");
        require(user[msg.sender], "You are not approved user");

        player[_id] = myPlayer(_id, _name, _address, 1);
        emit playerUpdated(_id, _name, _address);

    }



    function getPlayer(uint _id) public view returns(myPlayer memory)
    {
        return player[_id];
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

// Class Activity

contract Wallet
{
    address payable private owner;

    constructor()
    {
        owner = payable(msg.sender);
    }

    modifier onlyOwner()
    {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function deposit() public payable
    {
        require(msg.value > 0, "Please send Ethers");
        //
    }

    function withdraw(uint _amount) public onlyOwner
    {
        owner.transfer(_amount*1000000000000000000);
    }

    function transfer(address payable _address, uint _amount) public onlyOwner
    {
        _address.transfer(_amount*1000000000000000000);
    }

    function getBalance() public view onlyOwner returns(uint)
    {
        return address(this).balance;
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

/*
This contract is a shared wallet in which anyone can become user.
Then owner will verify the user. And after that, a verified user
will be able to deposit, withdraw, transfer and check Balance.
Owner can check the contract's balance.
*/

contract sharedWallet
{
    /*
    State variables for owner address and user count;
    */
    address public owner;
    uint public userCount;
    

    /*
    Constructor to make deployer the of the contract the owner.
    */
    constructor()
    {
        owner = msg.sender;
    }



    /*
    Modifier to restrict some functions access to owner only.
    */
    modifier onlyOwner()
    {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    
    /*
    Events for create or update funcion.
    */
    event created(address user, string name, uint cnic, uint balance, bool status, uint timeStamp, string action);
    event updated(address user, string name, uint cnic, uint timeStamp, string action);

    
    /*
    Struct for user to store user's data.
    */
    struct user
    {
        address Address;
        string Name;
        uint CNIC;
        uint balance;
        bool status;
        uint flag;
    }

    
    /*
    Mapping to map users's address to its struct.
    */
    mapping(address => user) private users;

    
    /*
    Function to create or update user.
    Owner of the contrcat can not access this function.
    If user is not created previously then if statement will run and new user will be created
    Otherwise else statement will run and user will be updated.
    */
    function createOrUpateUser(string memory _name, uint _cnic) public
    {
        require(msg.sender != owner, "You are the owner and owner can not be the user");
        if (users[msg.sender].flag == 0)
        {
            users[msg.sender] = user(msg.sender, _name, _cnic, 0, false, 1);
            userCount ++;
            emit created(msg.sender, _name, _cnic, 0, false, block.timestamp, "User created successfully");
        }

        else
        {
            users[msg.sender].Name = _name;
            users[msg.sender].CNIC = _cnic;
            emit updated(msg.sender, _name, _cnic, block.timestamp, "User updated successfully");
        }
    }

    
    /*
    Function to verify user.
    Only owner can call this functiion.
    */
    function verifyUser(address userAddress, bool _status) public onlyOwner
    {
        users[userAddress].status = _status;
    }

    
    /*
    Function to deposit Ethers in respective account.
    An unregistered and non-verified user can not call this function.
    */
    function depositEthers() public payable
    {
        require(users[msg.sender].flag != 0, "You are not a registered user, get yourself registered first");
        require(users[msg.sender].status, "You are not a verified user, please get yourself verified first");
        require(msg.value > 0, "No Ethers was sent, Please send Ethers");
        users[msg.sender].balance += msg.value;
    }

    
    
    /*
    Function to withdraw Ethers from respective account.
    An unregistered and non-verified user can not call this function.
    ///////////////////////////////////////////////////////////////////////////////////
    I used the Checks-Effects-Interact pattern to reduce the risk of Reentrancy attack.
    ///////////////////////////////////////////////////////////////////////////////////
    */function withdraw(uint _amount) public
    {
        require(users[msg.sender].flag != 0, "You are not a registered user, get yourself registered first");
        require(users[msg.sender].status, "You are not a verified user, please get yourself verified first");
        require(users[msg.sender].balance >= _amount, "Not enough balance");

        users[msg.sender].balance -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    
    /*
    Function to transfer funds to a specified adddres.
    An unregistered and non-verified user can not call this function.
    */
    function transferFunds(address _address, uint _amount) public
    {
        require(users[msg.sender].flag != 0, "You are not a registered user, get yourself registered first");
        require(users[msg.sender].status, "You are not a verified user, please get yourself verified first");
        require(users[msg.sender].balance >= _amount, "Not enough balance");

        users[msg.sender].balance -= _amount;
        payable(_address).transfer(_amount);        
    }

    
    
    /*
    Function to check balance of the caller's account.
    An unregistered and non-verified user can not call this function.
    */
    function checkBalance() public view returns(uint)
    {
        require(users[msg.sender].flag != 0, "You are not a registered user, get yourself registered first");
        require(users[msg.sender].status, "You are not a verified user, please get yourself verified first");
        return users[msg.sender].balance;
    }

    
    
    /*
    Function to check balance of contract.
    Only owner can call this function.
    ////////////////////////////////////////////////////////////////
    Sum of all users balances should be equal to contract's balance.
    ////////////////////////////////////////////////////////////////
    */
    function getContractBalance() public view onlyOwner returns(uint)
    {
        return address(this).balance;
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

/*
In this contract, I created a shared wallet
*/

contract sharedWallet
{
    struct Payment
    {
        uint amount;
        uint timeStamp;
    }

    struct Balance
    {
        uint totalBalance;
        uint numPayments;
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balanceReceived;

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function sendMoney() public payable
    {
        balanceReceived[msg.sender].totalBalance += msg.value;

        Payment memory payment = Payment(msg.value, block.timestamp);
        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments ++;
    }

    function withdrawMoney(address payable _to, uint _amount) public
    {
        require(balanceReceived[msg.sender].totalBalance >= _amount, "Not enough funds");
        balanceReceived[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
    }

    function withdrwaAllMoney(address payable _to) public
    {
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }

    function getTimeStamp(uint _id) public view returns(Payment memory)
    {
        return balanceReceived[msg.sender].payments[_id];
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.7.0 <=0.9.0;

contract Exception
{
   

    mapping(address => uint) public balanceReceived;

    function getBalance() public view returns(uint)
    {
        return address(this).balance;
    }

    function receiveMoney() public payable
    {
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public
    {
        require(_amount <= balanceReceived[msg.sender], "You do not have enough funds");
        
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
        
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

contract ExceptionExample {

    mapping(address => uint64) public balanceReceived;

    function receiveMoney() public payable
    {
        assert(msg.value == uint64(msg.value));
        balanceReceived[msg.sender] += uint64(msg.value);
        assert(balanceReceived[msg.sender] >= uint64(msg.value));
    }

    function withdrawMoney(address payable _to, uint64 _amount) public
    {
        require(_amount <= balanceReceived[msg.sender], "Not enough funds");
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;

contract FunctionsExample {

    mapping(address => uint) public balanceReceived;

    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function getOwner() public view returns(address) {
        return owner;
    }

    function convertWeiToEth(uint _amount) public pure returns(uint) {
        return _amount / 1 ether;
    }

    function destroySmartContract() public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(owner);
    }

    function receiveMoney() public payable {
        assert(balanceReceived[msg.sender] + msg.value >= balanceReceived[msg.sender]);
        balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender], "not enough funds.");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    } 

    receive() external payable {
        receiveMoney();
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;

contract ownerLogic
{
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier onlyOwner()
    {
        require(msg.sender == owner, "You are not allowed");
        _;
    }
}

contract tokenLogic is ownerLogic
{

    constructor()
    {
        tokenBalance[owner] = 100;
    }

    mapping(address => uint) public tokenBalance;
    uint tokenPrice = 1 ether;

    function createNewToken() public onlyOwner
    {
        tokenBalance[owner]++;
    }

    function burnToken() public onlyOwner
    {
        tokenBalance[owner]--;
    }

    function purchaseToken() public payable
    {
        require((tokenBalance[owner] * tokenPrice) / msg.value > 0, "not enough tokens");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }

    function sendToken(address _to, uint _amount) public
    {
        require(tokenBalance[msg.sender] >= _amount, "Not enough tokens");
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]);
        assert(tokenBalance[msg.sender] - _amount <= tokenBalance[msg.sender]);
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;

contract ownerLogic
{
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }

    modifier onlyOwner()
    {
        require(msg.sender == owner, "You are not allowed");
        _;
    }
}

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <=0.9.0;
import "./ownable.sol";

contract tokenLogic is ownerLogic
{

    constructor()
    {
        tokenBalance[owner] = 100;
    }

    mapping(address => uint) public tokenBalance;
    uint tokenPrice = 1 ether;

    function createNewToken() public onlyOwner
    {
        tokenBalance[owner]++;
    }

    function burnToken() public onlyOwner
    {
        tokenBalance[owner]--;
    }

    function purchaseToken() public payable
    {
        require((tokenBalance[owner] * tokenPrice) / msg.value > 0, "not enough tokens");
        tokenBalance[owner] -= msg.value / tokenPrice;
        tokenBalance[msg.sender] += msg.value / tokenPrice;
    }

    function sendToken(address _to, uint _amount) public
    {
        require(tokenBalance[msg.sender] >= _amount, "Not enough tokens");
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]);
        assert(tokenBalance[msg.sender] - _amount <= tokenBalance[msg.sender]);
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
    }

}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract funcInsFunc
{
    uint public number = 5;

    function setNumber(uint num) public
    {
        number = num;
    }

    function funcIns(uint num) public
    {
        setNumber(num);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.13;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract debugUdemy
{
    using SafeMath for uint;
    string public myString = "Hello world";
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier:GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

library mathFunc
{
    function add(uint num1, uint num2) public pure returns(uint)
    {
        return num1 + num2;
    }
}

contract Library
{
    function getSum(uint n1, uint n2) public pure returns(uint)
    {
        return mathFunc.add(n1,n2);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Allowance.sol";

contract walletProject is Allowance
{

    event MoneySent(address indexed _benificiary, uint _amount);
    event MoneyReceived(address indexed _from, uint _amount);

    function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount)
    {
        require(_amount <= address(this).balance, "Not enough balance");
        if(owner() != msg.sender)
        {
            reduceAllowance(msg.sender, _amount);
        }
        emit MoneySent(_to, _amount);
        _to.transfer(_amount);
    }

    function renounceOwnership() public pure override
    {
        revert("Can't renounce ownership here");
    }

    fallback() external payable
    {
        //
    }

    receive() external payable
    {
        emit MoneyReceived(msg.sender, msg.value);
    }
}
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract Allowance is Ownable
{
    event AllowanceChanged(address indexed _forWho, address indexed _fromWhom, uint _oldAmount, uint _newAmount);

    mapping(address => uint) public allowance;

    function setAllowance(address _who, uint _amount) public onlyOwner
    {
        emit AllowanceChanged(_who, msg.sender, allowance[_who], _amount);
        allowance[_who] = _amount;
    }

    modifier ownerOrAllowed(uint _amount)
    {
        require((owner() == msg.sender) || allowance[msg.sender] >= _amount, "You are not allowed");
        _;
    }

    function reduceAllowance(address _who, uint _amount) internal
    {
        emit AllowanceChanged(_who, msg.sender, allowance[_who], allowance[_who] - _amount);
        allowance[_who] -= _amount;
    }
}
////////////////////////////////////////////////////////////////////////////////
