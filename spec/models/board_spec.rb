require 'rails_helper'

RSpec.describe Board, type: :model do
  describe '#create' do
  before do
    @user = FactoryBot.build(:user)
  end

    describe 'ユーザー新規登録' do

        context 'ユーザー情報' do
          it '全ての項目が存在すれば登録できる' do
            expect(@user).to be_valid
          end
   
end
