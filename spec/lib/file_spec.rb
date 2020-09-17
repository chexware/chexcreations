require "rails_helper"

RSpec.describe "file" do
  it "reads sample image" do
    expect(file_fixture("chex-logo-small.png").size).to eq(19916)
  end
end