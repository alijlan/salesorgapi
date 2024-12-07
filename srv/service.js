const cds = require('@sap/cds');

module.exports = cds.service.impl( async function () {
    const SalesOrgSrv = await cds.connect.to("API_SALESORGANIZATION_SRV");
    this.on("READ","SalesOrganizations", async (req) => {
        req.query.where("SalesOrganization = '1010' and CompanyCode = '1010'");
        return await SalesOrgSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey
            }
        })
    })
})