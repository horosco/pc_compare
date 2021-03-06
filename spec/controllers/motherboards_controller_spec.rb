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

describe MotherboardsController do

  # This should return the minimal set of attributes required to create a valid
  # Motherboard. As you add validations to Motherboard, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "price" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MotherboardsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all motherboards as @motherboards" do
      motherboard = Motherboard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:motherboards).should eq([motherboard])
    end
  end

  describe "GET show" do
    it "assigns the requested motherboard as @motherboard" do
      motherboard = Motherboard.create! valid_attributes
      get :show, {:id => motherboard.to_param}, valid_session
      assigns(:motherboard).should eq(motherboard)
    end
  end

  describe "GET new" do
    it "assigns a new motherboard as @motherboard" do
      get :new, {}, valid_session
      assigns(:motherboard).should be_a_new(Motherboard)
    end
  end

  describe "GET edit" do
    it "assigns the requested motherboard as @motherboard" do
      motherboard = Motherboard.create! valid_attributes
      get :edit, {:id => motherboard.to_param}, valid_session
      assigns(:motherboard).should eq(motherboard)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Motherboard" do
        expect {
          post :create, {:motherboard => valid_attributes}, valid_session
        }.to change(Motherboard, :count).by(1)
      end

      it "assigns a newly created motherboard as @motherboard" do
        post :create, {:motherboard => valid_attributes}, valid_session
        assigns(:motherboard).should be_a(Motherboard)
        assigns(:motherboard).should be_persisted
      end

      it "redirects to the created motherboard" do
        post :create, {:motherboard => valid_attributes}, valid_session
        response.should redirect_to(Motherboard.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved motherboard as @motherboard" do
        # Trigger the behavior that occurs when invalid params are submitted
        Motherboard.any_instance.stub(:save).and_return(false)
        post :create, {:motherboard => { "price" => "invalid value" }}, valid_session
        assigns(:motherboard).should be_a_new(Motherboard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Motherboard.any_instance.stub(:save).and_return(false)
        post :create, {:motherboard => { "price" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested motherboard" do
        motherboard = Motherboard.create! valid_attributes
        # Assuming there are no other motherboards in the database, this
        # specifies that the Motherboard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Motherboard.any_instance.should_receive(:update).with({ "price" => "1" })
        put :update, {:id => motherboard.to_param, :motherboard => { "price" => "1" }}, valid_session
      end

      it "assigns the requested motherboard as @motherboard" do
        motherboard = Motherboard.create! valid_attributes
        put :update, {:id => motherboard.to_param, :motherboard => valid_attributes}, valid_session
        assigns(:motherboard).should eq(motherboard)
      end

      it "redirects to the motherboard" do
        motherboard = Motherboard.create! valid_attributes
        put :update, {:id => motherboard.to_param, :motherboard => valid_attributes}, valid_session
        response.should redirect_to(motherboard)
      end
    end

    describe "with invalid params" do
      it "assigns the motherboard as @motherboard" do
        motherboard = Motherboard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Motherboard.any_instance.stub(:save).and_return(false)
        put :update, {:id => motherboard.to_param, :motherboard => { "price" => "invalid value" }}, valid_session
        assigns(:motherboard).should eq(motherboard)
      end

      it "re-renders the 'edit' template" do
        motherboard = Motherboard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Motherboard.any_instance.stub(:save).and_return(false)
        put :update, {:id => motherboard.to_param, :motherboard => { "price" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested motherboard" do
      motherboard = Motherboard.create! valid_attributes
      expect {
        delete :destroy, {:id => motherboard.to_param}, valid_session
      }.to change(Motherboard, :count).by(-1)
    end

    it "redirects to the motherboards list" do
      motherboard = Motherboard.create! valid_attributes
      delete :destroy, {:id => motherboard.to_param}, valid_session
      response.should redirect_to(motherboards_url)
    end
  end

end
