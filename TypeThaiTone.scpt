on run {input, parameters}
	set charList to {"a", "á", "à", "â", "ă", "e", "é", "è", "ê", "ě", "i", "í", "Ì", "î", "ĭ", "o", "ó", "ò", "ô", "ŏ", "u", "ú", "ù", "û", "ŭ"}
	set chosenChar to choose from list charList with prompt "Select a character to type:" without multiple selections allowed and empty selection allowed
	if chosenChar is not false then
		set the clipboard to (item 1 of chosenChar) as text
		delay 0.5 -- Wait half a second to ensure clipboard is ready
		tell application "System Events"
			keystroke "v" using {command down} -- Command to paste from clipboard
		end tell
	end if
end run