require_relative '../spec_helper'

feature 'messages functions' do
  scenario 'a user can add a message' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'

    click_on 'Messages'
    click_on 'Add a Message'
    
    fill_in 'Content', with: 'HALLO?!'
    click_on 'Send'
    
    expect(page).to have_content 'HALLO?!'
  end
end