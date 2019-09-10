import 'package:flutter/material.dart';

enum Medal { gold, silver, bronze }

class Athlete {
  String _name;
  String _foto;
  String _sports;
  Medal _medal;
  String _olympic;
  int _year;
  String _description = "";
  final _silver = const Color(0xC0C0C0);
  final _gold = const Color(0xFFDF00);
  final _bronze = const Color(0xcd7f32);

  Athlete(this._name, this._foto, this._sports, this._medal, this._year,
      this._olympic,
      [this._description = ""]);

  String get name {
    return _name;
  }

  String get sports {
    return _sports;
  }

  String get foto {
    return _foto;
  }

  String get olympic {
    return _olympic;
  }

  int get year {
    return _year;
  }

  String get description {
    return _description;
  }

  Color get medalColor {
    switch (_medal) {
      case Medal.gold:
        return _gold.withOpacity(0.8);
        break;
      case Medal.silver:
        return _silver.withOpacity(0.8);
        break;
      case Medal.bronze:
        return _bronze.withOpacity(0.8);
        break;
      default:
        return Colors.black.withOpacity(0.8);
        break;
    }
  }

  String get medalText {
    switch (_medal) {
      case Medal.gold:
        return "Emas";
        break;
      case Medal.silver:
        return "Perak";
        break;
      case Medal.bronze:
        return "Perunggu";
        break;
      default:
        return "";
        break;
    }
  }
}

