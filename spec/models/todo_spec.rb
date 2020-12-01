require 'rails_helper'

RSpec.describe Todo, type: :model do
  let(:todo) { FactoryBot.create(:todo) }

  context 'when everything is ok' do
    it { expect(todo).to be_valid }
  end

  context 'when missing attributes' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :completed }
  end
end
