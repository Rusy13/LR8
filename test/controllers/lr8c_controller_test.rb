require "test_helper"

class Lr8cControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get lr8c_input_url
    assert_response :success
  end

  test "should get view" do
    get lr8c_view_url
    assert_response :success
  end



  test 'should get 1 for view with 1' do
     get '/lr8c/view', params: { num: 1 }
     assert_equal(assigns[:res_arr], [0, 1])
   end

   test 'should get 1, 5, 6, 25, 76 for view with 100' do
     get '/lr8c/view', params: { num: 100 }
     assert_equal(assigns[:res_arr], [0, 1, 5, 6, 25, 76])
   end

   test 'should get 1, 5, 6, 25 for view with 50' do
     get '/lr8c/view', params: { num: 50 }
     assert_equal(assigns[:res_arr], [0, 1, 5, 6, 25])
   end
   
end
