# mCards Cards SDK for iOS

Customer distribution of CardsSDK **1.1.19**, paired with CoreSDK **1.4.8**.
Both binaries include iOS device and simulator slices. Requires iOS 14 or later.

## Install

Add `https://github.com/mCards/sdk-cards-ios-framework` in Xcode's Package Dependencies,
select version **1.1.19**, and add the `CardsSDK` product to your app.
The product also supplies the matching `CoreSDK` models; no Wantsa repository access is needed.

When upgrading, remove any separate CoreSDK / `sdk-model-ios-framework` /
`sdk-core-ios-framework` package reference first to avoid duplicate `CoreSDK` modules.
Code can continue to `import CardsSDK` and `import CoreSDK`.

## Features

- Fetch cards and balances; display secure card details.
- Add, activate, and remove cards in Apple Wallet (issuer entitlements required).
- Set/change or reveal a Marqeta PIN and activate a card through a hosted WebView.
- Receive `CSDKPinActionListener` completion and failure callbacks without handling the PIN.
- Card lifecycle and AI agent SSO APIs.

For PIN management, configure the SDK with the cardholder access token, provide valid access
and ID tokens, and pass a listener to `showCardPinManagement(card:webView:jwts:listener:)`.
Enable JavaScript, preserve cookies, and handle WebView navigation errors separately.
Only a `.setPin` success completes PIN setup; activation may lead into a separate PIN step.
Refresh the card after completion because issuer confirmation is asynchronous.
There are no custom theme or `success_url` arguments.

See the [customer demo](https://github.com/mCards/sdk-cards-ios-demo) and
[SDK documentation](https://mcards.readme.io/docs/mcards-sdk-overview).

## Release verification

`RELEASE.json` records the exact reference versions and commits. The XCFrameworks are copied
unchanged from those releases. After review and merge, tag the merge commit `1.1.19` so Swift
Package Manager can resolve the new version. The demo update depends on that tag.
