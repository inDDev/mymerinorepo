class DownloadsController < ApplicationController
  def show
  	@downloads = Download.all
  end
end
