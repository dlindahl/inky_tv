class SalesService < NetworkExecutive::Channel

  schedule 'uncensored_reviews' do
    daily
  end

end