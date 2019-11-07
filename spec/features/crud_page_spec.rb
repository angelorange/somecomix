require 'rails_helper'

feature 'CRUD of page' do
  scenario '#index and #show successfully ' do
    comic = Comic.create(title: 'quadrinho')
    pagina = Page.create(text: 'um texto', comic: comic)

    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on pagina.id

    expect(page).to have_content(pagina.text)
  end

  scenario '#new and #create successfully' do 
    comic = Comic.create(title: 'quadrinho')
    pagina = Page.new(text: 'um texto')

    visit root_path 
    click_on 'Comics'
    click_on comic.title
    click_on 'New Page'
    fill_in 'Text', with: pagina.text
    click_on 'Send'
    
    expect(page).to have_content('It was created successfully')
    expect(page).to have_content(pagina.text)
  end

  scenario '#edit and #update successfully' do
    comic = Comic.create(title: 'teste')
    pagina = Page.create(text: 'um texto', comic: comic)

    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on pagina.id
    click_on 'Edit'
    fill_in 'Title', with: 'puzzlesline'
    click_on 'Send'

    expect(page).to have_content('It was successfully edited')
    expect(page).not_to have_content(comic.title)
    expect(page).to have_content('puzzlesline')
  end

  scenario '#delete successfully' do
    comic = Comic.create(title: 'Teste')
    pagina = Page.create(text: 'um texto', comic: comic)
    comic2 = Comic.create(title: 'Test')
    pagina2 = Page.create(text: 'segundo text', comic: comic2)
    
    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on pagina.id
    click_on 'Delete'

    expect(page).to have_content('It was deleted successfully')
    expect(comic.page.count).to eq(0)
  end
end