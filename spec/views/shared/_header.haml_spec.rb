require 'spec_helper'

describe "shared/_header.haml" do
  it "set the page title" do
    render :partial => 'shared/header'
    rendered.should contain("Let's walk the path together!")
  end
end