import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Game Store',
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(
          background: Color.fromARGB(255, 8, 9, 73),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 10, 103, 179),
        ),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Online Game Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              obscureText: true,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;
                if (username == 'Gamer' && password == '123') {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 10, 66, 112),
                        title: Text(
                          'ยินดีต้อนรับ ${username}',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ),
                              );
                            },
                            child: Text(
                              'ตกลง',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Color.fromARGB(255, 10, 66, 112),
                        title: Text(
                          'Login ไม่สำเร็จ',
                          style: TextStyle(color: Colors.white),
                        ),
                        content: Text(
                          'Username หรือ Password ไม่ถูกต้อง',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'ตกลง',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static List<String> gamename = [
    'Elden Ring',
    'Dying Light 2 : Stay Human',
    'Horizon Forbidden West',
    'S.T.A.L.K.E.R. 2: Heart of Chernobyl',
    'A Plague Tale: Requiem',
    'Forspoken',
    'Call of Duty: Black Ops Cold War',
    'BattleField 2042',
    'Fruit App 2 - Battle of TSU'
  ];

  static List url = [
    'https://asset.vg247.com/elden-ring-beta.jpg/BROK/resize/1920x1920%3E/format/jpg/quality/80/elden-ring-beta.jpg',
    'https://cdn.mos.cms.futurecdn.net/LosGhSqN4vM7T4n6ux4dvY.jpg',
    'https://www.blognone.com/sites/default/files/externals/21820f6c3f558cd2aa5ccbe888ff2155.jpg',
    'https://www.dailynews.co.th/wp-content/uploads/2021/12/Untitled-60-1024x512.jpg',
    'https://www.dailynews.co.th/wp-content/uploads/2021/12/image-22-1024x576.jpeg',
    'https://cdn1.dotesports.com/wp-content/uploads/2021/09/09174130/forspoken.jpg',
    'https://thumbor.4gamers.com.tw/AAMJM6P5SMCa6NKpvhrNxjcl1WE=/adaptive-fit-in/1600x1600/filters:format(avif):quality(60):no_upscale()/https%3A%2F%2Fimg.4gamers.com.tw%2Fckfinder-th%2Fimages%2FCall-of-Duty-Black-Ops-Cold-War_2020_09-09-20_003.png%3FversionId%3DVupPmSCPCFahvNFatc31IQe9MzO1YCT7',
    'https://s.isanook.com/ga/0/ud/223/1119433/battlefield(5).jpg?ip/resize/w728/q80/jpg',
    'https://cdn.vox-cdn.com/thumbor/1bWRZTEQXbFWIIjW4QeoSEhYvZc=/0x0:1705x1033/920x613/filters:focal(670x533:942x805):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/72720632/suika.0.jpg'
  ];

  static List<String> descriptions = [
    'เกมที่ผสมผสานระหว่างดาร์กแฟนตาซีกับแอ็คชัน RPG ซึ่งมาพร้อมกับแผนที่อันกว้างใหญ่และดันเจี้ยนแสนซับซ้อน พบกับเหล่าตัวละครที่มาพร้อมกับเจตนาซ่อนเร้นและเรื่องราวลึกลับ ให้ผู้เล่นได้เพลิดเพลินไปกับการวางแผนกลยุทธ์เพื่อไขปริศนาความลับดินแดนต้องสาปนี้',
    'ตอนนี้มีปืนอีกด้วย! ด้วย Reloaded Edition คลังแสงที่คุณครอบครองจะเติบโตขึ้นอย่างมหาศาล ใช้ความคิดสร้างสรรค์ในการต่อสู้หรือวิ่งให้เร็วกว่าศัตรู พร้อมเพลิดเพลินกับสิทธิประโยชน์ของการอัปเดตมากกว่า 10 รายการ ขอให้โชคดีและมีชีวิตรอด!',
    'สัมผัสผจญภัยสุดเขตแดนต้องห้ามสุดยิ่งใหญ่อย่างครบถ้วนสมบูรณ์ ประกอบด้วยเนื้อหาโบนัสและภาคเสริมอุบัติการณ์ทะเลไฟ ที่ประกอบด้วยเนื้อหาเพิ่มเติมสำหรับการผจญภัยของเอลอยและประสบการณ์ใหม่ในพื้นที่ใหม่ที่ชวนตื่นตาแต่ก็อันตราย',
    'เกมบอกเล่าเรื่องราวเกี่ยวกับการเอาชีวิตรอดในโซน ซึ่งเป็นสถานที่ที่อันตรายมาก ซึ่งคุณไม่เพียงแค่กลัวรังสี ความผิดปกติ และสิ่งมีชีวิตที่อันตรายเท่านั้น แต่ยังรวมถึง S.T.A.L.K.E.R.S. คนอื่นๆ ที่มีเป้าหมายและความปรารถนาเป็นของตัวเองด้วย',
    'เริ่มต้นการเดินทางอันแสนเจ็บปวดในโลกที่โหดร้ายและน่าทึ่ง และค้นพบต้นทุนในการช่วยชีวิตคนที่คุณรักในการต่อสู้ดิ้นรนเพื่อเอาชีวิตรอดอย่างสิ้นหวัง โจมตีจากเงามืดหรือปลดปล่อยนรกด้วยอาวุธ เครื่องมือ และพลังอันแปลกประหลาดที่หลากหลาย',
    'กล่าวถึงเรื่องราวการเดินทางของเฟรย์ ผู้เดินทางข้ามมิติมายังดินแดนที่งดงามและโหดร้ายของอาเธีย เฟรย์จำต้องใช้ความสามารถเวทมนตร์ที่เธอเพิ่งค้นพบเดินทางข้ามดินแดนอันกว้างใหญ่และต่อสู้กับสัตว์ประหลาดทั้งหลายเพื่อที่จะหาทางกลับบ้าน *อย่าซื้อ!*',
    'Black Ops Cold War ซึ่งเป็นภาคต่อโดยตรงของ Call of Duty®: Black Ops จะนำแฟนๆ เข้าสู่ห้วงลึกของการต่อสู้ทางภูมิศาสตร์การเมืองที่ผันผวนของสงครามเย็นในช่วงต้นทศวรรษ 1980 เล่นแรกๆสนุก เล่นเรื่อยๆเสียสุขภาพจิต *เกมที่ดีที่สุดในเรื่องที่แย่ที่สุด*',
    'Battlefield™ 2042 คือเกมยิงมุมมองบุคคลที่หนึ่งที่เป็นการกลับมาของการทำสงครามเต็มรูปแบบอันเป็นเอกลักษณ์ประจำเกมชุดนี้ ประสบการณ์การเล่นที่ดีที่สุด หลากหลายที่สุด *และที่กล่าวมาโกหกทั้งหมด! ซื้อมาตั้งแพงเสียดายเงินกับเวลาสุดๆ*',
    'Fruit App 2 - Battle of TSU เป็นภาคต่อจากตำนานเกมอย่าง Fruit App ภาคแรก สานต่อความมันส์อย่างต่อเนื่อง คราวนี้เหล่าผลไม้จะต้องต่อสู้ในมหาลัยแห่งลูกผู้ชายและลูกผู้หญิง "The TSU" มหาศึกตัดสินชะตาได้เริ่มชึ้นแล้ว'
  ];

  final List<GameDataModel> GameData = List.generate(
      gamename.length,
      (index) => GameDataModel('${gamename[index]}', '${url[index]}',
          '${descriptions[index]}', index));

  static int money = 0;

  void addToMoney() {
    money += 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Online Game Store',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(cartItems: GameData),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: GameData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Container(
                height: 200,
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            GameData[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "${GameData[index].name} : 1990฿",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GameDetail(
                    GameDataModel: GameData[index],
                    addToMoney: addToMoney,
                  ),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}

class GameDetail extends StatelessWidget {
  final GameDataModel;
  final Function addToMoney;

  GameDetail({required this.GameDataModel, required this.addToMoney});

  void _incrementCounter() {
    addToMoney();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GameDataModel.name,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: 370,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                GameDataModel.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 370,
              height: 280,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 10, 66, 112),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                ' ${GameDataModel.desc} \n                  (ราคา 1990 บาท)',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addToCart(context);
        },
        tooltip: 'เพิ่ม ${GameDataModel.name} ลงในตะกร้า',
        child: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }

  void _addToCart(BuildContext context) {
    addToMoney();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('เพิ่ม ${GameDataModel.name} ลงในตะกร้าเรียบร้อย'),
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  final List<GameDataModel> cartItems;

  CartPage({required this.cartItems});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    totalPrice = (MyHomePage.money * 1990).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ตะกร้าสินค้า',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('รวมทั้งหมด: ${totalPrice} บาท'),
              ElevatedButton(
                onPressed: () {
                  _placeOrder(context);
                },
                child: Text('สั่งซื้อ'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _placeOrder(BuildContext context) {
    String message = 'สั่งซื้อสำเร็จ รวมทั้งหมด: ${totalPrice} บาท';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        MyHomePage.money = 0;
      });
    });

    Future.delayed(Duration(seconds: 2), () {
      widget.cartItems.clear();
      Navigator.pop(context);
    });
  }
}

class GameDataModel {
  final String name, imageUrl, desc;
  final int index;

  GameDataModel(this.name, this.imageUrl, this.desc, this.index);
}
