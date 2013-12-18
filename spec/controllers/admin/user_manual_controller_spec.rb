require "spec_helper"

module Alchemy
  module Admin
    describe UserManualController do
      describe "#show" do
        it "provides an instance of the UserManual::Creator" do
          controller.send :show
          expect(assigns :manual).to be_instance_of(UserManual::Creator)
        end
      end
    end
  end
end
