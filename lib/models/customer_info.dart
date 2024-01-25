import 'package:purchases_flutter/purchases_flutter.dart' as rc;

// /// Class containing all information regarding the customer
// class CustomerInfo extends rc.CustomerInfo {
//   factory CustomerInfo.fromJson(Map<String, dynamic> value) {
//     Map<String, dynamic> map = value;
//     value['entitlements'] = {
//       'all': value['entitlements'],
//       'active': {
//         for (final item
//             in Map.from(value['entitlements']).entries.where((item) {
//           return DateTime.parse(value['expires_date']).isAfter(DateTime.now());
//         }))
//           item.key: item.value
//       }
//     };
//     value['allExpirationDates'] = {};
//     value['allPurchasedProductIdentifiers'] = [];
//     value['allPurchaseDates'] = {};
//     value['activeSubscriptions'] = value['subscriptions'].values.toList();
//     value['nonSubscriptionTransactions'] =
//         value['non_subscriptions'].values.toList();
//     return CustomerInfo._(map);
//   }

//   factory CustomerInfo.empty() {
//     return CustomerInfo.fromJson({
//       "entitlements": {},
//       "first_seen": "2019-02-21T00:08:41Z",
//       "non_subscriptions": {},
//       "original_app_user_id": "XXX-XXXXX-XXXXX-XX",
//       "original_application_version": "1.0",
//       "other_purchases": {},
//       "subscriptions": {}
//     });
//   }

//   CustomerInfo._(Map<String, dynamic> map) : super.fromJson(map);
// }

extension CustomerInfo on rc.CustomerInfo {
  static empty() => rc.CustomerInfo.fromJson({
        "entitlements": {},
        "first_seen": "2019-02-21T00:08:41Z",
        "non_subscriptions": {},
        "original_app_user_id": "XXX-XXXXX-XXXXX-XX",
        "original_application_version": "1.0",
        "other_purchases": {},
        "subscriptions": {}
      });
}
