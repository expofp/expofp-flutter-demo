This is an example of how you can integrate ExpoFP maps into an android(Flutter) application.

## Configuring WebView

```js
InAppWebView(
    initialUrlRequest: URLRequest(url: Uri.parse('https://demo.expofp.com')),
    initialOptions: InAppWebViewGroupOptions(
        android: AndroidInAppWebViewOptions(
            allowFileAccess: true,
            domStorageEnabled: true,
            allowContentAccess: true),
        crossPlatform: InAppWebViewOptions(
            allowUniversalAccessFromFileURLs: true,
            javaScriptEnabled: true,
            allowFileAccessFromFileURLs: true)),
    onConsoleMessage: (InAppWebViewController controller,
        ConsoleMessage consoleMessage) {},
    onWebViewCreated: (InAppWebViewController controller) {
    },
)
```
## JavaScript code invocation

Calling the booth selection function:

```js
webViewController?.evaluateJavascript(source: "selectBooth($boothName)");
```

Calling the set blue-dot function:

```js
webViewController?.evaluateJavascript(source: "setCurrentPosition($x, $y, $focus)");
```

Calling the route building function:

```js
webViewController?.evaluateJavascript(source: "selectRoute($boothFrom, $boothTo, $exceptUnAccessible)");
```
