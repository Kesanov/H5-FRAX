import skillwheel
import bloodrage
import creaturepedia
import artifacts
import os
import shutil
import zipfile
from tqdm import tqdm

def topprio(path):
    os.utime(path, (int(3e9), int(3e9)))

shutil.rmtree('Frax', ignore_errors=True)
os.makedirs('Frax')

zipfile.ZipFile('MMH55-Frame.pak', 'r').extractall('Frax/')
zipfile.ZipFile('MMH55-Index.pak', 'r').extractall('Frax/')
zipfile.ZipFile('MMH55-Texts-EN.pak', 'r').extractall('Frax/')

skillwheel.main()
bloodrage.main()
creaturepedia.main()
artifacts.main()

folders = ['scripts', 'Characters', 'GameMechanics', 'MapObjects', 'Maps', 'Text', 'Tools', 'UI', 'README.txt']
for folder in tqdm(folders[1:], desc='Copying Frax Files'):
   for path, _, files in os.walk(folder):
       os.makedirs(f'Frax/{path}', exist_ok=True)
       for file in files:
           shutil.copy(f'{path}/{file}', f'Frax/{path}')

for dir, dirs, files in tqdm(os.walk('Frax'), desc='Giving Top Priority To Frax Files'):
    topprio(dir)
    for file in files:
        topprio(dir + '/' + file)

# CREATE PAK ARCHIVE
with zipfile.ZipFile('Frax.pak', 'w') as zip:
   for path, _, files in tqdm(os.walk('Frax/'), desc='Zipping Files'):
       for file in files:
           file_name = os.path.join(path, file)
           zip.write(file_name)
