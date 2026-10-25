# Flutter Drawer Widget -- Değerler Eğitimi Uygulaması

Bu proje, Flutter'da **`Drawer` widget'ının** kullanımını öğretmek
amacıyla hazırlanmış örnek bir mobil uygulamadır. Uygulama,
değerler eğitimi kapsamında **saygı, temizlik ve mahremiyet** konularını
ele alır.

Proje, Bilişim Teknolojileri Alanı 11. sınıf Yazılım Geliştirme Dalı
**Mobil Uygulamalar** dersi için eğitim ve laboratuvar çalışması olarak
kullanılabilir.

## 📘 Eğitim Makalesi

Uygulamanın anlatıldığı makaleye aşağıdaki bağlantıdan ulaşabilirsiniz:

[Flutter'da Drawer
Widget](https://pardusflutter.blogspot.com/2026/10/flutterda-drawer-widget.html)

## ✨ Özellikler

-   Material 3 tasarım yaklaşımını kullanır.
-   Yeşil tonlarında bir tema ve sade bir arayüz sunar.
-   `Scaffold` içindeki `drawer` özelliğiyle yan gezinme menüsü
    oluşturur.
-   `DrawerHeader` bölümünde başlık, ikon ve alt açıklama gösterir.
-   `ListTile` öğeleriyle Ana Sayfa, Saygı, Temizlik ve Mahremiyet
    sayfaları arasında geçiş sağlar.
-   Seçilen konuya ait başlık, ikon, açıklama ve günlük hayattan
    örnekleri ekranda gösterir.
-   Menü öğesi seçildikten sonra `Navigator.pop(context)` ile Drawer
    menüsünü kapatır.
-   Öğrencilerin kod üzerinde değişiklik yaparak yeni değerler ve
    içerikler eklemesine uygundur.

## 🖼️ Uygulamada Yer Alan Konular

  -----------------------------------------------------------------------
  Konu                                İçerik
  ----------------------------------- -----------------------------------
  Ana Sayfa                           Değerler Eğitimi uygulamasına giriş

  Saygı                               İnsanların haklarına, düşüncelerine
                                      ve farklılıklarına saygı

  Temizlik                            Kişisel hijyen ve ortak alanları
                                      temiz kullanma

  Mahremiyet                          Kişisel bilgileri, özel alanı ve
                                      başkalarının sınırlarını koruma
  -----------------------------------------------------------------------

## 🧰 Kullanılan Teknolojiler

-   **Flutter** -- çapraz platform mobil uygulama geliştirme
-   **Dart** -- uygulamanın programlama dili
-   **Material 3** -- modern arayüz bileşenleri

## 🚀 Kurulum ve Çalıştırma

Bilgisayarınızda Flutter SDK ve uygun bir geliştirme ortamının kurulu
olması gerekir.

1.  Depoyu bilgisayarınıza klonlayın:

    ``` bash
    git clone https://github.com/nuritiras/drawer_app.git
    ```

    > Depo adınız farklıysa komuttaki adresi kendi GitHub depo
    > adresinizle değiştirin.

2.  Proje klasörüne geçin:

    ``` bash
    cd drawer_app
    ```

3.  Paketleri indirin:

    ``` bash
    flutter pub get
    ```

4.  Uygulamayı çalıştırın:

    ``` bash
    flutter run
    ```

## 🧭 Kodda Öne Çıkan Yapılar

### `Scaffold` ve `drawer`

`Scaffold`, uygulamanın temel sayfa iskeletini oluşturur. `drawer` ise
bu iskelete sol taraftan açılan gezinme menüsünü bağlayan özelliktir.

``` dart
Scaffold(
  appBar: AppBar(
    title: const Text('Değerler Eğitimi'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // DrawerHeader ve menü öğeleri
      ],
    ),
  ),
  body: const Center(
    child: Text('İçerik burada gösterilir.'),
  ),
)
```

### `Drawer` ve `DrawerHeader`

-   **`Drawer`**: Yan menünün görünümünü ve içeriğini taşıyan Flutter
    widget sınıfıdır.
-   **`DrawerHeader`**: Menü üst bölümünde başlık veya tanıtım içeriği
    göstermek için kullanılır.
-   **`drawer`**: `Scaffold` üzerinde Drawer widget'ının hangi menü
    olarak kullanılacağını belirten özelliktir.

Dart'ta büyük harfle başlayan `Drawer` bir sınıf adıdır; küçük harfle
başlayan `drawer` ise `Scaffold` üzerindeki bir parametredir.

### `ListTile` ile menü oluşturma

Her değer için bir `ListTile` oluşturulur. `selected` özelliği seçili
öğeyi belirtir; `onTap` geri çağrısı ise kullanıcı öğeye dokunduğunda
çalışır.

``` dart
ListTile(
  leading: const Icon(Icons.handshake),
  title: const Text('Saygı'),
  onTap: () {
    // Seçilen içeriği göster
    Navigator.pop(context);
  },
)
```

### `setState()` ile içerik değiştirme

Uygulama, seçilen menü öğesinin indeksini `seciliSayfa` değişkeninde
tutar. `sayfaSec()` metodu içinde `setState()` çağrılarak arayüzün yeni
seçime göre yeniden oluşturulması sağlanır.

## 🧪 Öğrenci Etkinlikleri

1.  Drawer başlığının rengini ve metnini değiştirin.
2.  Listeye **Sabır** veya **Yardımlaşma** gibi yeni bir değer ekleyin.
3.  Yeni değer için uygun bir ikon, açıklama ve günlük hayat örneği
    tanımlayın.
4.  Seçili menü öğesinin rengini değiştirin.
5.  Menü öğesine dokunulduğunda içeriğin güncellendiğini test edin.
6.  Uygulamayı farklı ekran boyutlarında çalıştırarak görünümünü
    inceleyin.

## 🎯 Öğrenme Kazanımları

Bu uygulamayı tamamlayan öğrencilerin:

-   Flutter'da `Scaffold`, `Drawer` ve `DrawerHeader` widget'larını
    açıklayabilmesi,
-   `drawer` parametresinin görevini kavraması,
-   `ListTile` ile menü öğeleri oluşturabilmesi,
-   `List` ve `Map` kullanarak içerikleri düzenleyebilmesi,
-   `setState()` ile ekrandaki verileri güncelleyebilmesi,
-   `Navigator.pop(context)` ile Drawer menüsünü kapatabilmesi,
-   yazılım geliştirme sürecinde değerler eğitimi içeriğini bir mobil
    uygulamaya aktarabilmesi hedeflenir.

## 📂 Proje Dosyası

Flutter projesinin temel dosyaları genellikle şu yapıdadır:

``` text
flutter-drawer-degerler-egitimi/
├── android/
├── ios/
├── lib/
│   └── main.dart
├── test/
├── pubspec.yaml
└── README.md
```

Verilen örnek uygulama kodunu `lib/main.dart` dosyasına
yerleştirebilirsiniz.

## 👨‍🏫 Eğitim Amacı

Bu çalışma, yalnızca bir yan menü oluşturmayı değil; menü üzerinden
farklı eğitim içeriklerine geçiş yapmayı ve yazılım bileşenlerini
anlamlı bir eğitim senaryosunda kullanmayı amaçlar.

## 📄 Lisans

Bu proje eğitim ve öğrenme amacıyla hazırlanmıştır.

<img width="553" height="1110" alt="Ekran Resmi 2026-10-25 21 06 16" src="https://github.com/user-attachments/assets/ae6f93ee-52a7-44e6-8ad6-350d842c5d4f" />

<img width="553" height="1110" alt="Ekran Resmi 2026-10-25 21 06 07" src="https://github.com/user-attachments/assets/4f23966f-932d-4016-b3e8-9cea49437cd6" />


