// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../image_info.dart';

class ImageInfoMapper extends ClassMapperBase<ImageInfo> {
  ImageInfoMapper._();

  static ImageInfoMapper? _instance;
  static ImageInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageInfoMapper._());
      ImageTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ImageInfo';

  static String _$image(ImageInfo v) => v.image;
  static const Field<ImageInfo, String> _f$image = Field('image', _$image);
  static String _$sessionId(ImageInfo v) => v.sessionId;
  static const Field<ImageInfo, String> _f$sessionId =
      Field('sessionId', _$sessionId);
  static ImageType _$imageType(ImageInfo v) => v.imageType;
  static const Field<ImageInfo, ImageType> _f$imageType =
      Field('imageType', _$imageType);
  static String _$username(ImageInfo v) => v.username;
  static const Field<ImageInfo, String> _f$username =
      Field('username', _$username);

  @override
  final MappableFields<ImageInfo> fields = const {
    #image: _f$image,
    #sessionId: _f$sessionId,
    #imageType: _f$imageType,
    #username: _f$username,
  };

  static ImageInfo _instantiate(DecodingData data) {
    return ImageInfo(
        image: data.dec(_f$image),
        sessionId: data.dec(_f$sessionId),
        imageType: data.dec(_f$imageType),
        username: data.dec(_f$username));
  }

  @override
  final Function instantiate = _instantiate;

  static ImageInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageInfo>(map);
  }

  static ImageInfo fromJson(String json) {
    return ensureInitialized().decodeJson<ImageInfo>(json);
  }
}

mixin ImageInfoMappable {
  String toJson() {
    return ImageInfoMapper.ensureInitialized()
        .encodeJson<ImageInfo>(this as ImageInfo);
  }

  Map<String, dynamic> toMap() {
    return ImageInfoMapper.ensureInitialized()
        .encodeMap<ImageInfo>(this as ImageInfo);
  }

  ImageInfoCopyWith<ImageInfo, ImageInfo, ImageInfo> get copyWith =>
      _ImageInfoCopyWithImpl(this as ImageInfo, $identity, $identity);
  @override
  String toString() {
    return ImageInfoMapper.ensureInitialized()
        .stringifyValue(this as ImageInfo);
  }

  @override
  bool operator ==(Object other) {
    return ImageInfoMapper.ensureInitialized()
        .equalsValue(this as ImageInfo, other);
  }

  @override
  int get hashCode {
    return ImageInfoMapper.ensureInitialized().hashValue(this as ImageInfo);
  }
}

extension ImageInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, ImageInfo, $Out> {
  ImageInfoCopyWith<$R, ImageInfo, $Out> get $asImageInfo =>
      $base.as((v, t, t2) => _ImageInfoCopyWithImpl(v, t, t2));
}

abstract class ImageInfoCopyWith<$R, $In extends ImageInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? image,
      String? sessionId,
      ImageType? imageType,
      String? username});
  ImageInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageInfo, $Out>
    implements ImageInfoCopyWith<$R, ImageInfo, $Out> {
  _ImageInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageInfo> $mapper =
      ImageInfoMapper.ensureInitialized();
  @override
  $R call(
          {String? image,
          String? sessionId,
          ImageType? imageType,
          String? username}) =>
      $apply(FieldCopyWithData({
        if (image != null) #image: image,
        if (sessionId != null) #sessionId: sessionId,
        if (imageType != null) #imageType: imageType,
        if (username != null) #username: username
      }));
  @override
  ImageInfo $make(CopyWithData data) => ImageInfo(
      image: data.get(#image, or: $value.image),
      sessionId: data.get(#sessionId, or: $value.sessionId),
      imageType: data.get(#imageType, or: $value.imageType),
      username: data.get(#username, or: $value.username));

  @override
  ImageInfoCopyWith<$R2, ImageInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ImageInfoCopyWithImpl($value, $cast, t);
}
