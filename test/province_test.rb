gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test

  province_obj = Province.new(sample_province_data)

  producer_array = [
    {name: 'Byzantium', cost: 10, production: 9},
    {name: 'Attalia', cost: 12, production: 10},
    {name: 'Sinope', cost: 10, production: 6}
  ]

  describe "Class-Province: Member function(s)-" do
  
    it "has 'shortfall' function:" do
      def test_province_shortfall
        assert_equal(5, province_obj.shortfall)
      end
    end

    it "has 'add_producer' function:" do
      def test_province_add_producer 
        assert_equal(true, (province_obj.producers.eql? producer_array))
      end
    end

    it "has 'profit' function:" do
      def test_province_profit
        assert_equal(230,province_obj.profit)
      end
    end

    it "has 'demand_cost' function:" do
      def test_province_demand_cost
        assert_equal(270,province_obj.demand_cost)
      end
    end

    it "has 'demand_value' function:" do
      def test_province_demand_value
        assert_equal(500,province_obj.demand_value)
      end
    end

    it "has 'satisfied_demand' function:" do
      def test_province_satisfied_demand
        assert_equal(25,province_obj.satisfied_demand)
      end
    end

  end
  #END- Member Functions

end
