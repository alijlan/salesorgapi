namespace salesorgapi;

using { API_SALESORGANIZATION_SRV as api } from '../srv/external/API_SALESORGANIZATION_SRV.csn';

entity SalesOrganizations as projection on api.A_SalesOrganization {
    key SalesOrganization,
        SalesOrganizationCurrency,
        CompanyCode,
        IntercompanyBillingCustomer
}
