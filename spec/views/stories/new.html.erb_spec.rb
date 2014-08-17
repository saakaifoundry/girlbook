require 'rails_helper'

RSpec.describe "stories/new", :type => :view do
  before(:each) do
    assign(:story, Story.new(
      :title => "MyString",
      :token => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new story form" do
    render

    assert_select "form[action=?][method=?]", stories_path, "post" do

      assert_select "input#story_title[name=?]", "story[title]"

      assert_select "input#story_token[name=?]", "story[token]"

      assert_select "textarea#story_content[name=?]", "story[content]"
    end
  end
end
