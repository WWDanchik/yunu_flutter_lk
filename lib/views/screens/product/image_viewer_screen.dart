import 'dart:io';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/utils/image_utils.dart';

class ImageViewerScreen extends StatefulWidget {
  final List<Photo> photos;
  final int initialPage;

  const ImageViewerScreen({
    super.key,
    required this.photos,
    required this.initialPage,
  });

  @override
  State<ImageViewerScreen> createState() => _ImageViewerScreenState();
}

class _ImageViewerScreenState extends State<ImageViewerScreen> {
  late int _currentIndex;
  late PageController _pageController;
  late List<Photo> _photos;

  @override
  void initState() {
    super.initState();

    _photos = List.from(widget.photos);

    _currentIndex = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _deleteCurrentPhoto() {
    if (_photos.isNotEmpty) {
      setState(() {
        _photos.removeAt(_currentIndex);
        if (_photos.isEmpty) {
          _currentIndex = 0;
        } else if (_currentIndex >= _photos.length) {
          _currentIndex = _photos.length - 1;
        }

        _pageController = PageController(initialPage: _currentIndex);
      });
    }
  }

  void _setCurrentAsMain() {
    if (_photos.isNotEmpty) {
      setState(() {
        _photos =
            _photos.map((photo) => photo.copyWith(isMain: false)).toList();

        final removedPhoto = _photos.removeAt(_currentIndex);

        final mainPhoto = removedPhoto.copyWith(isMain: true);

        _photos.insert(0, mainPhoto);

        _currentIndex = 0;

        _pageController.jumpToPage(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _photos.isNotEmpty
              ? "${_currentIndex + 1} из ${_photos.length}"
              : "Нет изображений",
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Удалить изображение',
            onPressed: _deleteCurrentPhoto,
          ),
          IconButton(
            icon:
                _photos[_currentIndex].isMain
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_outline),
            tooltip: 'Сделать главным',
            onPressed: _setCurrentAsMain,
          ),
        ],
      ),
      body:
          _photos.isNotEmpty
              ? SafeArea(
                child: PhotoViewGallery.builder(
                  pageController: _pageController,
                  itemCount: _photos.length,

                  onPageChanged:
                      (index) => setState(() => _currentIndex = index),
                  builder: (context, index) {
                    final photo = _photos[index];
                    return PhotoViewGalleryPageOptions(
                      imageProvider:
                          isNetworkImage(photo.file)
                              ? NetworkImage(photo.file)
                              : FileImage(File(photo.file)),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 2,
                    );
                  },
                  backgroundDecoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              )
              : const Center(child: Text("Нет изображений")),
    );
  }
}
