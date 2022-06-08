require "test_helper"

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get premiere_page" do
    get book_premiere_page_url
    assert_response :success
  end
end
