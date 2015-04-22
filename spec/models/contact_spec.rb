# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  phone      :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Contact do

  it 'requires a name' do
    contact = Contact.new(name: '')
    contact.valid?
    expect(contact.errors[:name].any?).to be_true
  end

  it 'requires an email' do
    contact = Contact.new(email: '')
    contact.valid?
    expect(contact.errors[:email].any?).to be_true
  end

  it 'requires a message' do
    contact = Contact.new(message: '')
    contact.valid?
    expect(contact.errors[:message].any?).to be_true
  end

  it 'accepts a properly formatted email' do
    emails = %w[user@example.com first.last@example.com]
    emails.each do |email|
      contact = Contact.new(email: email)
      contact.valid?
      expect(contact.errors[:email].any?).to be_false
    end
  end

  it 'rejects an improperly formatted email' do
    emails = %w[@ user@ @example.com]
    emails.each do |email|
      contact = Contact.new(email: email)
      contact.valid?
      expect(contact.errors[:email].any?).to be_true
    end
  end

  it 'is valid with example attributes' do
    contact = Contact.new(contact_attributes)
    expect(contact.valid?).to be_true
  end


end
