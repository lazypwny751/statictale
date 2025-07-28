# MS-DOS Resource Tale

Bu proje, MS-DOS 6.22 temalı bir statik web sayfası sağlar ve GitHub Actions kullanarak otomatik resource indexleme yapar.

## �️ Özellikler

- **MS-DOS Teması**: Authentic DOS 6.22 arayüzü (mavi arkaplan, gri metin)
- **8.3 Dosya Formatı**: DOS tarzı dosya isimlendirme
- **Otomatik İndexleme**: Ayrı bash script ile temiz kod yapısı
- **DIR Komutu Simülasyonu**: DOS directory listing benzeri görünüm
- **ASCII Karakterler**: &lt;DIR&gt; etiketleri ve DOS formatı

## 📁 Proje Yapısı

```
resourcetale/
├── index.html                           # Ana MS-DOS temalı sayfa
├── scripts/
│   └── index-generator.sh              # Ayrılmış indexleme scripti
├── resources/                           # Resource dizini
│   ├── context.html                    # Dinamik body içeriği (DOS formatında)
│   └── [diğer dosyalar]               # İndexlenecek kaynaklar
└── .github/
    └── workflows/
        └── resource-indexer.yml       # Temizlenmiş workflow
```

## 🎨 DOS Teması Özellikleri

- **Renk Paleti**: 
  - Arkaplan: Koyu mavi (#000080)
  - Metin: Açık gri (#c0c0c0)
  - Vurgu: Beyaz (#ffffff)
  - Linkler: Sarı (#ffff00)
  - Dizinler: Açık kırmızı (#ff8080)

- **DOS Komutları**:
  - `C:\>` command prompt
  - `dir resources /w` komutu
  - `type index.bat` simülasyonu
  - DOS tarzı hata mesajları

## 🔧 Temizlenmiş Yapı

### Önceki Problem
```yaml
# Workflow içinde uzun bash script (kötü)
- name: Index resources
  run: |
    #!/bin/bash
    # 100+ satır script buraya gömülmüştü
```

### Yeni Çözüm
```yaml
# Temiz workflow + ayrı script (iyi)
- name: Make indexer executable
  run: chmod +x scripts/index-generator.sh

- name: Run DOS resource indexer
  run: ./scripts/index-generator.sh
```

## 💾 DOS Features

- **8.3 Filename Format**: `FILENAME.EXT` formatında görüntüleme
- **Byte Counts**: Virgülle ayrılmış byte sayıları
- **Directory Markers**: `<DIR>` etiketleri
- **Volume Info**: "Volume in drive C has no label"
- **File Statistics**: "X file(s), Y dir(s), Z bytes used"

## 🎮 Klavye Kısayolları

- **F1**: DOS Help system
- **Alt+F4**: "Terminate batch job (Y/N)?"
- **Ctrl+C**: Break command (^C)

## 🚀 Kullanım

1. Repository'yi clone edin
2. `resources/` dizinine dosyalarınızı ekleyin
3. Commit ve push yapın
4. Script otomatik çalışır: `scripts/index-generator.sh`
5. DOS formatında index oluşturulur
6. `index.html`'i açarak retro DOS deneyimini yaşayın

## 🛠️ Script Avantajları

- **Modüler**: Workflow'dan ayrı, bağımsız script
- **Maintenance**: Kolay düzenleme ve debug
- **Reusable**: Başka projelerde kullanılabilir
- **Testing**: Local'de test edilebilir
- **DOS Messages**: Authentic DOS çıktı mesajları

## 🎯 DOS Error Messages

Script authentic DOS mesajları içerir:
```
Bad command or file name: resources
Abort, Retry, Ignore, Fail? [A,R,I,F]: I
File(s) copied successfully
No files to copy
```

Şimdi çok daha temiz! Script ayrı, workflow sadece script'i çağırıyor. DOS teması da authentic! �✨
