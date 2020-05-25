require 'rails_helper'
feature 'Delete opportunity' do
  scenario 'Create opportunity' do
    oportunidade = create(:opportunity)
    other_oportunity = create(:opportunity)

    visit opportunity_path(id: '1' )
    
    expect(page).to have_content'Desenvolvedor 1'
    expect(page).to have_content'Back-end'
    expect(page).to have_content'Nível: Junior'
    expect(page).not_to have_content 'Desenvolvedor 2'
  end
  scenario 'Delete opportunity' do
    oportunidade = create(:opportunity)
    other_oportunity = create(:opportunity)

    visit opportunity_path(id: '1' )
    
    expect(page).to have_content'Desenvolvedor 1'
    expect(page).to have_content'Back-end'
    expect(page).to have_content'Nível: Junior'
    expect(page).not_to have_content 'Desenvolvedor 2'
  end
end