require 'spec_helper'
require 'cancan/matchers'

describe Alchemy::Permissions do
  subject { ability }

  let(:ability) { Alchemy::UserManual::Ability.new(user) }

  context "A guest user" do
    let(:user) { nil }

    it "can not see the user manual" do
      should_not be_able_to(:show, :alchemy_admin_user_manual)
    end
  end

  context "A member" do
    let(:user) { build_stubbed(:member_user) }

    it "can not see the user manual" do
      should_not be_able_to(:show, :alchemy_admin_user_manual)
    end
  end

  context "An author" do
    let(:user) { build_stubbed(:author_user) }

    it "can see the user manual" do
      should be_able_to(:show, :alchemy_admin_user_manual)
    end
  end

  context "An editor" do
    let(:user) { build_stubbed(:editor_user) }

    it "can see the user manual" do
      should be_able_to(:show, :alchemy_admin_user_manual)
    end
  end

  context "An admin" do
    let(:user) { build_stubbed(:admin_user) }

    it "can see the user manual" do
      should be_able_to(:show, :alchemy_admin_user_manual)
    end
  end

end
