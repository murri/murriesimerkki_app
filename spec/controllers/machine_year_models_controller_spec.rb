require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MachineYearModelsController do

  def mock_machine_year_model(stubs={})
    @mock_machine_year_model ||= mock_model(MachineYearModel, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all machine_year_models as @machine_year_models" do
      MachineYearModel.stub(:all) { [mock_machine_year_model] }
      get :index
      assigns(:machine_year_models).should eq([mock_machine_year_model])
    end
  end

  describe "GET show" do
    it "assigns the requested machine_year_model as @machine_year_model" do
      MachineYearModel.stub(:find).with("37") { mock_machine_year_model }
      get :show, :id => "37"
      assigns(:machine_year_model).should be(mock_machine_year_model)
    end
  end

  describe "GET new" do
    it "assigns a new machine_year_model as @machine_year_model" do
      MachineYearModel.stub(:new) { mock_machine_year_model }
      get :new
      assigns(:machine_year_model).should be(mock_machine_year_model)
    end
  end

  describe "GET edit" do
    it "assigns the requested machine_year_model as @machine_year_model" do
      MachineYearModel.stub(:find).with("37") { mock_machine_year_model }
      get :edit, :id => "37"
      assigns(:machine_year_model).should be(mock_machine_year_model)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created machine_year_model as @machine_year_model" do
        MachineYearModel.stub(:new).with({'these' => 'params'}) { mock_machine_year_model(:save => true) }
        post :create, :machine_year_model => {'these' => 'params'}
        assigns(:machine_year_model).should be(mock_machine_year_model)
      end

      it "redirects to the created machine_year_model" do
        MachineYearModel.stub(:new) { mock_machine_year_model(:save => true) }
        post :create, :machine_year_model => {}
        response.should redirect_to(machine_year_model_url(mock_machine_year_model))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved machine_year_model as @machine_year_model" do
        MachineYearModel.stub(:new).with({'these' => 'params'}) { mock_machine_year_model(:save => false) }
        post :create, :machine_year_model => {'these' => 'params'}
        assigns(:machine_year_model).should be(mock_machine_year_model)
      end

      it "re-renders the 'new' template" do
        MachineYearModel.stub(:new) { mock_machine_year_model(:save => false) }
        post :create, :machine_year_model => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested machine_year_model" do
        MachineYearModel.stub(:find).with("37") { mock_machine_year_model }
        mock_machine_year_model.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :machine_year_model => {'these' => 'params'}
      end

      it "assigns the requested machine_year_model as @machine_year_model" do
        MachineYearModel.stub(:find) { mock_machine_year_model(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:machine_year_model).should be(mock_machine_year_model)
      end

      it "redirects to the machine_year_model" do
        MachineYearModel.stub(:find) { mock_machine_year_model(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(machine_year_model_url(mock_machine_year_model))
      end
    end

    describe "with invalid params" do
      it "assigns the machine_year_model as @machine_year_model" do
        MachineYearModel.stub(:find) { mock_machine_year_model(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:machine_year_model).should be(mock_machine_year_model)
      end

      it "re-renders the 'edit' template" do
        MachineYearModel.stub(:find) { mock_machine_year_model(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested machine_year_model" do
      MachineYearModel.stub(:find).with("37") { mock_machine_year_model }
      mock_machine_year_model.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the machine_year_models list" do
      MachineYearModel.stub(:find) { mock_machine_year_model }
      delete :destroy, :id => "1"
      response.should redirect_to(machine_year_models_url)
    end
  end

end