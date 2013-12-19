require 'spec_helper'

describe "about_pages/edit" do
  before(:each) do
    @about_page = assign(:about_page, stub_model(AboutPage))
  end

  it "renders the edit about_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", about_page_path(@about_page), "post" do
    end
  end
end
