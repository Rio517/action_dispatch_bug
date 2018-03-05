require 'test_helper'

class BooksCreateTest < ActionDispatch::IntegrationTest

  @sample_body = {data: {title: 'book title', author: 'John Doe'}}

  test "body in params keyword argument" do
    post '/books', params: @sample_body
    assert_response :success
  end

  # Of course, the following doesn't work.
  # test "body in body keyword argument" do
  #   post '/book', body: @sample_body
  #   assert_response :success
  # end
  #
  # ABOVE WOULD OUTPUT:
  # BooksCreateTest#test_body_in_body_keyword_argument:
  # ArgumentError: unknown keyword: body
  #     test/integration/books_create_test.rb:13:in `block in <class:BooksCreateTest>'

end
