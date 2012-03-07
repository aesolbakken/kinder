# encoding: UTF-8
require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe KindergartensController do

  before (:each) do
    @user = User.new(:first_name => 'Alf', :last_name => 'Solbakken', :email => "aesolbakken@gmail.com", :password => "hei12345", :password_confirmation => "hei12345")
    @user.save!
    sign_in :user, @user
  end

  # This should return the minimal set of attributes required to create a valid
  # Kindergarten. As you add validations to Kindergarten, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:name => 'jalla', :phone => 'balla'}
  end
  
  describe "GET 'index'" do
    it "should be successful" do
      get :index
      response.should be_success
    end
  end

  describe "GET index" do
    it "assigns all kindergartens as @kindergartens" do
      kindergarten = Kindergarten.create! valid_attributes
      get :index, {}
      assigns(:kindergartens).should eq([kindergarten])
    end
  end

  describe "GET show" do
    it "assigns the requested kindergarten as @kindergarten" do
      kindergarten = Kindergarten.create! valid_attributes
      get :show, {:id => kindergarten.to_param}
      assigns(:kindergarten).should eq(kindergarten)
    end
  end

  describe "GET new" do
    it "assigns a new kindergarten as @kindergarten" do
      get :new, {}
      assigns(:kindergarten).should be_a_new(Kindergarten)
    end
  end

  describe "GET edit" do
    it "assigns the requested kindergarten as @kindergarten" do
      kindergarten = Kindergarten.create! valid_attributes
      get :edit, {:id => kindergarten.to_param}
      assigns(:kindergarten).should eq(kindergarten)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Kindergarten" do
        expect {
          post :create, {:kindergarten => valid_attributes}
        }.to change(Kindergarten, :count).by(1)
      end

      it "assigns a newly created kindergarten as @kindergarten" do
        post :create, {:kindergarten => valid_attributes}
        assigns(:kindergarten).should be_a(Kindergarten)
        assigns(:kindergarten).should be_persisted
      end

      it "redirects to the created kindergarten" do
        post :create, {:kindergarten => valid_attributes}
        response.should redirect_to(Kindergarten.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved kindergarten as @kindergarten" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kindergarten.any_instance.stub(:save).and_return(false)
        post :create, {:kindergarten => {}}
        assigns(:kindergarten).should be_a_new(Kindergarten)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Kindergarten.any_instance.stub(:save).and_return(false)
        post :create, {:kindergarten => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested kindergarten" do
        kindergarten = Kindergarten.create! valid_attributes
        # Assuming there are no other kindergartens in the database, this
        # specifies that the Kindergarten created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Kindergarten.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => kindergarten.to_param, :kindergarten => {'these' => 'params'}}
      end

      it "assigns the requested kindergarten as @kindergarten" do
        kindergarten = Kindergarten.create! valid_attributes
        put :update, {:id => kindergarten.to_param, :kindergarten => valid_attributes}
        assigns(:kindergarten).should eq(kindergarten)
      end

      it "redirects to the kindergarten" do
        kindergarten = Kindergarten.create! valid_attributes
        put :update, {:id => kindergarten.to_param, :kindergarten => valid_attributes}
        response.should redirect_to(kindergarten)
      end
    end

    describe "with invalid params" do
      it "assigns the kindergarten as @kindergarten" do
        kindergarten = Kindergarten.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kindergarten.any_instance.stub(:save).and_return(false)
        put :update, {:id => kindergarten.to_param, :kindergarten => {}}
        assigns(:kindergarten).should eq(kindergarten)
      end

      it "re-renders the 'edit' template" do
        kindergarten = Kindergarten.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Kindergarten.any_instance.stub(:save).and_return(false)
        put :update, {:id => kindergarten.to_param, :kindergarten => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested kindergarten" do
      kindergarten = Kindergarten.create! valid_attributes
      expect {
        delete :destroy, {:id => kindergarten.to_param}
      }.to change(Kindergarten, :count).by(-1)
    end

    it "redirects to the kindergartens list" do
      kindergarten = Kindergarten.create! valid_attributes
      delete :destroy, {:id => kindergarten.to_param}
      response.should redirect_to(kindergartens_url)
    end
  end

end
