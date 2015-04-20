require 'spec_helper'

describe 'main navigation menu' do

  it 'contains links to the web pages' do
    visit root_url

    within('.nav') do
      expect(page).to have_link('Mission & Vision')
      expect(page).to have_link('Objectives')
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Investors')
      expect(page).to have_link('High School AA')
      expect(page).to have_link('College AA')
      expect(page).to have_link('College BA')
      expect(page).to have_link('Curriculum')
      expect(page).to have_link('How it works')
      expect(page).to have_link('Customers')
      expect(page).to have_link('Partners')
    end

    within('#footer-white') do
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Investors')
      expect(page).to have_link('Curriculum')
      expect(page).to have_link('Contact us')
      expect(page).to have_link('About')
      expect(page).to have_link('Solutions')
      expect(page).to have_link('Products')
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
      click_link('Mission & Vision')
      expect(current_path).to eq(about_mission_vision_path)

      click_link('Objectives')
      expect(current_path).to eq(about_objectives_path)

      click_link('Leadership')
      expect(current_path).to eq(about_leadership_path)

      click_link('Investors')
      expect(current_path).to eq(about_investors_path)

      click_link('High School AA')
      expect(current_path).to eq(solutions_high_school_path)

      click_link('College AA')
      expect(current_path).to eq(solutions_college_aa_path)

      click_link('College BA')
      expect(current_path).to eq(solutions_college_ba_path)

      click_link('Curriculum')
      expect(current_path).to eq(products_curriculum_path)

      click_link('How it works')
      expect(current_path).to eq(opportunities_how_it_works_path)

      click_link('Customers')
      expect(current_path).to eq(opportunities_customers_path)

      click_link('Partners')
      expect(current_path).to eq(opportunities_partners_path)
    end

    visit root_url

    within('#footer-white') do
      click_link('Leadership')
      expect(current_path).to eq(about_leadership_path)

      click_link('Investors')
      expect(current_path).to eq(about_investors_path)

      click_link('Curriculum')
      expect(current_path).to eq(products_curriculum_path)

      click_link('Contact us')
      expect(current_path).to eq(contact_path)

      click_link('About')
      expect(current_path).to eq(about_mission_vision_path)

      click_link('Solutions')
      expect(current_path).to eq(solutions_college_aa_path)

      click_link('Products')
      expect(current_path).to eq(products_curriculum_path)

      click_link('Opportunities')
      expect(current_path).to eq(opportunities_how_it_works_path)
    end

  end

end




