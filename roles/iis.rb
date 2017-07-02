name "iis"
description "IIS Web Server"
run_list(
  "recipe[iis]",
  "recipe[iis::mod_mvc3]",
  "recipe[iis::mod_urlrewrite]"
)
default_attributes(
  "iis" => {
    "accept_eula" => true
  }
)
