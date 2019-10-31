import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:shelem_shomar/Widgets/side_drawer.dart';
import 'package:shelem_shomar/generated/i18n.dart';

class HelpPage extends StatelessWidget {
  final String htmlStr = "<body dir=\"rtl\"><h1 style=\"text-align: justify;\"><span style=\"color: #0000ff;\">شلم</span></h1>\n" +
      "<p style=\"text-align: justify;\">هدف این بازی رسیدن به امتیاز توافق شده زودتر از رقیب است. به نظر می&zwnj;آید این بازی بعد از حکم&sbquo; محبوبترین بازی در ایران باشد.</p>\n" +
      "<p style=\"text-align: justify;\"><span style=\"color: #ff0000;\">شرح مختصر بازی:</span>در این بازی هر بازیکن ۱۲ برگ دریافت می&zwnj;کند. بعد شروع به خواندن امتیازی که می&zwnj;توانند بگیرند می&zwnj;کنند. مثلاً ۱۲۵ امتیاز از کل ۱۶۵ امتیاز ممکن یا از کل ۲۰۰ امتیاز در صورت وجود جوکر در بازی. کسی که امتیاز بالاتری را بخواند به عنوان حاکم تعیین می&zwnj;شود. سپس او با همکاری یارش باید تلاش کند تا امتیاز تعهد شده را کسب کند. در اینصورت او به همان تعداد امتیاز که کسب کرده امتیاز دریافت می&zwnj;کند. بازی ادامه خواهد داشت تا وقتی که یک تیم زودتر به&nbsp;امتیاز نهایی&nbsp;برسد. در این بازی بردن هر دست ۵ امتیاز دارد. هر ۵ لو، ۵ امتیاز &sbquo; هر ۱۰ لو، ۱۰ امتیاز و هر تک (آس) هم ۱۰ امتیاز دارد جوکر قرمز ۲۰ امتیاز و جوکر مشکی ۱۵ امتیاز. به این ترتیب در مجموع کل امتیاز یک بازی۲۰۰ امتیاز است. پخش کردن ورق هم توسط لیدر به تشخیص وی می&zwnj;باشد که می&zwnj;تواند به صورت دلخواه از نظر تعداد وتنوع تعدادی بین افراد توزیع نماید.</p>\n" +
      "<p style=\"text-align: justify;\">&nbsp;</p>\n" +
      "<h1 style=\"text-align: justify;\"><span style=\"color: #0000ff;\">شرح کامل بازی</span></h1>\n" +
      "<p style=\"text-align: justify;\"><br /><span style=\"color: #ff0000;\">دست دادن:</span> یک نفر از بین چهار نفر با قرعه به عنوان اولین پاسور (دست دهنده) انتخاب می&zwnj;شود. در دست&zwnj;های بعد به ترتیب از سمت راست دیگران دست می&zwnj;دهند. به نحوی که بعد از چهار دور بازی همه یک بار دست داده باشند و به همین ترتیب دست دادن می&zwnj;چرخد. نفری که دست می&zwnj;دهد ابتدا ۱۲ برگ به نفر سمت راست، ۱۲ برگ به نفر روبه رو، ۱۲ برگ به نفر سمت چپ، ۴ برگ به پشت روی زمین و ۱۲ برگ آخر را برای خود دست می&zwnj;دهد. توجه کنید که همیشه باید دست آخر شامل برگ در دست خود کارت پخش کن باشد.<br /><span style=\"color: #ff0000;\">تعهد کردن یا اعلان -خواندن:</span> نفر سمت راست پس از مرتب کردن دستش امتیازی را فکر می&zwnj;کند می&zwnj;تواند بگیرد را اعلام می&zwnj;کند. این امتیاز نمی&zwnj;تواند زیر ۱۰۰ باشد. پس از آن نوبت نفر سمت راست او است. او یا باید امتیازی بالاتر از امتیاز خوانده شده را بخواند یا اعلام &ldquo;پاس&ldquo; کند. کسی که پاس دهد دیگر نمی&zwnj;تواند در امتیازخوانی تا پایان این دور بازی شرکت کند. سپس نوبت نفر سمت راست او می&zwnj;رسد. او هم به همین ترتیب&sbquo; یا باید بالاتر از آخرین امتیاز خوانده شده بخواند یا پاس دهد. این مرحله آنقدر ادامه می&zwnj;یابد تا ۳ نفر پاس کرده و کسی که آخرین امتیاز را خوانده به عنوان حاکم بازی را آغاز می&zwnj;کند.<br /><span style=\"color: #ff0000;\">آغاز بازی:</span> بعد از مشخص شدن حاکم&sbquo; او ۴ برگ روی زمین را برمی&zwnj;دارد و به جای آن ۴ برگ به دلخواه خود زمین می&zwnj;گذارد. این کار برای بهبود دست حاکم و کمک به او برای کسب امتیاز تعهد شده صورت می&zwnj;گیرد. پس از این که او ۴ برگ را زمین گذاشت (که این برگها جزء برگهای برده حساب می&zwnj;شوند) حاکم با پائین انداختن برگ حکم، بازی را شروع می&zwnj;کند. (دقت کنید که حتماً برگ اول باید برگی از خال حکم باشد و این کار در واقع اعلام حکم است) سپس به همان ترتیب حکم، بازیکنان از سمت راست شروع به بازی می&zwnj;کنند. بازی دقیقاً مانند حکم پیش می&zwnj;رود تا برگها تمام شوند.<br /><span style=\"color: #ff0000;\">شمارش امتیاز:</span> بعد از پایان بازی نوبت به شمارش امتیازها می&zwnj;رسد. برای این کار برگهای برنده شده را می&zwnj;شماریم&sbquo; در ازای هر ۴ برگ (یک دست از بازی) ۵ امتیاز &sbquo; در ازای هر برگ ۵لو، ۵ امتیاز&sbquo; در ازای هر برگ ۱۰ لو، ۱۰ امتیاز و در ازای هر برگ تک (آس) هم ۱۰ امتیاز منظور می&zwnj;شود. بعد از شمردن امتیاز یک تیم &sbquo; با کم کردن آن از ۱۶۵، امتیاز تیم دیگر مشخص می&zwnj;شود. اگر تیم حاکم امتیازی را که تعهد کرده &sbquo; یا بیشتر از آن امتیاز را گرفته باشد امتیاز کسب شده را دریافت خواهد کرد. اما اگر کمتر از آن امتیاز تعهد شده باشد&sbquo; منفی آن امتیاز تعهد شده را دریافت خواهد کرد. تیم رقیب هم هر اندازه که امتیاز بگیرد برایش منظور خواهد شد.</p>\n" +
      "<h1 style=\"text-align: justify;\"><span style=\"color: #0000ff;\">انواع بازی شلم</span></h1>\n" +
      "<p style=\"text-align: justify;\"><br /><span style=\"color: #ff0000;\">۱۶۵ :</span> هر دست ۵، هر ۵ لو ۵، هر ۱۰ لو ۱۰ و هر آس ۱۰ امتیاز<br /><span style=\"color: #ff0000;\">۱۸۵ :</span> هر دست ۵، هر ۵ لو ۵، هر ۱۰ لو ۱۰ و هر آس ۱۵ امتیاز<br /><span style=\"color: #ff0000;\">۲۰۰ :</span> هر دست ۵، هر ۵ لو ۵، هر ۱۰ لو ۱۰، هر آس ۱۰، ژوکر سیاه ۱۵ وژوکر رنگی ۲۰ امتیاز<br /><span style=\"color: #ff0000;\">۲۳۰ :</span> هر دست ۵، هر ۵ لو ۵، هر ۱۰ لو ۱۰، هر آس ۱۵، ژوکر سیاه ۲۰ وژوکر رنگی ۲۵ امتیاز</p>\n" +
      "<h1 style=\"text-align: justify;\"><span style=\"color: #0000ff;\">قوانین امتیاز دهی</span></h1>\n" +
      "<p style=\"text-align: justify;\"><br /><span style=\"color: #ff0000;\">شلم یا شلم مثبت:</span> اگر تیم حاکم موفق به جمع کردن کلیه برگ&zwnj;ها شود، در چنین حالتی ۳۳۰ امتیاز به تیم حاکم اضافه می&zwnj;شود، (مشخص است که تیم حاکم هرگز شلم نمی&zwnj;شود&sbquo; زیرا در اول بازی فرد حاکم چهار برگ را به عنوان برده از دست خود خارج می&zwnj;کند). <br /><span style=\"color: #ff0000;\">شلم منفی:</span> اگر حاکم کمتر از ۵۰ درصد امتیازها را کسب کند (کمتر از ۸۵ امتیاز)، دو برابر امتیاز خوانده شده برای او امتیاز منفی لحاظ می&zwnj;شود، مثلاً اگر ۱۲۰ را بخواند و به امتیاز ۸۵ هم حتی نرسد ۲۴۰ امتیاز منفی برای او لحاظ می شود</p>\n" +
      "<p style=\"text-align: justify;\"><span style=\"color: #ff0000;\">شلم خواندن:</span> اگر تیمی هنگام دست خواندن اعلام کند که همهٔ دست&zwnj;ها را می&zwnj;گیرد (شلم بخواند)، در صورت موفق شدن ۳۳۰ امتیاز می&zwnj;گیردو اگر نتواند کل برگها را بگیر ۳۳۰ امتیاز از دست می&zwnj;دهد.اگر تیمی ۱۶۵ خوانده باشد تیم بعدی میتواند شلم بخواند<br />مراحل خواندن بعد از ۱۶۰بشرح ذیل می&zwnj;باشد ۱۶۵ (یعنی همانند دیگر اعداد با ان رفتار خواهد شد) بعد از ان شلم (یعنی قبول ۳۳۰ عدد منفی) و بعد از ان کُنس می&zwnj;باشد.</p>\n" +
      "<p style=\"text-align: justify;\"><span style=\"color: #ff0000;\">کنس:</span> هر کس که کنس بخواند و ان دست را ببرد کل بازی را برده&zwnj;است و اگر ببازد کل بازی را باخته&zwnj;است سوای امتیاز کسب شده و تابلوی اعداد تا ان لحظه. منتهی طرفین بازی هر دو باید کنس شدن بازی را قبول کنند و الا بازی بر مبنای تابلوی اعلانات پیش خواهد رفت. معمولاً اگر تابلوی اعداد هر دو گروه بالای ۱۰۰۰ باشد بازیکنان اجازه پیدا می&zwnj;کنند که بعد از عدد شلم، کنس بخوانند ولی باید کنس شدن بازی را همه بازیکنان قبول کنند و الا بالاترین عدد خوانده شده همان شلم خواهد بود.</p>\n" +
      "<p style=\"text-align: justify;\"><span style=\"color: #ff0000;\">اختلاف امتیاز :</span> اگر اختلاف امتیاز دو تیم مقابل بیش از ۱۱۶۵ امتیاز باشد تیم ی که امتیاز بیشتری دارد به عنوان برنده بازی را تمام می&zwnj;کند.</p>\n" +
      "<p style=\"text-align: justify;\"><span style=\"color: #ff0000;\">خورده بالای ۱۱۰۰ :</span> اگر تیمی بالای ۱۱۰۰ امتیاز باشد خورده نوشته نمی&zwnj;شود مگر اینکه منفی زده شود</p>\n" +
      "<p>&nbsp;</p></body>";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).help),
        ),
        drawer: SideDrawer(),
        body: Center(
          child: SingleChildScrollView(
            child: Html(
              data: htmlStr,
              padding: EdgeInsets.all(8.0),
              onLinkTap: (url) {
                print("${S.of(context).opening} $url...");
              },
              customRender: (node, children) {
                if (node is dom.Element) {
                  switch (node.localName) {
                    case "custom_tag": // using this, you can handle custom tags in your HTML
                      return Column(children: children);
                  }
                }
                return null;
              },
            ),
          ),
        ));
  }
}
