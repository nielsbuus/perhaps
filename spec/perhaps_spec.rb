require 'perhaps'

describe Perhaps do

  it 'should have perhaps defined' do
    self.should respond_to :perhaps
  end

  it 'should have perhaps aliased as maybe' do
    self.should respond_to :maybe
  end

  it 'should accept no parameters' do
    self.should respond_to(:perhaps).with(0).arguments
  end

  it 'should accept one argument' do
    self.should respond_to(:perhaps).with(1).argument
  end

  it 'should raise error for non-numeric arguments' do
    expect {self.perhaps("you could") {"do"}}.to raise_error(ArgumentError)
  end

  it 'should raise error for numeric arguments outside 0..1 range' do
    expect {self.perhaps(1.5) {"do"}}.to raise_error(ArgumentError)
  end

  it 'should most certainly run a block with maximum probability' do
    subject = "case"
    perhaps 1 do
      subject.upcase!
    end
    subject.should eql 'CASE'
  end

  it 'should certainly not run a block with no probability' do
    subject = "case"
    perhaps 0 do
      subject.upcase!
    end
    subject.should eql 'case'
  end

  it 'might run a block with default probability' do
    subject = "case"
    perhaps do
      subject.upcase!
    end
    ["case", "CASE"].should include subject
  end

end
