# frozen_string_literal: true

require 'rails_helper'

describe HomeController, type: :controller do
  describe 'GET #main' do
    it 'has a success http status' do
      get :main
      expect(response).to have_http_status(:success)
    end

    it 'renders the main template' do
      get :main
      expect(response).to render_template('main')
    end
  end
end
