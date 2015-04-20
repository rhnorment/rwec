class PagesController < ApplicationController

  def home
    render layout: 'landing'
  end

  def mission_vision
  end

  def leadership
  end

  def objectives
  end

  def investors
  end

  def high_school
  end

  def college_aa
  end

  def college_ba
  end

  def curriculum
  end

  def how_it_works
  end

  def customers
  end

  def partners
  end

  def contact
    @page_title = 'Contact us'
  end

end
