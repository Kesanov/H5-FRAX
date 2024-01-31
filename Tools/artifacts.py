import os
from xdb import XDB
from tqdm import tqdm

models = {
    'PRIMARY': '/_(Model)/Artefacts/Dragon_Flame_Tongue.(Model).xdb#xpointer(/Model)',
    'SECONDARY': '/_(Model)/Artefacts/DragonscaleShield.xdb#xpointer(/Model)',
    'HEAD': '/_(Model)/Artefacts/Dragon_talon_crown.xdb#xpointer(/Model)',#
    'CHEST': '/_(Model)/Artefacts/Dragon_Scale_Armor.xdb#xpointer(/Model)',
    'NECK': '/_(Model)/Artefacts/Dragon_Teeth_Necklace.(Model).xdb#xpointer(/Model)',
    'FINGER': '/_(Model)/Artefacts/Dragon_Eye_Ring.(Model).xdb#xpointer(/Model)',
    'FEET': '/_(Model)/Artefacts/Dragon_bone_greaves.xdb#xpointer(/Model)',
    'INVENTORY': '/_(Model)/Artefacts/Endless_Bag_of_Gold.(Model).xdb#xpointer(/Model)',
    'SHOULDERS': '/_(Model)/Artefacts/Dragon_Wing_Mantle.(Model).xdb#xpointer(/Model)',
    'MISCSLOT1': '/_(Model)/Artefacts/Scroll.(Model).xdb#xpointer(/Model)',
}

colors = {
    'ARTF_CLASS_GRAIL': 'Gold',
    'ARTF_CLASS_RELIC': 'Red',
    'ARTF_CLASS_MAJOR': 'Blue',
    'ARTF_CLASS_MINOR': 'Green',
}

def normalizeID(id):
    return id.replace('ARTIFACT_', '').replace('ARTF_', '')

def main():
    slots = {}

    arts = {a['ID'].txt: a for a in XDB.load(f'GameMechanics/RefTables/Artifacts.Frax.xdb')[0]}
    data = XDB.load(f'Frax/GameMechanics/RefTables/Artifacts.xdb')
    for art in tqdm(list(data[0]), desc = 'Artis: Update'):
        if art['ID'].txt in arts:
            art['obj'] = arts[art['ID'].txt]['obj']
    data.save()

    arts = {normalizeID(a['ID'].txt): a for a in XDB.load(f'Frax/GameMechanics/RefTables/Artifacts.xdb')[0]}

    for dirname, _, names in tqdm(list(os.walk('Frax/MapObjects/Artifacts/')), desc='Artis: Models'):
        for filename in names:
            root = XDB.load(os.path.join(dirname, filename))
            color = colors[arts[normalizeID(root['ArtifactID'].txt)]['obj']['Type'].txt]
            root['Effect'].atr['href'] = f'/Effects/_(Effect)/Artefacts/General/{color}.xdb#xpointer(/Effect)'
            if root['Model'].atr and root['Model'].atr['href'] == '/_(Model)/Artefacts/Tank.(Model).xdb#xpointer(/Model)':
                root['Model'].atr['href'] = models[arts[normalizeID(root['ArtifactID'].txt)]['obj']['Slot'].txt]
            root.save()

if __name__ == '__main__':
    main()