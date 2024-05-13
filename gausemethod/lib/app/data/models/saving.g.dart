// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saving.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Saving _$SavingFromJson(Map<String, dynamic> json) => Saving(
      finalSavingAmount: (json['finalSavingAmount'] as num).toDouble(),
      titleOfGoal: json['titleOfGoal'] as String,
      imageURL: json['imageURL'] as String,
      amountOfSaving: (json['amountOfSaving'] as num).toDouble(),
    );

Map<String, dynamic> _$SavingToJson(Saving instance) => <String, dynamic>{
      'amountOfSaving': instance.amountOfSaving,
      'finalSavingAmount': instance.finalSavingAmount,
      'progressOfSavings': instance.progressOfSavings,
      'imageURL': instance.imageURL,
      'titleOfGoal': instance.titleOfGoal,
    };
