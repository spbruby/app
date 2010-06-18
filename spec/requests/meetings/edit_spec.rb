require 'spec_helper'

context 'Given there is a meeting' do
  before(:each) do
    @meeting = Meeting.make
  end

  context 'when I try to edit it' do
    before(:each) do
      visit admin_meetings_path
      click_link 'Изменить'

      fill_in 'Тема', :with => 'New Title'
      click_button 'Сохранить'
    end

    it 'should display a confirmation message' do
      response.should contain('Успешно обновили')
      response.should contain('New Title')
    end
  end
end
