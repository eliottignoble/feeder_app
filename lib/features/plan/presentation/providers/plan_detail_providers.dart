import 'package:feeed/features/onboarding/domain/enum/data_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:feeed/utils/shared_preferences_constants.dart';

class PlanDetailProviders extends ChangeNotifier {
  ImageInfoCards getCardByIndex(int index) {
    return ImageInfoCards.values[index];
  }
}
