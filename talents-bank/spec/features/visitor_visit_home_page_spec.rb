require 'rails_helper'

feature 'Visitor open home page' do
  scenario 'successfully' do
    visit root_path
    

    expect(page).to have_content('Talents Bank')
    expect(page).to have_content('O seu novo emprego está aqui!')
  end
end