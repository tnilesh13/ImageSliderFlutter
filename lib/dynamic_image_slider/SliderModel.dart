class SliderModel {
  Sliders? sliders;

  SliderModel({this.sliders});

  SliderModel.fromJson(Map<String, dynamic> json) {
    sliders =
        json['Sliders'] != null ? new Sliders.fromJson(json['Sliders']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliders != null) {
      data['Sliders'] = this.sliders!.toJson();
    }
    return data;
  }
}

class Sliders {
  String? indicatorSelectedColor;
  String? indicatorUnSelectedColor;
  double? viewPortFraction;
  bool? autoPlay;
  String? padding;
  String? sliderViewType;
  List<Items>? items;

  Sliders(
      {this.indicatorSelectedColor,
      this.indicatorUnSelectedColor,
      this.viewPortFraction,
      this.autoPlay,
      this.padding,
      this.sliderViewType,
      this.items});

  Sliders.fromJson(Map<String, dynamic> json) {
    indicatorSelectedColor = json['IndicatorSelectedColor'];
    indicatorUnSelectedColor = json['IndicatorUnSelectedColor'];
    viewPortFraction = json['ViewPortFraction'];
    autoPlay = json['AutoPlay'];
    padding = json['Padding'];
    sliderViewType = json['SliderViewType'];
    if (json['Items'] != null) {
      items = <Items>[];
      json['Items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IndicatorSelectedColor'] = this.indicatorSelectedColor;
    data['IndicatorUnSelectedColor'] = this.indicatorUnSelectedColor;
    data['ViewPortFraction'] = this.viewPortFraction;
    data['AutoPlay'] = this.autoPlay;
    data['Padding'] = this.padding;
    data['SliderViewType'] = this.sliderViewType;
    if (this.items != null) {
      data['Items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? sliderType;
  String? sliderText;
  String? sliderlink;
  String? sliderButtonText;
  String? sliderbuttonColor;
  String? sliderBackgroundColor;
  String? sliderBannerType;
  String? sliderBannerUID;

  Items(
      {this.sliderType,
      this.sliderText,
      this.sliderlink,
      this.sliderButtonText,
      this.sliderbuttonColor,
      this.sliderBackgroundColor,
      this.sliderBannerType,
      this.sliderBannerUID});

  Items.fromJson(Map<String, dynamic> json) {
    sliderType = json['SliderType'];
    sliderText = json['SliderText'];
    sliderlink = json['Sliderlink'];
    sliderButtonText = json['SliderButtonText'];
    sliderbuttonColor = json['SliderbuttonColor'];
    sliderBackgroundColor = json['SliderBackgroundColor'];
    sliderBannerType = json['SliderBannerType'];
    sliderBannerUID = json['SliderBannerUID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SliderType'] = this.sliderType;
    data['SliderText'] = this.sliderText;
    data['Sliderlink'] = this.sliderlink;
    data['SliderButtonText'] = this.sliderButtonText;
    data['SliderbuttonColor'] = this.sliderbuttonColor;
    data['SliderBackgroundColor'] = this.sliderBackgroundColor;
    data['SliderBannerType'] = this.sliderBannerType;
    data['SliderBannerUID'] = this.sliderBannerUID;
    return data;
  }
}