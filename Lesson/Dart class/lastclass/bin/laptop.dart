void main(){
  
}



class Laptop {
  final String name;
  final String model;
  final String spec;

  Laptop( {required this.name, required this.model,required this.spec});

  void specs(){
    print(spec);
  }
  
}

class Lenovo extends Laptop{

  Lenovo({required super.name, required super.model, required super.spec});

}