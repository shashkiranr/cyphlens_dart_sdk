// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../image_type.dart';

class ImageTypeMapper extends EnumMapper<ImageType> {
  ImageTypeMapper._();

  static ImageTypeMapper? _instance;
  static ImageTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageTypeMapper._());
    }
    return _instance!;
  }

  static ImageType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ImageType decode(dynamic value) {
    switch (value) {
      case 'svg':
        return ImageType.svg;
      case 'svgDecoded':
        return ImageType.svgDecoded;
      case 'png':
        return ImageType.png;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ImageType self) {
    switch (self) {
      case ImageType.svg:
        return 'svg';
      case ImageType.svgDecoded:
        return 'svgDecoded';
      case ImageType.png:
        return 'png';
    }
  }
}

extension ImageTypeMapperExtension on ImageType {
  String toValue() {
    ImageTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ImageType>(this) as String;
  }
}
