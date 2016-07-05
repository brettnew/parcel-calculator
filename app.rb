require 'sinatra'
require 'sinatra/reloader'
require './lib/parcel'
also_reload "lib/**/*.rb"

get('/') do
  
  erb(:index)
end

get('/results') do
  @height = params.fetch('height')
  @width = params.fetch('width')
  @depth = params.fetch('depth')
  @weight = params.fetch('weight')
  @new_parcel = Parcel.new(@height, @width, @depth, @weight)
  @volume = @new_parcel.volume()
  @final_price = @new_parcel.cost_to_ship(params.fetch('delivery'))
  erb(:results)
end
