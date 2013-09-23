require 'spec_helper'

describe PoemsController do
  let(:user) { Fabricate(:user) }
  let(:poems) { Fabricate.times(10, :poem, user: user) }

  describe 'GET /poems' do
    subject do
      poems # Make sure we run the `let` block.
      get :index, format: :json
      JSON.parse(response.body)
    end

    it 'includes sideloaded records' do
      expect(subject).to include('poems', 'lines', 'stanzas')
    end

    it_behaves_like 'a paginated resource', :poem do
      let(:resource) { Fabricate.times(20, :poem, user: user) }
    end
  end
end
