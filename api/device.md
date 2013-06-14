# Module: device

Information and settings about the device running the
application. Due to the many platforms the Game Closure DevKit
runs on, it is useful to be able to run code based on the
environment.

~~~
import device;
~~~

## Methods

### setUseDOM (useDOM)

Parameters
:    1. `useDOM {boolean}`

Set the rendering engine to use the HTML DOM backend instead of
the default HTML Canvas element.

### hideAddressBar ()

If available on the device, hides the address bar. If not
available, this function does nothing.

### getDimensions (isLandscape)

Parameters
:    1. `isLandscape {boolean} = false` ---Return size in landscape-mode.

Returns
:    1. `{object}`
	     * `width {number}` ---The horizontal size of the screen.
		 * `height {number}` ---The vertical size of the of the screen.

Returns the screen dimensions of the device. The default
size is given in portrait-mode, but it can be returned in
landscape-mode by passing a `true` argument.

### collectGarbage ()

Triggers garbage collection on the device. Does nothing in the browser.

## Properties

### name `{string}`

The name of the runtime platform, e.g. `'tealeaf'` or `'browser'`.

### defaultFontFamily `{string} = 'Helvetica'`

The default font used by the device.

### width `{number}`

The screen width of the device.

### height `{number}`

The screen height of the device.

### screen `{event.Emitter}`

* `width {number}` ---The horizontal size of the screen.
* `height {number}` ---The vertical size of the of the screen.
* `devicePixelRatio {number} = 1` ---The ratio between physical pixels and device-independent pixels (dips) on the device.
* `orientation {string}` ---Value can be `'portrait'` or `'landscape'`.
* `defaultOrientation {string}` ---Defaults to `'portrait'` or `'landscape'`.
* `isPortrait {boolean}` ---`'true'` if in portrait mode.
* `isLandscape {boolean}` ---`'true'` if in landscape mode.
* `browserChrome {object}` ---Information about the size of the addess bar.
	* `portrait {object} = {top: 0, bottom: 0}`
	* `landscape {object} = {top: 0, bottom: 0}`

Information about the device's screen size and
orientation. Depending on the device, `defaultOrientation`
and `browserChrome` may not be available.

### canResize `{boolean}`

Test if the device's screen is able to resize.

### isSimulator `{boolean}`

Property is `true` when run in the simulator, otherwise `false`.

### isIOS `{boolean}`

Property is `true` when run on iOS, otherwise `false`.

### isAndroid `{boolean}`

Property is `true` when run on Android, otherwise `false`.

### isMobileNative `{boolean}`

Property is `true` when run on a mobile device, otherwise `false`.

### isMobileBrowser `{boolean}`

Property is `true` when run in a mobile web browser, otherwise `false`.

### isSafari `{boolean}`

Property is `true` when run in a Safari web browser, otherwise `false`.

### isUIWebView `{boolean}`

Property is `true` when run in a WebView, otherwise `false`.

### isUnknown `{boolean}`

Property is `true` if unable to determine the device,
otherwise `undefined`. When run on an unknown device, there
are no other properties defined beyond this one.

### useDOM `{boolean} = false`

Check if the current rendering backend is using the DOM.

### events `{object}`

* `start {string} = 'touchstart'|'mousedown'`
* `move {string} = 'touchmove'|'mousemove'`
* `end {string} = 'touchend'|'mouseup'`

A collection of events supported by the device. Since it may
be run in a web browser or touch device, this provides a
convenient mapping of both types of input.
