require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/photos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "create" do
    assert_difference "Photo.count", 1 do
      post "/photos.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end
end