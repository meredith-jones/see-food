require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it { should route(:get, '/users').to(action: :index) }
  it { should route(:get, '/posts/1').to(action: :show, id: 1) }

end 