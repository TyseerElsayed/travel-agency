import 'dart:io';
import 'dart:core';

class Travelagency {
  int id, passengerslimit;
  double price;
  String location, date;
  Travelagency(
      int id, String location, int passengerslimit, String date, double price) {
    this.id = id;
    this.passengerslimit = passengerslimit;
    this.price = price;
    this.date = date;
    this.location = location;
  }
  List trip = [
    [1, 'Calefornia', 2, 6000.0, '2/2/2021', ''], //0
    '\n\t',
    [2, 'London', 4, 4000.0, '4/2/2021', ''], //2
    '\n\t',
    [3, 'Rome', 5, 16000.0, '5/2/2021', ''], //4
    '\n\t',
    [4, 'Paris', 3, 32000.0, '8/2/2021', ''], //6
    '\n\t',
    [5, 'Canada', 1, 18000.0, '9/2/2021', ''], //8
    '\n\t',
    [6, 'Turkey', 3, 15000.0, '17/2/2021', ''], //10
    '\n\t'
  ];

  List newtrip = [];
  List passengers = [
    [
      'Passengers info:{* name: Ahmed. * national ID:90234657843219. * phone number:01123456789. * E-mail:ahmed@gmail.com.\n* name: mohamed. * national ID:84637667843219. * phone number:01047957431. * E-mail:mohamed@gmail.com.}'
    ],
    [
      '* name: mahmoud. * national ID:90234657843219. * phone number:01003456789. * E-mail:mahmoud@gmail.com.\n* name: ali. * national ID:78330020203678. * phone number:01299966382. * E-mail:ali@gmail.com.\n* name: ahmed. * national ID:76301122345687. * phone number:01888199812. * E-mail:ahmed@gmail.com.\n* name: hossam. * national ID:94001233811722. * phone number:010200633846. * E-mail:hossam@gmail.com.'
    ],
    [
      '* name: mostafa. * national ID:90234657843219. * phone number:01003456789. * E-mail:mostafa@gmail.com.\n* name: hadeer. * national ID:79200012101145. * phone number:01247333485. * E-mail:hadeer@gmail.com.\n* name: ola. * national ID:90231122009854. * phone number:01077729834. * E-mail:ola@gmail.com.\n* name: eslam. * national ID:98102345643219. * phone number:01177738945. * E-mail:eslam@gmail.com.\n* name: yomna. * national ID:88101011334475. * phone number:01242223201. * E-mail:yomna@gmail.com.'
    ],
    [
      '* name: rana. * national ID:90234657843219. * phone number:01004455668. * E-mail:rana@gmail.com.\n* name: heba. * national ID:90227810112256. * phone number:01111557784. * E-mail:heba@gmail.com.\n* name: hayam. * national ID:90234653388210. * phone number:01044558312. * E-mail:hayam@gmail.com.'
    ],
    [
      '* name: hadii. * national ID:90234657843219. * phone number:01003456789. * E-mail:hadii@gmail.com.'
    ],
    [
      '* name: mariam. * national ID:90234657843219. * phone number:01003456789. * E-mail:mariam@gmail.com.\n* name: hassan. * national ID:293847519324569. * phone number:01133484599. * E-mail:hassan@gmail.com.\n* name: hussain. * national ID:99001010374856. * phone number:01200334722. * E-mail:hussain@gmail.com.'
    ]
  ];

  dynamic addtrip() {
    print('Enter trip ID: ');
    var z = int.parse(stdin.readLineSync());
    newtrip.add(z);
    print('Enter trip Location: ');
    var q = stdin.readLineSync();
    newtrip.add(q);
    print('Enter trip passengers Limit: ');
    var w = int.parse(stdin.readLineSync());
    newtrip.add(w);
    print('Enter trip Date: ');
    var e = stdin.readLineSync();
    newtrip.add(e);
    print('Enter trip price: ');
    var r = double.parse(stdin.readLineSync());
    newtrip.add(r);
    trip.add(newtrip);
    print('your trip added successfully ==> $newtrip');
    return trip;
  }

