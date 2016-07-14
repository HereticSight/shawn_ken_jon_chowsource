require 'rails_helper'

describe Category do
  let(:category) {Category.new}

  describe "category attributes" do
    it "does not save if there is no name" do
      expect {category.save}.to raise_error
    end
  end
end


