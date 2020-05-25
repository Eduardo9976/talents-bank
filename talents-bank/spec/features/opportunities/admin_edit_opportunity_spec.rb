require 'rails_helper'
feature 'Admin edit and update opportunity' do
  scenario 'Create opportunity' do
    oportunidade = create(:opportunity)
    other_oportunity = create(:opportunity)

    visit opportunity_path(id: '1' )
    
    expect(page).to have_content'Desenvolvedor 1'
    expect(page).to have_content'Back-end'
    expect(page).to have_content'Nível: Junior'
    expect(page).not_to have_content 'Desenvolvedor 2'

  end
  scenario 'Successfully' do
    oportunidade = create(:opportunity)

    visit opportunity_path(id: '1' )
    click_on 'Editar'
    fill_in 'Nível', with: 'Pleno'
    click_on 'Enviar'

    expect(page).to have_content'Desenvolvedor 3'
    expect(page).to have_content'Back-end'
    expect(page).to have_content'Nível: Pleno'
  end
end