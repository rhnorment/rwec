class PagesController < ApplicationController

  def home
    render layout: 'landing'
  end

  def about_us
    @body_id = 'about-us'
    @page_title = 'Our mission & vision'
  end

  def products
    @body_id = 'about-us'
    @page_title = 'Our products'
  end

  def services
    @body_id = 'about-us'
    @page_title = 'Our services'
  end

  def opportunities
    @body_id = 'about-us'
    @page_title = 'Grow with us'
  end

  def contact
    @page_title = 'Contact us'
  end

end
