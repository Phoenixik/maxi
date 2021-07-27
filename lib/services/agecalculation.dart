import 'package:flutter/material.dart';
import 'package:age/age.dart';

class Agecalculate {
  //age calculatgon
  AgeDuration CalculateAge(DateTime today, DateTime birthday) {
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    // print(age.days);
    // print(age.months);
    // print(age.years);
    // print('Your age is $age');
    return age;
  }

  //nextbirthday calculaton
  AgeDuration nextBirthday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextbday = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;

    AgeDuration nextbirthduration =
        Age.dateDifference(fromDate: today, toDate: nextbday);

    return nextbirthduration;
  }

  //nextdayofbirthcelebration
  int nextbufday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);

    DateTime nextbuffday = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;

    return nextbuffday.weekday;
  }
}
