require 'spec_helper'

describe BootstrapHelper::Helper do
  describe "yield_or_default" do
    it "should return yield_name" do
      yield_or_default(:xxx).should == :xxx
    end

    it "should return default message" do
      yield_or_default(nil).should == ""
    end

  end

  describe "render_page_title" do
    it "should return 'SITENAME' when @page_title and SITE_NAME not given" do
      render_page_title.should == "<title>SITE_NAME</title>"
    end

    it "should return 'SITENAME' when @page_title not given" do
      SITE_NAME = "Foo"
      render_page_title.should == "<title>Foo</title>"
    end

    it "should return @page_title when @page_title is given" do
      @page_title = "Bar"
      render_page_title.should == "<title>Foo | Bar</title>"
    end
  end

  describe "render_body_tag" do
    pending
  end

  describe "notice_message" do
    pending
  end

  describe "render_list" do
    pending
  end
end
