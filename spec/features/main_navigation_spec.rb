require 'spec_helper'

describe 'main navigation menu' do

  it 'contains links to the web pages' do
    visit root_url

    within('.nav') do
      expect(page).to have_link('About')
      expect(page).to have_link('Products')
      expect(page).to have_link('Services')
      expect(page).to have_link('Opportunities')
    end

    within('#footer-white') do
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Investors')
      expect(page).to have_link('Curriculum')
      expect(page).to have_link('Contact us')
      expect(page).to have_link('About')
      expect(page).to have_link('Products')
      expect(page).to have_link('Services')
      expect(page).to have_link('Opportunities')
      expect(page).to have_link('Twitter')
      expect(page).to have_link('Facebook')
      expect(page).to have_link('Pinterest')
      expect(page).to have_field('email')
      expect(page).to have_link('Red Sherpa')
    end

  end

  it 'provides access to the appropriate internal pages' do
    visit root_url

    within('.nav') do

      click_link('About')
      expect(current_path).to eq(about_path)

      click_link('Products')
      expect(current_path).to eq(products_path)

      click_link('Services')
      expect(current_path).to eq(services_path)

      click_link('Opportunities')
      expect(current_path).to eq(opportunities_path)
    end

    visit root_url

    within('#footer-white') do
      click_link('Leadership')
      expect(current_path).to eq(about_path)

      click_link('Investors')
      expect(current_path).to eq(about_path)

      click_link('Curriculum')
      expect(current_path).to eq(products_path)

      click_link('Contact us')
      expect(current_path).to eq(contact_path)

      click_link('About')
      expect(current_path).to eq(about_path)

      click_link('Products')
      expect(current_path).to eq(products_path)

      click_link('Services')
      expect(current_path).to eq(services_path)

      click_link('Opportunities')
      expect(current_path).to eq(opportunities_path)
    end

  end

end




