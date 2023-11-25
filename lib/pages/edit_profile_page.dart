import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/toolbar_page.dart';
import 'package:flutter_first_app/styles/app_colors.dart';
import 'package:flutter_first_app/styles/app_text.dart';
import 'package:flutter_first_app/widgets/app_text_field.dart';
import 'package:flutter_first_app/widgets/user_avatar.dart';

enum Gender {none, female, male, other}

// ignore: must_be_immutable
class EditProfilePage extends StatefulWidget {
  @override
  EditProfilePageState createState() => EditProfilePageState();
  const EditProfilePage({ Key? key,}) : super(key: key);
}

class EditProfilePageState extends State<EditProfilePage> {
  Gender _gender = Gender.none;

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: const Toolbar(title: "Edit Profile",),
        body: SingleChildScrollView(
         child: 
           Padding(
                padding: const EdgeInsetsDirectional.all(25.0),
                child: Column(
                          children: [
                              Stack(
                                children: [
                                    const Padding(
                                          padding: EdgeInsets.all(10),
                                          child: UserAvatar(size: 120,),
                                      ),
                                      Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                                padding: const EdgeInsets.all(3),
                                                decoration: const BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                                  color: Colors.amber,
                                                ),
                                                child: const Icon(Icons.edit, 
                                                                  size: 20,
                                                                  color: Colors.black,
                                                                  ),
                                            ),
                                      )
                                    ],
                                ),
                              const SizedBox(height: 16,),
                              const AppTextField(hint: "First name"),
                              const SizedBox(height: 16,),
                              const AppTextField(hint: "Last name"),
                              const SizedBox(height: 16,),
                              const AppTextField(hint: "Phone number"),
                              const SizedBox(height: 16,),
                              const AppTextField(hint: "Location"),
                              const SizedBox(height: 16,),
                              const AppTextField(hint: "Birthday"),
                              const SizedBox(height: 16,),
                              Container(
                                  padding: const EdgeInsets.only(right: 2, left: 2),
                                  decoration: BoxDecoration(
                                    color: AppColors.fieldColor,
                                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text("Gender"),
                                      Row(
                                         children: [
                                              Expanded(
                                                child: RadioListTile<Gender>(
                                                      title: Text("Female", style: AppText.subtitle3.copyWith(fontSize: 13),),
                                                      contentPadding: EdgeInsets.zero,
                                                      visualDensity: const VisualDensity(
                                                                        horizontal: VisualDensity.maximumDensity,
                                                                        vertical: VisualDensity.maximumDensity
                                                                        ),
                                                      value: Gender.female,
                                                      groupValue: _gender, 
                                                      onChanged: (Gender? value) {
                                                      setState(() {
                                                         _gender = Gender.female;
                                                      });
                                                }),
                                            ),
                                              Expanded(
                                                child: RadioListTile<Gender>(
                                                      title: Text("Male", style: AppText.subtitle3.copyWith(fontSize: 13),),
                                                      contentPadding: EdgeInsets.zero,
                                                      visualDensity: const VisualDensity(horizontal: VisualDensity.maximumDensity, vertical: VisualDensity.maximumDensity),
                                                      value: Gender.male,
                                                      groupValue: _gender, 
                                                      onChanged: (Gender? value) {
                                                      setState(() {
                                                        _gender = Gender.male;
                                                      });
                                                }),
                                            ),
                                              Expanded(
                                            child: RadioListTile<Gender>(
                                                      title: Text("Other", style: AppText.subtitle3.copyWith(fontSize: 13),),
                                                      contentPadding: EdgeInsets.zero,
                                                      visualDensity: const VisualDensity(horizontal: VisualDensity.maximumDensity, vertical: VisualDensity.maximumDensity),
                                                      value: Gender.other,
                                                      groupValue: _gender, 
                                                      onChanged: (Gender? value) {
                                                      setState(() {
                                                        _gender = Gender.other;
                                                      });
                                                }),
                                            ),
                                          ],
                                      ),
                                    ],
                                  ),
                                  ),
                          ],
                    ),
                ),
        ),
       );
 }
}