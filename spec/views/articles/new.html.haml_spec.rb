require 'spec_helper'

describe "articles/new" do
  before(:each) do
    assign(:article, stub_model(Article,
      :name => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", articles_path, "post" do
      assert_select "input#article_name[name=?]", "article[name]"
      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
