RSpec.describe School, type: :model do
  it { should validate_presence_of :name }
end
