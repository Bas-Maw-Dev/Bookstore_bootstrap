# require 'rails_helper'
# RSpec.describe 'Book' do
#   context 'A book exists' do
#     before do
#       book = Book.create(title: 'The Tempest', year_published: 1611)
#       visit book_path(book)
#     end
#     it 'displays the book' do
#       expect(page).to have_text('The Tempest')
#       expect(page).to have_text('published 1611')
#     end  
#   end
# end