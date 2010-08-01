class MapController < ApplicationController

  def create
    Map.generate_map(params[:filename], params[:type], params[:color_scheme])
    redirect_to show_path
  end

  def index

  end

  def show
    send_file "#{RAILS_ROOT}/tmp/map.svg"
  end

end
