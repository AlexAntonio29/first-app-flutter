//In this exercise, I will use a for and while loop to create a simple program whit a list

void main(){

  List<int> numbers =[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  useFor(numbers);
  useWhile(numbers);

}

void useFor(List<int> numbers){
  print('Using for loop:');
  for(int i=0; i<numbers.length; i++){
    print(numbers[i]);
  }
}

void useWhile(List<int> numbers){
  print('Using while loop:');
  int i=0;
  while(i<numbers.length){
    print(numbers[i]);
    i++;
  }
}