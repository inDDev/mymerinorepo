class DownloadsController < ApplicationController
  def index
  	@downloads = Download.order(:name)
  end

  def show 
  	@download = Download.find(params[:id])
  end

end
