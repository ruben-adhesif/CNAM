# Tesseract CheatSheat

Here are the markdown tables for each list:
- tesseract --help-psm
- tesseract --help-oem
- tesseract --list-langs


## Page Segmentation Modes (psm)  
tesseract --help-psm
| Mode | Description |
| --- | --- |
| 0 | Orientation and script detection (OSD) only. |
| 1 | Automatic page segmentation with OSD. |
| 2 | Automatic page segmentation, but no OSD, or OCR. (not implemented) |
| 3 | Fully automatic page segmentation, but no OSD. (Default) |
| 4 | Assume a single column of text of variable sizes. |
| 5 | Assume a single uniform block of vertically aligned text. |
| 6 | Assume a single uniform block of text. |
| 7 | Treat the image as a single text line. |
| 8 | Treat the image as a single word. |
| 9 | Treat the image as a single word in a circle. |
| 10 | Treat the image as a single character. |
| 11 | Sparse text. Find as much text as possible in no particular order. |
| 12 | Sparse text with OSD. |
| 13 | Raw line. Treat the image as a single text line, bypassing hacks that are Tesseract-specific. |

## OCR Engine Modes (oem)

| Mode | Description |
| --- | --- |
| 0 | Legacy engine only. |
| 1 | Neural nets LSTM engine only. |
| 2 | Legacy + LSTM engines. |
| 3 | Default, based on what is available. |

## List of Available Languages (lang)

| Language | Description |
| --- | --- |
| eng | English |
| enm | Middle English |
| frm | French (Modern) |
| lat | Latin |
| oci | Occitan |
| osd | Orientation and script detection data |
| script/Latin | Script detection for Latin script |