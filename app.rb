# require 'sinatra'
# require 'sinatra/reloader'
# require './lib/triangle'
# also_reload "lib/**/*.rb"
#
# get('/') do
#   erb(:index)
# end
#
# get('/results') do
#   @a = params.fetch('SideA')
#   @b = params.fetch('SideB')
#   @c = params.fetch('SideC')
#   @triangle_name = Triangle.new(@a,@b,@c).triangle()
#   erb(:results)
# end
