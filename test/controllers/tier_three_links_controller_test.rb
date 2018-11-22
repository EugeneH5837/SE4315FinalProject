require 'test_helper'

class TierThreeLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tier_three_link = tier_three_links(:one)
  end

  test "should get index" do
    get tier_three_links_url
    assert_response :success
  end

  test "should get new" do
    get new_tier_three_link_url
    assert_response :success
  end

  test "should create tier_three_link" do
    assert_difference('TierThreeLink.count') do
      post tier_three_links_url, params: { tier_three_link: { links: @tier_three_link.links } }
    end

    assert_redirected_to tier_three_link_url(TierThreeLink.last)
  end

  test "should show tier_three_link" do
    get tier_three_link_url(@tier_three_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_tier_three_link_url(@tier_three_link)
    assert_response :success
  end

  test "should update tier_three_link" do
    patch tier_three_link_url(@tier_three_link), params: { tier_three_link: { links: @tier_three_link.links } }
    assert_redirected_to tier_three_link_url(@tier_three_link)
  end

  test "should destroy tier_three_link" do
    assert_difference('TierThreeLink.count', -1) do
      delete tier_three_link_url(@tier_three_link)
    end

    assert_redirected_to tier_three_links_url
  end
end
