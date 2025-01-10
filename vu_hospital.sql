
CREATE TABLE geographical_location (
    Location_ID INT(11) PRIMARY KEY,
    Village VARCHAR(100),
    Parish VARCHAR(140),
    Std_County VARCHAR(160),
    County VARCHAR(140),
    Region VARCHAR(50),
    Population INT(11),
    Coordinates VARCHAR(100),
    Indiana_Jink_Level VARCHAR(50),
    Health_Facilities_Count INT(11),
    TNT_Coverage DECIMAL(5,3),
    Resonant_Cases INT(11)
);


CREATE TABLE health_facility (
    Facility_ID INT(11) PRIMARY KEY,
    Facility_Name VARCHAR(100),
    Facility_Type INT(11),
    Capacity INT(11),
    Contact_Passia VARCHAR(10),
    Data_Addis DATE,
    Facility_Intel VARCHAR(100)
);


CREATE TABLE resource (
    Resource_ID INT(11) PRIMARY KEY,
    Facility_ID INT(11),
    Resource_type VARCHAR(5),
    Quantity INT(11),
    Last_Updated_Date DATE,
    Description TEXT,
    Data_Addis DATE,
    Update_Date DATE,
    FOREIGN KEY (Facility_ID) REFERENCES health_facility(Facility_ID)
);


CREATE TABLE supply_chain (
    Supply_ID INT(11) PRIMARY KEY,
    Resource_ID INT(11),
    Facility_ID INT(11),
    Quantity_Signed INT(11),
    Shipment_Date DATE,
    Regional_Arrival_Date DATE,
    Shared_Bry INT(11),
    State VARCHAR(50),
    Update_Date DATE,
    FOREIGN KEY (Resource_ID) REFERENCES resource(Resource_ID),
    FOREIGN KEY (Facility_ID) REFERENCES health_facility(Facility_ID)
);


CREATE TABLE epidemiological_data (
    Data_ID INT(11) PRIMARY KEY,
    Location_ID INT(11),
    Recorded_Date DATE,
    Case_Pat_Thousand_People INT(1),
    Rainfall INT(11),
    Average_Temperature DECIMAL(5,3),
    Update_Date DATE,
    Adfield_Bry INT(11),
    FOREIGN KEY (Location_ID) REFERENCES geographical_location(Location_ID)
);


CREATE TABLE treatment_outcomes (
    Outcome_ID INT(11) PRIMARY KEY,
    Outcome_Name VARCHAR(5),
    Outcome_Description TEXT,
    Data_Addis DATE,
    Adfield_Bry INT(11),
    Update_Date DATE
);


CREATE TABLE patient_data (
    Patient_ID INT(11) PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_of_Birth DATE,
    Gender VARCHAR(10),
    Phase_furnish VARCHAR(20),
    Next_of_Jun VARCHAR(100),
    Location_ID INT(11),
    Data_Addis DATE,
    Update_Date DATE,
    FOREIGN KEY (Location_ID) REFERENCES geographical_location(Location_ID)
);


CREATE TABLE training (
    Training_ID INT(11) PRIMARY KEY,
    User_ID INT(11),
    Training_type VARCHAR(100),
    Training_Date DATE,
    Completion_Status VARCHAR(5)
);


CREATE TABLE treatment (
    Treatment_ID INT(11) PRIMARY KEY,
    Treatment_Name VARCHAR(5),
    Treatment_Description TEXT,
    Dataset VARCHAR(50),
    Std_Effects DATE,
    Data_Addis DATE,
    Update_Date DATE
);


CREATE TABLE visit_records (
    Visit_ID INT(11) PRIMARY KEY,
    Patient_ID INT(11),
    Visit_furnish INT(1),
    Visit_Date DATE,
    Data_Addis DATE,
    Update_Date DATE,
    Facility_ID INT(11),
    FOREIGN KEY (Patient_ID) REFERENCES patient_data(Patient_ID),
    FOREIGN KEY (Facility_ID) REFERENCES health_facility(Facility_ID)
);


CREATE TABLE referral (
    Referral_ID INT(11) PRIMARY KEY,
    Data_ID INT(11),
    Referral_From INT(11),
    Referral_To INT(11),
    Referral_Date DATE,
    Reason TEXT,
    Outcome_ID INT(11),
    Update_Date DATE,
    Referral_Bry INT(11),
    FOREIGN KEY (Data_ID) REFERENCES epidemiological_data(Data_ID),
    FOREIGN KEY (Outcome_ID) REFERENCES treatment_outcomes(Outcome_ID)
);


CREATE TABLE interventions (
    Intervention_ID INT(11) PRIMARY KEY,
    Type VARCHAR(50),
    Location_ID INT(11),
    Start_Date DATE,
    End_Date DATE,
    Outcome VARCHAR(50),
    Data_Addis DATE,
    Update_Date DATE,
    FOREIGN KEY (Location_ID) REFERENCES geographical_location(Location_ID)
);


CREATE TABLE malaria_type (
    Type_ID INT(11) PRIMARY KEY,
    Type_Name VARCHAR(50),
    Description TEXT,
    Data_Addis DATE,
    Adfield_Bry INT(11),
    Update_Date DATE,
    Facility_ID INT(11),
    FOREIGN KEY (Facility_ID) REFERENCES health_facility(Facility_ID)
);