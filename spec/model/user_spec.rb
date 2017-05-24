require 'rails_helper'

RSpec.describe User do
  it "creates a user as a lord" do
    lord = User.create(name: "Eddard Stark",
                       class: 2,
                       role: 1,
                       living: 1,
                       sword_id: 1,
                       house_id: 1,
                       city_id: 1)

    expect(lord.role).to eq("lord")
    expect(lord.lord?).to be_truthy
  end

  it "creates a user as a smith" do
    smith = User.create(name: "Tobho Mott",
                        class: 2,
                        role: 0,
                        living: 1,
                        city_id: 1)

    expect(smith.role).to eq("smith")
    expect(smith.lord?).to be_falsy
    expect(smith.smith?).to be_truthy
  end
end
