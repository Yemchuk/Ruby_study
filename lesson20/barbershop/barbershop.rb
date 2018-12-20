require 'sinatra'

get '/' do
	erb :index	
end

post '/' do
	@user_name = params[:user_name]
	@phone = params[:phone]
	@date_time = params[:date_time]
	
	@title = 'Thank you!'
	@message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}"

	f = File.open './public/users.txt', 'a'
	f.write "User: #{@user_name}, Phone: #{@phone}, Date and time: #{@date_time}\n"
	f.close

	erb :message
	
end

get '/admin' do
	erb :admin
end

post '/admin' do
	@login = params[:login]
	@pass = params[:password]
	
	if @login == 'admin' && @pass == 'secret'
		@file = File.open './users.txt','r'
  		erb :list
	elsif @login == 'admin' && @pass == 'admin'
		@message = 'Haha, nice try! Access denied'
		erb :admin
	else
		@message = 'Access denied! Try again'
		erb :admin
	end
end            