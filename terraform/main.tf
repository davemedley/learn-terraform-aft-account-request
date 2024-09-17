module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "dcmedley+betasandbox@amazon.com"
    AccountName               = "sandboxAccount"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "dcmedley+betasandbox@amazon.com"
    SSOUserFirstName          = "Dave"
    SSOUserLastName           = "Medley"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
