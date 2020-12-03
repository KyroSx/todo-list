require 'rails_helper'

RSpec.describe TodoController, type: :request do
  let(:json) { JSON.parse(response.body)['data'] }

  describe 'POST /todos' do
    let(:todo_params) { { 'title' => RandomData.complete_name, 'completed' => false } }

    let(:call) { post '/todo', params: todo_params }

    it 'should create the todo if data is valid' do
      call
      expect(json['id']).not_to be_nil
      expect(json['title']).to eq todo_params['title']
    end
  end
end
