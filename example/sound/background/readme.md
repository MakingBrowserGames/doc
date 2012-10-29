## Playing a background sound

This example shows how to add a background sound, pausing and resuming it.

Import the Sound class and the TextView class:

~~~
import Sound as Sound;
import ui.TextView as TextView;
~~~

Create an application and set the default settings:

~~~
exports = Class(GC.Application, function () {

    this._settings = {
        logsEnabled: window.DEV_MODE,
        showFPS: window.DEV_MODE,
        clearEachFrame: true,
        alwaysRepaint: true,
        preload: []
    };

    this.initUI = function () {
        this._textView = new TextView({
            superview: this.view,
            text: "Click to pause",
            color: "white"
        });
        this._textView.onInputSelect = bind(this, "onClick");
        this._paused = false;

        this._sound = new Sound({
            path: 'resources/audio/',
            files: {
~~~

This index is the name of the file,
the extension is depending on the system.
If you run this demo in Chromium the file
will be `resources/audio/background.ogg`
else the file will be `resources/audio/background.mp3`

~~~
                background: {
                    volume: 0.8,
                    loop: true,
                    background: true
                }
            }
        });
        this._sound.play("background", {loop: true});
    };
~~~

Pause or resume the sound...

~~~
    this.onClick = function() {
        this._paused = !this._paused;
        this._textView.setText("Click to " + (this._paused ? "resume" : "pause"));
        this._paused ? this._sound.pause("background") : this._sound.play("background");
    };

    this.launchUI = function () {};
});
~~~