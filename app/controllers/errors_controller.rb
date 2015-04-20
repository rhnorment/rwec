class ErrorsController < ApplicationController

  layout    'errors'

  def not_found
  end

  def unprocessable
  end

  def server_error
  end

end
