require "spec_helper"

module Alchemy
  module Admin
    describe UserManualController do
      before { controller.stub(:authorize!) }

      describe "#show" do
        it "should check authorizations" do
          controller.should_receive(:authorize!).with(:show, :alchemy_admin_user_manual)
          controller.send :show
        end

        it "provides an instance of the UserManual::Creator" do
          controller.send :show
          expect(assigns :manual).to be_instance_of(UserManual::Creator)
        end

        context 'with Alchemy.admin_path customised' do
          before(:all) do
            Alchemy.admin_path = '/backend'
            Rails.application.reload_routes!
          end

          it 'uses the custom admin path' do
            expect(admin_usermanual_path).to eq('/backend/usermanual')
          end

          after(:all) do
            Alchemy.admin_path = '/admin'
            Rails.application.reload_routes!
          end
        end
      end
    end
  end
end
