require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
 test "unique_tag" do
 	quote = Quote.create(:author => "Tim Fletcher", :saying => "Working with tech is like living sci-fi." )
 	expected = "TF#" + quote.id.to_s
 	actual = quote.unique_tag

 	assert_equal expected, actual
 end
end
