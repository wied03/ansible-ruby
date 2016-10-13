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
