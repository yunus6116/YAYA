

class SliderModel{

  String imageAssetPath;
 // String title;
  String desc;

  SliderModel({this.imageAssetPath,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  // void setTitle(String getTitle){
  //   title = getTitle;
  // }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  //  String getTitle(){
  //    return title;
  //  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  var slides = <SliderModel>[];
  var sliderModel =  SliderModel();

  //1
  sliderModel.setDesc('2000 yılından bu yana UNDP, "herkes için eğitim" amacıyla çalışmalar yapıyor.');
  //sliderModel.setTitle('');
  sliderModel.setImageAssetPath('assets/images/onBoarding_1.jpg');
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setDesc('Maddi sıkıntılar ve bunun gibi sebepler yüzünden çocuklar okuldan alınıyor ve çalıştırılıyor.');
  //sliderModel.setTitle('');
  sliderModel.setImageAssetPath('assets/images/onBoarding_2.jpg');
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setDesc('Bizler de sizlerin desteği ile birlikte bunları çözmeyi hedefliyoruz.');
  //sliderModel.setTitle('');
  sliderModel.setImageAssetPath('assets/images/onBoarding_3.jpg');
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}