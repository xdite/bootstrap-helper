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
    pending
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
