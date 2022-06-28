require_relative "menu"

class Ammo < Menu
  attr_accessor :ammo
    
  def initialize(name:,price:,ammo:)
   super(name:name,price:price)
   self.ammo = ammo
  end
 
  def info
   return "#{self.name} #{self.price}円 #{self.ammo}"
  end
  #親クラスにある定義を記載すると情報が上書きされる（Menuクラスのinfoが上書き）
  def info_ammo
   put "#{self.name}は#{self.ammo}です"
  end
end

