import 'dart:convert';

class DApollo {
  final Map<String, String> _body = {};
  final Map<String, dynamic> _variables = {};

  Map<String, String> get body {
    compose_body();
    return _body;
  }

  void set_query(String query) {
    _body.addAll({'query': query.replaceAll('#', '\$')});
  }

  void compose_body() {
    if (_body.isNotEmpty) {
      _body['variables'] = json.encode(_variables);
    }
  }

  void set_vars(Map<String, dynamic> variables) {
    variables.forEach((key, value) {
      update_vars(key, value);
    });
  }

  void update_vars(String key, dynamic newValue) {
    if (_variables.containsKey(key)) {
      _variables.update(key, (value) => newValue);
    } else {
      _variables.addAll({key: newValue});
    }
  }

  void clear_vars() {
    _variables.clear();
  }

  DApollo(String query) {
    set_query(query);
  }
}
