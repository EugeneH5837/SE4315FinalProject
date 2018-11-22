require 'test_helper'

class TierOneLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tier_one_link = tier_one_links(:one)
  end

  test "should get index" do
    get tier_one_links_url
    assert_response :success
  end

  test "should get new" do
    get new_tier_one_link_url
    assert_response :success
  end

  test "should create tier_one_link" do
    assert_difference('TierOneLink.count') do
      post tier_one_links_url, params: { tier_one_link: { links: @tier_one_link.links } }
    end

    assert_redirected_to tier_one_link_url(TierOneLink.last)
  end

  test "should show tier_one_link" do
    get tier_one_link_url(@tier_one_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_tier_one_link_url(@tier_one_link)
    assert_response :success
  end

  test "should update tier_one_link" do
    patch tier_one_link_url(@tier_one_link), params: { tier_one_link: { links: @tier_one_link.links } }
    assert_redirected_to tier_one_link_url(@tier_one_link)
  end

  test "should destroy tier_one_link" do
    assert_difference('TierOneLink.count', -1) do
      delete tier_one_link_url(@tier_one_link)
    end

    assert_redirected_to tier_one_links_url
  end
end
