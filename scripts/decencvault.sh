#!/bin/bash

# Check if the operation (encrypt/decrypt) and the password are provided as arguments
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <encrypt|decrypt> <vault_password>"
  exit 1
fi

# Operation: encrypt or decrypt
OPERATION="$1"
VAULT_PASS="$2"

# Hard-coded directories inside ../spinup-vps
DIRS=(
  "../spinup-vps/group_vars"
  "../spinup-vps/vars"
)

# Validate the operation
if [[ "$OPERATION" != "encrypt" && "$OPERATION" != "decrypt" ]]; then
  echo "Error: Operation must be either 'encrypt' or 'decrypt'."
  exit 1
fi

# Loop through the directories and apply the operation to the files inside
for DIR in "${DIRS[@]}"; do
  if [ -d "$DIR" ]; then
    echo "Processing directory: $DIR"
    
    for FILE in "$DIR"/*; do
      if [ -f "$FILE" ]; then  # Ensure it's a file and not a directory
        if [ "$OPERATION" == "encrypt" ]; then
          ansible-vault encrypt "$FILE" --vault-password-file <(echo "$VAULT_PASS")
          echo "Encrypted $FILE"
        elif [ "$OPERATION" == "decrypt" ]; then
          ansible-vault decrypt "$FILE" --vault-password-file <(echo "$VAULT_PASS")
          echo "Decrypted $FILE"
        fi
      fi
    done

  else
    echo "Warning: Directory $DIR does not exist. Skipping."
  fi
done
