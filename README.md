## Distance

Distance gem calculated the distance in miles between two objects having latitude,longitude attributes

This uses the ‘haversine’ formula to calculate the great-circle distance between two points – that is, the shortest distance over the earth’s surface – giving an ‘as-the-crow-flies’ distance between the points (ignoring any hills they fly over, of course!).
Haversine
formula: 	a = sin²(Δφ/2) + cos φ1 ⋅ cos φ2 ⋅ sin²(Δλ/2)
c = 2 ⋅ atan2( √a, √(1−a) )
d = R ⋅ c
where 	φ is latitude, λ is longitude, R is earth’s radius (mean radius = 6,371km);
note that angles need to be in radians to pass to trig functions!

…

## Usage

Require the Gem:

    require 'distance'

### Calculating distance in miles

  Example:

  Coordinate = Struct.new(:latitude, :longitude)
  from_location = Coordinate.new(37.519608,  -121.92349)
  to_location =  Coordinate.new(37.519677, -121.923814)
  distance_between(from_location,to_location) => 0.18
