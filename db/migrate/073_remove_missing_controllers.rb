class RemoveMissingControllers < ActiveRecord::Migration
  def self.up
     controller = SiteController.find_by_name('courses_users')
     if controller 
<<<<<<< HEAD
       #ControllerAction.find_all_by_site_controller_id(controller.id).each{
       ControllerAction.where(site_controller_id: controller.id).each{
          | action | 
          #MenuItem.find_all_by_controller_action_id(action.id).each{
          MenuItem.where(controller_action_id: action.id).each{
=======
       ControllerAction.where(site_controller_id: controller.id).find_each {
          | action | 
          MenuItem.where(controller_action_id: action.id).find_each {
>>>>>>> E1455/rails4
             |item| 
             item.destroy
          }
          action.destroy
       }
       controller.destroy
   end
   
     controller = SiteController.find_by_name('publishing')
     if controller 
<<<<<<< HEAD
       #ControllerAction.find_all_by_site_controller_id(controller.id).each{
       ControllerAction.where(site_controller_id: controller.id).each{
          | action | 
          #MenuItem.find_all_by_controller_action_id(action.id).each{
          MenuItem.where(controller_action_id: action.id).each{
=======
       ControllerAction.where(site_controller_id: controller.id).find_each { | action | 
          MenuItem.find_all_by(controller_action_id: action.id).each{
>>>>>>> E1455/rails4
             |item| 
             item.destroy
          }
          action.destroy
       }
       controller.destroy
   end
   
        controller = SiteController.find_by_name('submission')
     if controller 
<<<<<<< HEAD
       #ControllerAction.find_all_by_site_controller_id(controller.id).each{
       ControllerAction.where(site_controller_id: controller.id).each{
          | action | 
          #MenuItem.find_all_by_controller_action_id(action.id).each{
          MenuItem.where(controller_action_id: action.id).each{
=======
       ControllerAction.where(site_controller_id: controller.id).find_each{
          | action | 
          MenuItem.where(controller_action_id: action.id).find_each{
>>>>>>> E1455/rails4
             |item| 
             item.destroy
          }
          action.destroy
       }
       controller.destroy
     end
  end

  def self.down
  end
end
