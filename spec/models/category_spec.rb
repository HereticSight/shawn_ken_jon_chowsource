require 'rails_helper'

describe Category do
  let(:category) {Category.new}

  describe "category attributes"
    it "does not save if there is no name"
      expect {category.save}.to raise_error
end


