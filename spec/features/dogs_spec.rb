require_relative '../spec_helper'

feature 'Dog functions' do
  scenario 'user can create a dog' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/dogs'
    click_link 'Create Dog'
    
    fill_in 'Dog Name', with: 'Scranton'
    fill_in 'Dog Breed', with: 'Dachshund'
    check 'Spayed/Neutered?'
    click_on 'Add Dog'
    
    expect(page).to have_content('Scranton')
  end
  
  scenario 'user can view a dog' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/dogs'
    click_link 'Create Dog'
    
    fill_in 'Dog Name', with: 'Zeus'
    fill_in 'Dog Breed', with: 'Catahoula Leopard Dog'
    check 'Spayed/Neutered?'
    click_on 'Add Dog'
    
    click_link 'Zeus'

    expect(page).to have_content('Zeus')
    expect(page).to have_content('Catahoula Leopard Dog')
    expect(page).to have_content('Spayed/Neutered')
  end
  
  scenario 'user can edit a dog' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/'
    click_link 'Dogs'
    click_link 'Create Dog'
    
    fill_in 'Dog Name', with: 'Veda'
    fill_in 'Dog Breed', with: 'Pomeranian'
    uncheck 'Spayed/Neutered?'
    click_on 'Add Dog'
    
    click_link 'Veda'
    click_link 'Update Dog'
    
    fill_in 'Dog Breed', with: 'Chihuahua'
    click_on 'Update Dog'
    
    expect(page).to have_no_content('Pomeranian')
    expect(page).to have_content('Chihuahua')
  end
  
  scenario 'user can delete a dog' do
    visit '/'
    click_on 'Sign up'

    fill_in 'Email', with: 'Jenny@jenny.com'
    fill_in 'Password', with: 'jennyjenny1'
    fill_in 'Password confirmation', with: 'jennyjenny1'
    click_on 'Sign up'
    visit '/'
    click_link 'Dogs'
    click_link 'Create Dog'
    
    fill_in 'Dog Name', with: 'Katie'
    fill_in 'Dog Breed', with: 'Sheltie'
    uncheck 'Spayed/Neutered'
    click_on 'Add Dog'
    
    click_link 'Katie'
    click_on 'Delete Dog'
    
    expect(page).to have_no_content('Katie')
  end
end