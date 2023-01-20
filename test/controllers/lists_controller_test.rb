require "test_helper"

class ListsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/lists.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal List.count, data.length
  end

  test "create" do
    assert_difference "List.count", 1 do
      post "/lists.json", params: { item: "shower", description: "do it", priority: "low" }
      assert_response 200
    end
  end

  test "show" do
    get "/lists/#{lists.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "item", "description", "priority", "created_at", "updated_at"], data.keys
  end

  test "update" do
    list = List.first
    patch "/lists/#{list.id}.json", params: { item: "Updated item" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated item", data["item"]
    assert_equal list.description, data["description"]
    assert_equal list.priority, data["priority"]
  end

  test "destroy" do
    assert_difference "List.count", -1 do
      delete "/lists/#{lists.first.id}.json"
      assert_response 200
    end
  end
end
