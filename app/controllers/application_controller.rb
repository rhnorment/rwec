class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter       :set_global_vars

  private

  def set_global_vars
    @company_name = 'Rivendell Education Company'
    @phone_number = '952-996-1451'
    @inquiry_email = 'inquiries@rivendelleducation.com'
    @twitter_url = 'https://twitter.com/RivendellSanct'
    @facebook_url = 'https://www.facebook.com/rivendellsanctuary'
    @pinterest_url = 'https://www.pinterest.com/rivendellsanct/'
    @solution_1_name = 'High School AA'
    @solution_2_name = 'College AA'
    @solution_3_name = 'College BA'
  end


end
