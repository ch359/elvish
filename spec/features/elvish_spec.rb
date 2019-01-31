feature 'it should translate into Elvish' do

  scenario 'it has a translate button' do
    visit '/'
    expect(page).to have_content "Welcome to the Elvish Translator"
    expect(page).to have_button 'Translate'
  end

  scenario 'it has a box for text to translate' do
    visit '/'
    expect(page).to have_field 'Enter text to translate'
    end


end