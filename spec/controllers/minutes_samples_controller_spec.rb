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

describe MinutesSamplesController do

  # This should return the minimal set of attributes required to create a valid
  # MinutesSample. As you add validations to MinutesSample, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MinutesSamplesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all minutes_samples as @minutes_samples" do
      minutes_sample = MinutesSample.create! valid_attributes
      get :index, {}, valid_session
      assigns(:minutes_samples).should eq([minutes_sample])
    end
  end

  describe "GET show" do
    it "assigns the requested minutes_sample as @minutes_sample" do
      minutes_sample = MinutesSample.create! valid_attributes
      get :show, {:id => minutes_sample.to_param}, valid_session
      assigns(:minutes_sample).should eq(minutes_sample)
    end
  end

  describe "GET new" do
    it "assigns a new minutes_sample as @minutes_sample" do
      get :new, {}, valid_session
      assigns(:minutes_sample).should be_a_new(MinutesSample)
    end
  end

  describe "GET edit" do
    it "assigns the requested minutes_sample as @minutes_sample" do
      minutes_sample = MinutesSample.create! valid_attributes
      get :edit, {:id => minutes_sample.to_param}, valid_session
      assigns(:minutes_sample).should eq(minutes_sample)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MinutesSample" do
        expect {
          post :create, {:minutes_sample => valid_attributes}, valid_session
        }.to change(MinutesSample, :count).by(1)
      end

      it "assigns a newly created minutes_sample as @minutes_sample" do
        post :create, {:minutes_sample => valid_attributes}, valid_session
        assigns(:minutes_sample).should be_a(MinutesSample)
        assigns(:minutes_sample).should be_persisted
      end

      it "redirects to the created minutes_sample" do
        post :create, {:minutes_sample => valid_attributes}, valid_session
        response.should redirect_to(MinutesSample.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved minutes_sample as @minutes_sample" do
        # Trigger the behavior that occurs when invalid params are submitted
        MinutesSample.any_instance.stub(:save).and_return(false)
        post :create, {:minutes_sample => {}}, valid_session
        assigns(:minutes_sample).should be_a_new(MinutesSample)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MinutesSample.any_instance.stub(:save).and_return(false)
        post :create, {:minutes_sample => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested minutes_sample" do
        minutes_sample = MinutesSample.create! valid_attributes
        # Assuming there are no other minutes_samples in the database, this
        # specifies that the MinutesSample created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MinutesSample.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => minutes_sample.to_param, :minutes_sample => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested minutes_sample as @minutes_sample" do
        minutes_sample = MinutesSample.create! valid_attributes
        put :update, {:id => minutes_sample.to_param, :minutes_sample => valid_attributes}, valid_session
        assigns(:minutes_sample).should eq(minutes_sample)
      end

      it "redirects to the minutes_sample" do
        minutes_sample = MinutesSample.create! valid_attributes
        put :update, {:id => minutes_sample.to_param, :minutes_sample => valid_attributes}, valid_session
        response.should redirect_to(minutes_sample)
      end
    end

    describe "with invalid params" do
      it "assigns the minutes_sample as @minutes_sample" do
        minutes_sample = MinutesSample.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MinutesSample.any_instance.stub(:save).and_return(false)
        put :update, {:id => minutes_sample.to_param, :minutes_sample => {}}, valid_session
        assigns(:minutes_sample).should eq(minutes_sample)
      end

      it "re-renders the 'edit' template" do
        minutes_sample = MinutesSample.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MinutesSample.any_instance.stub(:save).and_return(false)
        put :update, {:id => minutes_sample.to_param, :minutes_sample => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested minutes_sample" do
      minutes_sample = MinutesSample.create! valid_attributes
      expect {
        delete :destroy, {:id => minutes_sample.to_param}, valid_session
      }.to change(MinutesSample, :count).by(-1)
    end

    it "redirects to the minutes_samples list" do
      minutes_sample = MinutesSample.create! valid_attributes
      delete :destroy, {:id => minutes_sample.to_param}, valid_session
      response.should redirect_to(minutes_samples_url)
    end
  end

end