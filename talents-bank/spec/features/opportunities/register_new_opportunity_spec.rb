require 'rails_helper'
feature ' Headhunter register new opportunity' do 
  scenario 'New opportunity' do

    visit root_path
    click_on 'Vagas'
    #click_on 'Registar nova vaga'

    expect(page).to have_link('Registar nova vaga', href: new_opportunity_path)

  end
  scenario 'Successfully' do
    

    visit root_path
    click_on 'Vagas'
    click_on 'Registar nova vaga'
    fill_in 'Título', with: 'Desenvolvedor'
    fill_in 'Descrição', with: 'Front-End'
    fill_in 'Habilidades', with: 'HTML5, CSS3, JavaScript'
    fill_in 'Salário', with: '3000.00'
    fill_in 'Nível', with: 'Junior'
    fill_in 'Região', with: 'Paulista'
    fill_in 'Data final da vaga', with: '20/05/2050'
    click_on 'Enviar'

    expect(page).to have_content('Desenvolvedor')
    expect(page).to have_content('Front-End')
    expect(page).to have_content('HTML5, CSS3, JavaScript')
    expect(page).to have_content('3000.00')
    expect(page).to have_content('Junior')
    expect(page).to have_content('Paulista')
    expect(page).to have_content('20/05/2050')
    #expect(page).to have_content('code')
  end  
end  