// const cds = require('@sap/cds')
// module.exports = cds.service.impl(async (srv) => {

//     srv.before(["CREATE", "UPDATE"], "employee", async (req) => {

//         if (parseFloat(req.data.salaryAmount) > 100000) {
//             req.error(500, "Salary must be below 100000")
//         }

//         let currentYear = new Date().getFullYear()
//         let birthYear = new Date(req.data.DOB).getFullYear()
//         let totalAge = currentYear - birthYear
//         req.data.AGE = totalAge

//     })

//     srv.after("READ", "employee", async (req) => {
//         req.forEach(element => {
//             element.nameFirst = `Mr. ${element.nameFirst}`;

//         });

//     })

//     srv.after("READ", "purchaseorder", async (req)=>{
//         req.forEach(element=>{
//             if (element.LIFECYCLE_STATUS =='N')
//             {
//                 element.LIFECYCLE_STATUS = 'NEW'
//                 element.Criticality=3
//             }
//         })
//     })

// })