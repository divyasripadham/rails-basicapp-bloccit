require 'rails_helper'
include RandomData

RSpec.describe SponsoredPostsController, type: :controller do

  let (:my_topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
  let (:my_sponsoredpost) {my_topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 100)}

  describe "GET #show" do
    it "returns http success" do
      get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
       get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
       expect(response).to render_template :show
    end

     it "assigns my_post to @post" do
       get :show, topic_id: my_topic.id, id: my_sponsoredpost.id
       expect(assigns(:sponsoredpost)).to eq(my_sponsoredpost)
     end

  end

  describe "GET #new" do
    it "returns http success" do
      get :new, topic_id: my_topic.id
      expect(response).to have_http_status(:success)
    end
    it "renders the #new view" do
       get :new, topic_id: my_topic.id
       expect(response).to render_template :new
     end

     it "initializes @post" do
       get :new, topic_id: my_topic.id
       expect(assigns(:sponsoredpost)).not_to be_nil
     end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
      expect(response).to have_http_status(:success)
    end
    it "renders the #edit view" do
       get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
       expect(response).to render_template :edit
     end

     it "assigns sponsoredpost to be updated to @sponsoredpost" do
       get :edit, topic_id: my_topic.id, id: my_sponsoredpost.id
       spost_instance = assigns(:sponsoredpost)

       expect(spost_instance.id).to eq my_sponsoredpost.id
       expect(spost_instance.title).to eq my_sponsoredpost.title
       expect(spost_instance.body).to eq my_sponsoredpost.body
     end
  end
=begin
  describe "PUT update" do
     it "updates sponsoredpost with expected attributes" do
       new_title = RandomData.random_sentence
       new_body = RandomData.random_paragraph

       put :update, topic_id: my_topic.id, id: my_sponsoredpost.id, sponsoredpost: {title: new_title, body: new_body, price: 100}

       updated_post = assigns(:sponsoredpost)
       expect(updated_post.id).to eq my_sponsoredpost.id
       expect(updated_post.title).to eq new_title
       expect(updated_post.body).to eq new_body
     end

     it "redirects to the updated post" do
       new_title = RandomData.random_sentence
       new_body = RandomData.random_paragraph

       put :update, id: my_sponsoredpost.id, sponsoredpost: {title: new_title, body: new_body, price: 100}
       expect(response).to redirect_to my_sponsoredpost

       put :update, topic_id: my_topic.id, id: my_sponsoredpost.id, sponsoredpost: {title: new_title, body: new_body, price: 100}
       expect(response).to redirect_to [my_topic, my_sponsoredpost]
     end
   end
=end
end
