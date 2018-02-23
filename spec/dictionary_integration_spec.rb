require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list of words', {:type => :feature}) do
  it ('puts') do
    visit('/')
    fill_in('word', :with => 'Hello')
    click_button('add the word')
    expect(page).to have_content('Hello')
  end
end
describe('go to word page', {:type => :feature}) do
  it ('puts') do
    visit('/')
    fill_in('word', :with => 'Chase')
    click_button('add the word')
    click_link('Chase')
    expect(page).to have_content('Add a definition')
  end
end
describe('add a definition', {:type => :feature}) do
  it ('puts') do
    visit('/')
    fill_in('word', :with => 'Dogs')
    click_button('add the word')
    save_and_open_page
    click_link('Dogs')

    fill_in('definition', :with => 'hot dog')
    fill_in('example', :with => 'Chase is a human hot dog')
    click_button('add the definition')
    expect(page).to have_content('Chase is a human hot dog')
  end
end
