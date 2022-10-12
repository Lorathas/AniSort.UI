import 'package:anisort_ui/exceptions/invalid_format_path_exception.dart';
import 'package:anisort_ui/paths/const_path_format_emitter.dart';
import 'package:anisort_ui/paths/path_builder.dart';
import 'package:anisort_ui/paths/variable_path_format_emitter.dart';
import 'package:flutter/material.dart';

import 'path_format_emitter.dart';

final sampleTvInfo = {
  "animeEnglish":"Ghost in the Shell: Stand Alone Complex",
  "animeRomaji":"Koukaku Kidoutai Stand Alone Complex",
  "animeKanji":"攻殻機動隊 STAND ALONE COMPLEX",
  "episodeNumber":"23",
  "fileVersion":"3",
  "episodeEnglish":"Equinox",
  "episodeRomaji":"Zen-Aku no Higan / Equinox",
  "episodeKanji":"善悪の彼岸 / EQUINOX",
  "group":"Anime-Supreme",
  "groupShort":"a-S",
  "resolution":"1920x1080",
  "videoCodec":"H264_AVC",
  "crc32":"C16101AF",
  "ed2k":"",
  "md5":"D766F7E86AF62AE67BD055DA464412F1",
  "sha1":"3943C538FFE12463242A58CD61CDDE19D006C0C8",
};

final sampleMovieInfo = {
  "animeEnglish":"Ghost in the Shell",
  "animeRomaji":"Ghost in the Shell",
  "animeKanji":"GHOST IN THE SHELL",
  "episodeNumber":"1",
  "fileVersion":"2",
  "episodeEnglish":"Complete Movie",
  "episodeRomaji":"Complete Movie",
  "episodeKanji":"Complete Movie",
  "group":"THORAnime ",
  "groupShort":"THORA",
  "resolution":"1280x688",
  "videoCodec":"H264_AVC",
  "crc32":"6D18C6F3",
  "ed2k":"",
  "md5":"7F78DBE54AB860EE832391CF53CFEA27",
  "sha1":"3943C538FFE12463242A58CD61CDDE19D006C0C8",
};

enum _FileFormatParseMode {
  constant,

  variable,

  variableStart,

  variableEnd,

  variablePrefix,

  variableSuffix,
}

buildEmittersForFormat(String format) {
  if (format.isEmpty) {
    return <PathFormatEmitter>[];
  }

  var mode = _FileFormatParseMode.constant;

  final emitters = List<PathFormatEmitter>.empty(growable: true);

  bool ellipsize = false;
  var ellipsizeBuffer = StringBuffer(3);

  var buffer = StringBuffer();

  var prefixBuffer = StringBuffer();
  var suffixBuffer = StringBuffer();

  var lastChar = format[0];

  for (int idx = 0; idx < format.length; idx++)
  {
    var c = format[idx];

    switch (mode)
    {
      case _FileFormatParseMode.constant:
        if (c == '{')
        {
          if (buffer.length > 0) {
            emitters.add(ConstPathFormatEmitter(buffer.toString()));
          }
          buffer.clear();
          mode = _FileFormatParseMode.variableStart;
        }
        else
        {
          buffer.write(c);
        }

        break;
      case _FileFormatParseMode.variableStart:
        if (c == '\'')
        {
          mode = _FileFormatParseMode.variablePrefix;
        }
        else
        {
          buffer.write(c);
          mode = _FileFormatParseMode.variable;
        }

        break;
      case _FileFormatParseMode.variable:
        if (c == '}')
        {
          final variableName = buffer.toString();
          buffer.clear();
          final prefix = prefixBuffer.toString();
          prefixBuffer.clear();
          final suffix = suffixBuffer.toString();
          suffixBuffer.clear();
          mode = _FileFormatParseMode.constant;

          if (ellipsizeBuffer.length == 3)
          {
            ellipsize = true;
          }
          ellipsizeBuffer.clear();

          emitters.add(VariablePathFormatEmitter(variableName, prefix, suffix, ellipsize));
          ellipsize = false;
        }
        else if (c == '{' || c == '}')
        {
          if ((lastChar == '{' || lastChar == '}') && c != lastChar)
          {
            throw InvalidFormatPathException(
                "Cannot have mixed curly brace escape sequence at column $idx: $lastChar$c");
          }

          mode = _FileFormatParseMode.constant;
        }
        else if (c == '\'')
        {
          mode = _FileFormatParseMode.variableSuffix;
        }
        else if (c == '.' && ellipsizeBuffer.length < 3)
        {
          ellipsizeBuffer.write(c);
        }
        else
        {
          buffer.write(c);
        }

        break;
      case _FileFormatParseMode.variableEnd:
        if (c == '}')
        {
          final variableName = buffer.toString();
          buffer.clear();
          final prefix = prefixBuffer.toString();
          prefixBuffer.clear();
          final suffix = suffixBuffer.toString();
          suffixBuffer.clear();
          mode = _FileFormatParseMode.constant;

          if (ellipsizeBuffer.length == 3)
          {
            ellipsize = true;
          }
          ellipsizeBuffer.clear();

          emitters.add(VariablePathFormatEmitter(variableName, prefix, suffix, ellipsize));
          ellipsize = false;
        }
        else if (c == '.' && ellipsizeBuffer.length < 3)
        {
          ellipsizeBuffer.write(c);
        }
        else
        {
          throw InvalidFormatPathException("Invalid character '$c' after variable suffix at column $idx");
        }

        break;
      case _FileFormatParseMode.variablePrefix:
        if (c == '\'')
        {
          mode = _FileFormatParseMode.variable;
        }
        else
        {
          prefixBuffer.write(c);
        }

        break;
      case _FileFormatParseMode.variableSuffix:
        if (c == '\'')
        {
          mode = _FileFormatParseMode.variableEnd;
        }
        else
        {
          suffixBuffer.write(c);
        }

        break;
    }

    lastChar = c;
  }

  if (mode == _FileFormatParseMode.constant && buffer.length > 0)
  {
    emitters.add(ConstPathFormatEmitter(buffer.toString()));
  }

  return emitters;
}

buildSampleTvPathFromFormat(String rootPath, String tvPath, String format) => PathBuilder.fromFormat(rootPath, tvPath, '', format).build(sampleTvInfo, ShowType.tv);

buildRichTextTvPathFromFormat(BuildContext context, String rootPath, String tvPath, String format) => PathBuilder.fromFormat(rootPath, tvPath, '', format).buildRichText(context, sampleTvInfo, ShowType.tv);

buildSampleMoviePathFromFormat(String rootPath, String moviePath, String format) => PathBuilder.fromFormat(rootPath, '', moviePath, format).build(sampleTvInfo, ShowType.movie);

buildRichTextMoviePathFromFormat(BuildContext context, String rootPath, String moviePath, String format) => PathBuilder.fromFormat(rootPath, '', moviePath, format).buildRichText(context, sampleMovieInfo, ShowType.movie);