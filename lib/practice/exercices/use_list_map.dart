//in this sections I use the list and map for practice

void main(){

  useList();
  useMap();
  ConversionBetweenListAndMap();

}

void useMap(){//so, for declare a Map is Map<KeyType,ValueType> nameOfMap

  Map<String,int> ages={
    "Alex":20,
    "John":30,
    "Mary":25,
  };

  print(ages);

  for(var key in ages.keys){
    print("$key is ${ages[key]} years old");
  }

}



void useList(){
//for declare a List is List<Type> nameOfList

List <int> numbers=[1,2,3,4,5];

print(numbers);

for(int i=0;i<numbers.length;i++){
  print(numbers[i]);



}}





// ignore: non_constant_identifier_names
void ConversionBetweenListAndMap(){


  List<Map<String,dynamic>> listOfMaps=[
    {"name":"Alex","age":20},
    {"name":"John","age":30},
    {"name":"Mary","age":25},
  ];

  Map<String,dynamic> mapOfList={
    "names":["Alex","John","Mary"],
    "ages":[20,30,25],
  };

  //convert list of maps to map of lists
  Map<String,dynamic> mapFromListOfMaps={};
  for(var map in listOfMaps){
    for(var key in map.keys){
      if(mapFromListOfMaps.containsKey(key)){
        mapFromListOfMaps[key].add(map[key]);
      }else{
        mapFromListOfMaps[key]=[map[key]];
      }
    }
  }

  print("mapFromListOfMaps: $mapFromListOfMaps");

  //convert map of lists to list of maps
  List<Map<String,dynamic>> listFromMapOfLists=[];
  int length=mapOfList["names"].length;
  for(int i=0;i<length;i++){
    Map<String,dynamic> map={};
    for(var key in mapOfList.keys){
      map[key]=mapOfList[key][i];
    }
    listFromMapOfLists.add(map);
  }

  print("listFromMapOfLists: $listFromMapOfLists");
}