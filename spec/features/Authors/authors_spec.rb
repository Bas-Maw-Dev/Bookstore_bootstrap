require 'rails_helper'
RSpec.describe 'Author' do
  context 'An author exists' do
    before do
      author = Author.create(first_name: 'William', second_name: 'Shakespeare')
      visit author_path(author)
    end
    it 'displays the authors name' do
      expect(page).to have_text('William Shakespeare')
    end
  end

  context 'An index of multiple authors exists' do
    before do
      author1 = Author.create(first_name: 'William', second_name: 'Shakespeare')
      author2 = Author.create(first_name: 'Charles', second_name: 'Baudelaire')
      visit authors_path
    end
    it 'displays the authors name' do
      expect(page).to have_text('William Shakespeare')
      expect(page).to have_text('Charles Baudelaire')
    end
  end
end
