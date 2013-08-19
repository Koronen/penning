require_relative '../unit_helper'

require_relative '../../helpers/url_helper'

describe UrlHelper do
  subject do
    klass = Class.new do
      include UrlHelper
    end
    klass.new
  end

  it 'generates an html ancor tag' do
    assert_equal '<a href="bar">foo</a>', subject.link_to('foo', 'bar')
  end

  it 'accepts a single html option' do
    assert_equal '<a href="bar" title="baz">foo</a>',
      subject.link_to('foo', 'bar', title: 'baz')
  end

  it 'accepts multiple html options' do
    assert_equal '<a href="bar" title="baz" class="garbage">foo</a>',
      subject.link_to('foo', 'bar', title: 'baz', class: 'garbage')
  end
end
