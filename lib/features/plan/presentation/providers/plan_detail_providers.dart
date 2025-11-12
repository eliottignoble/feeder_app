import 'package:feeed/features/onboarding/domain/ImageData.dart';
import 'package:flutter/cupertino.dart';

class PlanDetailProviders extends ChangeNotifier {
  Plan getCardByIndex(int index) {
    return planData[index];
  }
}
