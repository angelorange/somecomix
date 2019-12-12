require 'rails_helper'

feature 'registered user upload images' do
    scenario 'successfully' do
        user = User.create(email: 'eu@mail.com', password: '123456')
        comic = Comic.create(title: 'quadrinho')
        pagina = Page.new(text: 'um texto')

        login_as(user, :scope => :user)
        visit root_path
        click_on 'Comics'
        click_on comic.title
        click_on 'New Page'
        fill_in 'Text', with: pagina.text
        attach_file("page_image", Rails.root + "spec/fixtures/connections.png")
        click_on 'Send'
        save_page
        expect(page).to have_current_path(comic_page_path(comic.id, Page.first.id))
        expect(page).to have_content(pagina.text)
        expect(page).to have_css("img[src*='connections.png']")
    end
end