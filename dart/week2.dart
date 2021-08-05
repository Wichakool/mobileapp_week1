void main() {
  //print(callGen(1991));
  //var x = callColor("white");
  //print(x);
  callWeb("google",protocal: "https",port: 443);
}
//เรียก function
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";

int callColor([String newColor = "pink"]) {
  List<dynamic> color = ["red", "blue", "green"];

  for (var item in color) {
    print(item);
  }
  return color.length;
}

void callWeb(String web ,{int port = 80, String protocal = "http"}) => 
print("$protocal $web : $port");