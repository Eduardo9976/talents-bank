require 'rails_helper'

feature 'Admin log in' do
  scenario 'Successfully' do
    User.create!(email: 'user@user.com.br', password: '12345678')

    visit root_path
    click_on 'Área do candidato'
    fill_in 'Email', with: 'user@user.com.br'
    fill_in 'Senha', with: '12345678'
    click_on 'Log in'

    expect(page).to have_content('Login efetuado com sucesso!')
  end  
  scenario 'and log out' do
    User.create!(email: 'user@user.com', password: '12345678')
    
    visit root_path
    click_on 'Área do candidato'
    fill_in 'Email', with: 'user@user.com'
    fill_in 'Senha', with: '12345678'
    click_on 'Log in'
    click_on 'Logout'
    
    expect(page).to have_content('Saiu com sucesso')
  end  
end