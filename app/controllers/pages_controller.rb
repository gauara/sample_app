class PagesController < ApplicationController
  def home
    @title="Home"
    #render :text => "This could be the try text "
  end

  def contact
    @title="Contact"
  end

  def about
    @title="About"
  end
end
