require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Users" do
    let (:user) { User.create(name:                  "Moo Moo",
                              email:                 "moo@moo.com",
                              password:              "123moo",
                              password_confirmation: "123moo"
                              ) }
    it "has a name" do
      expect(user.name).to eq "Moo Moo"
    end

    it "has an email" do
      expect(user.email).to eq "moo@moo.com"
    end

    it "has a password_digest" do
      expect(user.password_digest).to_not be nil
    end
  end
end
