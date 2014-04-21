require 'spec_helper'

describe "articles/edit" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", article_path(@article), "post" do
      assert_select "input#article_name[name=?]", "article[name]"
      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
