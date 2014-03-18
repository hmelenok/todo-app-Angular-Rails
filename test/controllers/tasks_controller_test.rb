require 'test_helper'

class TasksControllerTest < ActionController::TestCase
 describe Api::TasksController do
    it "should be able to create a new record" do
      post :create, task_list_id: task_list.id,
        task: {description: "New task"}, format: :json
      response.should be_success
      json_response.shouldjson_response.should == {'id' => 123,'description' => 'Send newsletter', 'priority' => 2, 'due_date' => '2013-09-10', 'completed' => true}
    end
  end
end
