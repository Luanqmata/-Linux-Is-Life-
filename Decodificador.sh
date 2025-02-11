#!/bin/bash

# A string codificada em base64
Flag_codificada_base_64="VHJ5SGFja01le1AzcXUzbjAtZzRmNG5oMHQwfQo="

# Decodificando a string base64
Flag_decodificada=$(echo "$Flag_codificada_base_64" | base64 --decode)

# Imprimindo a flag decodificada
echo "Flag decodificada: $Flag_decodificada"
