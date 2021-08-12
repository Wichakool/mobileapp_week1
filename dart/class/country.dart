class Country {
	var country = "Netherland";
  var city;
  var _animal = "สิงโต";
  static var color = "RED";

  Country(this.city,this._animal);

	Country.thai(String city,String animal) : this(city,animal);
	
	void callHello() {
		print("Goedendag");
	}

  String callAnimal(){
    return this._animal;
  }
  
}