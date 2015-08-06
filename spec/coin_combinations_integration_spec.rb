require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The coin combination path', {:type => :feature}) do
  it('processes an amount in cents and returns the least amount of coins that make up the cent amount') do
    visit('/')
    fill_in('change', :with => 53)
    click_button('Get Change!')
    save_and_open_page
    expect(page).to have_content("2 quarter and 3 pennies")
  end
end
