gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/producer'

class ProducerTest < Minitest::Test

  class ProvinceFake
    attr_accessor :total_production

    def initialize
    @total_production = 0
    end

  end

  producer_data = {
    name: 'Byzantium', cost: 10, production: 9
  }

  producer_obj = Producer.new(ProvinceFake.new, producer_data)

  describe "Class-Producer: Member function(s)-" do
  
    it "has 'production=' function:" do
      def test_producer_production
        producer_obj.production
        assert_equal(9, producer_obj.province.total_production)
      end
    end

  end
  #END- Member Functions

end
