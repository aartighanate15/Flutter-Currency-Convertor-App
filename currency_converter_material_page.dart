import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override

  // ignore: no_logic_in_create_state
  State<CurrencyConverterMaterialPage> createState() =>
   _CurrencyConverterMaterialPageState();
  }


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
 // double result = 0;
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
    final border =  OutlineInputBorder(
      borderSide:  const BorderSide(
                    color: Colors.black,
                    width: 2,
                    style: BorderStyle.solid,
                  //  strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
      
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 123, 140, 143),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 9, 121, 133),
        title: Text('Curreny Converter',
        style: TextStyle(
          fontWeight: FontWeight.w800
        ),
        ),
        centerTitle: true,
        // actions: [
        //   Text('Logout')
        // ],
      ),
      body: Center(
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
              color: Colors.black,
              
            ),
            ),
            //padding
            //container
            TextField(
              // onSubmitted: (value){
              //   print(value);
              // },
              controller: textEditingController,
              style:const TextStyle(
                color:  Colors.black,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Please convert the amount in USD',
                hintStyle: TextStyle(
                color:   const Color.fromARGB(255, 23, 11, 11),
                fontSize: 20,
                ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black87,
                  filled: true,
                  fillColor: const Color.fromARGB(255, 47, 128, 141),
                  focusedBorder: border,
                 enabledBorder: border,
                ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                    
                  ),
                 ),
                 const SizedBox(height: 10),
              //button
              ElevatedButton(
                onPressed: convert,
                // onPressed: () {
                //  convert();
                //   // setState(() {
                //   //   result = double.parse(textEditingController.text)*84.61;
                //   // });
                // }, 
                style: TextButton.styleFrom(
                  
                 // elevation: const MaterialStatePropertyAll(10),
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  fixedSize: const Size(double.infinity,50),
                  
                 // borderRadius: BorderRadius.circular(Radius.circular(10) as double)
                
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                
                 child:  Text('Convert'),
                 
                 )
          ],
                ),
        ),
      ),
      );
  }
  
}


