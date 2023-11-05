import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});

  final String _title = 'Welcome Learn';

  //43.01 de kaldın

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        //Appbar sol kısım
        leading: const Icon(Icons.chevron_left),
        automaticallyImplyLeading: false,
        //Aşağıdaki yorum satırları ortak alana taşındı
        // centerTitle: true, //yazının hep ortalı olmasını sağlar
        // elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light, //saat yazan yukarıda kısım light kalıe
        //App bar sağ kısım
        // actionsIconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.mark_email_unread),
          ),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
