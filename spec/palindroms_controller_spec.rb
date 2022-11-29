# frozen_string_literal: true

require_relative 'spec_helper.rb'
require_relative 'rails_helper.rb'

# testing PalindromsController
RSpec.describe Lr8cController, type: :controller do
  context 'res_array function check' do
    it 'returns correct array' do
      expect(Lr8cController.result_array(11)).to eq([0, 1, 5, 6])
      expect(Lr8cController.result_array(0)).to eq([0])
      # expect(Lr8cController.result_array(-1)).to eq([])
    end
  end

  describe 'GET input' do
    context 'check index(main) page' do
      it 'has a 200 status code' do
        get :input
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET view' do
    context 'check result(table) page' do
      it 'has a 200 status code' do
        get :view
        expect(response.status).to eq(200)
      end
    end
  end
end

# RSpec.describe Lr8cController, type: :request do
  # context 'notice message test' do
    # it 'return notice message' do
      # get '/palindroms/result?num=-1'
      # expect(flash[:notice]).to eq('Вводите числа >= 0')
    # end
  # end
# end
