require 'sinatra'
require 'byebug'

class Telephone < Sinatra::Base

  get '/' do
    binding.pry
    'Hello world!'
  end

end
