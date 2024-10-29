// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenAuthImpl _$$TokenAuthImplFromJson(Map<String, dynamic> json) =>
    _$TokenAuthImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$TokenAuthImplToJson(_$TokenAuthImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
