class Menu #class=設計図
 attr_accessor :name
 attr_accessor :price
  def initialize(name:,price:) #initialize=インスタンス作成時に自動で処理
		self.name = name
		self.price= price
	end

  def show_name
	 puts "#{self.name}"   #self.変数でインスタンスの変数が入れられる
  end
	def info
    return "#{self.name} #{self.price}円"
  end

  def get_total_price(count)
    total_price=self.price*count
    return total_price
  end

end

#each.doの後にはend
#新しくインスタンス（もの）を作るときはClass.new
#以下インスタンス
#gets.chompは入力待ちにする


