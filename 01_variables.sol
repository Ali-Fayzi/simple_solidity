// SPDX-License-Identifier: MIT 
pragma solidity >=0.7.0 <= 0.9.0;

contract Variables{
    // String
    string public name = "Ali"; // access from anywhere
    string private family = "Fayzi"; // access inside this contract
    string internal fullName = "Ali Fayzi"; //  access in subclass
    // external => using in functions 
    // Integer , unsigned Integer
    int age = 26;
    uint weight = 84;

    // Boolean
    bool isLogin = false;
    bool isAdmin = true;
    bool isPayable = true;
    
    // Address 
    address a = 0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d;
    address payable b = payable(0xddaAd340b0f1Ef65169Ae5E41A8b10776a75482d);

    // Bytes 
    bytes1 bs1 = "A" ;
    bytes2 bs2 = "AB";
    bytes3 bs3 = "ABC";
    // ...
    bytes32 bs32 = "I Love Solidity";

    // Enum
    enum weekDays{
        Monday, //0
        Thuseday, //1
        Wendsday, //2
        Thursday, //3
        Friday, //4 
        Saturday, //5
        Sunday //6
    }
    function get_day() public pure returns(weekDays){
        return weekDays.Sunday;
    }

    // Struct
    struct Book {
        string name;
        string writer;
        uint id;
        bool isAvailable;
    }
    Book public book1 = Book("ASDF", "Ali Fayzi", 1, true);



    // mapping
    struct Student {
        string name;
        string family;
        uint age;
    }
    mapping ( address => Student ) private result;
    function set_student() public {
        result[msg.sender] = Student({
            name:"Ali",
            family:"Fayzi",
            age:26
        });
    }
    function get_student() public view returns(string memory, string memory, uint){
       Student memory std =  result[msg.sender];
       return (std.name, std.family, std.age);
    } 


    // Arrays

    string[]  public names = ["Ali","Vali","..."];
    uint[][] public images = [
        [0,0,0],
        [0,255,0],
        [0,0,0]
    ];

    function get_array_length() public view returns (uint){
        return names.length;
    }
    function add_name_to_array(string memory _name) public {
        names.push(_name);
    }
}