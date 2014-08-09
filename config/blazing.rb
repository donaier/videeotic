#
# Blazing Configuration File
#
# Sample target definition:
#
#   target <target_name>, <target_location>, [options]
#
# The options provided in the target definition will override any
# options provided in the recipe call.
#
# Options recognized by blazing core:
#   rails_env: used when calling the rake task after deployment

target :raspi, 'root@raspi:/home/videeotic', :rails_env => 'production'


# Sample rvm setup:
#
#    rvm <rvm-string>
#
# Setting the rvm string will make sure that the correct rvm ruby and
# gemset is used before the post-receive hook does anything at all.
# Use :rvmrc as rvm string if you want blazing to use the rvm
# environment specified in your project's .rvmrc file.

rvm :rvmrc


# Sample config for custom rvm location:
#
#    rvm_scripts <path_to_rvm_scripts>
#
# If you have installed rvm to a custom location, use this method to
# specify where the rvm scripts are located.

# rvm_scripts '/opt/rvm/scripts/rvm'

# Sample rbenv/chruby/other setup:
#
#    env_scripts <path_to_version_manager_script>
#
# If you need to source a file for your non-rvm version manager to
# you can do that with env_scripts. You should also remove the
# rvm/rvm_scripts options above.

# env_scripts '/etc/profile.d/rbenv.sh'

# Sample recipe setup:
#
#     recipe <recipe_name>, [options]
#
# The given recipe will be called with the provided options. Refer to each
# recipe's documentation for available options. Options provided here
# may be overridden by target specific options.
# Recipes will be executed in the order they are defined!yy

# recipe :precompile_assets, :recipe_specific_option => 'bar'


# Sample rake file config:
#
#     rake <task>, [environment variables]
#
# The provided rake task will be run after all recipes have run.
# Note: you can only call a single rake task. If you need to run several
# tasks just create one task that wrapps all the others.

rake :post_deploy, 'RAILS_ENV=production'

