class Admin::BrowserSearchController < ApplicationController
  def search
    respond_to do |format|
      format.js
    end
  end
end
