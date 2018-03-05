require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest

  @sample_body = {data: {title: 'book title', author: 'John Doe'}}

  test "should post create with params" do
    post books_url, params: @sample_body
    assert_response :success
  end

  test "should post create with body" do
    post books_url, body: @sample_body
    assert_response :success
  end

end
