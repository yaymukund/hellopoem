shared_examples 'a paginated resource' do |resource_name|
  let(:limit) { 10 }
  let(:offset) { 0 }

  subject do
    resource # Make sure the `let` block executes.
    get :index, limit: limit, offset: offset, format: :json
    JSON.parse(response.body)[resource_name.to_s.pluralize]
  end

  it 'only returns 10 records maximum' do
    expect(subject).to have(10).items
  end

  context 'with a lower limit' do
    let(:limit) { 5 }

    it 'respects the limit parameter' do
      expect(subject).to have(5).items
    end
  end

  context 'with a higher limit' do
    let(:limit) { 15 }

    it 'does not let you exceed 10 records in one request' do
      expect(subject).to have(10).items
    end
  end
end
