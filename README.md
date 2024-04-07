## Features

- Easy selection of Thai tones and special characters through a prompt dialog.
- Utilizes the clipboard to streamline the transcription process for Thai language learners, enhancing efficiency.
- Fully compatible with macOS, leveraging the AppleScript capabilities for a smooth user experience.

## Table of Contents

- [Installation](#installation)
- [How to Use](#how-to-use)
- [Setting Up a Hotkey](#setting-up-a-hotkey)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Installation

### Prerequisites

- macOS operating system.
- Basic familiarity with running scripts on macOS.

### Steps

1. **Download the Script**: Download the `TypeThaiTone-script` AppleScript file from this repository.

2. **Open Script Editor**: Find the Script Editor application on your Mac (located in the `Applications > Utilities` folder).

3. **Load the Script**: Open the downloaded `TypeThaiTone-script` file in Script Editor.

4. **Review and Save the Script**: Inspect the script for your understanding and save it to your desired location. You may choose to save it as an application by selecting `File > Export` and then choosing `Application` from the File Format dropdown. This makes the script a standalone application.

5. **Grant Accessibility Permissions**: For the script to simulate key presses and access the clipboard, macOS requires it to have Accessibility permissions. Go to `System Preferences > Security & Privacy > Privacy > Accessibility`, unlock the settings by clicking the lock icon, and add Script Editor (or your exported application) to the list of apps allowed to control your computer.

## How to Use

To use the script:

1. **Run the Script**: Execute the script via Script Editor or double-click the exported application.

2. **Select a Character**: A dialog box with a list of characters will appear. Choose the character you wish to use; it will then be copied to the clipboard.

3. **Paste the Character**: Position the cursor in the desired input field and use `Cmd + V` to paste the character from the clipboard.

### AppleScript

```AppleScript
on run {input, parameters}
    set charList to {"a", "à", "á", "â", "ă", "e", "è", "é", "ê", "ě", "i", "ì", "í", "î", "ǐ", "o", "ò", "ó", "ô", "ŏ", "u", "ù", "ú", "û", "ŭ"}
    set chosenChar to choose from list charList with prompt "Select a character to type:" without multiple selections allowed and empty selection allowed
    if chosenChar is not false then
        set the clipboard to (item 1 of chosenChar) as text
        delay 0.5 -- Wait half a second to ensure clipboard is ready
        tell application "System Events"
            keystroke "v" using {command down} -- Command to paste from clipboard
        end tell
    end if
end run
```

## Setting Up a Hotkey

To facilitate running this script with a hotkey for ease of use:

1. **Open Automator**: This application is located in your `Applications` folder. You can quickly find it using Spotlight search (`Cmd + Space`) and typing "Automator".

2. **Create a New Document**: Once Automator is open, create a new document by selecting `File > New` from the menu bar, and choose `Quick Action` as the document type. Click `Choose` to continue.

3. **Configure Your Quick Action**:
    - In the workflow options at the top, set "Workflow receives" to "no input" from the dropdown menu. This setting ensures the script can be run regardless of the current application context.
    - Optionally, you can select "any application" to indicate that this Quick Action can be used while any application is active.

4. **Add and Configure Run AppleScript**:
    - In the Actions sidebar on the left, use the search bar to find the "Run AppleScript" action. Drag this action to the workflow area on the right.
    - You'll see a template script in the action you just added. Delete this template and paste your `TypeThaiTone-script` AppleScript code into this area.

5. **Save Your Quick Action**:
    - Go to `File > Save` and name your Quick Action. A name like "TypeThaiTone" is descriptive and easy to remember.

6. **Assign a Hotkey**:
    - Open `System Preferences` and navigate to `Keyboard > Shortcuts > Services`.
    - Scroll down to find "TypeThaiTone" under the "General" section.
    - Click on it, then click `Add Shortcut` and press the key combination you wish to use as a shortcut.

## Troubleshooting

If the script does not execute as expected, verify the following:
- **Accessibility Permissions**: Check `System Preferences > Security & Privacy > Privacy > Accessibility` to ensure Automator (or your exported app if you saved the script as an application) is allowed to control your Mac.
- **Clipboard Overwrites**: Before pasting, ensure no other application has accessed the clipboard after you've selected a character, as this could overwrite the character you intended to paste.

## Contributing

Contributions, feedback, and suggestions are warmly welcomed. If you have ideas for improvement or encounter any issues, please feel free to open an issue or submit a pull request. Your input is valuable in enhancing this project and assisting fellow Thai language learners.

## License

MIT License

Copyright (c) 2024 EugeneEl

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

