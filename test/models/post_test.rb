require "test_helper"

class PostTest < ActiveSupport::TestCase
require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(
      title: "Test Title",
      content: "This is the content of the test post.",
      published_at: Time.current
    )
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = ""
    assert_not @post.valid?
  end

  test "content should be present" do
    @post.content = ""
    assert_not @post.valid?
  end

  test "can create a post" do
    assert_difference "Post.count", 1 do
      @post.save
    end
  end

  test "can read a post" do
    @post.save
    found_post = Post.i18n.find_by(title: "Test Title")
    assert_equal @post.content, found_post.content
  end

  test "can update a post" do
    @post.save
    @post.update(title: "Updated Title")
    assert_equal "Updated Title", @post.reload.title
  end

  test "can destroy a post" do
    @post.save
    assert_difference "Post.count", -1 do
      @post.destroy
    end
  end
end

end
