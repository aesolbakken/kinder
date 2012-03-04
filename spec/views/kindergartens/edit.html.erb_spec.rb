require 'spec_helper'

describe "kindergartens/edit" do
  before(:each) do
    @kindergarten = assign(:kindergarten, stub_model(Kindergarten,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit kindergarten form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kindergartens_path(@kindergarten), :method => "post" do
      assert_select "input#kindergarten_name", :name => "kindergarten[name]"
      assert_select "input#kindergarten_email", :name => "kindergarten[email]"
      assert_select "input#kindergarten_phone", :name => "kindergarten[phone]"
    end
  end
end
