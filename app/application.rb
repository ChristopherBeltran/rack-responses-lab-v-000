class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time1 = Time.new
    binding.pry
    if time1 > 12
      resp.write "Good Afternoon!"
    elsif
    time1 < 12
    resp.write "Good Morning!"
  end
 
    resp.finish
  end
 
end