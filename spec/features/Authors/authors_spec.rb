require 'rails_helper'
RSpec.describe 'Author' do
  context 'An author exists' do
    before do
      author = Author.create(first_name: 'William', second_name: 'Shakespeare')
      visit authors_show
    end
    it 'displays the authors name' do
      expect(page).to have_text('William Shakespeare')
    end
  end
end
