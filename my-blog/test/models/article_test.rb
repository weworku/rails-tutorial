require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  test "should have a title" do
    article = Article.new(title: "Sample Title")
    assert article.valid?
  end

  test "should have a body" do
    article = Article.new(body: "Sample Body")
    assert article.valid?
  end
end
