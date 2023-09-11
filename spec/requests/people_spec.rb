require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe "POST #create" do
    it "creates a new person" do
      expect {
        post :create, params: { person: { name: "Mark Essien", email: "mark@example.com", age: 30 } }
      }.to change(Person, :count).by(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe "GET #show" do
    it "returns a person's details" do
      person = FactoryBot.create(:person)
      get :show, params: { id: person.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    it "updates a person's details" do
      person = FactoryBot.create(:person)
      patch :update, params: { id: person.id, person: { name: "Updated Name", email: "updated@example.com", age: 35 } }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "deletes a person" do
      person = FactoryBot.create(:person)
      expect {
        delete :destroy, params: { id: person.id }
      }.to change(Person, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end
  end
end
