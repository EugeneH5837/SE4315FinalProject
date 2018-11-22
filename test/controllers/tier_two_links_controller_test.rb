require 'test_helper'

class TierTwoLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tier_two_link = tier_two_links(:one)
  end

  test "should get index" do
    get tier_two_links_url
    assert_response :success
  end

  test "should get new" do
    get new_tier_two_link_url
    assert_response :success
  end

  test "should create tier_two_link" do
    assert_difference('TierTwoLink.count') do
      post tier_two_links_url, params: { tier_two_link: { links: @tier_two_link.links } }
    end

    assert_redirected_to tier_two_link_url(TierTwoLink.last)
  end

  test "should show tier_two_link" do
    get tier_two_link_url(@tier_two_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_tier_two_link_url(@tier_two_link)
    assert_response :success
  end

  test "should update tier_two_link" do
    patch tier_two_link_url(@tier_two_link), params: { tier_two_link: { links: @tier_two_link.links } }
    assert_redirected_to tier_two_link_url(@tier_two_link)
  end

  test "should destroy tier_two_link" do
    assert_difference('TierTwoLink.count', -1) do
      delete tier_two_link_url(@tier_two_link)
    end

    assert_redirected_to tier_two_links_url
  end
end
