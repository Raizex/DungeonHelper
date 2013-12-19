require 'spec_helper'

describe "about_pages/new" do
  before(:each) do
    assign(:about_page, stub_model(AboutPage).as_new_record)
  end

  it "renders new about_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", about_pages_path, "post" do
    end
  end
end
