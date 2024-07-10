import 'package:eco_resolve/chat/message_card.dart';
import 'package:eco_resolve/chat/chat_controller.dart';
import 'package:eco_resolve/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfChatScreenWeb extends StatefulWidget {
  const ConfChatScreenWeb({super.key});

  @override
  State<ConfChatScreenWeb> createState() => _ConfChatScreenWebState();
}

class _ConfChatScreenWebState extends State<ConfChatScreenWeb> {
  final _c = Get.put(ChatController());
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenSizeHeight=screenSize.height;
    final screenSizeWidth=screenSize.width;
    final isDesktop = screenSizeWidth >= 600;

    return Container(
      decoration: const BoxDecoration(color:CustomColor.bgLight,),
      // backgroundColor:CustomColor.bgLight,
      child: Column(
        children:[ 
          const SizedBox(height: 15),
          Text("Conflict Resolution Chat Service",
          style:TextStyle(fontWeight: FontWeight.bold,fontSize: isDesktop?30:20, color:CustomColor.greenSecondary )),
          Container(
          margin:const EdgeInsets.only(left:80,right:80,bottom: 50, top:20),
          height:screenSize.height*0.9,
          width:screenSize.width*0.7,
          
          decoration: BoxDecoration(
                color: CustomColor.bgLight1,
                border: Border.all(color: CustomColor.greenSecondary, width: 2),
                borderRadius: BorderRadius.circular(20), // Adjust the value for more or less curvature
              ),
        
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Same border radius as the container
            child: Scaffold(
              backgroundColor: CustomColor.bgLight, // Set scaffold background to transparent
              
              //send message field and button
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Padding(
                padding: EdgeInsets.all(isDesktop ? 10.0 : 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        // Because text field screen is going to update
                        controller: _c.textC,
                        onTapOutside: (e) => FocusScope.of(context).unfocus(),
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: CustomColor.bgLight1,
                          filled: true,
                          hintText: "    Ask me anything....",
                          hintStyle: TextStyle(fontSize: isDesktop ? 13 : 7),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: isDesktop ? 16 : 8,
                            horizontal: isDesktop ? 20 : 8,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: CustomColor.greenSecondary), // Set your border color here
                            ),
                            
                        ),
                      ),
                    ),
                    const SizedBox(width: 9),  
                    CircleAvatar(
                      radius: isDesktop ? 25 : 15,
                      backgroundColor: CustomColor.greenPrimary,
                      child: IconButton(
                        onPressed: _c.askQuestion,
                        icon: Icon(
                          Icons.send,
                          color: CustomColor.greenSecondary,
                          size: isDesktop ? 25 : 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              body: Obx(
                () => ListView(
                  physics: const BouncingScrollPhysics(),
                  controller: _c.scrollC,
                  padding: EdgeInsets.only(top: screenSizeHeight * .02, bottom: screenSizeWidth * .02),
                  children: _c.list.map((e) => MessageCard(message: e)).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    ),);
  }
}




