import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'saving.g.dart';

@JsonSerializable()
class Saving {
  double amountOfSaving;

  double finalSavingAmount;
  late double progressOfSavings;
  String imageURL;
  String titleOfGoal;

  Saving(
      {required this.finalSavingAmount,
      required this.titleOfGoal,
      required this.imageURL,
      required this.amountOfSaving});

  factory Saving.fromJson(Map<String, dynamic> json) => _$SavingFromJson(json);

  Map<String, dynamic> toJson() => _$SavingToJson(this);


}
