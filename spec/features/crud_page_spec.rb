require 'rails_helper'

feature 'CRUD of page' do
  scenario '#index and #show successfully ' do
    comic = Comic.create(title: 'quadrinho')
    page = Page.create(text: 'um texto', comic: comic)

    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on page.id

    expect(page).to have_content(page.text)
  end
end