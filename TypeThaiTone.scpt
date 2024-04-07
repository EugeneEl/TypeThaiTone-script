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