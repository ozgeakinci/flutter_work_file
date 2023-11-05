import 'package:flutter/material.dart';

//BuildContext:Global bir objedir.

//17:11 de kaldın oradan devam et

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          //Text button backgroundu olmayan
          children: [
            TextButton(
              //custom bir style yaratmak için ama gelenllikle styşe TextButtonstyle yaratılıyor.
              //Bu kod burada çalışmadı tam olarak büyük ihtimal eski yinede kontrol için bakabilirsin
              // style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.resolveWith((states){
              //           if(states.contains(MaterialState.pressed){
              //        return Colors.green;
              //           }
              //           return Colors.white;

              //         })),
              onPressed: () {},
              child: Text(
                'Save',
                style: Theme.of(context).textTheme.titleLarge,
                //Material Ui dan çekme
              ),
            ),
            //Arka planı olan button
            ElevatedButton(
              onPressed: () {},
              child: const Text('data'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),

            const FloatingActionButton(
              foregroundColor: Colors.blue,
              backgroundColor: Colors.amber,
              //Eğer disable olmasını istersek null verebiliyoruz
              onPressed: null,
              child: Icon(Icons.add),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              onPressed: () {
                //servise istek at
                //sayfanın  rengini düzenle
              },
              child: const Text('data'),
            ),
            //custom olarak yaratmak istersek
            // InkWell(
            //   onTap: () => {},
            // ),

            Container(
              height: 50,
              color: Colors.amber,
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 40, left: 40),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ],
        ));
  }
}
