class AboutPagesController < ApplicationController
  before_action :set_about_page, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login

  # GET /about_pages
  # GET /about_pages.json
  def index
  end

  
end