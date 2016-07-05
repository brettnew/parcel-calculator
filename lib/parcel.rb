class Parcel
  define_method(:initialize) do |height, width, depth, weight|
    @height = height.to_i
    @width = width.to_i
    @depth = depth.to_i
    @weight = weight.to_i
  end

  define_method(:volume) do
    @height * @width * @depth
 end
end
