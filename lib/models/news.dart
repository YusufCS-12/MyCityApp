class News {
  final String id;
  final String title;
  final String desc;
  String content;
  final String date;
  final String featuredMediaUrl;

  News(
      {this.id,
      this.title,
      this.desc,
      this.date,
      this.featuredMediaUrl,
      this.content});
}

List<News> newsList = [
  News(
      id: '0',
      title: 'Dev Proje İhlal Edildi',
      desc:
          'Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.',
      featuredMediaUrl: 'https://www.bingol.bel.tr/resimler/haberler/3421.jpg',
      date: '02-10-2020 16:31',
      content:
          '<div id="sagmenu"><p style="text-align: justify;"><strong><span style="font-size:16px;">Kültür Mahallesi’nde 1172 konut ve 196 işyerinin inşa edileceği Kentsel Dönüşüm Projesi’nin ihale edildiğini bildiren Başkan Arıkan; “ Örnek bir projeyle hem sorunları çözeceğiz hem de ilimizin çehresini değiştireceğiz”</span></strong></p><p style="text-align: justify;"><span style="font-size:14px;">Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">2013 yılından bu yana yaşanan sorunların çözümü noktasında önemli bir eşiğin daha aşıldığını belirten Başkan Arıkan, ihale sürecindeki değerlendirme ve itiraz süreçlerinin tamamlanmasıyla yapım aşamasına start verileceğini kaydetti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">Başkan Arıkan, “Hak sahipleri başta olmak üzere tüm Bingöl kamuoyunun yakından takip ettiği kentsel dönüşüm projesinin ihalesinin gerçekleştirilmesinden dolayı çok mutluyuz. Bu süreçle ilgili gerekli prosedürler tamamlandıktan sonra inşa süreci başlayacak” dedi.</span></p><p style="text-align: justify;"><span style="font-size:14px;">TOKİ Başkanlığınca ihale değerlendirme sürecinin yapılacağını kaydeden Başkan Arıkan, şunları söyledi: “Bu süreç tamamlandıktan sonra inşa süreciyle ilgili gelişmeler başta hak sahipleri olmak üzere tüm kamuoyuyla paylaşılacaktır. Projemizin bu aşamaya gelmesinde yoğun gayret ve emekleri bulunan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan başta olmak üzere Çevre ve Şehircilik Bakanımız Sayın Murat Kurum\'a, Genel Başkan Yardımcımız Sayın Cevdet Yılmaz’a, Milletvekilimiz Sayın Feyzi Berdibek’e, Valimiz Sayın Kadir Ekinci’ye, hak sahiplerimize ve projeye katkı sunan tüm dostlarımıza ve çalışma arkadaşlarımıza sonsuz teşekkür ediyorum.”</span></p><p></p><div class="page-content-date">Oluşturulma Tarihi : 02-10-2020 16:31<br>Okunma Sayısı : 19</div></div>'),
  News(
      id: '0',
      title: 'Dev Proje İhlal Edildi',
      desc:
          'Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.',
      featuredMediaUrl: 'https://www.bingol.bel.tr/resimler/haberler/3421.jpg',
      date: '02-10-2020 16:31',
      content:
          '<div id="sagmenu"><p style="text-align: justify;"><strong><span style="font-size:16px;">Kültür Mahallesi’nde 1172 konut ve 196 işyerinin inşa edileceği Kentsel Dönüşüm Projesi’nin ihale edildiğini bildiren Başkan Arıkan; “ Örnek bir projeyle hem sorunları çözeceğiz hem de ilimizin çehresini değiştireceğiz”</span></strong></p><p style="text-align: justify;"><span style="font-size:14px;">Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">2013 yılından bu yana yaşanan sorunların çözümü noktasında önemli bir eşiğin daha aşıldığını belirten Başkan Arıkan, ihale sürecindeki değerlendirme ve itiraz süreçlerinin tamamlanmasıyla yapım aşamasına start verileceğini kaydetti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">Başkan Arıkan, “Hak sahipleri başta olmak üzere tüm Bingöl kamuoyunun yakından takip ettiği kentsel dönüşüm projesinin ihalesinin gerçekleştirilmesinden dolayı çok mutluyuz. Bu süreçle ilgili gerekli prosedürler tamamlandıktan sonra inşa süreci başlayacak” dedi.</span></p><p style="text-align: justify;"><span style="font-size:14px;">TOKİ Başkanlığınca ihale değerlendirme sürecinin yapılacağını kaydeden Başkan Arıkan, şunları söyledi: “Bu süreç tamamlandıktan sonra inşa süreciyle ilgili gelişmeler başta hak sahipleri olmak üzere tüm kamuoyuyla paylaşılacaktır. Projemizin bu aşamaya gelmesinde yoğun gayret ve emekleri bulunan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan başta olmak üzere Çevre ve Şehircilik Bakanımız Sayın Murat Kurum\'a, Genel Başkan Yardımcımız Sayın Cevdet Yılmaz’a, Milletvekilimiz Sayın Feyzi Berdibek’e, Valimiz Sayın Kadir Ekinci’ye, hak sahiplerimize ve projeye katkı sunan tüm dostlarımıza ve çalışma arkadaşlarımıza sonsuz teşekkür ediyorum.”</span></p><p></p><div class="page-content-date">Oluşturulma Tarihi : 02-10-2020 16:31<br>Okunma Sayısı : 19</div></div>'),
  News(
      id: '0',
      title: 'Dev Proje İhlal Edildi',
      desc:
          'Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.',
      featuredMediaUrl: 'https://www.bingol.bel.tr/resimler/haberler/3421.jpg',
      date: '02-10-2020 16:31',
      content:
          '<div id="sagmenu"><p style="text-align: justify;"><strong><span style="font-size:16px;">Kültür Mahallesi’nde 1172 konut ve 196 işyerinin inşa edileceği Kentsel Dönüşüm Projesi’nin ihale edildiğini bildiren Başkan Arıkan; “ Örnek bir projeyle hem sorunları çözeceğiz hem de ilimizin çehresini değiştireceğiz”</span></strong></p><p style="text-align: justify;"><span style="font-size:14px;">Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">2013 yılından bu yana yaşanan sorunların çözümü noktasında önemli bir eşiğin daha aşıldığını belirten Başkan Arıkan, ihale sürecindeki değerlendirme ve itiraz süreçlerinin tamamlanmasıyla yapım aşamasına start verileceğini kaydetti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">Başkan Arıkan, “Hak sahipleri başta olmak üzere tüm Bingöl kamuoyunun yakından takip ettiği kentsel dönüşüm projesinin ihalesinin gerçekleştirilmesinden dolayı çok mutluyuz. Bu süreçle ilgili gerekli prosedürler tamamlandıktan sonra inşa süreci başlayacak” dedi.</span></p><p style="text-align: justify;"><span style="font-size:14px;">TOKİ Başkanlığınca ihale değerlendirme sürecinin yapılacağını kaydeden Başkan Arıkan, şunları söyledi: “Bu süreç tamamlandıktan sonra inşa süreciyle ilgili gelişmeler başta hak sahipleri olmak üzere tüm kamuoyuyla paylaşılacaktır. Projemizin bu aşamaya gelmesinde yoğun gayret ve emekleri bulunan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan başta olmak üzere Çevre ve Şehircilik Bakanımız Sayın Murat Kurum\'a, Genel Başkan Yardımcımız Sayın Cevdet Yılmaz’a, Milletvekilimiz Sayın Feyzi Berdibek’e, Valimiz Sayın Kadir Ekinci’ye, hak sahiplerimize ve projeye katkı sunan tüm dostlarımıza ve çalışma arkadaşlarımıza sonsuz teşekkür ediyorum.”</span></p><p></p><div class="page-content-date">Oluşturulma Tarihi : 02-10-2020 16:31<br>Okunma Sayısı : 19</div></div>'),
  News(
      id: '0',
      title: 'Dev Proje İhlal Edildi',
      desc:
          'Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.',
      featuredMediaUrl: 'https://www.bingol.bel.tr/resimler/haberler/3421.jpg',
      date: '02-10-2020 16:31',
      content:
          '<div id="sagmenu"><p style="text-align: justify;"><strong><span style="font-size:16px;">Kültür Mahallesi’nde 1172 konut ve 196 işyerinin inşa edileceği Kentsel Dönüşüm Projesi’nin ihale edildiğini bildiren Başkan Arıkan; “ Örnek bir projeyle hem sorunları çözeceğiz hem de ilimizin çehresini değiştireceğiz”</span></strong></p><p style="text-align: justify;"><span style="font-size:14px;">Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">2013 yılından bu yana yaşanan sorunların çözümü noktasında önemli bir eşiğin daha aşıldığını belirten Başkan Arıkan, ihale sürecindeki değerlendirme ve itiraz süreçlerinin tamamlanmasıyla yapım aşamasına start verileceğini kaydetti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">Başkan Arıkan, “Hak sahipleri başta olmak üzere tüm Bingöl kamuoyunun yakından takip ettiği kentsel dönüşüm projesinin ihalesinin gerçekleştirilmesinden dolayı çok mutluyuz. Bu süreçle ilgili gerekli prosedürler tamamlandıktan sonra inşa süreci başlayacak” dedi.</span></p><p style="text-align: justify;"><span style="font-size:14px;">TOKİ Başkanlığınca ihale değerlendirme sürecinin yapılacağını kaydeden Başkan Arıkan, şunları söyledi: “Bu süreç tamamlandıktan sonra inşa süreciyle ilgili gelişmeler başta hak sahipleri olmak üzere tüm kamuoyuyla paylaşılacaktır. Projemizin bu aşamaya gelmesinde yoğun gayret ve emekleri bulunan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan başta olmak üzere Çevre ve Şehircilik Bakanımız Sayın Murat Kurum\'a, Genel Başkan Yardımcımız Sayın Cevdet Yılmaz’a, Milletvekilimiz Sayın Feyzi Berdibek’e, Valimiz Sayın Kadir Ekinci’ye, hak sahiplerimize ve projeye katkı sunan tüm dostlarımıza ve çalışma arkadaşlarımıza sonsuz teşekkür ediyorum.”</span></p><p></p><div class="page-content-date">Oluşturulma Tarihi : 02-10-2020 16:31<br>Okunma Sayısı : 19</div></div>'),
  News(
      id: '0',
      title: 'Dev Proje İhlal Edildi',
      desc:
          'Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.',
      featuredMediaUrl: 'https://www.bingol.bel.tr/resimler/haberler/3421.jpg',
      date: '02-10-2020 16:31',
      content:
          '<div id="sagmenu"><p style="text-align: justify;"><strong><span style="font-size:16px;">Kültür Mahallesi’nde 1172 konut ve 196 işyerinin inşa edileceği Kentsel Dönüşüm Projesi’nin ihale edildiğini bildiren Başkan Arıkan; “ Örnek bir projeyle hem sorunları çözeceğiz hem de ilimizin çehresini değiştireceğiz”</span></strong></p><p style="text-align: justify;"><span style="font-size:14px;">Bingöl Belediye Başkanı Erdal Arıkan, Kültür Mahallesi’nde 15.1 hektarlık alanda uygulanacak olan Kentsel Dönüşüm ve Gelişim Projesi’nin TOKİ Başkanlığı’nca ihale edildiğini belirtti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">2013 yılından bu yana yaşanan sorunların çözümü noktasında önemli bir eşiğin daha aşıldığını belirten Başkan Arıkan, ihale sürecindeki değerlendirme ve itiraz süreçlerinin tamamlanmasıyla yapım aşamasına start verileceğini kaydetti.</span></p><p style="text-align: justify;"><span style="font-size:14px;">Başkan Arıkan, “Hak sahipleri başta olmak üzere tüm Bingöl kamuoyunun yakından takip ettiği kentsel dönüşüm projesinin ihalesinin gerçekleştirilmesinden dolayı çok mutluyuz. Bu süreçle ilgili gerekli prosedürler tamamlandıktan sonra inşa süreci başlayacak” dedi.</span></p><p style="text-align: justify;"><span style="font-size:14px;">TOKİ Başkanlığınca ihale değerlendirme sürecinin yapılacağını kaydeden Başkan Arıkan, şunları söyledi: “Bu süreç tamamlandıktan sonra inşa süreciyle ilgili gelişmeler başta hak sahipleri olmak üzere tüm kamuoyuyla paylaşılacaktır. Projemizin bu aşamaya gelmesinde yoğun gayret ve emekleri bulunan Cumhurbaşkanımız Sayın Recep Tayyip Erdoğan başta olmak üzere Çevre ve Şehircilik Bakanımız Sayın Murat Kurum\'a, Genel Başkan Yardımcımız Sayın Cevdet Yılmaz’a, Milletvekilimiz Sayın Feyzi Berdibek’e, Valimiz Sayın Kadir Ekinci’ye, hak sahiplerimize ve projeye katkı sunan tüm dostlarımıza ve çalışma arkadaşlarımıza sonsuz teşekkür ediyorum.”</span></p><p></p><div class="page-content-date">Oluşturulma Tarihi : 02-10-2020 16:31<br>Okunma Sayısı : 19</div></div>'),
];
