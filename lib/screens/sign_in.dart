import 'package:flutter/material.dart';
import 'package:login_1/widgets/widgets.dart';

class SignIn extends StatelessWidget{
  const SignIn({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFFADC02),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: (){}, 
            child: const Text('Register',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
          ),
          const SizedBox(width: 15,),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _TextStyle(text: 'Sign In',fontSize: 35,fontWeight: FontWeight.bold,),
          _TextStyle(text: 'Dolore ea cupidatat sit ullamco cupidatat sit ullamco cupidatat sit ullamco.',fontSize: 15,fontWeight: FontWeight.w500,),
          SizedBox(height: 10,),
          _BodySignIn()
        ],
      ),
    );
  }
}

class _BodySignIn extends StatelessWidget {
  const _BodySignIn();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45)
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const _TextFormField(hintText: 'Username'),
                const SizedBox(height: 15,),
                const _TextFormField(hintText: 'Password'),
                const SizedBox(height: 15,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey[600]!),),
                ),
                const SizedBox(height: 25,),
                StyleElevatedButton(title: 'Sign In',backgroundColor: Colors.black,width: double.infinity,height: size.height*0.08,textColor: Colors.white,),
                const SizedBox(height: 50,),
                const _CardButtom(title: 'Continue with Google',iconData: Icons.email,color: Colors.red,),
                const _CardButtom(title: 'Continue with Facebook',iconData: Icons.facebook,color: Colors.blue,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardButtom extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;
  const _CardButtom({
    required this.title, 
    required this.iconData, 
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 6,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(iconData,color: color,size: 30),
            Text(title,style: const TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.w500)),
            const Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}

class _TextFormField extends StatelessWidget {
  final String hintText;

  const _TextFormField({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(50)
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText
        ),
      ),
    );
  }
}

class _TextStyle extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;

  const _TextStyle({
    required this.text, 
    required this.fontSize,
    required this.fontWeight, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,left: 35,bottom: 15,right: 15),
      child: Text(

        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}