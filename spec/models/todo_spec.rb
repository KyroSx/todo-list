# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Todo, type: :model do
  context 'when missing attributes' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :completed }
  end
end
