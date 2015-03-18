class StaticController < ApplicationController

  def home
    @page_title = 'Home'
  end

  def about
    @page_title = 'About us'
  end

  def leadership
    @page_title = 'Leadership'
  end



end
