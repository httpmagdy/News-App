import 'package:flutter/material.dart';
class PageModel {
  String _title;
  IconData _icon;
  String _description;
  String _image;

  PageModel(this._title, this._icon, this._description, this._image);

  String get image => _image;
  String get description => _description;
  IconData get icon => _icon;
  String get title => _title;
}
