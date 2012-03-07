require 'spec_helper'

describe "kindergartens/new" do
  before(:each) do
    assign(:kindergarten, stub_model(Kindergarten,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ).as_new_record)
  end

  it "renders new kindergarten form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kindergartens_path, :method => "post" do
      assert_select "input#kindergarten_name", :name => "kindergarten[name]"
      assert_select "input#kindergarten_email", :name => "kindergarten[email]"
      assert_select "input#kindergarten_phone", :name => "kindergarten[phone]"
    end
  end
end
