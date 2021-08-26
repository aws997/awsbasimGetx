import 'package:aw_basim_flutter/app/modules/home/models/postModel.dart';
import 'package:flutter/material.dart';

class PostComponent extends StatelessWidget {
final PostModel post;

  const PostComponent({Key? key,required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20
      ),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                circlularLessonPic(),
                SizedBox(width: 15,),
                Column(
                  children: [
                  

                    Row(
                      children: [
                        Text("رقم الدرس"),
                          Text(' - '),
                                          Text(post.lessonNumber.toString()),

                      ],
                    ),
                    Text(post.senderName)
                  ],
                ),
              
                Expanded(child: SizedBox()),
                Icon(Icons.keyboard_arrow_up)
              ],),
            ),

            Divider(),
            Text(post.title),
        if(post.picture!=null)Image.asset(post.picture!),
        Row(children: [
          TextButton.icon(
            style: TextButton.styleFrom(
              
            ),
            onPressed: (){}, 
          icon: Icon(Icons.favorite_border_rounded),
           label: Text(post.likes.toString())),

            TextButton.icon(
            style: TextButton.styleFrom(
              
            ),
            onPressed: (){}, 
          icon: Icon(Icons.comment_rounded),
           label: Text(post.comments.toString())),


        
        ],)
          ],
        ),
      ),
    );
  }

Widget circlularLessonPic (){
          return    Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  // color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.green,
                    width: 1.2
                  )
                ),
                child: Material(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              );

}
}