class Map

  require 'choro_map.rb'

  #generates a choromap to be sent back to the user.
  #currently just overwrites a temp file each time
  def self.generate_map file, type, color_scheme
    map = Choromap.new(file.path, :color_scheme => color_scheme)
    svg = map.choropleth! type
    File.open("#{RAILS_ROOT}/tmp/map.svg", "w+") { |f| f.write(svg.to_s) }
  end

  COLORS =
    [['Yellow/Orange/Red', 'YlOrRd'],
    ['Red/Purple', 'RdPu'],
    ['Yellow/Green', 'YlGn'],
    ['Yellow/Green/Blue', 'YlGnBu'],
    ['Yellow/Orange/Brown', 'YlOrBr']]

  MAP_TYPES =
    [['States','usa'], ['Counties', 'counties']]

end
