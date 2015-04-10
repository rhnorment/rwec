class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter       :set_global_vars

  private

  def set_global_vars
    @company_name = 'Rivendell Education Company'
    @phone_number = '952-996-1451'
    @inquiry_email = 'inquiries@rivendelleducation.com'
    @sdc_url = 'http://sdcc.edu'
    @wasc_url = 'http://www.wascsenior.org'
    @twitter_url = 'https://twitter.com/RivendellSanct'
    @facebook_url = 'https://www.facebook.com/rivendellsanctuary'
    @pinterest_url = 'https://www.pinterest.com/rivendellsanct/'
    @google_plus_url = 'https://plus.google.com/108374067538365440572/posts'
  end


end
