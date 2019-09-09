class Athlete
{
  String name;
  String foto;
  String sports;
  String description;

  Athlete(this.name, this.foto, this.sports);

  String getName()
  {
    return name;
  }

  String getSports()
  {
    return sports;
  }

  void setDescription(String desc)
  {
    this.description = desc;
  }
}

List<Athlete> athletes = [
  Athlete('Susi Susanti', 'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/intisarifoto/original/42328_susi-susanti.jpg', 'Badminton'),
  Athlete('Rudi Hartono Kurniawan', 'http://4.bp.blogspot.com/-RzLFUa_3GfE/UVD7Xvm_RNI/AAAAAAAAACA/mqIZcKDMvh4/s1600/as.jpg', 'Badminton'),
  Athlete('Alan Budikusuma', 'https://img.okeinfo.net/content/2017/02/08/40/1612690/kalahkan-wakil-dari-indonesia-alan-budikusuma-sukses-raih-emas-di-olimpiade-barcelona-1992-Ds9zEbQITe.jpg', 'Badminton'),
  
];