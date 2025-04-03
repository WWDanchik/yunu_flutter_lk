import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yunu_lk_flutter/data/models/product/product.dart';
import 'package:yunu_lk_flutter/utils/image_utils.dart';
import 'package:yunu_lk_flutter/viewmodels/product/product.dart';
import 'package:yunu_lk_flutter/views/screens/product/image_viewer_screen.dart';

class ProductMediaScreen extends ConsumerWidget {
  final ProductDetail productDetail;

  const ProductMediaScreen({super.key, required this.productDetail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ImagePicker picker = ImagePicker();
    final detail = ref.watch(productDetailControllerProvider(productDetail.id));

    Future<void> takePhoto() async {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        ref
            .read(productDetailControllerProvider(productDetail.id).notifier)
            .updateLocalDetail(
              productDetail.copyWith(
                photos: [
                  ...productDetail.photos,
                  Photo(file: pickedFile.path, isMain: false),
                ],
              ),
            );
      }
    }

    Future<void> pickImageFromGallery() async {
      final pickedFile = await picker.pickMultiImage();
      final baseId = DateTime.now().microsecondsSinceEpoch;
      final photoModel = pickedFile.asMap().entries.map((entry) {
        final index = entry.key;
        final photo = entry.value;
        return Photo(id: baseId + index, file: photo.path, isMain: false);
      });

      ref
          .read(productDetailControllerProvider(productDetail.id).notifier)
          .updateLocalDetail(
            productDetail.copyWith(
              photos: [...productDetail.photos, ...photoModel],
            ),
          );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Медиа")),
      persistentFooterButtons: [
        Row(
          children: [
            Expanded(
              child: FilledButton.tonal(
                onPressed:
                    (detail?.value?.dataChanged ?? false)
                        ? () {
                          // логика сохранения
                        }
                        : null,
                child: const Text("Сохранить"),
              ),
            ),
          ],
        ),
      ],
      body: detail.when(
        data: (productDetail) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          'Изображения',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12),

                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ...productDetail.detail.photos
                          .asMap()
                          .entries
                          .where((entry) => entry.value.file.isNotEmpty)
                          .map((entry) {
                            final index = entry.key;
                            final photo = entry.value;
                            return OpenContainer(
                              transitionDuration: const Duration(
                                milliseconds: 250,
                              ),
                              closedElevation: 0,
                              openElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              closedColor: Colors.transparent,
                              openColor: Colors.transparent,
                              middleColor: Colors.transparent,
                              closedBuilder: (context, action) {
                                return Card.filled(
                                  margin: EdgeInsets.zero,
                                  child: Hero(
                                    tag: 'image_${photo.id}',
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Material(
                                        child: Ink.image(
                                          fit: BoxFit.cover,
                                          image:
                                              isNetworkImage(photo.file)
                                                  ? NetworkImage(photo.file)
                                                  : FileImage(File(photo.file)),
                                          child: InkWell(
                                            onTap: () => action(),
                                            child: const Align(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              openBuilder: (context, action) {
                                return Hero(
                                  tag: 'image_${photo.id}',
                                  child: ImageViewerScreen(
                                    photos: productDetail.detail.photos,
                                    initialPage: index,
                                  ),
                                );
                              },
                            );
                          }),
                      FilledButton.tonal(
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            enableDrag: true,
                            isDismissible: true,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              final bottomPadding =
                                  MediaQuery.of(context).padding.bottom;
                              return Container(
                                margin: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  bottom: bottomPadding + 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Material(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const SizedBox(height: 8),
                                      Container(
                                        width: 40,
                                        height: 4,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(
                                            2,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      ListTile(
                                        title: const Text('Прикрепить фото'),
                                        leading: const Icon(
                                          Icons.photo_library,
                                        ),
                                        onTap: () {
                                          pickImageFromGallery();
                                          Navigator.pop(context);
                                        },
                                      ),
                                      ListTile(
                                        title: const Text('Сделать снимок'),
                                        leading: const Icon(Icons.camera_alt),
                                        onTap: () {
                                          takePhoto();
                                          Navigator.pop(context);
                                        },
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Icon(Icons.add_a_photo, size: 35),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Text(error.toString()),
      ),
    );
  }
}
