ProspectRs::Application.routes.draw do

  match "/homepage" => "application#homepage"
  match "/subpage" => "application#subpage"

  root to: "application#homepage"

end
