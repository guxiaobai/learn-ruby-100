
use Rack::Chunked

class MyApp
  
  def call(env)
    [200, {"Content-Type"=> "text/html"}, File.new('./README.md')]
  end
  
end

run MyApp.new