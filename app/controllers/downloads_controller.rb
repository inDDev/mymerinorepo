class DownloadsController < ApplicationController
  def index
  	if params[:download] and params[:download][:category_id]
  		@downloads = Download.search(params[:download][:category_id])
  	else
  		@downloads = Download.all.order("created_at DESC")
  	end 
  end

  def show 
  	@download = Download.find(params[:id])
  end

  def download_params
  	params.require(:download).permit(:name, :url, :category_id)
  end
end
