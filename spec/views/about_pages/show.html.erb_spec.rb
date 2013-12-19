require 'spec_helper'

describe "about_pages/show" do
  before(:each) do
    @about_page = assign(:about_page, stub_model(AboutPage))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
