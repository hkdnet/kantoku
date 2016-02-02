require "./kantoku/*"
require "kemal"

get "/" do |env|
  name = env.params.key?("name") ? env.params["name"] as String : "John Doe"
  render "views/index.ecr"
end
