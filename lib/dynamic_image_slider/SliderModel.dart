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
  double? padding;
  String? sliderViewType;
  List<SliderItems>? items;

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
      items = <SliderItems>[];
      json['Items'].forEach((v) {
        items!.add(new SliderItems.fromJson(v));
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

class SliderItems {
  String? sliderType;
  String? sliderText;
  String? sliderLink;
  String? sliderButtonText;
  String? sliderButtonColor;
  String? sliderBackgroundColor;
  String? sliderBannerType;
  int? sliderBannerUID;
  String? sliderButtonClicked;

  SliderItems(
      {this.sliderType,
      this.sliderText,
      this.sliderLink,
      this.sliderButtonText,
      this.sliderButtonColor,
      this.sliderBackgroundColor,
      this.sliderBannerType,
      this.sliderBannerUID,
      this.sliderButtonClicked});

  SliderItems.fromJson(Map<String, dynamic> json) {
    sliderType = json['SliderType'];
    sliderText = json['SliderText'];
    sliderLink = json['SliderLink'];
    sliderButtonText = json['SliderButtonText'];
    sliderButtonColor = json['SliderButtonColor'];
    sliderBackgroundColor = json['SliderBackgroundColor'];
    sliderBannerType = json['SliderBannerType'];
    sliderBannerUID = json['SliderBannerUID'];
    sliderButtonClicked = json['SliderButtonClicked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SliderType'] = this.sliderType;
    data['SliderText'] = this.sliderText;
    data['SliderLink'] = this.sliderLink;
    data['SliderButtonText'] = this.sliderButtonText;
    data['SliderButtonColor'] = this.sliderButtonColor;
    data['SliderBackgroundColor'] = this.sliderBackgroundColor;
    data['SliderBannerType'] = this.sliderBannerType;
    data['SliderBannerUID'] = this.sliderBannerUID;
    data['SliderButtonClicked'] = this.sliderButtonClicked;
    return data;
  }
}