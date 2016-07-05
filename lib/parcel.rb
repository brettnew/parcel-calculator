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
  define_method(:cost_to_ship) do |delivery|
    price = (self.volume())*(0.5) + @weight*(0.8)
    if (delivery=='overnight')
      price = price+30
    elsif (delivery=='second-day')
      price = price+10
    else
      price = price+2
    end
    price.to_f()
  end
end
