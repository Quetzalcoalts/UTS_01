import 'dart:convert';
import 'dart:io';
void main(List<String> arguments) {

  print("Inputan : ");
  String? kata = stdin.readLineSync();
  int angka = int.parse(kata!);

  print("Inputan Kata : ");
  String? input = stdin.readLineSync();
  int c = 0;
  int counter = 1;
  int arr = 0;

  if(angka % 2 != 0){

    for (int i = 1; i <= angka; i++) {
      if (i >= 2 && i <= (angka / 2).ceil()) {
        c = c + 1;
      } else if (i >= (angka / 2).ceil() + 1 && i <= angka) {
        c = c - 1;
      }
      if (counter > 9) {
        counter = 1;
      }

      for (int j = 0; j < angka; j++) {
        //atas dan bawah
        if(arr == kata.length){
          arr = 0;
        } 
        if (i == 1 || i == angka) {
          if (j == (angka - 1) / 2) {
            stdout.write("+");
          } else {
            stdout.write(" ");
          }
        } //else if buat yang ditengah
        else if (i == (angka + 1) / 2) {
          if (j == 0 || j == angka-1) {
            stdout.write("+");
          } else {
            stdout.write("${input![arr]}");
            arr++;
          }
        } else {
          if (j == ((angka - 1) / 2) - c || j == ((angka - 1) / 2) + c) {
            stdout.write("+");
          } else if (j >= ((angka - 1) / 2) - c && j <= (angka - 1) / 2 ||
              j <= ((angka - 1) / 2) + c && j >= (angka - 1) / 2) {
            stdout.write("${input![arr]}");
            arr++;
          } else {
            stdout.write(" ");
          }
        }
      }
      print("");
      counter++;
    }
    
  }
  else{
    stdout.write("$input");
    print("");
    stdout.write("$angka");
  }
}