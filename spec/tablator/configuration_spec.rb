require 'spec_helper'

describe 'Configurations' do
  subject { Class.new(Tablator::Configuration) }

  before(:all) do
    subject.create_options
  end

  context 'check options' do
    it 'should allow block level configuration' do
      expect { subject.configure { } }.to_not raise_error
    end

    it 'should raise an exception for an option that does not exist' do
      expect do
        subject.configure do |f|
          f.foo 'bar'
        end
      end.to raise_error
    end

    it 'should set options and return them correctly' do
      Tablator::Configuration::OPTIONS.each do |option|
        option = option.to_sym
      
        subject.configure do |f|
          f.send(option, 'bar')
        end

        subject.send(option).should eq 'bar'
      end
    end
  end
end