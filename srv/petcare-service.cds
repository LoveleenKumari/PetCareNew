using { sap.fe.cap.petcarenew as my } from '../db/schema';

service PetCareService @(path:'/processor') {
    entity PetCare as projection on my.PetCare;
}
