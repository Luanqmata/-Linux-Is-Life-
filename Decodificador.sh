#!/bin/bash

Flag_codificada_base_64="VHJ5SGFja01le1AzcXUzbjAtZzRmNG5oMHQwfQo="

Flag_decodificada=$(echo "$Flag_codificada_base_64" | base64 --decode)

echo "Flag decodificada: $Flag_decodificada"
