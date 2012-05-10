class StaticPagesController < ApplicationController
  layout 'application'   # this is default anyway
  
  def home
    @app_type = "sample"
  end

  def help
  end
  
end
