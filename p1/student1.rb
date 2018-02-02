require "minitest/autorun"
require_relative "wordnet.rb"

$VALID_SYNSETS = "inputs/public_synsets_valid"
$INVALID_SYNSETS = "inputs/public_synsets_invalid"
$VALID_HYPERNYMS = "inputs/public_hypernyms_valid"
$INVALID_HYPERNYMS = "inputs/public_hypernyms_invalid"

class PublicTests < Minitest::Test
    def setup
        @synsets = Synsets.new
        @hypernyms = Hypernyms.new
    end

    def test_public_synsets_add
        assert_equal(true, @synsets.addSet(0, ["a"]))
        assert_equal(true, @synsets.addSet(1, ["a", "b", "c"]))
        assert_equal(false, @synsets.addSet(-1, ["invalid"]))
    end


end
