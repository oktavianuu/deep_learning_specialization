#!/bin/bash

GITIGNORE_FILE=".gitignore"
touch "$GITIGNORE_FILE"

echo "Mencari file berukuran > 50 MB..."

find . -type f -size +50M -not -path '*/.git/*' | while IFS= read -r file; do
    # Hapus prefix ./ di awal path
    clean_path="${file#./}"

    # Lewati jika path kosong
    if [ -z "$clean_path" ]; then
        continue
    fi

    # Cek apakah file sudah diabaikan di .gitignore
    if ! git check-ignore -q -- "$clean_path"; then
        echo "$clean_path" >> "$GITIGNORE_FILE"
        echo "[+] Ditambahkan ke .gitignore: $clean_path"
    else
        echo "[-] Sudah ada di .gitignore: $clean_path"
    fi
done

echo "Proses selesai!"
