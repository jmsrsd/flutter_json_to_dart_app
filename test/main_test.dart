import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meta/meta.dart';
import 'package:recase/recase.dart';

@immutable
class PODO extends Equatable {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const PODO({
    this.count,
    this.pages,
    this.next,
    this.prev,
  });

  factory PODO.fromJson(Map<String, dynamic> json) {
    return PODO(
      count: json['count'],
      pages: json['pages'],
      next: json['next'],
      prev: json['prev'],
    );
  }

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};

    result['count'] = count;
    result['pages'] = pages;
    result['next'] = next;
    result['prev'] = prev;

    return result;
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      count,
      pages,
      next,
      prev,
    ];
  }
}

void main() {
  test('Convert JSON keys from snake_case to CamelCase', () {
    final json = {
      'foo_bar': 'a',
      'lorem_ipsum': 'b',
      'dolor_sit_amet': 'c',
    };

    final keys = json.keys.map((key) => key.camelCase).toList();

    expect(keys, ['fooBar', 'loremIpsum', 'dolorSitAmet']);
  });

  test('Print out corresponding value data type', () {
    const String string = 'string';
    const int integer = 1234567890;
    const double float = 12345.67890;
    const bool boolean = true;
    const List list = [
      string,
      integer,
      float,
      boolean,
    ];
    const Map<String, dynamic> map = {
      'string': string,
      'integer': integer,
      'float': float,
      'boolean': boolean,
      'list': list,
    };

    expect(string.runtimeType.toString(), 'String');
    expect(integer.runtimeType.toString(), 'int');
    expect(float.runtimeType.toString(), 'double');
    expect(boolean.runtimeType.toString(), 'bool');
    expect(list.runtimeType.toString(), 'List<dynamic>');
    expect(map.runtimeType.toString(), contains('Map<String, dynamic>'));
  });
}
