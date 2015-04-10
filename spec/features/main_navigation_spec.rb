require 'spec_helper'

describe 'main navigation menu' do

  it 'contains links to the web pages' do

    visit root_url

    # top social media nav
    within('#social-nav-top') do
      expect(page).to have_link(@twitter_url)
      expect(page).to have_link(@facebook_url)
      expect(page).to have_link(@pinterest_url)
      expect(page).to have_link(@google_plus_url)
    end

    # header menu nav
    within('#header-nav') do
      expect(page).to have_link('Home')
      expect(page).to have_link('Contact')
    end

    # breadcrumbs nav
    within('.breadcrumbs') do
      expect(page).to have_text('Home')
    end

    within('#social-nav-bottom') do
      expect(page).to have_link(@twitter_url)
      expect(page).to have_link(@facebook_url)
      expect(page).to have_link(@pinterest_url)
      expect(page).to have_link(@google_plus_url)
    end

    within('.navbar-nav') do
      expect(page).to have_link('Our purpose')
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Accreditation')
      expect(page).to have_link('Locations')
      expect(page).to have_link('Investors')
      expect(page).to have_link('Contact')
    end

  end

  it 'provides access to the appropriate internal pages' do

    visit root_url

    # header menu nav
    within('#header-nav') do
      click_link('Home')
      expect(current_path).to eq(root_path)

      click_link('Contact')
      expect(current_path).to eq(contact_path)
    end

    within('.navbar-nav') do
      click_link('Our purpose')
      expect(current_path).to eq(about_purpose_path)

      click_link('Leadership')
      expect(current_path).to eq(about_leadership_path)

      click_link('Accreditation')
      expect(current_path).to eq(about_accreditation_path)

      click_link('Locations')
      expect(current_path).to eq(locations_path)

      click_link('Investors')
      expect(current_path).to eq(investors_path)

      click_link('Contact')
      expect(current_path).to eq(contact_path)
    end

  end


end




