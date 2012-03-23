require 'spec_helper'

describe "departments/edit" do
  before(:each) do
    @department = assign(:department, stub_model(Department))
  end

  it "renders the edit department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => departments_path(@department), :method => "post" do
    end
  end
end
