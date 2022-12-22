import os
from xdb import XDB
from tqdm import tqdm

models = {
    'PRIMARY': '/_(Model)/Artefacts/Sword_of_Ruins.(Model).xdb#xpointer(/Model)',
    'SECONDARY': '/_(Model)/Artefacts/Iceberg_Shield.xdb#xpointer(/Model)',
    'HEAD': '/_(Model)/Artefacts/Crown_of_Many_Eyes.xdb#xpointer(/Model)',#
    'CHEST': '/_(Model)/Artefacts/Valorius_Armor.xdb#xpointer(/Model)',
    'NECK': '/_(Model)/Artefacts/Necklace_of_Bravery.(Model).xdb#xpointer(/Model)',
    'FINGER': '/_(Model)/Artefacts/Ring_of_Lightning_Protection.(Model).xdb#xpointer(/Model)',
    'FEET': '/_(Model)/Artefacts/Earth_sliders.xdb#xpointer(/Model)',
    'INVENTORY': '/_(Model)/Artefacts/Endless_Bag_of_Gold.(Model).xdb#xpointer(/Model)',
    'SHOULDERS': '/_(Model)/Artefacts/H5Addon1/BearhideWraps.xdb#xpointer(/Model)',
    'MISCSLOT1': '/_(Model)/Artefacts/Scroll.(Model).xdb#xpointer(/Model)',
}


def main():
    slots = {}
    
    # root = XDB.load('GameMechanics/Reftables/Artifacts.2.xdb')
    
    
    # for i in range(len(list(root['objects']))):
    #     item = root['objects'][i]['obj']
    #     slots[root['objects'][i]['ID'].txt] = item['Slot'].txt
    #     if item['Model'].atr and item['Model'].atr['href'] == '/_(Model)/TerrainObjects/Water/SeaChest.(Model).xdb#xpointer(/Model)':
    #         item['Model'].atr['href'] = models[item['Slot'].txt]

    # root.save('GameMechanics/Reftables/Artifacts.xdb')

    # TODO FIX MODELS
    for filename in tqdm(os.listdir('Frax/MapObjects/Artifacts/'), desc='Artis: Models'):
        if not os.path.isfile(filename): continue
        root = XDB.load(f'Frax/MapObjects/Artifacts/{filename}')
        if root['Model'].atr and root['Model'].atr['href'] == '/_(Model)/TerrainObjects/Water/SeaChest.(Model).xdb#xpointer(/Model)':
            root['Model'].atr['href'] = models[slots[root['ArtifactID'].txt]]
        root.save()

    arts = {a['ID'].txt: a for a in XDB.load(f'GameMechanics/RefTables/Artifacts.Frax.xdb')[0]}
    data = XDB.load(f'Frax/GameMechanics/RefTables/Artifacts.xdb')
    for art in tqdm(list(data[0]), desc = 'Artis: Update'):
        if art['ID'].txt in arts:
            art['obj'] = arts[art['ID'].txt]['obj']
    data.save()

if __name__ == '__main__':
    main()