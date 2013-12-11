name "base-ubuntu"
description "Base role for ubuntu servers"
run_list "recipe[apt::default]", "recipe[chef-client::cron]"