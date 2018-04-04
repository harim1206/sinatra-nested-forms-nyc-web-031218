class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def initialize (name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self

  end

  def self.all
    @@all

  end


end

# params = {
#   :pirate => {
#     name: "jack sparrow",
#     weight: "230",
#     height: "80 inches"
#     :ships =>[
#       {
#         name: "flying dutchmen",
#         type: "big one",
#         booty: "gold"
#
#       },
#       {
#         name: "pearl",
#         type: "small one",
#         booty: "rum"
#       }
#     ]#/ships array
#   }#/:pirate
# }
