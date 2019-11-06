require 'rails_helper'

feature 'CRUD of comics' do
  scenario '#index and #show successfully ' do
    comic = Comic.create(title: 'Quadrinho')

    visit root_path
    click_on 'Comics'
    click_on comic.title

    expect(page).to have_content(comic.title)
  end

  scenario '#new and #create successfully' do
    comic = Comic.new(title: 'Teste')

    visit root_path
    click_on 'Comics'
    click_on 'New Comic'
    fill_in 'Title', with: comic.title
    click_on 'Send'

    expect(page).to have_content('It was created successfully')
    expect(page).to have_content(comic.title)
  end

  scenario '#new and #create failed' do
    comic = Comic.new(title: ' ')

    visit root_path
    click_on 'Comics'
    click_on 'New Comic'
    fill_in 'Title', with: comic.title
    click_on 'Send'

    expect(page).not_to have_content('It was created successfully')
    expect(page).to have_content("can't be blank")
  end

  scenario '#edit and #update successfully' do
    comic = Comic.create(title: 'Teste')

    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on 'Edit'
    fill_in 'Title', with: 'puzzlesline'
    click_on 'Send'

    expect(page).to have_content('It was succesfully edited')
    expect(page).not_to have_content(comic.title)
    expect(page).to have_content('puzzlesline')
  end

  scenario '#delete successfully' do
    comic = Comic.create(title: 'Teste')

    visit root_path
    click_on 'Comics'
    click_on comic.title
    click_on 'Delete'

    expect(page).to have_content('It was deleted successfully')
    expect(page).not_to have_content(comic.title)
    expect(Comic.count).to eq(0)
  end
end

