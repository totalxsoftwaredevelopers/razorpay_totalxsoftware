# RazorpayTotalxsoftware - Flutter Plugin for Razorpay Integration




<a href="https://totalx.in">
<img alt="Launch Totalx" src="https://totalx.in/assets/logo-k3HH3X3v.png">
</a>


<p><strong>Developed by <a rel="noopener" target="_new" style="--streaming-animation-state: var(--batch-play-state-1); --animation-rate: var(--batch-play-rate-1);" href="https://totalx.in"><span style="--animation-count: 18; --streaming-animation-state: var(--batch-play-state-2);">Totalx Software</span></a></strong></p>

---

`RazorpayTotalxsoftware` is a Flutter package that simplifies the integration of Razorpay payment processing with optional support for Firebase logging. It handles order creation, payment confirmation, and transaction logging to Firebase.

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
  - [Setup](#setup)
  - [Method Parameters](#method-parameters)
- [Example](#example)
- [Community](#community)

---

## Features
- **Order Creation**: Automatically generates a Razorpay order ID.
- **Customizable UI**: Displays a payment alert for confirmation.
- **Transaction Logging**: Optionally save transactions to Firebase.
- **Callback Support**: Callback functions for success, failure, and error handling.

---

## Installation
Add `razorpay_totalxsoftware` to your `pubspec.yaml` file:

```yaml
dependencies:
  razorpay_totalxsoftware:
```
Then, import the package in your Dart file:


```dart
import 'package:razorpay_totalxsoftware/razorpay_totalxsoftware.dart';
```
## Setup

<ol><li><strong>Initialize Firebase</strong> (Optional): Set up Firebase in your Flutter app if you plan to save transactions in Firebase. You can refer to the official <a rel="noopener" target="_new" style="--streaming-animation-state: var(--batch-play-state-1); --animation-rate: var(--batch-play-rate-1);"><span style="--animation-count: 37; --streaming-animation-state: var(--batch-play-state-2);">Firebase</span><span style="--animation-count: 38; --streaming-animation-state: var(--batch-play-state-2);"> setup</span><span style="--animation-count: 39; --streaming-animation-state: var(--batch-play-state-2);"> guide</span><span style="--animation-count: 40; --streaming-animation-state: var(--batch-play-state-2);"> for</span><span style="--animation-count: 41; --streaming-animation-state: var(--batch-play-state-2);"> Flutter</span></a>.</li><li><strong>Configure Razorpay API keys</strong>: You’ll need your Razorpay <code>API Key ID</code> and <code>Secret Key</code> for authentication.</li></ol>

## Usage

<p>The primary method for initiating a payment is <code>RazorpayTotalxsoftware.pay</code>. It requires various parameters, including payment details, user information, and callback functions to handle the payment flow.</p>

## Method Parameters

<table><thead><tr><th>Parameter</th><th>Type</th><th>Description</th></tr></thead><tbody><tr><td><code>context</code></td><td><code>BuildContext</code></td><td>The Flutter build context.</td></tr><tr><td><code>saveInFirebase</code></td><td><code>bool</code></td><td>If <code>true</code>, saves transaction details in Firebase.</td></tr><tr><td><code>amount</code></td><td><code>num</code></td><td>The payment amount in currency units.</td></tr><tr><td><code>rzpKey</code></td><td><code>String</code></td><td>Razorpay API Key ID.</td></tr><tr><td><code>razorpayKeySecret</code></td><td><code>String</code></td><td>Razorpay Secret Key.</td></tr><tr><td><code>appName</code></td><td><code>String</code></td><td>Name of the application.</td></tr><tr><td><code>itemName</code></td><td><code>String?</code></td><td>Optional name or description of the item.</td></tr><tr><td><code>userProfile</code></td><td><code>RzpUserProfile</code></td><td>User profile containing name, phone number, and email.</td></tr><tr><td><code>success</code></td><td><code>Function</code></td><td>Callback function triggered on successful payment.</td></tr><tr><td><code>failure</code></td><td><code>Function</code></td><td>Callback function triggered on payment failure.</td></tr><tr><td><code>error</code></td><td><code>Function</code></td><td>Callback function for errors during the payment process.</td></tr></tbody></table>

## Example

Here's a basic usage example of the pay method in a Flutter app:

```dart
RazorpayTotalxsoftware.pay(
  context,
  saveInFirebase: true,
  amount: 500,
  rzpKey: 'your_rzp_key',
  razorpayKeySecret: 'your_rzp_secret',
  appName: 'YourAppName',
  itemName: 'Sample Item',
  userProfile: RzpUserProfile(
    name: 'John Doe',
    phoneNumber: '+1234567890',
    email: 'john.doe@example.com',
  ),
  success: (PaymentSuccessResponse response) {
    print('Payment Successful: ${response.paymentId}');
  },
  failure: (PaymentFailureResponse response) {
    print('Payment Failed: ${response.message}');
  },
  error: (String errorMessage) {
    print('Error: $errorMessage');
  },
);

```

## Explore more about TotalX at www.totalx.in - Your trusted software development company!

## Community

Join the **Flutter Firebase Kerala** community on Telegram for support and updates:

<a href="https://t.me/Flutter_Firebase_Kerala">
  <img src="https://cdn-icons-png.flaticon.com/512/2111/2111646.png" alt="Telegram" width="80" height="80">
</a>