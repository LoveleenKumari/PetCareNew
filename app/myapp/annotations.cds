using PetCareService as service from '../../srv/petcare-service';
using from '../../db/schema';

annotate service.PetCare with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'PetID',
                Value : PetID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Gender',
                Value : Gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DOB',
                Value : DOB,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Colour',
                Value : Colour,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Medical',
            ID : 'Medical',
            Target : 'to_PetMedical/@UI.LineItem#Medical',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'PetID',
            Value : PetID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Gender',
            Value : Gender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'DOB',
            Value : DOB,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Colour',
            Value : Colour,
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : to_PetMedical.MedicalID,
            Label : 'MedicalID',
        },
        {
            $Type : 'UI.DataField',
            Value : to_PetMedical.Notes,
            Label : 'Notes',
        },
        {
            $Type : 'UI.DataField',
            Value : to_PetMedical.Title,
            Label : 'Title',
        },
        {
            $Type : 'UI.DataField',
            Value : to_PetMedical.VaccinationDate,
            Label : 'VaccinationDate',
        },
        {
            $Type : 'UI.DataField',
            Value : to_PetMedical.VaccinationExpiryDate,
            Label : 'VaccinationExpiryDate',
        },
    ],
);

annotate service.PetMedical with @(
    UI.LineItem #Medical : [
        {
            $Type : 'UI.DataField',
            Value : MedicalID,
            Label : 'MedicalID',
        },
        {
            $Type : 'UI.DataField',
            Value : Notes,
            Label : 'Notes',
        },
        {
            $Type : 'UI.DataField',
            Value : Title,
            Label : 'Title',
        },
        {
            $Type : 'UI.DataField',
            Value : VaccinationDate,
            Label : 'VaccinationDate',
        },
        {
            $Type : 'UI.DataField',
            Value : VaccinationExpiryDate,
            Label : 'VaccinationExpiryDate',
        },
    ],
     UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'PetMedicalData',
            Label : 'Pet Medical Details',
            Target : '@UI.FieldGroup#PetMedicalData',
        },
     ],
     UI.FieldGroup#PetMedicalData : { Data : [
        { Value : MedicalID },
        { Value : Notes     },
        { Value : Title    }
     ]}
);

