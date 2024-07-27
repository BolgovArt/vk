import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vk/design/colors.dart';
import 'package:vk/design/images.dart';
import 'package:vk/design/style.dart';
// import 'package:vk/widgets/main_screen/main_screen_widget.dart';

class AuthorizationWidget extends StatefulWidget {
  const AuthorizationWidget({super.key});

  @override
  State<AuthorizationWidget> createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  final decoratedContainer = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(30));

  // final Text textTest1 = Text('fsdf', style: StyleApp.mainSystemTextBlue); ?????????


  @override
  Widget build(BuildContext context) {
//  final Text textTest2 = Text('fsdf', style: StyleApp.mainSystemTextBlue);  ?????????

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            clipBehavior: Clip.none,
            title: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  vkLogo,
                  const SizedBox(height: 10),
                  Text('Вход ВКонтакте', style: StyleApp.titleStyle),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          color: const Color(0xFFedeef0),
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: decoratedContainer,
                child: const Column(
                  children: [
                    _FormWidget(),

                    // _MainActionButtonLogIn(text: 'Войти', buttonStyle: StyleApp.mainBlueButton),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                  padding: const EdgeInsets.all(16),
                  decoration: decoratedContainer,
                  child: Column(
                    children: [
                      _MainActionButtonRegistation(
                          text: 'Регистрация',
                          buttonStyle: StyleApp.mainGreenButton),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'После регистрации вы получите доступ ко всем возможностям VK ID',
                        style: StyleApp.mainTextGrey,
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text('Узнать больше',
                              style: StyleApp.mainSystemTextBlue))
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: const _BottomLine());
  }
}


// ? попытка создать отдельный класс корзины
// class Trash extends StatefulWidget {
//   final logInTextController;
//   final passwordTextController;
//   const Trash({super.key, this.logInTextController, this.passwordTextController});
//   @override
//   State<Trash> createState() => _TrashState();
// }

// class _TrashState extends State<Trash> {
//   final login = logInTextController;
// void _resetForm() {
//     var password = widget.passwordTextController.text;
//     if (password.isNotEmpty) {
//       widget.passwordTextController.text = '';
//     }
//     setState(() {
      
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//                   onPressed: _resetForm,
//                   icon: const Icon(Icons.delete),
//                   padding: EdgeInsets.zero,
//                   splashRadius: 24,
//                   color: Colors.grey,
//                 );
//   }
// }


class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  bool isChecked = true;




  void _resetForm1() {

    var login = _logInTextController.text;
    if (login.isNotEmpty) {
      _logInTextController.text = ''; // ? Почему login.text = ''; не работает?
      isFieldLoginEmpty = true;
    }
    setState(() {
      
    });
  }




    void _resetForm2() {
    var password = _passwordTextController.text;
    if (password.isNotEmpty) {
      _passwordTextController.text = '';
            isFieldPassEmpty = true;
    }
    setState(() {
      
    });
  }

  // var trashIcon = const IconButton(
  //       onPressed: _resetForm,
  //       icon: Icon(Icons.delete),
  //       padding: EdgeInsets.zero,
  //       splashRadius: 24,
  //       color: Colors.grey,
  //       );
// ! Почему ниже не работает onPressed: _resetForm, отсюда
  // final textFieldDecoration = const InputDecoration(
  //     border: OutlineInputBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(10))),
  //     contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
  //     isCollapsed: true,
      // suffixIcon: IconButton(
      //   onPressed: _resetForm,
      //   icon: Icon(Icons.delete),
      //   padding: EdgeInsets.zero,
      //   splashRadius: 24,
      //   color: Colors.grey,
      // ));

// String someLogin = '';
//                       // var somePass = _passwordTextController.text;

// void kar(boolValue) {
//                   setState(
//                     () {
//                       someLogin = _logInTextController.text;
//                       // var someLogin = _logInTextController.text;
//                       // var somePass = _passwordTextController.text;
//                       print('someLogin: $someLogin');
//                       // print('somePass: $somePass');
//                       isChecked = boolValue!;
//                       // isChecked = true
//                       // if (isChecked == true) {
                        
//                       // print('1');
//                       // print('someLogin: $someLogin');
//                       // print('somePass: $somePass');
//                       // } else {
//                       //   // isChecked = boolValue!;
//                       // isChecked = boolValue!;
//                       //   print('2');
//                       // }
                      
                      
//                     },
//                   );
//                 }
                
  // final _logInTextController = TextEditingController(text: someLogin);

  //   final _logInTextController = TextEditingController(); // Инициализируем контроллер без передачи начального текста

  // @override
  // void initState() {
  //   super.initState();
  //   _logInTextController.text = someLogin; // Устанавливаем текст в контроллере при инициализации
  // }

  final _logInTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  
  

  String? errorText = null;

  void _authorization() {
    final login = _logInTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      // Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) => const MainScreenWidget()));
      Navigator.of(context).pushReplacementNamed('/main_screen');
      errorText = null;
    } else {
      errorText = 'Неправильный логин или пароль';
    }

    if (login.isEmpty && password.isEmpty) {
      errorText = 'Поля пусты';
    }

    setState(() {});
  }


  bool isFieldLoginEmpty = false;
  bool isFieldPassEmpty = false;

  @override
  Widget build(BuildContext context) {
    // final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // if (errorText != null) Text(errorText),
        // errorText != null ? Text(errorText!) : SizedBox(),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('Логин:', style: StyleApp.mainTextBlack),
          if (errorText != null)
            Text(errorText!,
              style: const TextStyle(color: Colors.red, fontSize: 14)),
        ]),


        TextField(
          controller: _logInTextController,
          onChanged: (value) {
            setState(() {
              isFieldLoginEmpty = value.isEmpty;
            });
          },
          decoration: 
            InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              isCollapsed: true,
              suffixIcon: 
              isFieldLoginEmpty
                ? null
              : IconButton(
                
                onPressed: _resetForm1,

                icon: Icon(Icons.delete),
                padding: EdgeInsets.zero,
                splashRadius: 24,
                color: Colors.grey,
              )
              )
              ),
        

        // _ShowDeleteButtonLogin(logInTextController),
        const SizedBox(height: 10),
        Text('Пароль:', style: StyleApp.mainTextBlack),


        TextField(
          controller: _passwordTextController,
          onChanged: (value) {
            setState(() {
              isFieldPassEmpty = value.isEmpty;
            });
          },
          decoration: 
            InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              isCollapsed: true,
              suffixIcon: isFieldPassEmpty ? null : IconButton(
              onPressed: _resetForm2,
              icon: Icon(Icons.delete),
              padding: EdgeInsets.zero,
              splashRadius: 24,
              color: Colors.grey,
            )),
          obscureText: true
          ),



        Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (value) {isChecked=value!;
                setState(() {
                  
                });
                ;}
                  
                // (boolValue) {
                //   savedInputText(boolValue);
                // },
                // savedInputText
                ),
            Text('Сохранить вход', style: StyleApp.mainTextGrey),
            const SizedBox(width: 5),
            questionMark,
          ],
        ),
        ElevatedButton(
          onPressed: _authorization,
          style: StyleApp.mainBlueButton,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Войти', style: TextStyle(fontSize: 18)),
            ],
            ))
      ],
    );
  }
}

