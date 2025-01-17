import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../impVariable.dart';
import '../../resources/firebaseStorage.dart';
import '../../resources/utils.dart';
import '../../themes/theme.dart';

class myPostContainer extends StatefulWidget {
 final  Map<String, dynamic>  postId;
 final  String  userId;
  const myPostContainer({super.key, required this.postId, required this.userId});

  @override
  State<myPostContainer> createState() => _myPostContainerState();
}

class _myPostContainerState extends State<myPostContainer> {
  _removePost(BuildContext context, ) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: lRed,
            title: Text(
              'Do You Want To Remove Post',
              style: GoogleFonts.galdeano(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(15),
                child: Text(
                  '   Yes',
                  style: GoogleFonts.rajdhani(
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  String res = await storageMethods().removePost(widget.postId['postId'],widget.userId);
                  if (res == 'success') {
                    setState(() {
                      showSnackBar(res,context);
                      Navigator.pop(context);
                    });

                  } else {
                    setState(() {
                      showSnackBar('Delete Failed',context);
                    });
                  }
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(15),
                child: Text(
                  '   No',
                  style: GoogleFonts.rajdhani(
                    color: Colors.white,
                  ),
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: lRed,width: .5),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: pRed,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.postId['mainPost'])),
                    borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            ),
            sbH10,
            // GestureDetector(
            //   onTap: (){},
            //   child: Container(
            //     padding: const EdgeInsets.all(15.0),
            //     decoration: BoxDecoration(
            //       color: Colors.transparent,
            //       borderRadius: BorderRadius.circular(15.0),
            //       border: Border.all(color: lRed,width: .5)
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           'EDIT',
            //           style: GoogleFonts.poppins(
            //             fontSize: 18,
            //             color: lRed,
            //             fontWeight: FontWeight.w400
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // sbH10,
            GestureDetector(
              onTap: (){
                _removePost(context);
              },
              child: Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: lRed,width: .5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'REMOVE',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: lRed,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
