#fetches list of US repos from the social media registry, and outputs merged list to command line
#@todo, can this be done automagically without loosing formatting and comments?

require 'open-uri'
require 'json'
require 'yaml'

config = YAML.load_file '../_config.yml' 

orgs = JSON.parse open('http://registry.usa.gov/accounts?service_id=GitHub&format=json').read
orgs = orgs["accounts"].collect { |data| data["account"] }

orgs.each do |org|
  config["organizations"]["united_states"].push org unless config["organizations"]["united_states"].include? org
end

output = { "united_states" => config["organizations"]["united_states"] }
puts "To be pasted into _config.yml"
puts output.to_yaml