import 'dart:io';

void main(){
  final info={
    'name':'john',
    'age':56
  };
  info['id']=12;

  for(final entry in info.entries)
    {
      stdout.writeln('${entry.key} is ${entry.value}');
    }

print('foreach--------------------------');
  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
  usrMap.forEach((k,v) => print('${k}: ${v}'));

  usrMap.addAll({'dept':'HR','email':'tom@xyz.com'});
  print('Map after adding  entries :${usrMap}');
}