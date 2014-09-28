require 'sinatra'
require 'byebug'

class Telephone < Sinatra::Base

  get '/' do
    'Hello world!'
  end

end
