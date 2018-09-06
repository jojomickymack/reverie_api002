require 'sinatra'
require 'sinatra/activerecord'
require './setup/db'
require './models/content'
require 'json'

before do
    content_type :json
end

get '/' do
    content_type :text
    File.read(File.join('./app', 'index.html'))
end

get '/contents' do
    response.header['Content-Type'] = 'application/json'
    Content.select(:id, :title, :url, :content_type).to_json
end

post '/contents' do
    Content.where(title: params['title']).first.to_json
end
