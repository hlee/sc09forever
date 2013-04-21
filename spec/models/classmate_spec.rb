#encoding:utf-8
require 'spec_helper'

describe Classmate do
  let(:classmate) { build :classmate }
  it "passes validation with all valid informations" do
    expect(classmate).to be_valid
  end

  context "fails validation" do
    it "with a blank name" do
      classmate.name = ''
      expect(classmate.save).to be_false
    end

    it "with a blank email" do
      classmate.email = ''
      expect(classmate.save).to be_false
    end

    it "with a blank qq" do
      classmate.qq = ''
      expect(classmate.save).to be_false
    end

    it "with a blank description" do
      classmate.description = ''
      expect(classmate.save).to be_false
    end

    it "with not a email" do 
      classmate.email = '448951642#qq.com'
      expect(classmate.save).to be_false
    end

    it "name is short" do 
      classmate.name= '宋'
      expect(classmate.save).to be_false
    end

    it "name is too long" do 
      classmate.name= '宋佳洋宋佳洋宋佳洋宋加爱样宋加唉言给'
      expect(classmate.save).to be_false
    end

    it "description is to long" do 
        classmate.description = Array.new(600,"你好").join
        expect(classmate.save).to be_false
    end
  end
end
