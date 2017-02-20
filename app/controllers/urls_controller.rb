class UrlsController < ApplicationController
  def new
    @shortened = Url.new
  end

  def create
    @shortened = Url.new params_url
    if @shortened.save
      flash[:shortened_id] = @shortened.id
      redirect_to new_url_url
    else
      render :action => "new"
    end
  end

  def show
    @shortened = Url.find(params[:id])
    redirect_to @shortened.url
  end


private
  def params_url
    params.require(:url).permit(:url)
  end
end
