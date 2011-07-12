require 'helper'

USER = 'humpydumpy'
PASS = 'testing'

class TestIdeoneRubyApi < Test::Unit::TestCase
  def test_initialize
    instance = Ideone.new
    assert_not_nil(instance)
    
    instance = Ideone.new(USER, PASS)
    assert_not_nil(instance)
  end

  def test_ideone_test
    instance = Ideone.new(USER, PASS)

    result = instance.test
    assert_not_nil result
  end

  def test_languages
    instance = Ideone.new(USER, PASS)

    result = instance.languages

    puts result
    assert_not_nil result
  end

  def test_create_submission
    instance = Ideone.new(USER, PASS)

    code = "puts 'hello, world'"
    result = instance.create_submission(code, 17)

    puts result
    assert_not_nil result
  end

  def test_submission_status
    instance = Ideone.new(USER, PASS)

    result = instance.submission_status("ZUIWF")
    puts result
    assert_not_nil result
  end
  
  def test_submission_details
    instance = Ideone.new(USER, PASS)

    result = instance.submission_details("ZUIWF")
    puts result
    assert_not_nil result
  end
end