require './lib/distance_gem'

describe "distance_gem" do
  include Distance
  describe "distance_between" do
    it "should calculate the distance between latlong locations" do
      Coordinate = Struct.new(:latitude, :longitude)
      from_location = Coordinate.new(37.519608,  -121.92349)
      to_location =  Coordinate.new(37.519677, -121.923814)
      distance = distance_between(from_location, to_location)
      expect(distance.round(3)).to eq(0.018)
    end
  end
end
