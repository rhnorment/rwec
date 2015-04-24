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
  end

  def opportunities
  end

end
