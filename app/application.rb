class Application
 
  def call(env)
    resp = Rack::Response.new
 now = Time.now
  today = Date.today.to_time

  morning = today.beginning_of_day
  noon = today.noon
  evening = today.change( hour: 17 )
  night = today.change( hour: 20 )
  tomorrow = today.tomorrow

  if (morning..noon).cover? now
    resp.write 'Good Morning!'
  elsif (noon..evening).cover? now
    resp.write 'Good Afternoon!'
    #if time1 > 12
      #resp.write "Good Afternoon!"
   # elsif
   # time1 < 12
    #resp.write "Good Morning!"
 # end
 
    resp.finish
  end
end 
 
end