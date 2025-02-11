import base64

Flag_codificada_base_64 = "VHJ5SGFja01le1AzcXUzbjAtZzRmNG5oMHQwfQo="

Flag_decodificada = base64.b64decode(Flag_codificada_base_64).decode('utf-8')

print("Flag decodificada:", Flag_decodificada)
