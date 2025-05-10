import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});
  

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterCupertinoPage> {
 double result = 0;
     final TextEditingController textEditingController = TextEditingController();

    void convert(){
      result = double.parse(textEditingController.text)*84.61;
      setState(() {
        
      });
    }
 
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 123, 140, 143),
      navigationBar: CupertinoNavigationBar(
        backgroundColor:  const Color.fromARGB(255, 9, 121, 133),
        middle: Text('Curreny Converter',
        style: TextStyle(
          fontWeight: FontWeight.w800
        ),
        ),
        
        // actions: [
        //   Text('Logout')
        // ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             '${result != 0? result.toStringAsFixed(2): result.toStringAsFixed(0)} INR',
              
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: CupertinoColors.black,
              
            ),
            ),
            //padding
            //container
            CupertinoTextField(
              // onSubmitted: (value){
              //   print(value);
              // },
              controller: textEditingController,
              style:const TextStyle(
                color:  CupertinoColors.black,
                fontSize: 20,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.extraLightBackgroundGray,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
              ), 
              placeholder: 'Please Enter the Amount',
              prefix: Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    
                  ),
                 ),
                 const SizedBox(height: 10),
              //button
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                
                  child:  Text('Convert' ),
                  
                  ),
                  
                
          ],
                 
                 ),
          
                ),
        ),
      );
      
  }
  }
