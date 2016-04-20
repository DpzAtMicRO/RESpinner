# RESpinner
<br />
<br />
<br />
A **Swift** based customisable light weight Spinner / Loading view **for iOS 8** and up.
<br />
<br />
## Features
- supports iOS8 and above
- Works as on top subview and hence prevents touches on current view
- Comes with two type of spineners  - **Custom Circular progress** and **default Activity View** 
- Builds as an **iOS 8 framework**.

![RESpinners.png](https://github.com/DpzAtMicRO/RESpinner/blob/master/Dumps/RESpinners.png)

## Usage

Add the folder  **RESpinnerView** and all its contents to your project.

(CocoaPods coming up! ).

After adding the RESpinnerView to your project, just make the calls: 

Show Custom circular spinner :
```swift
RESpinner.shared.show(self.view)
```

Show loading spinner with default activity indicator view and disabled background :
```swift
RESpinner.shared.showActivity(self.view)
```

Hide spinner:

```swift
RESpinner.shared.hide()
```

**Note**: Open to customisations to enhance the general look and feel.

## License

The MIT License (MIT)

Copyright (c) 2016 Deepak D (deepak.requiss@gmail.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