class _BottomLine extends StatelessWidget {
  const _BottomLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 50,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.language, color: systemTextBlueColor),
                      Text(' Language', style: StyleApp.mainSystemTextBlue),
                    ],
                  ))),
          const SizedBox(width: 16),
          Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Тема', style: StyleApp.mainSystemTextBlue),
                      const Icon(Icons.format_paint_outlined)
                    ],
                  ))),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

// class _MainActionButtonLogIn extends StatelessWidget {
//   final String text;
//   final ButtonStyle buttonStyle;
//     void _authorization () {
//       _logInTextController.text
//     }

//   const _MainActionButtonLogIn({super.key, required this.text, required this.buttonStyle});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: _authorization,
//       style: buttonStyle,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(text, style: TextStyle(fontSize: 18)),
//         ],
//       ));
//   }
// }

class _MainActionButtonRegistation extends StatelessWidget {
  final String text;
  final ButtonStyle buttonStyle;
  void _registration() {}
  const _MainActionButtonRegistation(
      {super.key, required this.text, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _registration,
        style: buttonStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(fontSize: 18)),
          ],
        ));
  }
}






// class _ShowDeleteButtonLogin extends StatefulWidget {
//     final logInTextController;
//   const _ShowDeleteButtonLogin({super.key, required this.logInTextController});

//   @override
//   State<_ShowDeleteButtonLogin> createState() => __ShowDeleteButtonLoginState();
// }



// class __ShowDeleteButtonLoginState extends State<_ShowDeleteButtonLogin> {

//   void _resetForm1(logInTextController) {
//     var login = logInTextController.text;
//     if (login.isNotEmpty) {
//       logInTextController.text = ''; // ? Почему login.text = ''; не работает?
//     }
//     setState(() {
      
//     });
//   }


//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//           controller: logInTextController,
//           decoration: 
          
//           const InputDecoration(
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//               isCollapsed: true,
//               suffixIcon: IconButton(
//                 onPressed: _resetForm1,
//                 icon: Icon(Icons.delete),
//                 padding: EdgeInsets.zero,
//                 splashRadius: 24,
//                 color: Colors.grey,
//               ))
//         );
//   }
// }