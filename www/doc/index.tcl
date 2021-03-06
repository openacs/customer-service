ad_page_contract {

    The customer service module documentation. The customer service
    module was part of the ecommerce package, a package to implement
    business-to-consumer web services.
    @ported to OpenACS 5 by Torben Brosten
    @modification-date July 2006

    @author Bart Teeuwisse (bart.teeuwisse@thecodemill.biz)
    @creation-date May 2002

} {
} -properties {
    title:onevalue
    context_bar:onevalue
}

# Authenticate the user

set user_id [auth::require_login]

# Check for read privileges

set package_id [ad_conn package_id]
set admin_p [ad_permission_p $package_id read]

set package_name "Customer Service"
set title "Documentation"
set package_url [apm_package_url_from_key "customer-service"]

# Set the context bar.

set context_bar [ad_context_bar [list "." "$package_name"] $title]

# Set signatory for at the bottom of the page

set signatory "kappa@dekka.com"
