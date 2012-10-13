require "spec_helper"
require "clearance/testing"

describe PlansController do
  describe "#create" do
    it "saves new plan with publisher ID" do
      user = stub(id: 123)
      sign_in_as user

      post :create, {plan: {name: "Test Plan"}}

      Plan.first.publisher_id.should == user.id
    end
  end
end
