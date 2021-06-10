require 'sinatra'
require 'base64'

get '/redirect/:callback_url' do
  url = Base64.decode64(params['callback_url'].to_s)
  redirect to(url), 301
end