List<Athlete> athletes = [
  Athlete(
      'Susi Susanti',
      'assets/susi.jpg',
      'Badminton',
      Medal.gold,
      1992,
      'Barcelona',
      """Lucia Francisca Susi Susanti atau yang lebih dikenal dengan nama Susi Susanti adalah salah satu pemain bulu tangkis putri terbaik yang pernah dimiliki Indonesia. Perempuan kelahiran Tasikmalaya ini menyukai permainan bulu tangkis sejak duduk di bangku SD. Karena dukungan orang tuanya, ia pun memulai karier bulu tangkis di klub milik pamannya, PB Tunas Tasikmalaya. Setelah berlatih selama 7 tahun di sana dan memenangkan kejuaraan bulu tangkis tingkat junior, pada tahun 1985 ketika Susi menginjak kelas 2 SMP, ia pindah ke Jakarta untuk lebih serius menjalani dunia bulu tangkis.

Di Jakarta, Susi tinggal di asrama dan bersekolah khusus untuk atlet. Pergaulannya terbatas dengan sesama atlet dan jadwal latihannya pun sangat padat. Enam hari dalam seminggu, Senin sampai Sabtu mulai dari pukul 07.00 hingga pukul 11.00, kemudian dilanjutkan dari pukul 15.00 sampai pukul 19.00. Peraturan tentang makan, jam tidur sampai tentang pakaian sangat ketat. Ia tidak diperbolehkan menggunakan sepatu dengan hak tinggi untuk menghindari kemungkinan cedera kaki. Di hari Minggu, Susi lebih memilih untuk beristirahat karena lelah daripada jalan-jalan ke mall.

Pada awal kariernya di tahun 1989, Susi sudah berhasil menjadi juara di Indonesian Open. Selain itu, berkat kegigihan dan ketekunannya, Susi berhasil turut serta menyumbangkan gelar Piala Sudirman pada tim Indonesia untuk pertama kalinya dan belum pernah terulang sampai saat ini. Ia pun mulai merajai kompetisi bulu tangkis wanita dunia dengan menjuarai All England sebanyak empat kali (1990, 1991, 1993, 1994) dan menjadi Juara Dunia pada tahun 1993.

Puncak karier Susi bisa dibilang terjadi pada tahun 1992 ketika ia menjadi juara tunggal putri cabang bulu tangkis di Olimpiade Barcelona. Susi menjadi peraih emas pertama bagi Indonesia di ajang olimpiade. Uniknya, Alan Budikusuma yang merupakan pacarnya ketika itu, juga berhasil menjadi juara di tunggal putra, sehingga media asing menjuluki mereka sebagai "Pengantin Olimpiade", sebuah julukan yang terjadi menjadi kenyataan pada 9 Februari 1997.
"""),
  Athlete('Rudi Hartono', 'assets/rudy.jpg', 'Badminton', Medal.gold, 1972,
      'Munich', """
      Rudy Hartono adalah anak ketiga keempat dari 9 bersaudara yang lahir dari pasangan Zulkarnain Kurniawan. Orang tua Rudy tinggal di Jalan Kaliasin 49 (sekarang Jalan Basuki Rahmat), Surabaya, Jawa Timur dan bekerja sebagai penjahit pakaian pria. Selain itu orang tua Rudy juga mempunyai usaha pemrosesan susu sapi di Wonokromo, Jawa Timur.

      Seperti anak-anak seumuran lainnya, Rudy kecil juga tertarik dengan berbagai macam olahraga sejak SD, terutama atletik dan renang. Pada masa SMP dia juga berkecimpung di olahraga bola voli dan pada masa SMA dia juga adalah pemain sepak bola yang handal. Tapi dari semua olahraga yang dia ikuti, keinginan terbesarnya akhirnya hanya jatuh pada permainan bulu tangkis. Pada usia 9 tahun, Rudy kecil sudah menunjukkan bakatnya di bulu tangkis. Tetapi ayahnya baru menyadarinya ketika Rudi sudah berumur 11 tahun. Sebelum itu Rudy hanya berlatih di jalan raya aspal di depan kantor PLN di Surabaya, yang sebelumnya dikenal dengan Jalan Gemblongan—ditulis oleh Rudy Hartono dalam bukunya Rajawali dengan Jurus Padi (1986). Rudy berlatih hanya pada hari Minggu, dari pagi hari hingga pukul 10 malam. Setelah merasa cukup, Rudy memutuskan utuk mengikuti kompetisi-kompetisi kecil yang ada di sekitar Surabaya yang pada masa itu biasanya hanya diterangi oleh sinar lampu petromax.

      Setelah beberapa lama bergabung dengan grup ayahnya, akhirnya Rudy memutuskan untuk pindah ke grup bulu tangkis yang lebih besar yaitu Grup Rajawali, grup yang telah melahirkan banyak pemain bulu tangkis dunia. Pada awal dia bergabung dengan grup ini, Rudy merasa sudah menemukan grup terbaik untuk mengembangkan bakat bulu tangkisnya. Akan tetapi setelah berdiskusi dengan ayahnya, Rudy mengakui bahwa jika dia ingin kariernya di bulu tangkis meningkat maka dia harus pindah ke tempat latihan yang lebih baik, oleh sebab itu Rudy memutuskan untuk pindah pada Pusat Pelatihan Thomas Cup pada akhir tahun 1965. Tak lama setelah itu, penampilan Rudy semakin membaik. Bahkan dia turut ambil bagian dalam memenangkan Thomas Cup untuk Indonesia pada tahun 1967. Pada umur 18 tahun, untuk pertama kalinya Rudy memenangkan titel Juara All England dengan mengalahkan Tan Aik Huang dari Malaysia dengan hasil akhir 15-12 dan 15-9. Setelah itu dia terus memenangkan titel ini sampai dengan tahun 1974.

      Rudy Hartono merebut gelar tunggal putra di Olimpiade 1972 Munich Summer Olympics. Menariknya, saat itu 1972, bulu tangkis untuk pertama kalinya dipertandingkan di Olimpiade.

      """),
  Athlete('Alan Budikusuma', 'assets/alan.jpg', 'Badminton', Medal.gold, 1992,
      'Barcelona', """
      Alexander Alan Budikusuma Wiratama atau yang lebih populer dengan nama Alan Budikusuma adalah salah satu pemain bulu tangkis profesional Indonesia. Pria keturunan Cina ini adalah suami dari Susi Susanti, yang juga merupakan legenda pemain bulu tangkis Indonesia.

Ketertarikan Alan dengan dunia bulu tangkis berawal sejak usia 7 tahun. Setahun kemudian, Alan mulai bergabung dengan klub bulu tangkis Rajawali, di Surabaya. Keseriusan Alan mendalami bulu tangkis dibuktikan dengan memutuskan meninggalkan kota kelahirannya di usianya yang ke 15 dan bergabung dengan klub yang juga banyak mencetak atlet bulu tangkis berprestasi, yaitu PB Djarum.

Berkat disiplin diri dan latihan yang Alan jalani bersama pemusatan latihan nasional (Pelatnas), kariernya di dunia bulu tangkis kemudian mencapai puncaknya pada 1992. Pada olimpiade yang dilangsungkan di Barcelona itu, kekasih Alan yang kemudian menjadi istrinya, Susi Susanti, juga berhasil menyabet emas, sehingga membuat mereka mendapat julukan "Pengantin Olimpiade".

Prestasi Alan lainnya juga tak kalah mengagumkan. Dia pernah menjuarai Belanda Terbuka (1989), dua kali juara Thailand Terbuka, yaitu pada 1989 dan 1991, Cina Terbuka (1991), Jerman Terbuka (1992), Piala Dunia (1993), dan Malaysia Terbuka (1995).

Alan adalah atlet yang bisa belajar dari kekalahan. Contohnya tahun 1991 Alan Budi Kusuma kalah dari Ardy B. Wiranata di All England tapi di tahun 1992 Alan Budi kusuma mengalahkan Ardy B. Wiranata di Olimpiade Barcelona. Contoh lain di tahun 1996 Alan Kalah dari poul Eric H.L di Olimpiade Atlanta tapi di tahun yang sama Alan mengalahkan Poul erik di Indonesia terbuka.
      """),
  Athlete('Dirc Richard Talumewo', 'assets/dirc.jpg', 'Taekwondo', Medal.silver,
      1992, 'Barcelona', """
      
      """),
  Athlete('Eko Yuli Irawan', 'assets/eko.jpg', 'Angkat Besi', Medal.silver,
      2016, 'Rio de Janeiro', """
      Eko Yuli Irawan lahir di Lampung tepatnya di Kota Metro pada 24 Juli 1989. Ia berasal dari keluarga yang kurang mampu. Ayahnya yang bernama Saman merupakan seorang pengayuh becak, sedangkan ibunya yang bernama Wastiah merupakan seorang penjual sayur. Sedangkan Eko dulunya hanya seorang penggembala kambing.

Kiprah Eko di dunia agkat besi dimulai sejak usia remaja. Saat itu, ia melihat anak-anak tengah berlatih angkat besi di sasana Yon Haryono. Ia tertarik untuk bergabung dan ikut berlatih bersama dengan yang lainnya. Setelah mendapat izin dari orang tuanya,  Eko mulai mengakrabkan diri dengan barbel, ia  pun secara rutin ikut berlatih di klub asuhan Yon Haryono tersebut. Eko mulai merintis prestasinya saat tampil sebagai lifter terbaik di Kejuaraan Dunia Yunior 2007, di mana saat itu ia meraih medali emas. Sejak itu, ia melanjutkan kariernya dengan gemilang.

Pada Olimpiade London 2012, Eko menyumbangkan medali perunggu untuk kontingen Indonesia dan memperbaiki perolehan medali olimpiadenya di Rio de Janeiro Brazil di tahun 2016 dengan menyumbangkan medali perak.

Baru-baru ini pada ajang Asian Games 2018 yang diselenggarakan di Indonesia tepatnya di Jakarta-Palembang, Eko berhasil menyumbangkan mendali emas ke lima bagi Indonesia di cabang angkat besi kelas 62 kg dengan total angkatan 311 kg (angkatan snatch 141 kg dan angkatan clean and jerk 170 kg). Dengan total angkatan tersebut ia berhasil menggungguli lifter Vietnam Trinh van Vinh dengan total angkatan 299 kg dan lifter Uzbekistan Ergashev Adkhamjon dengan total angkatan 298 kg.

      """),
  Athlete('Raema Lisa Rumbewas', 'assets/raema.jpg', 'Angkat Besi',
      Medal.silver, 2000, 'Sydney', """
  Ia lahir dengan nama lengkap Raema Lisa Rumbewas putri dari pasangan olahragawan sang ayah Levi Rumbewas mantan binaragawan terbaik Indonesia. Ibu kandungnya, Ida Korwa yang juga adalah atlet angkat besi. Ida Korwa pula yang melatih putri kandungnya sebagai atlet angkat besi peraih tiga medali di Olimpiade Sydney, Yunani dan Beijing.

Berkat ketangguhannya mewakili Indonesia di cabang angkat besi, pemilik tinggi badan 149 cm dan berat 53 kg ini memperoleh beasiswa dari Olympic Solidarity.

Sama dengan ayah kandungnya, Levi Rumbewas meraih prestasi di olahraga binaraga. Ia meraih medali emas pada kelas 70 Kg di Asean Games 1987 dan 1989. Tak heran kalau keluarga Rumbewas termasuk perintis olahraga angkat besi dan binaraga di Papua sejak mantan Gubernur Irian Jaya, Acub Zainal.

Lisa memperoleh medali perak di olimpiade Sidney (2000) dan Athena (2004), sedangkan di olimpiade Beijing (2008), Lisa hanya dapat menyumbangkan medali perunggu. 
  """),
  Athlete('Susyana Tjhan', 'assets/susyana.jpg', 'Wushu', Medal.bronze, 2008,
      'Beijing', """
  Susyana Tjhan (lahir di Jakarta, 19 November 1984; umur 34 tahun 陈慧嘉) adalah seorang atlet wushu terkenal Indonesia. Ana, demikian ia biasa dipanggil, telah mengharumkan nama Indonesia dalam berbagai kejuaraan internasional. Karier cemerlangnya di mulai saat mengikuti Kejuaraan Daerah Wushu 1994 di Jakarta, Ia yang saat itu baru berusia 10 tahun berhasil meraih 3 medali emas dan 1 Piala All Arround.

  Prestasi Tjhan sebagai atlet dimulai sejak meraih tiga medali emas di Kejuaraan Daerah di Jakarta, 1994. Setelah itu kariernya sebagai atlet wushu terus menanjak. Tjhan telah mengharumkan nama Indonesia di berbagai ajang internasional. Tujuh tahun kemudian, Tjhan meraih prestasi internasional pertama di SEA GAMES 2001, Malaysia dengan meraih satu medali emas dan satu perunggu. Pada SEA GAMES 2003 di Vietnam, Tjhan meraih dua medali perak. Dua tahun kemudian diajang yang sama di Filipina, Tjhan meraih satu medali emas dan dua medali perak.

Dari kawasan regional ASEAN, Tjhan bertanding dilevel kawasan yang lebih luas, Asia dan Dunia. Di Kejuaraan Asia 2004, Myanmar, dia meraih medali perunggu. Prestasi tingkat Asia bisa dianggap sebagai prestasi mendunia, karena kawasan Asia masih menjadi kiblat wushu dunia.

Pada kejuaraan Dunia 2007 di Vietnam, Tjhan meraih posisi empat besar di salah satu nomor. Setelah sempat meraih satu medali perak di Asian Games 2006 Qatar, Tjhan mengulang prestasi yang sama di Kejuaraan Dunia 2007 di Beijing. Di ekshibisi Wushu di Olimpiade Beijing 2008, Tjhan meraih medali perunggu, tetapi karena merupakan ekshibisi, perolehan medali tidak digabungkan ke klasemen umum. Setelah Olimpiade 2008, Tjhan masih meraih berbagai prestasi membela Indonesia di ajang World Games 2009 Taiwan, Sea Games 2009 Laos dan Combat Games 2010. SEA GAMES XXVI kemaren menjadi penampilan terakhir Tjhan dalam membela negara. Dalam empat kali SEA Games, Tjhan sudah meraih tiga medali emas, empat medali perak dan dua perunggu.

Di ajang SEA GAMES 2011, Susyana masih sempat menyumbangkan medali emas bagi negaranya. Seusai SEA Games 2011, Tjhan dikabarkan akan pensiun. Menurut Tempo, Susyana Tjhan sadar bahwa usianya tidak muda lagi dan persaingan ketat dari atlet muda akan bermunculan. Walau demikian Tjhan akan melanjutkan kepelatihan dan kuliah S-2 setelah mendapat tawaran di Shanghai University of Sport di Shanghai. Saat ini Tjhan sudah mulai membagikan ilmunya kepada masyarakat, terutama anak-anak di klub Rahmat Wushu (Sasana milik Ayahnya sendiri).
  """),
  Athlete('Lilies Handayani', 'assets/lilies.jpg', 'Panahan', Medal.silver,
      1988, 'Seoul', """
  Lilies Handayani, S.H., M.A. (lahir di Surabaya, Jawa Timur, 15 April 1965; umur 54 tahun) adalah seorang pemanah asal Indonesia. Di bawah bimbingan atlet panahan senior, Donald Pandiangan, Lilies Handayani bersama dengan Nurfitriyana Saiman dan Kusuma Wardhani merebut medali pertama untuk Indonesia di Olimpiade Seoul 1988 yaitu medali perak.

Lilies Handayani merupakan sosok pekerja keras dan sangat fokus dalam mencapai tujuannya, beliau selalu menambah porsi latihan yang diberi oleh pelatihnya atas inisiatifnya sendiri. Parasnya yang cantik membuat Lilies terkenal sebagai Primadona di kalangan atlet nasional era 1980-an. Lilies memiliki banyak sekali keterampilan diantaranya yaitu memasak, menjahit, melukis, bercocok tanam, desain interior.

Lilies Handayani dikaruniai 3 orang anak dengan suaminya Drs. Denny Trisyanto, M.H. yang merupakan mantan atlet pencak silat (satu perguruan dengan Lilies muda di Perisai Diri) dan juga saat ini menjabat sebagai Ketua Umum Pengurus Daerah PERPANI Jawa Timur sekaligus kepala pelatih nasional cabang olahraga panahan.

Anak sulung Dellie Threesyadinda, S.H. (12 Mei 1990), bergelut di panahan sejak usia 7 tahun. Dinda (sapaan akrabnya) telah menorehkan banyak prestasi di bidang panahan, diantaranya yaitu: Perak Archery World Cup 2008 di Inggris, Emas Sea Games 2013 di Myanmar dan Perunggu Archery World Cup di Turkey. Irvaldi Ananda Putra, S. Hub. Int., (25 Juli 1995), yang merupakan anak kedua dari Lilies juga memulai olahraga panahan sejak usia 7 tahun. Aldi memiliki segudang prestasi yang membanggakan, diantaranya yaitu: Perunggu PON 2012 di Riau dan Emas PON 2016 di Bandung. Begitu pula dengan si bungsu Della Adisty Handayani (28 Juni 1997), sedikit mendahului kakak-kakaknya, Della memulai panahan pada saat usia 5 tahun, Della memiliki prestasi yang juga luar biasa seperti halnya Dinda dan Aldi, diantaranya: Emas PON 2012 di Riau, Emas Sea Games 2013 di Myanmar, Perunggu PON 2016 di Bandung.

Lilies mengaku sangat bangga dengan prestasi yang ditorehkan oleh buah hatinya tersebut. Kurangnya sosialisasi dan pengetahuan masyarakat luas tentang olahraga panahan membuat cabang olahraga ini sedikit peminat. Hal ini yang melandasi Lilies untuk mendirikan sekolah panahan Lilies Handayani - Srikandi Archery School (LH-SAS) yang berbasis di Surabaya.
  """)
];
