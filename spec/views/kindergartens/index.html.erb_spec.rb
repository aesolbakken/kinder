require 'spec_helper'

describe "kindergartens/index" do
  before(:each) do
    assign(:kindergartens, [
      stub_model(Kindergarten,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      ),
      stub_model(Kindergarten,
        :name => "Name",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of kindergartens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
