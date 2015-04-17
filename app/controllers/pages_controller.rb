class PagesController < ApplicationController

  def home
    render layout: 'landing'
  end

  def about
    @page_title = 'About us'
  end

  def leadership
    @page_title = 'Leadership'
  end

  def objectives
    @page_title = 'Our objectives'
  end

  def investors
    @page_title = 'Investors'
  end

  def program

  end

  def curriculum

  end

  def locations
    @page_title = 'Our locations'
  end

  def expansion

  end

  def contact
    @page_title = 'Contact us'
  end

end
