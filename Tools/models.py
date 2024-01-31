from xdb import XDB
import os
from shutil import copy

def main():
    for dirname, _, names in os.walk('H55/MapObjects/'):
        for filename in names:
            path = dirname + '/' + filename
            name = dirname.split('/')[-1] + '/' + filename[:-4]
            name = name.replace('.(AdvMapHeroShared)', '')
            try:               
                data = XDB.load(path)
                data['Specialization']
                
                os.makedirs(os.path.dirname(f'_/Characters/Heroes/{name}/'), exist_ok=True)

                for (tag, pointer) in [
                        ('Model', 'Model'), ('AnimSet', 'AnimSet'), ('HeroCharacterArena', 'Character'), 
                        ('HeroCharacterArenaMelee', 'Character'), ('HeroCharacterAdventure', 'Character'), 
                        ('HeroIndividualCamera', 'Camera') ,('CombatVisual', 'CreatureVisual') ]:

                    filename = f'Characters/Heroes/{name}/{tag}.xdb'

                    if 'href' in data[tag].atr:
                        filepath = data[tag].atr['href'][:-12-len(pointer)]
                        prefix = '/'.join(filepath.split('/')[:-1])
                        text = open('data/'+filepath).read()
                        text = text.replace('href="/', '{TODO}')  
                        text = text.replace('href="', f'href="{prefix}/')
                        text = text.replace('{TODO}', 'href="/')
                        open('_/'+filename, 'w').write(text)
                    else:
                        copy(f'HeroVisualDummy/{tag}.xdb', '_/'+filename)


                    data[tag].atr['href'] = f'/{filename}#xpointer(/{pointer})'

                data.save('_' + path)
                # os.utime('_' + path, tuple([1199149261]*2))
            except Exception as e:
                if 'Specialization' not in str(e):
                    print('ERROR:', filename, e)

if __name__ == '__main__':
    main()