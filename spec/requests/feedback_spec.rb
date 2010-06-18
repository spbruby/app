require 'spec_helper'

context "When I feel like sending some feedback" do
  before(:each) do
    visit new_feedback_message_path
  end

  context 'and I fill in all requried details' do
    before(:each) do
      fill_in 'Имя', :with => 'Name'
      fill_in :email, :with => 'email@address.com'
      fill_in 'Сообщение', :with => 'Hello World'
      click_button 'Отправить'
    end

    it 'should send the message and display a confirmation message' do
      email = ActionMailer::Base.deliveries.last
      email.to.should == ['admin@spbruby.org']
      email.subject.should == 'Feedback from Name'
      email.from.should == ['email@address.com']
      response.should contain('Сообщение было отправлено')
    end
  end
end
