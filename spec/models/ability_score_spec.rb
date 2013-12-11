require "spec_helper"

describe AbilityScore do
  it "can be created" do
    cha = AbilityScore.create!(name: "Charisma", score: 10)
    dex = AbilityScore.create!(name: "Dexterity", score: 14)

    expect(AbilityScore.find(:all, order: :score)).to eq([cha, dex])
  end
end