module FlashesHelper
  FLASH_CLASSES = { alert: "danger", notice: "success", warning: "warning"}

  def flash_class(key)
     FLASH_CLASSES.fetch key.to_sym, key
   end

   def user_facing_flashes
     flash.to_hash.slise "alert", "notice", "warning"
   end
 end
