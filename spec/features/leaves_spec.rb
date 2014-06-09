require_relative '../spec_helper'

feature 'user functions' do
  scenario 'a user can add a city' do
    visit '/'
    click_on 'leaves'
    click_on 'Add a Leaf'
    
    fill_in 'Color', with: 'Brown'
    fill_in 'Shape', with: 'Round'
    check 'Brittle?'
    click_on 'Add This Leaf'
    
    expect(page).to have_content 'Brown'
    expect(page).to have_content 'Round'
    expect(page).to have_content 'Brittle'
  end
end