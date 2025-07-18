require "test_helper"

class PostsControllerTest  < ActionDispatch::IntegrationTest
  setup do
    @post = Post.create!(
      title: "Sample Title",
      content: "This is a sample content",
      published_at: Time.current
    )
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url, params: {
        post: {
          title: "New Post",
          content: "New content here",
          published_at: Time.current
        }
      }
    end

    assert_response :created
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: {
      post: {
        title: "Updated Title"
      }
    }
    @post.reload
    assert_equal "Updated Title", @post.title
    assert_response :success
  end

  test "should destroy post" do
    assert_difference("Post.count", -1) do
      delete post_url(@post)
    end
  end
end

