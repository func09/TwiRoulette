require 'spec_helper'

describe Message do
  
  context 'マッチング処理（Message.match_all）' do
    context '抽選待ちの人数が0人だったなら、' do
      it 'マッチングの数が増えないこと'
    end
    context '抽選待ちの人数が偶数人だったなら、' do
      it '余りがでないこと'
    end
    context '抽選待ちの人数が奇数人だったなら、' do
      it '余りが１人でること'
    end
  end
  
end

# == Schema Information
#
# Table name: messages
#
#  id          :integer         not null, primary key
#  user_id     :integer         not null
#  body        :string(255)     not null
#  matching_id :integer
#  matched     :boolean
#  matched_at  :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

