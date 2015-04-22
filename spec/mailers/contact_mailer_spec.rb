require 'spec_helper'

describe ContactMailer do

  context 'when making an inquiry on the web site' do

    before do
      @contact = Contact.new(contact_attributes)
    end

    describe 'contact_confirmation' do
      let(:mail) { ContactMailer.contact_confirmation(@contact) }

      it 'renders the headers' do
        mail.subject.should eq('Thank you for inquiring about Rivendell Education Company')
        mail.to.should eq([@contact.email])
        mail.from.should eq(['info@rivendellsanctuary.com'])
      end

      it 'renders the body' do
        mail.body.encoded.should include(@contact.name)
      end
    end

    describe 'internal_confiramtion' do
      let(:mail) { ContactMailer.internal_confirmation(@contact) }

      it 'renders the headers' do
        mail.subject.should eq('REC WEBSITE INQUIRY -- URGENT')
        mail.to.should eq(['info@rivendellsanctuary.com'])
        mail.from.should eq(['info@rivendellsanctuary.com'])
      end

      it 'renders the body' do
        mail.body.encoded.should include(@contact.name)
        mail.body.encoded.should include(@contact.email)
        mail.body.encoded.should include(@contact.phone)
        mail.body.encoded.should include(@contact.message)
      end
    end

  end



end
