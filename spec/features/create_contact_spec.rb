require 'spec_helper'

describe 'creating a new contact from the website' do

  it 'presents a contact for to the user' do
    visit new_contact_url

    expect(page).to have_field('Your name')
    expect(page).to have_field('Email address')
    expect(page).to have_field('Phone')
    expect(page).to have_field('Your message')
    expect(page).to have_button('Email us')
  end

  it 'allows the user to complete the form and send a message to Rivendell' do
    ActionMailer::Base.deliveries.clear

    visit new_contact_url

    fill_in 'Your name', with: 'Example User'
    fill_in 'Email address', with: 'user@example.com'
    fill_in 'Phone', with: '555-1212'
    fill_in 'Your message', with: 'I am an example user sending this message to Rivendell Education Company.'

    click_button 'Email us'

    expect(current_path).to eq(contacts_path)
    expect(page).to have_text('Thank you!')
    expect(page).to have_text('Thank you for inquiring about the Rivendell Education Company.  One of our staff will be in touch with you soon.')

    expect(ActionMailer::Base.deliveries.size).to eq(2)
  end

  it 'rejects the new contact for presents an option for the user to try again' do
    visit new_contact_url

    click_button('Email us')

    expect(current_path).to eq(contacts_path)
    expect(page).to have_text('Whoops!')
    expect(page).to have_text('There was a problem with your submission. Please press the back button and try again.')
  end

end