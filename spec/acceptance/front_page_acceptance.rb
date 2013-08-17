require_relative '../acceptance_helper'

describe 'Front Page' do
  it 'should contain the phrase "Hello World"' do
    get '/'
    assert_includes last_response.body, 'Hello World'
  end
end
