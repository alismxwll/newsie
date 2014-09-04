require 'rails_helper'

describe Link do
  it 'will add one point to votes when upvoted' do
    link = Link.create({title: 'jobs', content: 'sol', vote: 1, url: 'www.goggle.com'})
    link.upvote
    expect(link.vote).to eq 2
  end
end
