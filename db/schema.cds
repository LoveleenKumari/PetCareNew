using { cuid, managed } from '@sap/cds/common';

namespace sap.fe.cap.petcarenew;

entity PetCare : cuid, managed {
      PetID           : Integer @Core.Computed;
      Name            : String(40);
      Gender          : String(1);
      DOB             : Date;
      Colour          : String(20);
      to_PetMedical   : Composition of many PetMedical
                          on to_PetMedical.to_PetCare = $self;
/*       to_PetType      : Association to PetType
                          on to_PetType.PetCode = PetCode;
      to_BreedType    : Association to BreedType
                          on to_BreedType.PetCode = PetCode;
      PetPicURL       : String @UI: {IsImageURL: true};

      to_PetNutrition : Composition of many Pet_Nutrition
                          on to_PetNutrition.to_PetCare = $self;
      to_PetGrooming  : Composition of many Pet_Grooming
                          on to_PetGrooming.to_PetCare = $self; */
};


 entity PetMedical : cuid, managed {
  key MedicalID             : Integer @Core.Computed;
      //Service               : Association to Pet_MedicalServiceTypes;
      Title                 : String(20);
      Notes                 : String(50);
      VaccinationDate       : Date;
      VaccinationExpiryDate : Date;
      //MedicalType           : Association to Pet_MedicalTypes;
      to_PetCare            : Association to PetCare;
};

/*
entity Pet_Nutrition : managed {
  key FoodID     : Integer @Core.Computed;
      FoodItemCode : String(2);
      to_FoodItem   : Association to Pet_FoodItemTypes on to_FoodItem.FoodItemCode = FoodItemCode;
      Notes      : String(50);
      Date       : Date;
      Time       : Time;
      to_PetCare : Association to PetCare;
};

entity Pet_Grooming : managed {
  key GroomingID      : Integer @Core.Computed;
      GroomingCode    : String(2);
      to_GroomingService : Association to Pet_GroomingServiceTypes on to_GroomingService.GroomingCode = GroomingCode;
      Notes           : String(50);
      Date            : Date;
      Time            : Time;
      to_PetCare      : Association to PetCare;
};

 */