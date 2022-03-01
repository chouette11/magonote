import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:magonote/components/appbar.dart';
import 'package:magonote/components/blue_button.dart';
import 'package:magonote/components/bottom_bar.dart';
import 'package:magonote/components/row.dart';
import 'package:magonote/home/components/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: widget.title,
      ),

      body: Stack(
        children: [
          Column(
            children: [

              Image.network("https://cdn0.mynvwm.com/wp-content/uploads/2014/11/141115_gf1420064331w.jpg", fit: BoxFit.fitWidth, height: 200, width: 400,),

              SizedBox(
                height: 384,
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 30),

                    Column(
                      children: const [
                        ContentRow(top: "高齢者提案　配食　名前", content: "高齢者提案　配食　希望日"),
                        ContentRow(top: "高齢者提案　配食　名前", content: "高齢者提案　配食　希望日"),
                        ContentRow(top: "高齢者提案　配食　名前", content: "高齢者提案　配食　希望日"),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const BlueButton(title: "配達依頼をもっと見る"),

                    const SizedBox(height: 32),

                    Column(
                      children: const [
                        ContentRow(top: "高齢者オリジナル依頼 name", content: "高齢者オリジナル依頼 希望日"),
                        ContentRow(top: "高齢者オリジナル依頼 name", content: "高齢者オリジナル依頼 希望日"),
                        ContentRow(top: "高齢者オリジナル依頼 name", content: "高齢者オリジナル依頼 希望日"),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const BlueButton(title: "ふれあい依頼をもっと見る"),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Container(
                                width: 180,
                                height: 28,
                                decoration: BoxDecoration(
                                  color: HexColor("E1C093"),
                                ),
                                child: const Center(child: Text("サービスを提案"))
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BottomBar(
                      onTap: (index) {
                        pageIndex = index!;
                        setState(() {});
                      },
                      pageIndex: pageIndex,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Positioned(
            top: 170,
            child: CustomButton(title: "依頼業務一覧"),
          ),
        ],
      ),
    );
  }
}