  dynamic edittrip() {
    print(
        'Which Trip you want to edit in? {1- Calefornia, 2- London, 3- Rome,4- Paris, 5- Canada, 6- Turkey.}');
    var ed = int.parse(stdin.readLineSync());
    if (ed == 1) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic ss = int.parse(stdin.readLineSync());
      if (ss == 1) {
        //edit location
        print('please enter your edit:');
        dynamic tt = stdin.readLineSync();
        trip[0].replaceRange(1, 2, [tt]);
        print('you have edited your trip ==> ${trip[0]}');
      } else if (ss == 2) {
        //edit price
        print('please enter your edit:');
        dynamic yy = double.parse(stdin.readLineSync());
        trip[0].replaceRange(3, 4, [yy]);
        print('you have edited your trip ==> ${trip[0]}');
      } else if (ss == 3) {
        //edit date
        print('please enter your edit:');
        dynamic oo = stdin.readLineSync();
        trip[0].replaceRange(4, 5, [oo]);
        print('you have edited your trip ==> ${trip[0]}');
      } else {
        print('No more option.');
      }
    } else if (ed == 2) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic ff = int.parse(stdin.readLineSync());
      if (ff == 1) {
        print('please enter your edit:');
        dynamic tdo = stdin.readLineSync();
        trip[2].replaceRange(1, 2, [tdo]);
        print('you have edited your trip ==> ${trip[2]}');
      } else if (ff == 2) {
        print('please enter your edit:');
        dynamic yro = double.parse(stdin.readLineSync());
        trip[2].replaceRange(3, 4, [yro]);
        print('you have edited your trip ==> ${trip[2]}');
      } else if (ff == 3) {
        print('please enter your edit:');
        dynamic awq = stdin.readLineSync();
        trip[2].replaceRange(4, 5, [awq]);
        print('you have edited your trip ==> ${trip[2]}');
      } else {
        print('No more option.');
      }
    } else if (ed == 3) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic hh = int.parse(stdin.readLineSync());
      if (hh == 1) {
        //edit location
        print('please enter your edit:');
        dynamic wer = stdin.readLineSync();
        trip[4].replaceRange(1, 2, [wer]);
        print('you have edited your trip ==> ${trip[4]}');
      } else if (hh == 2) {
        //edit price
        print('please enter your edit:');
        dynamic lko = double.parse(stdin.readLineSync());
        trip[4].replaceRange(3, 4, [lko]);
        print('you have edited your trip ==> ${trip[4]}');
      } else if (hh == 3) {
        //edit date
        print('please enter your edit:');
        dynamic zer = stdin.readLineSync();
        trip[4].replaceRange(4, 5, [zer]);
        print('you have edited your trip ==> ${trip[4]}');
      } else {
        print('No more option.');
      }
    } else if (ed == 4) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic hh = int.parse(stdin.readLineSync());
      if (hh == 1) {
        //edit location
        print('please enter your edit:');
        dynamic wer = stdin.readLineSync();
        trip[6].replaceRange(1, 2, [wer]);
        print('you have edited your trip ==> ${trip[6]}');
      } else if (hh == 2) {
        //edit price
        print('please enter your edit:');
        dynamic lko = double.parse(stdin.readLineSync());
        trip[6].replaceRange(3, 4, [lko]);
        print('you have edited your trip ==> ${trip[6]}');
      } else if (hh == 3) {
        //edit date
        print('please enter your edit:');
        dynamic zer = stdin.readLineSync();
        trip[6].replaceRange(4, 5, [zer]);
        print('your trip is: ${trip[6]}');
      } else {
        print('No more option.');
      }
    } else if (ed == 5) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic hh = int.parse(stdin.readLineSync());
      if (hh == 1) {
        //edit location
        print('please enter your edit:');
        dynamic wer = stdin.readLineSync();
        trip[8].replaceRange(1, 2, [wer]);
        print('you have edited your trip ==> ${trip[8]}');
      } else if (hh == 2) {
        //edit price
        print('please enter your edit:');
        dynamic lko = double.parse(stdin.readLineSync());
        trip[8].replaceRange(3, 4, [lko]);
        print('you have edited your trip ==> ${trip[8]}');
      } else if (hh == 3) {
        //edit date
        print('please enter your edit:');
        dynamic zer = stdin.readLineSync();
        trip[8].replaceRange(4, 5, [zer]);
        print('you have edited your trip ==> ${trip[8]}');
      } else {
        print('No more option.');
      }
    } else if (ed == 6) {
      print('what detail you want to edit? {1- Location, 2- price, 3- Date}');
      dynamic hh = int.parse(stdin.readLineSync());
      if (hh == 1) {
        //edit location
        print('please enter your edit:');
        dynamic wer = stdin.readLineSync();
        trip[10].replaceRange(1, 2, [wer]);
        print('you have edited your trip ==> ${trip[10]}');
      } else if (hh == 2) {
        //edit price
        print('please enter your edit:');
        dynamic lko = double.parse(stdin.readLineSync());
        trip[10].replaceRange(3, 4, [lko]);
        print('you have edited your trip ==> ${trip[10]}');
      } else if (hh == 3) {
        //edit date
        print('please enter your edit:');
        dynamic zer = stdin.readLineSync();
        trip[10].replaceRange(4, 5, [zer]);
        print('you have edited your trip ==> ${trip[10]}');
      } else {
        print('No more option.');
      }
    } else {
      print('No more options.');
    }
    return trip;
  }

  dynamic deletetrip() {
    print(
        'Which Trip do you want to delete?, Please Pick a number: {1- Calefornia, 2- London, 3- Rome,4- Paris, 5- Canada, 6- Turkey.}');
    var u = int.parse(stdin.readLineSync());
    if (u == 1) {
      trip[0].clear();
      print('your trip deleted ==> $trip');
    } else if (u == 2) {
      trip[2].clear();
      print('your trip deleted ==> $trip');
    } else if (u == 3) {
      trip[4].clear();
      print('your trip deleted ==> $trip');
    } else if (u == 4) {
      trip[6].clear();
      print('your trip deleted ==> $trip');
    } else if (u == 5) {
      trip[8].clear();
      print('your trip deleted ==> $trip');
    } else if (u == 6) {
      trip[10].clear();
      print('your trip deleted ==> $trip');
    } else {
      print('No more options.');
    }
    return trip;
  }

  dynamic searchtrip() {
    print('Enter Trip Price: ');
    var number = double.parse(stdin.readLineSync());
    if (number == 4000) {
      print('The trip is:${trip[2]}');
    } else if (number == 16000) {
      print('The trip is:${trip[4]}');
    } else if (number == 6000) {
      print('The trip is: ${trip[0]}');
    } else if (number == 32000) {
      print('The trip is: ${trip[6]}');
    } else if (number == 18000) {
      print('The trip is: ${trip[8]}');
    } else if (number == 15000) {
      print('The trip is: ${trip[10]}');
    } else {
      print('No trip with this price.');
    }
    return trip;
  }

  dynamic reservetrip() {
    print(
        'Please, pick a number of your trip: {1- Calefornia, 2- London, 3- Rome,4- Paris, 5- Canada, 6- Turkey.}');
    var yu = int.parse(stdin.readLineSync());
    if (yu == 1) {
      print('Enter trip ID: ');
      var z = int.parse(stdin.readLineSync());
      newtrip.add(z);
      print('Enter trip Location: ');
      var q = stdin.readLineSync();
      newtrip.add(q);
      print('Enter trip passengers Limit: ');
      var w = int.parse(stdin.readLineSync());
      newtrip.add(w);
      print('Enter trip Date: ');
      var e = stdin.readLineSync();
      newtrip.add(e);
      print('Enter trip price: ');
      var r = double.parse(stdin.readLineSync());
      newtrip.add(r);
      trip.add(newtrip);
      print(
          'You have reserved your trip successfully.\n\t Check it out ==> $trip');
    } else if (yu == 2) {
      print('Sorry, this trip is complete, pick another trip.');
    } else if (yu == 3) {
      print('Enter trip ID: ');
      var z = int.parse(stdin.readLineSync());
      newtrip.add(z);
      print('Enter trip Location: ');
      var q = stdin.readLineSync();
      newtrip.add(q);
      print('Enter trip passengers Limit: ');
      var w = int.parse(stdin.readLineSync());
      newtrip.add(w);
      print('Enter trip Date: ');
      var e = stdin.readLineSync();
      newtrip.add(e);
      print('Enter trip price: ');
      var r = double.parse(stdin.readLineSync());
      newtrip.add(r);
      trip.add(newtrip);
      print(
          'You have reserved your trip successfully.\n\t Check it out ==> $trip');
    } else if (yu == 4) {
      print('Sorry, this trip is complete, pick another trip.');
    } else if (yu == 5) {
      print('Enter trip ID: ');
      var z = int.parse(stdin.readLineSync());
      newtrip.add(z);
      print('Enter trip Location: ');
      var q = stdin.readLineSync();
      newtrip.add(q);
      print('Enter trip passengers Limit: ');
      var w = int.parse(stdin.readLineSync());
      newtrip.add(w);
      print('Enter trip Date: ');
      var e = stdin.readLineSync();
      newtrip.add(e);
      print('Enter trip price: ');
      var r = double.parse(stdin.readLineSync());
      newtrip.add(r);
      trip.add(newtrip);
      print(
          'You have reserved your trip successfully.\n\t Check it out ==> $trip');
    } else if (yu == 6) {
      print('Sorry, this trip is complete, pick another trip.');
    } else {
      print('No more option.');
    }
    return trip;
  }

  dynamic discounttrip() {
    print(
        'We have four trips in discount: -pick a number {1- Rome, 2- Paris, 3- Canada, 4- Turkey.}');
    var v = int.parse(stdin.readLineSync());
    if (v == 1) {
      print('Before discount ==> {16000}\n, After discount ==> {12800}.');
    } else if (v == 2) {
      print('Before discount ==> {32000}\n, After discount ==> {25600}.');
    } else if (v == 3) {
      print('Before discount ==> {18000}\n, After discount ==> {14400}.');
    } else if (v == 4) {
      print('Before discount ==> {15000}\n, After discount ==> {12000}.');
    } else {
      print('No more option.');
    }
    return trip;
  }

  dynamic latesttrips() {
    print('1- View latest trips.\t2- View all trips.');
    var g = int.parse(stdin.readLineSync());
    if (g == 1) {
      print('The latest trips is ==> ${trip[8]}\n${trip[10]}');
    } else if (g == 2) {
      print('All trips is ==> $trip');
    } else {
      print('No more option.');
    }
    return trip;
  }

  dynamic viewpassengers() {
    print(
        'Passengers Limitis:\n {1- Calefornia = 2.\n2- London = 4.\n3- Rome = 5.\n4- Paris = 3.\n5- Canada = 1.\n6- Turkey = 3.\t pick a number to view passengers of one trip: ');
    var m = int.parse(stdin.readLineSync());
    if (m == 1) {
      print('Passengers info of Calefornia: ${passengers[0]}');
    } else if (m == 2) {
      print('Passengers info of London: ${passengers[1]}');
    } else if (m == 3) {
      print('Passengers info of Rome: ${passengers[2]}');
    } else if (m == 4) {
      print('Passengers info of Paris: ${passengers[3]}');
    } else if (m == 5) {
      print('Passengers info of Canada: ${passengers[4]}');
    } else if (m == 6) {
      print('Passengers info of Turkey: ${passengers[5]}');
    } else {
      print('No more option.');
    }
    return passengers;
  }
  dynamic viewtrip() {
    trip.sort((a,b)=> ((a.length).compareTo(b.length)));
    print('Trips by date ==>$trip');
    return trip;
  }
}

