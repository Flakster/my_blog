require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      name: "",
      priority: "",
      article: nil
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input[name=?]", "category[name]"

      assert_select "input[name=?]", "category[priority]"

      assert_select "input[name=?]", "category[article_id]"
    end
  end
end
