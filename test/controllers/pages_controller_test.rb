require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get new" do
    get new_page_url
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post pages_url, params: { page: { area: @page.area, info: @page.info, msg_1: @page.msg_1, msg_2: @page.msg_2, msg_3: @page.msg_3, msg_4: @page.msg_4, name: @page.name, page_1: @page.page_1, page_2: @page.page_2, page_3: @page.page_3, page_4: @page.page_4, page_5: @page.page_5, page_6: @page.page_6, page_7: @page.page_7, page_8: @page.page_8, place: @page.place } }
    end

    assert_redirected_to page_url(Page.last)
  end

  test "should show page" do
    get page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :success
  end

  test "should update page" do
    patch page_url(@page), params: { page: { area: @page.area, info: @page.info, msg_1: @page.msg_1, msg_2: @page.msg_2, msg_3: @page.msg_3, msg_4: @page.msg_4, name: @page.name, page_1: @page.page_1, page_2: @page.page_2, page_3: @page.page_3, page_4: @page.page_4, page_5: @page.page_5, page_6: @page.page_6, page_7: @page.page_7, page_8: @page.page_8, place: @page.place } }
    assert_redirected_to page_url(@page)
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page)
    end

    assert_redirected_to pages_url
  end
end
