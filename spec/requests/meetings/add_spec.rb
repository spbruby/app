require 'spec_helper'

context 'When I go to the meetings admin page' do
  before(:each) do
    visit admin_meetings_path
  end

  context 'and try to add a new meeting' do
    before(:each) do
      click_link 'Добавить встречу'
    end

    context 'but do not enter all required details' do
      before(:each) do
        click_button 'Сохранить'
      end

      it 'should display error messages' do
        response.should contain("не может быть пустым")
      end
    end

    context 'and provide valid details' do
      before(:each) do
        fill_in 'Date', :with => '18 June 2010'
        fill_in 'Title', :with => 'We loooove (*squirt*) plataformatec!'
        fill_in 'Description', :with => 'Whatever!'
        click_button 'Сохранить'
      end

      it 'should display a confirmation message' do
        response.should contain('Успешно добавили Meeting')
        response.should contain('We loooove')
      end
    end
  end
end
