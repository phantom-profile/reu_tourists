RSpec.describe Witcher, type: :model do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name).scoped_to(:nickname) }
end
