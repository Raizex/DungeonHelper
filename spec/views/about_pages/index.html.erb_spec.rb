require 'spec_helper'

describe "about_pages/index" do
  before(:each) do
    assign(:about_pages, [
      stub_model(AboutPage),
      stub_model(AboutPage)
    ])
  end

  it "renders a list of about_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
