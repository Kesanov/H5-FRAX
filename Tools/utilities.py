import os

def write_txt(file, text):
    os.makedirs(os.path.dirname(file), exist_ok=True)
    with open(file+'.txt', mode='w', encoding='utf-16') as f:
        f.write(text)