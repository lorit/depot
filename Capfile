load 'deploy'
# Uncomment if you are using Rails' asset pipeline
load 'deploy/assets'

Dir['vendor/gems/*/recipies/*.rb','vendor/plugins/*/recipies/*.rb'].
each { |plugin| load(plugin)}
load 'config/deploy' # remove this line to skip loading any of the default tasks
