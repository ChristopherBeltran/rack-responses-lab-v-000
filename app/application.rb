class Application
 
  def call(env)
    resp = Rack::Response.new
 if Time.now.hour < 12
  resp.write 'morning'
else
  resp.write 'afternoon'
end
resp.finish
end 
 
end