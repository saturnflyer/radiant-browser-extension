class Admin::BrowserController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def search
    model_name = params[:type].singularize.classify.constantize
    @assets = model_name.find(:all, :limit => 10)
    respond_to do |format|
      format.js
    end
  end
end
