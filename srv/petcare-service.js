const cds = require ('@sap/cds')

class PetCareService extends cds.ApplicationService { init() {

  // Reflected definitions from the service's CDS model
const { PetCare, PetMedical } = this.entities

// this.before ('NEW', PetCare.drafts, async req => {
//     let { maxID } = await SELECT.one (`max(PetID) as maxID`) .from (PetCare.drafts) .where (req.data)
//     req.data.PetID = ++maxID
//   })

  this.before ('NEW', PetCare.drafts, async req => {
    let { maxID }  = await SELECT.one (`max(PetID) as maxID`) .from (PetCare) 
    req.data.PetID = ++maxID
  })

  this.before ('NEW', PetMedical.drafts, async req => {
    let { maxID }  = await SELECT.one (`max(MedicalID) as maxID`) .from (PetMedical.drafts) .where (req.data)
    req.data.MedicalID = ++maxID
  })

  this.before ('CREATE', PetCare, async req => {
    // let { maxID } = await SELECT.one (`max(PetID) as maxID`) .from (PetCare)
    // req.data.PetID = ++maxID
  })

    // Add base class's handlers. Handlers registered above go first.
    return super.init()

}}

module.exports = { PetCareService }