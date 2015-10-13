require "api_client"
desc "Echo Hello Rake!"
task :hello do
  puts "Hello Rake!"
  ApiClient.hello
end
