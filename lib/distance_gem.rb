module Distance

  # Find the distance between two latitude,longitude objects
  #
  # @param {latitude:Float,longitude:Float},{latitude:Float,longitude:Float}
  # @return Float
  #
  # @example
  #   Coordinate = Struct.new(:latitude, :longitude)
  #   from_location = Coordinate.new(37.519608,  -121.92349)
  #   to_location =  Coordinate.new(37.519677, -121.923814)
  #   distance_between(from_location,to_location) #=> 0.18

  def distance_between(from, to)
    loc1 = [from.latitude,from.longitude]
    loc2 = [to.latitude,to.longitude]
    rad_per_deg = Math::PI/180  # PI / 180
    rkm = 6371                  # Earth radius in kilometers
    rm = rkm * 1000             # Radius in meters

    dlat_rad = (loc2[0]-loc1[0]) * rad_per_deg  # Delta, converted to rad
    dlon_rad = (loc2[1]-loc1[1]) * rad_per_deg

    lat1_rad, lon1_rad = loc1.map {|i| i * rad_per_deg }
    lat2_rad, lon2_rad = loc2.map {|i| i * rad_per_deg }

    a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
    c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))

    (rm * c)/1609.344 # Delta in miles
  end
end
