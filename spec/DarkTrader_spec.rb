require_relative '../lib/DarkTrader'

# crypto_test = get_crypto_name


describe "test if the cryptocurrencys are there" do
  it "should return BTC" do    
    expect(get_crypto_name?("BTC")).to be true
  end
end

describe "test if the cryptocurrencys are there" do
  it "should return ETH" do    
    expect(get_crypto_name?("ETH")).to be true
  end
end