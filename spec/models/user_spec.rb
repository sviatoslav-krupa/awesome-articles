# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  first_name :string           not null
#  last_name  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'factories' do
    it 'has a valid factory' do
      expect(build(:user)).to be_valid
    end

    context 'when an email is provided' do
      let(:user) { build(:user, first_name: 'John', last_name: 'Smith', email: 'test.user@example.com') }

      it 'sets the provided email' do
        expect(user.email).to eq('test.user@example.com')
      end
    end

    context 'when an email is not provided' do
      let(:user) { build(:user, first_name: 'John', last_name: 'Smith') }

      it "sets the email from the user's name" do
        expect(user.email).to eq('john.smith@example.com')
      end
    end
  end

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }

    context 'when an email is valid' do
      let(:user) { build(:user, email: 'test.user@example.com') }

      it 'validates the email format' do
        expect(user).to be_valid
      end
    end

    context 'when an email is invalid' do
      let(:user) { build(:user, email: 'test user') }

      it 'validates the email format' do
        expect(user).not_to be_valid
      end
    end
  end

  describe 'methods' do
    let!(:user) { build(:user, first_name: 'Test', last_name: 'User') }

    it "returns the user's full name" do
      expect(user.full_name).to eq('Test User')
    end
  end
end
