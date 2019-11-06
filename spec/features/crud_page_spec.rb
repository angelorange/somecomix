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
end