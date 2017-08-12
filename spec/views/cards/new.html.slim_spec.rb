require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :title => "MyString",
      :url => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[title]"

      assert_select "input[name=?]", "card[url]"

      assert_select "input[name=?]", "card[text]"
    end
  end
end
