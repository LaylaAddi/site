require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, quote: { budget: @quote.budget, client: @quote.client, design: @quote.design, domain_name: @quote.domain_name, hosting: @quote.hosting, images: @quote.images, pages: @quote.pages, terms_conditions: @quote.terms_conditions, user_id: @quote.user_id, user_registration: @quote.user_registration, user_registration_details: @quote.user_registration_details }
    end

    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should show quote" do
    get :show, id: @quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quote
    assert_response :success
  end

  test "should update quote" do
    patch :update, id: @quote, quote: { budget: @quote.budget, client: @quote.client, design: @quote.design, domain_name: @quote.domain_name, hosting: @quote.hosting, images: @quote.images, pages: @quote.pages, terms_conditions: @quote.terms_conditions, user_id: @quote.user_id, user_registration: @quote.user_registration, user_registration_details: @quote.user_registration_details }
    assert_redirected_to quote_path(assigns(:quote))
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, id: @quote
    end

    assert_redirected_to quotes_path
  end
end
