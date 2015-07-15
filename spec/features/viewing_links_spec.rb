
feature 'Viewing links' do

  scenario 'I can see existing links on the page' do
    Link.create(url: 'www.rubymonk.com',title: 'Ruby Monk', category: 'ruby' , topic: 'tutorial', description: 'useful for basics')
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Ruby Monk')
      expect(page).to have_content('www.rubymonk.com')
      expect(page).to have_content('ruby')
      expect(page).to have_content('tutorial')
      expect(page).to have_content('useful for basics')
    end



  end

end
