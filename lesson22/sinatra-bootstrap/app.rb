require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/about' do 
  erb :about
end

get '/visit' do
  erb :visit
end

get '/contacts' do
  erb :contacts
end

post '/visit' do
  # user_name, phone, date_time
  @user_name = params[:user_name]
  @phone = params[:phone]
  @date_time = params[:date_time]
  @baber = params[:baber]

  @title = "Thank you!"
  @message = "Уважаемый #{@user_name}, мы ждём вас #{@date_time} у выбранного парикмахера #{@baber}."

  # запишем в файл то, что ввёл клиент
  f = File.open './public/users.txt', 'a'
  f.write "User: #{@user_name}, phone: #{@phone}, date and time: #{@date_time}. Baber: #{@baber}.\n"
  f.close

  erb :visit
end

post '/contacts' do
  @email = params[:email]
  @message = params[:message]

  f = File.open './public/contacts.txt', 'a'
  f.write "Email: #{@email}, Message: #{@message}\n"
  f.close

  erb :contacts
end

configure do
  enable :sessions
end

helpers do
  def username
    session[:identity] ? session[:identity] : 'Hello stranger'
  end
end

before '/secure/*' do
  unless session[:identity]
    session[:previous_url] = request.path
    @error = 'Sorry, you need to be logged in to visit ' + request.path
    halt erb(:login_form)
  end
end

get '/' do
  erb 'Can you handle a <a href="/secure/place">secret</a>?'
end



get '/login/form' do
  erb :login_form
end

post '/login/attempt' do
  @username = params[:username]
  @password = params[:password]

  if @username == 'admin' && @password == 'secret'
    session[:identity] = params['username']
    where_user_came_from = session[:previous_url] || '/'
    redirect to where_user_came_from
  elsif @username == 'admin' && @password == 'admin'
    @message = 'HA-HA! Nice try! '
    erb :login_form
  else
    @message = 'Incorrect password!'
    erb :login_form
  end

end

get '/logout' do
  session.delete(:identity)
  erb "<div class='alert alert-message'>Logged out</div>"
end

get '/secure/place' do
  erb 'This is a secret place that only <%=session[:identity]%> has access to!'
end

