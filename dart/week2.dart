void main() { //----------เรียกทำงาน------------>
  //print(callGen(1991));
  //var x = callColor("white");
  //print(x);
  callWeb("google",protocal: "https",port: 443);

  
}//----------สิ้นสุด Main ------------>
//เรียก function                 <------short-hand-------->
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";

//<for in(foreach)>    
int callColor([String newColor = "pink"]) {
  List<dynamic> color = ["red", "blue", "green"];

  for (var item in color) {
    print(item);
  }
  return color.length;//return จำนวนข้อมูลกลับ
}

//arrow function เป็นแบบ optinal ทั้ง position และ name
void callWeb(String web ,{int port = 80, String protocal = "http"}) => 
print("$protocal $web : $port");