require 'spec_helper'

describe 'main navigation menu' do

  it 'contains links to the web pages' do
    visit root_url

    within('.nav') do
      expect(page).to have_link('About us')
      expect(page).to have_link('Our objectives')
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Investors')
      expect(page).to have_link('Program')
      expect(page).to have_link('Rivendell Program')
      expect(page).to have_link('Curriculum')
      expect(page).to have_link('Locations')
      expect(page).to have_link('Opportunities')
      expect(page).to have_link('Expansion plan')
      expect(page).to have_link('How it works')
      expect(page).to have_link('Apply for a license')
      expect(page).to have_link('Contact us')
    end

    within('#footer-white') do
      expect(page).to have_link('Leadership')
      expect(page).to have_link('Investors')
      expect(page).to have_link('Curriculum')
      expect(page).to have_link('Locations')
      expect(page).to have_link('About')
      expect(page).to have_link('Program')
      expect(page).to have_link('Opportunities')
      expect(page).to have_link('Contact us')
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
      click_link('Our objectives')
      expect(current_path).to eq(about_objectives_path)

      click_link('Leadership')
      expect(current_path).to eq(about_leadership_path)

      click_link('Investors')
      expect(current_path).to eq(about_investors_path)

      click_link('Rivendell Program')
      expect(current_path).to eq(program_path)

      click_link('Curriculum')
      expect(current_path).to eq(program_curriculum_path)

      click_link('Locations')
      expect(current_path).to eq(program_locations_path)

      click_link('Expansion plan')
      expect(current_path).to eq(opportunities_path)

      click_link('How it works')
      expect(current_path).to eq(opportunities_how_it_works_path)

      click_link('Apply for a license')
      expect(current_path).to eq(opportunities_application_path)

      click_link('Contact us')
      expect(current_path).to eq(contact_path)
    end

    visit root_url

    within('#footer-white') do
      click_link('Leadership')
      expect(current_path).to eq(about_leadership_path)

      click_link('Investors')
      expect(current_path).to eq(about_investors_path)

      click_link('Curriculum')
      expect(current_path).to eq(program_curriculum_path)

      click_link('Locations')
      expect(current_path).to eq(program_locations_path)

      click_link('About')
      expect(current_path).to eq(about_objectives_path)

      click_link('Program')
      expect(current_path).to eq(program_path)

      click_link('Opportunities')
      expect(current_path).to eq(opportunities_path)

      click_link('Contact us')
      expect(current_path).to eq(contact_path)
    end

  end

end




