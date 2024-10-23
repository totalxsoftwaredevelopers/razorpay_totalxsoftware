<p align="center">
<h1>
Flutter Razorpay Totalx Module
</h1>

<p>
Package for razorpay totalxsoftware team
</p>

![1](https://github.com/totalxsoftwaredevelopers/razorpay_totalxsoftware/blob/main/assets/logo.png)

## Usage

Sample code to integrate

#### Import package

```dart
import 'package:razorpay_totalxsoftware/razorpay_totalxsoftware.dart';
```

```dart
 RazorpayTotalxsoftware.pay(
              context,
              amount: 100,
              saveInFirebase: true,
              rzpKey: 'rzp_test_8mYCq4efvCCyu0',
              razorpayKeySecret: 'gVTrlrkzbMn0SGWZYLLoKyeW',
              appName: 'razorpay_web_totalxsoftware',
              // itemName: , // optional

              userProfile: RzpUserProfile(
                uid: 'unique_user_id',
                name: 'John Doe',
                email: 'qYqgK@example.com',
                phoneNumber: '1234567890',
              ),
              success: (response) {
                log(response.toString());
                log('payment success');
              },
              failure: (response) {
                log(response.toString());
              },
              error: (response) {
                log(response.toString());
              },
            );

```
