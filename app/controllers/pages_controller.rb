class PagesController < ApplicationController

  def home

  end

  def about
    @page_title = 'About us'
  end

  def leadership
    @page_title = 'Leadership'
  end

  def purpose
    @page_title = 'Our purpose'
  end

  def accreditation
    @page_title = 'Accreditation'
  end

  def locations
    @page_title = 'Our locations'
  end

  def investors
    @page_title = 'Investors'
  end

  def contact
    @page_title = 'Contact us'
  end

end
