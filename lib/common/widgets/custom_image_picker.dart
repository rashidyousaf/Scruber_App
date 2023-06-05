import 'dart:io';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_storage/firebase_storage.dart';
import '../../const/conts.dart';

// ignore: must_be_immutable
class CustomImagePicker extends StatefulWidget {
  CustomImagePicker({
    super.key,
    required this.controller,
    this.showGallery = true,
  });

  TextEditingController controller = TextEditingController();
  final bool showGallery;

  @override
  State<CustomImagePicker> createState() => _CustomImagePickerState();
}

class _CustomImagePickerState extends State<CustomImagePicker> {
  String imgeUrl = '';
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10.h),
          clipBehavior: Clip.antiAlias,
          width: 97.w,
          height: 97.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            color: blackColor,
          ),
          // this condition for if controller is empty then show image.asset other wise show image.network
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: bColor,
                  ),
                )
              : widget.controller.text.isEmpty
                  ? Image.asset(
                      icPPerson,
                      fit: BoxFit.fill,
                    )
                  : Image.network(
                      widget.controller.text,
                      fit: BoxFit.cover,
                    ),
        ),
        // this condition for if controller is empty then show position widget other wise not

        Positioned(
          top: 75.h,
          left: 65.w,
          child: GestureDetector(
            onTap: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false, // user must tap button!
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Center(
                      child: Text(
                        widget.showGallery ? 'Please upload' : 'Please capture',
                        style: TextStyle(color: nBColor, fontSize: 18.sp),
                      ),
                    ),
                    content: widget.showGallery
                        ? isLoading
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                      // capture image from gallery
                                      ImagePicker imagePicker = ImagePicker();
                                      XFile? file = await imagePicker.pickImage(
                                        source: ImageSource.gallery,
                                      );

                                      if (file == null) return;

                                      setState(() {
                                        isLoading = true;
                                      });

                                      try {
                                        // Upload image to Firestore
                                        String uniqueFileName = DateTime.now()
                                            .millisecondsSinceEpoch
                                            .toString();
                                        Reference referenceRoot =
                                            FirebaseStorage.instance.ref();
                                        Reference referenceDirImages =
                                            referenceRoot.child('images');
                                        Reference referenceImageToUpload =
                                            referenceDirImages
                                                .child(uniqueFileName);

                                        await referenceImageToUpload
                                            .putFile(File(file.path));

                                        // Get download URL
                                        String imageUrl =
                                            await referenceImageToUpload
                                                .getDownloadURL();

                                        widget.controller.text = imageUrl;
                                      } catch (error) {
                                        // Handle error
                                      }

                                      setState(() {
                                        isLoading = false;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 10,
                                      backgroundColor: nBColor,
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    child: Text(
                                      'Gallery',
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                      // capture image from camera
                                      ImagePicker imagePicker = ImagePicker();
                                      XFile? file = await imagePicker.pickImage(
                                        source: ImageSource.camera,
                                      );

                                      if (file == null) return;

                                      setState(() {
                                        isLoading = true;
                                      });

                                      try {
                                        // Upload image to Firestore
                                        String uniqueFileName = DateTime.now()
                                            .millisecondsSinceEpoch
                                            .toString();
                                        Reference referenceRoot =
                                            FirebaseStorage.instance.ref();
                                        Reference referenceDirImages =
                                            referenceRoot.child('images');
                                        Reference referenceImageToUpload =
                                            referenceDirImages
                                                .child(uniqueFileName);

                                        await referenceImageToUpload
                                            .putFile(File(file.path));

                                        // Get download URL
                                        String imageUrl =
                                            await referenceImageToUpload
                                                .getDownloadURL();

                                        widget.controller.text = imageUrl;
                                      } catch (error) {
                                        // Handle
                                      }

                                      setState(() {
                                        isLoading = false;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 10,
                                      backgroundColor: nBColor,
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    child: Text(
                                      'Camera',
                                      style: TextStyle(fontSize: 15.sp),
                                    ),
                                  ),
                                ],
                              )
                        : SizedBox(),
                    actions: <Widget>[
                      TextButton(
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: nBColor, fontSize: 15.sp),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Image.asset(
              icPlus,
              width: 21.76.w,
              height: 21.76.w,
            ),
          ),
        ),
      ],
    );
  }
}
