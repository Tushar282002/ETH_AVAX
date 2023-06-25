// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HospitalManagement {
    struct Patient {
        uint id;
        string name;
        bool admitted;
    }
    
    mapping(uint => Patient) public patients;
    uint public patientCount;
    
    function admitPatient(uint _id, string memory _name) public {
        require(_id > 0, "Invalid patient ID");
        require(bytes(_name).length > 0, "Invalid patient name");
        require(!patients[_id].admitted, "Patient is already admitted");
        
        patients[_id] = Patient(_id, _name, true);
        patientCount++;
    }
    
    function dischargePatient(uint _id) public {
        require(patients[_id].admitted, "Patient is not admitted");
        
        patients[_id].admitted = false;
        patientCount--;
    }
    
    function updatePatientName(uint _id, string memory _name) public {
        require(patients[_id].admitted, "Patient is not admitted");
        require(bytes(_name).length > 0, "Invalid patient name");
        
        patients[_id].name = _name;
    }
}
