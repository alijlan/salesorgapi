using { salesorgapi } from '../db/schema.cds';

service SalesOrganizationSrv {
    entity SalesOrganizations as projection on salesorgapi.SalesOrganizations;
} 