require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :title => "Title",
        :url => "Url",
        :text => "Text"
      ),
      Card.create!(
        :title => "Title",
        :url => "Url",
        :text => "Text"
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
