require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET /" do
    it "returns http success" do
      get root_path
      expect(response).to have_http_status(:success)
    end
    it "タイトルが表示されること" do
      get root_path
      expect(response.body).to include "Home | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /home" do
    it "returns http success" do
      get static_pages_home_path
      expect(response).to have_http_status(:success)
    end
    it "タイトルが表示されること" do
      get static_pages_home_path
      expect(response.body).to include "Home | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /help" do
    it "returns http success" do
      get static_pages_help_path
      expect(response).to have_http_status(:success)
    end
    it "タイトルが表示されること" do
      get static_pages_help_path
      expect(response.body).to include "Help | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get static_pages_about_path
      expect(response).to have_http_status(:success)
    end
    it "タイトルが表示されること" do
      get static_pages_about_path
      expect(response.body).to include "About | Ruby on Rails Tutorial Sample App"
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get static_pages_contact_path
      expect(response).to have_http_status(:success)
    end
    it "タイトルが表示されること" do
      get static_pages_contact_path
      expect(response.body).to include "Contact | Ruby on Rails Tutorial Sample App"
    end
  end

end
