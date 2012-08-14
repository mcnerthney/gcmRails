require 'spec_helper'

describe "phones/edit" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :deviceid => "MyText",
      :gcmid => "MyText"
    ))
  end

  it "renders the edit phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phones_path(@phone), :method => "post" do
      assert_select "textarea#phone_deviceid", :name => "phone[deviceid]"
      assert_select "textarea#phone_gcmid", :name => "phone[gcmid]"
    end
  end
end
