require 'spec_helper'

describe ErrorsController do

  describe 'GET not_found' do
    it 'returns http success' do
      get 'not_found'
      response.should be_success
    end
  end

  describe 'GET unprocessable' do
    it 'returns http success' do
      get 'unprocessable'
      response.should be_success
    end
  end

  describe 'GET server_error' do
    it 'returns http success' do
      get 'server_error'
      response.should be_success
    end
  end

end
