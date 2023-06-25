# ETH_AVAX
In this example, we have a smart contract called HospitalManagement that maintains a mapping of patients and their admission status. The contract includes three functions: admitPatient(), dischargePatient(), and updatePatientName(), which showcase the usage of require(), assert(), and revert() statements, respectively.

The admitPatient() function is used to admit a patient by providing their ID and name. The require() statement ensures that the patient is not already admitted. Additionally, the assert() statement verifies that the name provided is not empty.

The dischargePatient() function is responsible for discharging a patient based on their ID. The require() statement verifies that the patient is currently admitted.

The updatePatientName() function allows for updating a patient's name. The revert() statement is utilized to prevent an empty name from being assigned to a patient.

These statements help enforce various conditions and constraints within the hospital management contract, ensuring data consistency, and preventing invalid state changes.
