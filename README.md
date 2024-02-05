# SwiftUISpeechToText
A Swift Package which helps to implement Speech to Text functionality in SwiftUI

Import the package through SPM using: https://github.com/pandashashwat97/SwiftUISpeechToText.git

Usage
1. Add two privacy properties into the info list of your SwiftUI Project
![image](https://github.com/pandashashwat97/SwiftUISpeechToText/assets/82383705/9211fda0-f62b-4d67-b798-69e2d6ad7be9)

Start by importing SwiftUISpeechToText

2. import SwiftUISpeechToText

********
UPADTES FOR BEGINERS: After the above steps you can now directly create a state variable and call a predefined view 
with the latest update v1.0

![image](https://github.com/pandashashwat97/SwiftUISpeechToText/assets/82383705/ce17b364-8c0c-4748-8847-966fa3dc62a8)

You will get a text field with prdefined option to convert speech to text.
********

Create a StateObject

3. @StateObject var speechRecognizer = SpeechRecognizer()

Start transcribing

4. Call function: speechRecognizer.transcribe()

Stop transcribing

5. Call function: speechRecognizer.stopTranscribing()

Converted Text

6. Use speechRecognizer.transcript as the converted text string

For more details about implementation please import and checkout the below project:
https://github.com/pandashashwat97/SwiftUISpeechToTextDemo

Final Implementation:


https://github.com/pandashashwat97/SwiftUISpeechToText/assets/82383705/a0007e27-9678-4b8a-814a-2494eda2ca3d



