# coding: utf-8
# frozen_string_literal: true

require 'spec_helper.rb'

RSpec.describe CommonModels::UserApiKey, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to :platform }
    it { is_expected.to belong_to :user }
  end

  describe 'validations' do
    %w[token platform_id user_id].each do |field|
      it { is_expected.to validate_presence_of field }
    end
  end
end
