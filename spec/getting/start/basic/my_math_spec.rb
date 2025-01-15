require 'rspec'
require 'getting/start/demo2/basic/my_math'

RSpec.describe MyMath do
  it 'test add' do
    expect(MyMath.add(1, 2)).to eq(3)
  end

  it 'test subtract' do
    expect(MyMath.subtract(2, 1)).to eq(1)
  end

  it 'test multiply' do
    expect(MyMath.multiply(2, 1)).to eq(2)
  end

  it 'test divide' do
    expect(MyMath.divide(2, 1)).to eq(2)
  end

  it 'test power' do
    expect(MyMath.pow(2, 3)).to eq(8)
  end

  puts "Test MyMath success!"
end