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

os.makedirs('Frax', exist_ok=True)

folders = [ 'Frame', 'Index', 'Texts-EN', 'Skillwheel', 'Creaturepedia' ]
for folder in tqdm(folders, desc='Extract H55 Files'):
    zipfile.ZipFile(f'MMH55-{folder}.pak', 'r').extractall('Frax/')

folders = [ 'NCF_601', 'NCF_620', 'NCF_625', 'NCF_634' ]
for folder in tqdm(folders, desc='Extract Frax Files'):
    zipfile.ZipFile(f'{folder}.pak', 'r').extractall('Frax/')

folders = ['scripts', 'Characters', 'GameMechanics', 'MapObjects', 'Maps', 'Text', 'Textures', 'Tools', 'UI']
for folder in tqdm(folders, desc='Copy Frax Files'):
   for path, _, files in os.walk(folder):
       os.makedirs(f'Frax/{path}', exist_ok=True)
       for file in files:
           shutil.copy(f'{path}/{file}', f'Frax/{path}')

skillwheel.main()
bloodrage.main()
creaturepedia.main()
artifacts.main()

# shutil.rmtree('Frax/scripts', ignore_errors=True)

for dir, dirs, files in tqdm(list(os.walk('Frax')), desc='Make Frax Override H55 Files'):
    topprio(dir)
    for file in files:
        topprio(dir + '/' + file)


with zipfile.ZipFile('Frax.pak', 'w') as zip:
   os.chdir('Frax')
   for path, _, files in tqdm(list(os.walk('.')), desc='Create Frax Archive'):
       for file in files:
           file_name = os.path.join(path, file)
           zip.write(file_name)
os.chdir('..')
with zipfile.ZipFile('Frax.zip', 'w') as zip:
    zip.write('README.txt')
    zip.write('Frax.pak')
    zip.write('Frax.DUELIST-PACK.pak')


shutil.rmtree('Frax', ignore_errors=True)
