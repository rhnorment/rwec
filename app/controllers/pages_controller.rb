class PagesController < ApplicationController

  def coming_soon
    render layout: 'coming_soon'
  end

  def home
    render layout: 'landing'
  end

  def about_us
    @body_id = 'about-us'
  end

  def products
    @body_id = 'features'
  end

  def services
    @body_id = 'services'
  end

  def opportunities
    @body_id = 'portfolio'
  end

end
