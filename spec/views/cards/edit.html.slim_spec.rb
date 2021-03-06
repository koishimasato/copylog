require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :title => "MyString",
      :url => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input[name=?]", "card[title]"

      assert_select "input[name=?]", "card[url]"

      assert_select "input[name=?]", "card[text]"
    end
  end
end
