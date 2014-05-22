require_relative '../spec_helper'

feature 'cities functions' do
  scenario 'user can add city' do
    visit '/'
    click_on 'Cities'
    click_on 'Create City'

    fill_in 'City Name', with: 'Detroit'
    fill_in 'State', with: 'Michigan'
    select 'Eastern', :from => 'Please select a time zone'
    click_on 'Add City'
    expect(page).to have_content 'Detroit'
  end
  
  scenario 'user can view a city' do
    visit '/'
    click_on 'Cities'
    click_on 'Create City'
    
    fill_in 'City Name', with: 'Rochester Hills'
    fill_in 'State', with: 'Michigan'
    select 'Eastern', :from => 'Please select a time zone'
    click_on 'Add City'
    
    click_on 'Rochester Hills'
    expect(page).to have_content 'Rochester Hills'
    expect(page).to have_content 'Michigan'
    expect(page).to have_content 'Eastern'
  end
  
  scenario 'user can edit a city' do
    visit '/'
    click_on 'Cities'
    click_on 'Create City'
    
    fill_in 'City Name', with: 'Las Vegas'
    fill_in 'State', with: 'Arizona'
    select 'Pacific', :from => 'Please select a time zone'
    click_on 'Add City'
    
    click_on 'Las Vegas'
    click_on 'Edit City'
    
    fill_in 'City Name', with: 'Phoenix'
    click_on 'Update City'
    
    expect(page).to have_content 'Phoenix'
    expect(page).to have_no_content 'Las Vegas'

  end
end