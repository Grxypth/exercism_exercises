# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age>=60 ? price=10 : price=15
  end

  def watch_scary_movie?
@age>=18 ? true : false
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
@member==true  ? "free popcorn"   : raise NotMovieClubMemberError
  end
end



##ternary operatör ile if else ifadesini daha kısa bir şekilde yazabiliriz.
## koşul ? doğru ihtimal : yanlış ihtimal şeklinde kullanılınır
## yanlış koşul else içerisine yazdığımız ifade doğru koşul ise if içerisine yazdığımız ifade
## bir class içerisinde 
