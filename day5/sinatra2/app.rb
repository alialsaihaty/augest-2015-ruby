require "sinatra"
# Adding the Sinatra reloader will enable us to change code and see
# the effect of it right away without having to restart the server
# http://www.sinatrarb.com/contrib/reloader.html
require "sinatra/reloader" if development?
require "faker"
require "sinatra/cookies"

# This allows using sessions features in Sinatra
enable :sessions

#T0 protect only certain URLs in the application, or want the authorization to be more complex, you may
#use something like this:
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# When we recieve a request that has a GET HTTP request
# with a URL of "/"
# Sinatra will execute the code in here
get "/" do
  # the response is just a simple text that is sent back
  # "Hello World"

  # This will look for a template called index.erb inside the folder 'views'
  # it will use the template to generate HTML code and send it back as
  # a response to the client
  # This will use the views/application.erb as a layout
  if session[:visits]
    session[:visits] += 1
  else
    session[:visits]  = 1
  end

  erb(:index, {layout: :application})
end

post "/change_color" do
   redd     = params[:red]
   bluee    = params[:blue]
   yelloww  = params[:yellow]

   if redd == "red"
     @color = "red"
   elsif bluee == "blue"
     @color = "blue"
   elsif yelloww == "yellow"
     @color = "yellow"
   end
  params.to_s
end

# This is the contact `action`
get "/contact" do
  erb :contact, layout: :application
end

post "/submit_contact" do
  # params is a Hash object that is given to us by Sinatra that contains
  # the key / value pairs from the parameters received from the client.
  # if it's a web form the key matches the "name" HTML attribute, the value
  # will be whatever the user enters in the input field
  name = params[:full_name]
  "Thanks #{name} for contacing us."
end

get "/hello" do
  "Hey There! again #{params.to_s}"
end

get "/convert_temp" do
  erb :convert_temp, layout: :application
end

post "/submit_covert_temp" do
  temperature_in_c = params[:temperature]
  @temperature_in_f = temperature_in_c.to_f * 9 / 5 + 32
  erb :convert_temp, layout: :application
end

get "/survey" do
  erb(:survey, {:layout => :application})
end

post "/survey" do
  #  {"work-best"=>"without-deadlines", "consider-yourself"=>"rational", "interested-in"=>"ideas"}

  work_best         = params["work-best"]
  interested_in     = params["interested-in"]
  consider_yourself = params["consider-yourself"]

  # With deadline | Rational  | Ideas > Rational
  if work_best == "deadlines" && interested_in == "ideas" &&
      consider_yourself == "rational"
    @type = "Rational"
  else
    @type = "I don't know"
  end

  # params is Hash given to us by Sinatra that contains the parsed values
  # submitted by the form
  # "Thank you for submitting the survey. You're Type is: #{type} - #{params.to_s}"

  erb :survey_results, layout: :application
end

get "/company" do
  erb :company, layout: :application
end

post "/company" do
  @gen = Faker::Company.catch_phrase
  erb :company, layout: :application
end

get "/random" do
  erb :random, layout: :application
end

post "/random" do
  @nam = params[:pick_ran]
  names = params[:pick_ran].split(",")
  @ra = names.sample
  session[:the_last_winner] = @ra
  erb :random, layout: :application
end

get "/test_protected" do
  protected!
  "You are In!"
end

get '/set' do
  cookies[:something] = 'foobar'
  redirect to('/')
end
