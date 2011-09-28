require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MachineInformationsController do

  def mock_machine_information(stubs={})
    @mock_machine_information ||= mock_model(MachineInformation, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all machine_informations as @machine_informations" do
      MachineInformation.stub(:all) { [mock_machine_information] }
      get :index
      assigns(:machine_informations).should eq([mock_machine_information])
    end
  end

  describe "GET show" do
    it "assigns the requested machine_information as @machine_information" do
      MachineInformation.stub(:find).with("37") { mock_machine_information }
      get :show, :id => "37"
      assigns(:machine_information).should be(mock_machine_information)
    end
  end

  describe "GET new" do
    it "assigns a new machine_information as @machine_information" do
      MachineInformation.stub(:new) { mock_machine_information }
      get :new
      assigns(:machine_information).should be(mock_machine_information)
    end
  end

  describe "GET edit" do
    it "assigns the requested machine_information as @machine_information" do
      MachineInformation.stub(:find).with("37") { mock_machine_information }
      get :edit, :id => "37"
      assigns(:machine_information).should be(mock_machine_information)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created machine_information as @machine_information" do
        MachineInformation.stub(:new).with({'these' => 'params'}) { mock_machine_information(:save => true) }
        post :create, :machine_information => {'these' => 'params'}
        assigns(:machine_information).should be(mock_machine_information)
      end

      it "redirects to the created machine_information" do
        MachineInformation.stub(:new) { mock_machine_information(:save => true) }
        post :create, :machine_information => {}
        response.should redirect_to(machine_information_url(mock_machine_information))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved machine_information as @machine_information" do
        MachineInformation.stub(:new).with({'these' => 'params'}) { mock_machine_information(:save => false) }
        post :create, :machine_information => {'these' => 'params'}
        assigns(:machine_information).should be(mock_machine_information)
      end

      it "re-renders the 'new' template" do
        MachineInformation.stub(:new) { mock_machine_information(:save => false) }
        post :create, :machine_information => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested machine_information" do
        MachineInformation.stub(:find).with("37") { mock_machine_information }
        mock_machine_information.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :machine_information => {'these' => 'params'}
      end

      it "assigns the requested machine_information as @machine_information" do
        MachineInformation.stub(:find) { mock_machine_information(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:machine_information).should be(mock_machine_information)
      end

      it "redirects to the machine_information" do
        MachineInformation.stub(:find) { mock_machine_information(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(machine_information_url(mock_machine_information))
      end
    end

    describe "with invalid params" do
      it "assigns the machine_information as @machine_information" do
        MachineInformation.stub(:find) { mock_machine_information(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:machine_information).should be(mock_machine_information)
      end

      it "re-renders the 'edit' template" do
        MachineInformation.stub(:find) { mock_machine_information(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested machine_information" do
      MachineInformation.stub(:find).with("37") { mock_machine_information }
      mock_machine_information.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the machine_informations list" do
      MachineInformation.stub(:find) { mock_machine_information }
      delete :destroy, :id => "1"
      response.should redirect_to(machine_informations_url)
    end
  end

end
