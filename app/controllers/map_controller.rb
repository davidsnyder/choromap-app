class MapController < ApplicationController

  def create
    Map.generate_map(params[:filename], params[:color_scheme])
    redirect_to show_path
  end

  def index

  end

  def show
    send_file "#{RAILS_ROOT}/tmp/map_choropleth.svg", :type => "image/svg+xml"
  end

  def sample
    send_file "#{RAILS_ROOT}/maps/us-pools.svg", :type => "image/svg+xml"
  end

  def sample_data
    send_file "#{RAILS_ROOT}/maps/fips-pools.tsv", :type => "application/tsv"
  end

end
