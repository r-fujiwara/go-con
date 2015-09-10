require "sinatra/base"
require "sinatra/reloader"
require "pry"

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end


  get '/' do
    puts "fuga"
    'no-bye world'
  end

  run!
end


