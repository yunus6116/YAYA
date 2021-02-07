import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class IhbarBagis extends StatefulWidget {
  @override
  _IhbarBagisState createState() => _IhbarBagisState();
}

class _IhbarBagisState extends State<IhbarBagis> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ClipPath(
              clipper: YayaCliper(),
              child: Container(
                height: 135,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 10,
                  ),
                  child: Text(
                    'Çocukların bir çoğu ailesinin maddi sıkıntıları sebebiyle okuyamıyor. Elinizi uzatarak bu çocukların kendini keşfettiği eğitim yıllarını kurtarabilir ve dünyaya yön verebilirsiniz.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 230,
                    bottom: 20,
                  ),
                  child: Text(
                    'İhbar Listesi',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Yunus (Kyksı yatmamış)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: const Icon(Icons.scatter_plot_outlined),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Aziz (Kyksı yatmamış)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: const Icon(Icons.scatter_plot_outlined),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Yüsra (Kyksı yatmamış)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: const Icon(Icons.scatter_plot_outlined),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 350,
                  child: CheckboxListTile(
                    title: const Text('Ahmet (Kyksı yatmamış)'),
                    value: timeDilation != 2.0,
                    onChanged: (bool value) {
                      setState(() {
                        timeDilation = value ? 3.0 : 2.0;
                      });
                    },
                    secondary: const Icon(Icons.scatter_plot_outlined),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                    onPressed: () {
                      AlertDialog(
                        title: Text('Bağış Miktarı'),
                        content: TextField(),
                        actions: [
                          MaterialButton(
                            onPressed: () {},
                            elevation: 5.0,
                            child: Text('Bağış Yap'),
                          )
                        ],
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 350,
                      height: 60,
                      child: Center(
                          child: Text(
                        'Bağış Yap',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
