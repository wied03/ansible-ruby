# 1.0.17
* Make `replace` a file module

# 1.0.16
* Add `validate` support to all file modules
* Make `lineinfile` use file module helpers

# 1.0.15
* Correct issues with `uri` module

# 1.0.14
* Handle modules with attribute `method` properly

# 1.0.13
* Correct typo with role tagging support

# 1.0.12
* Add role tagging support

# 1.0.11
* Add `remote_user` support to tasks

# 1.0.10
* Add `delegated_to` support to tasks

# 1.0.9
* Add `vars` support to Playbooks

# 1.0.8
* Use Ansible's `type` metadata attribute to regain some module precision

# 1.0.7
* Ansible 2.7.1.0 compatibility
* `ec2` corrections for `count_tag`, `ebs_optimized`, `instance_profile_name`, `exact_count` parameters
* `ec2_ami`, `ec2_vol`, `iam_policy`, `iam`, `ec2_eip`, `ec2_group` correction for region
* `ec2_ami` `state` parameter validation correction
* `get_url`, `unarchive` support for `owner`, `group`, `mode`, `setype`, `selevel`
* `wait_for` module `port` parameters validation fix - integer
* `firewalld` permanent type fix
* `pause` validation fix for `minutes` and `seconds`
* `user` `groups` correction until Ansible 2.3
* `gem` module now works and does not conflict with the Ruby keyword
* `ec2_group` validation fixes for `vpc_id`, `purge_rules`, `purge_rules_egress`
* `lineinfile` module - added missing `validate` parameter
* `meta` should now work properly like `command` as a free form module
* `with_items` supports splat style array parsing
* `vars` now supported in task and blocks
* `local_action` support

# 1.0.6 - 14 October 2016
* Allow sharing variables between tasks (#29)
* Fix include support in handlers and allow include within task (#32)
* Add 'connection' support to task DSL/model (#38)
* Add YARD class comments for generated module classes (#22)
* Fix `termination policies` in `ec2_asg` (#23)
* `get_url` takes in a `Hash` for `headers` (#23)
* `docker_container` `network_mode` is now a String and `volumes` is a `Hash` (#23)
* `file`, `copy`, `template` support for `owner`, `group`, `mode`, `setype`, `selevel` (#23)
* `set_fact` is now supported, pass a `Hash` as the parameter 

# 1.0.5 - 12 October 2016
* Added no_log support
* include_vars support
* Fix Include Not Tested/Working (#40)
* Updated modules for Ansible 2.1.2 (see 1d2b99b045d3dc8a3e444e7dc146eb737173cdc2)

# 1.0.4 - 5 September 2016
* Improve error messages (#7)
* Add become/become_user/ignore to play DSL
* Prevent these Ruby methods from interfering with module attributes: `[:system, :test, :warn, :sleep]` 

# 1.0.3 - 27 August 2016
* Fix register count issue (#30)
* Inclusion support from playbooks
* Handler support
* Block support
* Add jinja variable helper
* Add with_items support and add block helper for that and with_dict

# 1.0.2 - 25 August 2016
* Allow free form tasks to be supplied without a block
* Ensure non-free form tasks are called with a block
* Add separate clean/compile rake Tasks
* Rename existing Rake task to execute
* Try and avoid DSL conflicts

## 1.0.1 - 24 August 2016
* Bug fix/missing dependency

## 1.0.0 - Initial Release
