require 'sinatra'

get '/' do
	erb :index
end
                      
post '/' do
	@login = params[:aaa]
	@pass = params[:bbb]

	if @login == 'admin' && @pass == 'secret'
		erb :welcome
	elsif @login == 'admin' && @pass == 'admin'
		@denied = 'Haha, nice try! Access denied'
		erb :index
	else
		@denied = 'Access denied! Try again'
		erb :index
	end
end