void main() {
  var num;
  var t = Travelagency(1, 'Spain', 150, '22/2/2021', 5000.0);
  print(
      'Please, Pick a number: {1- Add trip, 2- Edit in Trip, 3- Delete Trip, 4-View Trip sorted by Date, 5- Search Trip bu price, 6- Reserve Trip, 7- Dicount, 8- Latest trips, 9- View passengers.}');
  var x = int.parse(stdin.readLineSync());
  if (x == 1) {
    num = '1';
  } else if (x == 2) {
    num = '2';
    //change details()
  } else if (x == 3) {
    num = '3';
  } else if (x == 4) {
    num = '4';
  } else if (x == 5) {
    num = '5';
    //search trip()
  } else if (x == 6) {
    num = '6';
    //Reserve()
  } else if (x == 7) {
    num = '7';
    //discount
  } else if (x == 8) {
    num = '8';
    //last 10 trips
  } else if (x == 9) {
    num = '9';
    //view passengers
  } else {
    print('No more options');
  }
  switch (num) {
    case '1':
      //add trip
      t.addtrip();
      break;
    case '2':
      //edit trip
      t.edittrip();
      break;
    case '3':
      //delete trip
      t.deletetrip();
      break;
    case '4':
      // View trip sorted by date
      t.viewtrip();
      break;
    case '5':
      //search by price
      t.searchtrip();
      break;
    case '6':
      //reserve trip
      t.reservetrip();
      break;
    case '7':
      //dicount
      t.discounttrip();
      break;
    case '8':
      //diplay last 10
      t.latesttrips();
      break;
    case '9':
      //view passengers
      t.viewpassengers();
      break;
  }
}
