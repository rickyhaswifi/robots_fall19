require 'rails_helper'

RSpec.describe Robot, type: :model do
  
  describe 'info' do
    it 'robot is friendly' do
      # robot = Robot.create(name: 'Arnold', serial: '1234', friendly: true)
      # expect(robot.greet).to eq('Hello')
      expect(FactoryBot.create(:robot).greets).to eq('Hello')
    end

    it 'robot is not friendly' do
      # robot = Robot.create(name: 'Arnold', serial: '1234', friendly: false)
      # expect(robot.greet).to eq('Put the cookie down')
      expect(FactoryBot.create(:robot, friendly: false).greets).to eq('Put the cookie down')
    end
  end

  describe 'inventor' do
    expect(FactoryBot.attributes_for(FactoryBot.create(:robot)).inventor_id).to eq(1) 
  end
end