require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      title: "",
      body: "",
      image: "",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
