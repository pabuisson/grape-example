desc "API Routes"
task :routes do
  Music::Base.routes.each do |api|
    method = api.request_method.ljust(10)
    path = api.path
    puts "     #{method} #{path}"
  end
end
