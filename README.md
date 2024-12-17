# Seed Protect

**Seed Protect** is a collection of simple Windows batch scripts that utilize **Steghide** to securely hide and extract sensitive data (e.g., seed phrases, passwords) within JPG image files. This allows for an additional layer of obfuscation and security when storing or sharing sensitive text data.

---

## Features

- **ofero-encrypt.bat**:  
  Embed a `.txt` file containing sensitive data into a `.jpg` image using `Steghide`.  
- **ofero-decrypt.bat**:  
  Extract the hidden `.txt` file from a `.jpg` image.  

Both scripts provide a user-friendly drag-and-drop interface, requiring no command-line experience.

---

## Requirements

1. **Steghide**  
   Ensure `steghide` is installed and included in the `steghide` folder inside the repository.  
   [Download Steghide](https://steghide.sourceforge.net/)

2. **Windows OS**  
   The batch files are designed to run on Windows.

---

## How to Use

### 1. **Encryption** - Hide a `.txt` file inside a `.jpg` image  

1. Place **`ofero-encrypt.bat`** in the same directory as the **Steghide** executable.  
2. Drag and drop both:
   - A `.txt` file containing sensitive data, and  
   - A `.jpg` file to hide the text in.  
3. Follow the on-screen prompts.  
4. The `.txt` file will be securely embedded into the `.jpg` image and deleted after successful encryption.  

**Example**:  
Drag `seed.txt` and `cover.jpg` onto `ofero-encrypt.bat`.  
This will embed `seed.txt` into `cover.jpg`.

---

### 2. **Decryption** - Extract hidden text from a `.jpg` image  

1. Place **`ofero-decrypt.bat`** in the same directory as the **Steghide** executable.  
2. Drag and drop a `.jpg` file containing hidden data onto the batch script.  
3. A file named **`decrypt.txt`** will be extracted into the same directory.  

**Example**:  
Drag `cover.jpg` onto `ofero-decrypt.bat`.  
This will extract `decrypt.txt`.

---

## File Structure
```plaintext
seed-protect/
│
├── steghide/                # Directory for the Steghide executable
│   └── steghide.exe         # Steghide tool
│
├── ofero-encrypt.bat        # Script to hide a .txt file into a .jpg file
├── ofero-decrypt.bat        # Script to extract hidden text from a .jpg file
└── README.md                # This documentation file
```

## Security Notes
Steghide will prompt for a password during encryption and extraction. Use a strong password to prevent unauthorized access.
The .txt file is deleted automatically after successful encryption to prevent duplication of sensitive data.
Ensure you back up the password securely, as it is required for decryption.

## Disclaimer
This tool is provided as is, without any warranty. Use it responsibly to protect sensitive data.

## Contributing
Feel free to fork this repository and submit pull requests for improvements or bug fixes.

## License
This project is licensed under the MIT License.

**Thank you for using Ofero Network's Security Tools!**