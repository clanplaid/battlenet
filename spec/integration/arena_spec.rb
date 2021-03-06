require 'spec_helper'

describe Battlenet::Modules::Arena do
  let(:api) { Battlenet.new }

  it "fetches arena data" do
    VCR.use_cassette('arena_fun_and_profit') do
      # Don't make fun of me >.<
      arena = api.arena 'nazjatar', '2v2', 'Fun And Profit'
      arena['sessionGamesPlayed'].should == 23
    end
  end
end
