InkyTv::Application.routes.draw do
  mount NetworkExecutive::Engine => '/', as:'network_executive'

  match 'shows/:program_name' => 'shows#show'
end
