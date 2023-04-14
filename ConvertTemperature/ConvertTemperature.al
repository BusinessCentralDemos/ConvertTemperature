permissionset 70074169 "MS_SamplePS"
{
    Assignable = true;
    Caption = 'sample permission set';
    IncludedPermissionSets = MS_DefaultPS;
    Permissions = codeunit MS_ConvertTemperature = X;
}

permissionset 70074170 "MS_DefaultPS"
{
    Assignable = true;
    Caption = 'sample permission set';
    Permissions = page MS_ConvertTemperature = X;
}

entitlement "MS_Gold"
{
    Type = PerUserOfferPlan;
    Id = 'mdcc1667400477212.bc_converttemp_sample.gold';
    ObjectEntitlements = "MS_SamplePS";
}

entitlement "MS_Silver"
{
    Type = PerUserOfferPlan;
    Id = 'mdcc1667400477212.bc_converttemp_sample.silver';
    ObjectEntitlements = "MS_SamplePS";
}

entitlement "MS_Bronze"
{
    Type = PerUserOfferPlan;
    Id = 'mdcc1667400477212.bc_converttemp_sample.bronze';
    ObjectEntitlements = "MS_SamplePS";
}

entitlement "MS_Default"
{
    Type = Unlicensed;
    ObjectEntitlements = "MS_DefaultPS";
}

entitlement "MS_Delegated Admin agent - Partner"
{
    Type = Role;
    RoleType = Delegated;
    Id = '00000000-0000-0000-0000-000000000007';
    ObjectEntitlements = "MS_SamplePS";
}