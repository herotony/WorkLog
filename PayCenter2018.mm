<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1510713087405" ID="ID_1700999216" MODIFIED="1513567858315" TEXT="PayCenter2018">
<edge COLOR="#111111" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<hook NAME="accessories/plugins/CreationModificationPlugin_new.properties"/>
<node COLOR="#111111" CREATED="1510713988382" FOLDED="true" ID="ID_23680819" MODIFIED="1513567855931" POSITION="right" TEXT="&#x6545;&#x969c;&#x8bb0;&#x5f55;">
<edge COLOR="#111111" WIDTH="thin"/>
<node CREATED="1510913611960" FOLDED="true" ID="ID_1173122374" MODIFIED="1513042453263" TEXT="isv&#x9000;&#x6b3e;&#x5361;&#x58f3;">
<node CREATED="1510913623400" ID="ID_1667729884" MODIFIED="1512633976095" TEXT="&#x9000;&#x6b3e;&#x6d41;&#x7a0b;&#x56fe;">
<node CREATED="1510972317159" ID="ID_1270075586" MODIFIED="1510972327657">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/refund.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1510974456360" FOLDED="true" ID="ID_951616101" MODIFIED="1512121660238" TEXT="&#x9000;&#x6b3e;&#x6570;&#x636e;&#x5c42;&#x6d41;&#x7a0b;">
<node CREATED="1510990595949" ID="ID_123497867" MODIFIED="1511836094590">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.&#25552;&#20132;&#36864;&#27454;&#30003;&#35831;
    </p>
  </body>
</html></richcontent>
<node CREATED="1510974473472" ID="ID_1265038528" MODIFIED="1510974975708">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.in mdtradecenter&#65292;&#29616;&#23558;<b><font color="#6600ff">md_order_info</font></b>&#30340;<b><font color="#6600ff">refund_status&#23383;&#27573;</font></b>&#30001;<b><font color="#6600ff">0&#21047;&#20026;-1</font></b>&#65292;&#20195;&#34920;&#36864;&#27454;&#20013;&#65292;&#22312;&#26041;&#27861;<b><font color="#009966">notifyOrder4RefundStauts</font></b>&#20013;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1510974871341" ID="ID_513022481" MODIFIED="1511171054735">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2. in mdpaygate,&#36890;&#36807;mdtradecenter&#30340;<b><font color="#009966">notifyMdpaygate</font></b><font color="#000000">&#26469;&#21521;&#31532;&#19977;&#26041;&#21457;&#36215;&#36864;&#27454;&#35831;&#27714;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1510986830105" ID="ID_616869569" MODIFIED="1510986863844">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.&#20808;&#20174;md_pay_trade&#33719;&#21462;&#30456;&#24212;&#30340;&#20132;&#26131;&#35760;&#24405;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1510986906395" ID="ID_1582170009" MODIFIED="1510986922543" TEXT="2.&#x518d;&#x4ece;md_pay_trade_info&#x63d0;&#x53d6;&#x5177;&#x4f53;&#x6570;&#x636e;"/>
<node CREATED="1510986967449" ID="ID_962798330" MODIFIED="1510986990054" TEXT="3.&#x6839;&#x636e;&#x63d0;&#x53d6;&#x5230;&#x7684;&#x6570;&#x636e;&#x521b;&#x5efa;tradedomain"/>
<node CREATED="1510987059976" ID="ID_727352024" MODIFIED="1510987090532" TEXT="4.&#x5224;&#x65ad;tradedomain.status,&#x5fc5;&#x987b;&#x4ea4;&#x6613;&#x6210;&#x529f;&#x624d;&#x80fd;&#x9000;&#x6b3e;"/>
<node CREATED="1510987102332" FOLDED="true" ID="ID_1002903446" MODIFIED="1511836108946" TEXT="5.doRefund">
<node CREATED="1510987278649" ID="ID_897402241" MODIFIED="1510987298441" TEXT="1.&#x4ece;md_refund&#x4e2d;&#x67e5;&#x662f;&#x5426;&#x5df2;&#x6709;&#x9000;&#x6b3e;&#x8bb0;&#x5f55;"/>
<node CREATED="1510987301179" FOLDED="true" ID="ID_1102700418" MODIFIED="1511171268934">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2.&#33509;&#27809;&#26377;&#21017;&#20889;&#20837;&#19968;&#26465;&#26032;&#30340;&#36864;&#27454;&#35760;&#24405;&#21040;md_refund
    </p>
    <p>
      
    </p>
    <p>
      &#35813;&#35760;&#24405;&#21047;&#20026;&#36864;&#27454;&#25104;&#21151;&#65292;&#19968;&#33324;&#26159;&#22312;&#23450;&#26102;&#26597;&#35810;&#36864;&#27454;&#29366;&#24577;&#20219;&#21153;&#20013;&#65292;&#30001;
    </p>
    <p>
      <b><font color="#6600ff">refunddomain.refundnotify()</font></b>&#26469;&#23436;&#25104;&#12290;&#27492;&#21518;&#24517;&#26159;<b><font color="#009966">addrefundQueue</font></b>&#36890;&#36807;<b><font color="#009966">queueconsumetask</font></b>&#26469;&#21047;&#26032;mdorder&#24211;&#30340;
    </p>
    <p>
      md_order_info/md_order_refund/md_order_refund_detail&#31561;&#34920;
    </p>
    <p>
      <br />
    </p>
  </body>
</html></richcontent>
<node CREATED="1510988234370" ID="ID_621332261" MODIFIED="1510988403966">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33509;&#24050;&#23384;&#22312;<br /><font color="#6600ff">1.refundstatus&#20026;1&#65292;&#65288;&#24050;&#25104;&#21151;&#25552;&#20132;&#65289;&#25110; </font>
    </p>
    <p>
      <font color="#6600ff">2.refundstatus&#20026;4&#65292;&#65288;&#36864;&#27454;&#20013;&#65289;</font>
    </p>
    <p>
      &#21017;&#36864;&#20986;doRefund&#65292;&#31561;&#24453;refundTask&#26597;&#35810;&#36864;&#27454;&#26381;&#21153;&#26597;&#35810;&#26368;&#32456;&#36864;&#27454;&#32467;&#26524;<br />
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1510988978189" ID="ID_1231980872" MODIFIED="1510989065012" TEXT="3.&#x6839;&#x636e;paytype&#x4e0d;&#x540c;&#xff0c;&#x63d0;&#x4ea4;&#x5230;&#x4e0d;&#x540c;&#x901a;&#x9053;&#x7684;&#x7f51;&#x5173;&#x8fdb;&#x884c;&#x9000;&#x6b3e;&#x7533;&#x8bf7;"/>
<node CREATED="1510989109021" ID="ID_1319110387" MODIFIED="1510990320710">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4.
    </p>
    <ul>
      <li>
        &#160;&#160;&#160;&#19981;&#31649;&#36864;&#27454;&#30003;&#35831;&#25552;&#20132;&#25104;&#21151;&#19982;&#21542;&#65292;&#37117;&#35760;&#24405;&#26085;&#24535;&#21040;md_refund_log
      </li>
      <li>
        &#160;&#160;&#160;&#26356;&#26032;md_refund&#30340;refund_status&#29366;&#24577;
      </li>
      <li>
        &#160;&#160;&#160;&#26356;&#26032;md_trade_pay&#30456;&#24212;&#35760;&#24405;
      </li>
      <li>
        &#160;&#160;&#160;&#30446;&#21069;&#26377;&#19977;&#20010;paytype&#30452;&#25509;&#35270;&#20026;&#36864;&#27454;&#25104;&#21151;&#65292;ISV&#21152;&#36825;&#19981;&#21512;&#36866;&#12290;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1510975008088" FOLDED="true" ID="ID_1919113128" MODIFIED="1511836106161" TEXT="3.&#x9000;&#x6b3e;&#x8bf7;&#x6c42;&#x6210;&#x529f;&#x540e;&#xff0c;&#x56de;&#x5230;mdtradecenter&#x5199;&#x5165;md_order_info&#x8868;&#x4e2d;&#x7684;md_order_refund/md_order_refund_detail&#x8868;&#xff08;&#x4e00;&#x6b21;&#x6279;&#x91cf;&#x4fdd;&#x5b58;6&#x6761;)&#xa;&#x6b64;&#x65f6;&#xff0c;&#x53ea;&#x662f;&#x9000;&#x6b3e;&#x8bf7;&#x6c42;&#x6210;&#x529f;&#xff0c;&#x9000;&#x6b3e;&#x72b6;&#x6001;&#x662f;&#x5426;&#x6210;&#x529f;&#x7684;&#x5237;&#x65b0;&#x6709;&#x8d56;&#x4e8e;&#x540e;&#x7eed;&#x7684;&#x5b9a;&#x65f6;&#x4efb;&#x52a1;&#x53bb;&#x5904;&#x7406;&#x3002;">
<node CREATED="1510975293557" ID="ID_1182733670" MODIFIED="1510975490194">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20854;&#20013;&#65292;md_order_refund_detail&#27599;&#27425;&#36864;&#27454;&#20889;&#20837;6&#26465;&#35760;&#24405;&#65292;&#21482;&#26159;&#24403;&#21069;&#21482;&#26377;&#31867;&#22411;1&#65288;&#31532;&#19977;&#26041;&#36864;&#27454;&#65289;&#25165;&#26377;&#29992;&#21040;&#65292;&#65288;2-&#36864;&#36824;&#21453;&#29616;&#65292;&#25910;&#22238;&#21453;&#29616;&#65292;&#20195;&#37329;&#21048;&#65292;&#25910;&#22238;wowo&#21453;&#29616;&#65292;&#26410;&#25910;&#22238;&#21453;&#29616;&#37329;&#39069;&#65289;&#26242;&#26102;&#29992;&#19981;&#21040;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1510990633780" FOLDED="true" ID="ID_1154992706" MODIFIED="1511836093721" TEXT="2.&#x67e5;&#x8be2;isv&#x9000;&#x6b3e;&#x4e2d;&#x8bb0;&#x5f55;&#x7684;&#x4efb;&#x52a1;">
<node CREATED="1510991170675" ID="ID_1889774379" MODIFIED="1510992645390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      RefundDomain.refundNotify()
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1510992652426" ID="ID_1866288641" MODIFIED="1510993445330">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;&#27492;&#26597;&#35810;&#36864;&#27454;&#32467;&#26524;&#24182;&#21152;&#20837;addRefundQueue&#65292;<font color="#ff3300">&#27492;&#21069;&#65292;&#21017;&#20250;&#26356;&#26032;md_refund&#30340;&#30456;&#24212;&#23383;&#27573;&#12290;&#29616;&#22312;&#23601;&#26159;&#36825;&#20010;&#38454;&#27573;&#19981;&#23545;&#65292;&#22240;&#20026;&#27492;&#21069;&#22312;doRefund&#21017;&#24050;&#32463;&#21152;&#20837;&#20102;refundQueue&#36825;&#26159;&#26377;&#38382;&#39064;&#30340;</font>&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511170015185" ID="ID_524616225" MODIFIED="1511170114100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.&#36890;&#36807;refundservice&#30340;&#23450;&#26102;&#20219;&#21153;&#26597;&#35810;&#36864;&#27454;&#30340;&#32467;&#26524;&#65292;&#36890;&#36807;
    </p>
    <p>
      <b><font color="#6600ff">refunddomain.refundNotify()</font></b>&#26469;&#35774;&#32622;mdpaygate&#30340;
    </p>
    <p>
      md_refund&#30340;refund_status&#20026;3&#65288;&#36864;&#27454;&#25104;&#21151;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511145211981" ID="ID_22082088" MODIFIED="1511145243864" TEXT="&#x8fd9;&#x90e8;&#x5206;&#x8003;&#x8651;&#x4e00;&#x4e0b;&#x91cd;&#x6784;&#x53ef;&#x884c;&#x6027;"/>
</node>
<node CREATED="1512446465605" ID="ID_225370567" LINK="MDFiles/2017/Documents/TradeProject/MultiTheadForTest.markdown" MODIFIED="1512446512540" TEXT="&#x65f6;&#x95f4;&#x8f6c;&#x6362;&#x5728;&#x591a;&#x7ebf;&#x7a0b;&#x4e2d;&#x7684;&#x95ee;&#x9898;"/>
<node CREATED="1513332316580" ID="ID_302468416" MODIFIED="1513332325017" TEXT="&#x4f18;&#x5316;">
<node CREATED="1513332420487" ID="ID_1238520391" MODIFIED="1513332430652" TEXT="&#x672a;&#x6765;&#x5206;&#x79bb;&#x539f;&#x5219;">
<node CREATED="1513332392905" ID="ID_1662560475" MODIFIED="1513332435915" TEXT="partner&#x4e4b;&#x95f4;&#x4e0d;&#x80fd;&#x4e92;&#x76f8;&#x5f71;&#x54cd;"/>
<node CREATED="1513332408112" ID="ID_1167540945" MODIFIED="1513332418335" TEXT="&#x5fae;&#x4fe1;&#xff0c;&#x652f;&#x4ed8;&#x5b9d;&#x4e4b;&#x95f4;&#x4e0d;&#x80fd;&#x4e92;&#x76f8;&#x5f71;&#x54cd;"/>
</node>
</node>
<node CREATED="1513332327147" ID="ID_1351618072" MODIFIED="1513332332481" TEXT="&#x7f51;&#x5546;">
<node CREATED="1513332333719" ID="ID_1921713534" MODIFIED="1513332389380">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ngix - webank es &gt;&gt; ngix - mdpaygate,
    </p>
    <p>
      &#26242;&#26102;&#35753;webank&#20027;&#21160;&#26029;&#20102;&#21040;ngix&#30340;&#36830;&#25509;&#65292;&#37319;&#29992;&#30701;&#36830;&#25509;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1510714159564" FOLDED="true" ID="ID_1656036778" MODIFIED="1511145378239" POSITION="left" TEXT="&#x5b89;&#x88c5;&#x90e8;&#x7f72;&#x8bf4;&#x660e;">
<node CREATED="1510714323785" ID="ID_1257702630" MODIFIED="1510714328627" TEXT="notifyserver"/>
<node CREATED="1510714329552" ID="ID_363965362" MODIFIED="1510714334600" TEXT="jobcenter"/>
</node>
<node CREATED="1510714176504" ID="ID_1130548846" MODIFIED="1510714299516" POSITION="right" TEXT="&#x5de5;&#x4f5c;&#x8bb0;&#x5f55;">
<node CREATED="1510714185418" ID="ID_977109342" MODIFIED="1513580848114" TEXT="2017">
<node CREATED="1510714196051" FOLDED="true" ID="ID_1115097963" MODIFIED="1513332313667" TEXT="2017.11">
<node CREATED="1510714208857" FOLDED="true" ID="ID_849812306" MODIFIED="1512627330066" TEXT="15">
<node CREATED="1510714220008" ID="ID_240659164" MODIFIED="1510734866910">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        isv&#39033;&#30446;&#35843;&#35797;&#65292;&#30446;&#21069;&#31561;&#24453;&#39745;&#26143;&#30340;&#36827;&#20214;&#25480;&#26435;&#25165;&#33021;&#32487;&#32493;
      </li>
      <li>
        &#39745;&#26143;&#25552;&#21069;&#23436;&#25104;&#65292;&#24050;&#32463;shopcenter2&#25104;&#21151;&#21047;&#20837;redis
      </li>
      <li>
        mdfrontserver&#25104;&#21151;&#35835;&#21462;&#24182;&#20889;&#20837;tradeVO
      </li>
      <li>
        &#24453;&#27704;&#24378;&#65292;&#24352;&#26480;&#35843;&#35797;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1510903429305" FOLDED="true" ID="ID_76919751" MODIFIED="1512627332570" TEXT="17">
<node CREATED="1510903433662" ID="ID_1298219117" MODIFIED="1510913593540">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &#36830;&#30528;&#20004;&#22825;&#37197;&#21512;&#26597;&#20026;&#20309;&#36864;&#27454;&#22833;&#36133;&#65292;&#30830;&#23450;&#26159;&#23558;applyid&#24403;&#20316;refund_id&#20102;&#65292;&#23548;&#33268;&#26681;&#26412;&#25214;&#19981;&#21040;&#21047;&#26032;&#30340;&#35760;&#24405;&#12290;<b><font color="#009966">&#29702;&#35299;&#38169;&#20102;&#65292;applyid&#23601;&#26159;md_order_refund&#30340;refund_id,&#27880;&#24847;&#19981;&#26159;mdpay&#24211;&#20013;&#30340;md_refund&#34920;&#20013;&#30340;refund_id,&#29616;&#22312;&#30475;md_order_refund&#30340;&#29366;&#24577;&#26159;&#23545;&#30340;</font></b>&#65292;<b><font color="#ff3300">md_refund&#36824;&#26159;&#38169;&#35823;&#30340;&#65292;&#32487;&#32493;&#36861;&#26597;</font></b>
      </li>
      <li>
        &#30446;&#21069;&#23601;&#26159;&#21097;&#36864;&#27454;&#65292;c-b&#30340;&#22238;&#35843;&#19981;&#36890;&#12290;
      </li>
      <li>
        &#23588;&#20854;<b><font color="#ff3300">&#36864;&#27454;&#35201;&#26126;&#22825;&#32454;&#26597;</font></b>!
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1510969524321" FOLDED="true" ID="ID_302237951" MODIFIED="1512627335738" TEXT="18">
<node CREATED="1510969528623" ID="ID_627796268" MODIFIED="1510969607479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://mdtradecenter.55tuan.me:9022/refundCallBack.do
    </p>
    <p>
      queueconsumeservice -&gt; refund&#21047;&#24211;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511145251800" FOLDED="true" ID="ID_1071800148" MODIFIED="1512633970861" TEXT="20">
<node CREATED="1511145256804" ID="ID_1056524107" MODIFIED="1511145368618">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      isv&#20165;&#21097;&#36864;&#27454;&#37096;&#20998;&#19981;&#27491;&#24120;,&#26242;&#26102;&#23553;&#29256;&#65292;&#36716;&#32780;<font color="#6600ff">&#32593;&#21830;&#25552;&#27979;</font>&#21644;<font color="#6600ff">&#29616;&#22312;&#25903;&#20184;&#30452;&#28165;</font>&#20197;&#21450;<font color="#6600ff">Mdpaygate&#20869;&#23384;&#27844;&#28431;</font>&#25490;&#26597;&#19977;&#20214;&#20107;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511160050427" ID="ID_676905898" MODIFIED="1511160122197">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      release/aliyunmaster&#21512;&#24182;&#21040;feature/webank&#65292;&#24182;&#24050;&#37096;&#32626;&#21040;&#24179;&#34892;&#29615;&#22659;&#24453;&#27979;&#35797;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511160136609" ID="ID_1990837030" MODIFIED="1511160155798" TEXT="&#x81ea;&#x884c;&#x7ee7;&#x7eed;&#x6392;&#x67e5;&#x9000;&#x6b3e;&#x6d41;&#x7a0b;"/>
</node>
<node CREATED="1511227516886" FOLDED="true" ID="ID_1260094623" MODIFIED="1513042495295" TEXT="21">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1511227521426" FOLDED="true" ID="ID_1120676403" MODIFIED="1512633952462">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25490;&#26597;W171117151417140&#35746;&#21333;&#27809;&#23436;&#27809;&#20102;&#30340;&#34917;&#21333;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff3300">&#25152;&#35859;&#34917;&#21333;&#37117;&#26159;&#38024;&#23545;b&#25195;c&#30340;&#35746;&#21333;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1511227571579" ID="ID_1177251610" MODIFIED="1511227648876">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33258;&#21160;&#34917;&#21333;&#38169;&#35823;&#65306;&#22240;&#20026;&#19981;&#33021;&#32465;&#23450;&#35746;&#21333;
    </p>
    <p>
      &#19981;&#33021;&#32465;&#23450;&#35746;&#21333;&#21017;&#26159;&#22240;&#20026;&#35746;&#21333;&#29366;&#24577;&#19981;&#26159;0&#32780;&#26159;5&#65292;&#21363;&#24050;&#32465;&#23450;&#25104;&#21151;
    </p>
  </body>
</html></richcontent>
<node CREATED="1511230717280" ID="ID_275152640" MODIFIED="1511246672140" TEXT="&#x81ea;&#x52a8;&#x8865;&#x5355;&#x6d41;&#x7a0b;">
<node CREATED="1511230726109" ID="ID_1621741711" MODIFIED="1511230871415">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1. mdorder.md_order_info&#30340;order_status&#20026;3(&#26410;&#32465;&#23450;&#24050;&#36807;&#26399;)&#30340;&#21333;&#23376;(&#26102;&#38388;&#19978;&#21017;&#26159;&#24403;&#21069;&#26102;&#38388;&#21069;2&#20010;&#21322;&#23567;&#26102;&#21040;2&#20010;&#23567;&#26102;&#21069;&#38388;&#30340;)&#65292;&#20134;&#21363;&#29702;&#35770;&#19978;&#36229;&#36807;2&#23567;&#26102;&#19981;&#20877;&#34917;&#21333;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511231000144" ID="ID_1894659712" MODIFIED="1511231062265" TEXT="2.&#x4ece;mdpay.md_pay_trade&#x63d0;&#x53d6;order_id&#x5bf9;&#x5e94;&#x7684;&#x6700;&#x65b0;&#x4e00;&#x6761;&#x8bb0;&#x5f55;(order by pay_trade_id)"/>
<node CREATED="1511231072368" ID="ID_967256532" MODIFIED="1511231103878" TEXT="3.&#x8c03;&#x7528;&#x8ba2;&#x5355;&#x88c5;&#x4ed6;&#x67e5;&#x8be2;&#x63a5;&#x53e3;&#x8fdb;&#x884c;&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x67e5;&#x8be2;&#x3002;">
<node CREATED="1511231491579" ID="ID_1480710374" MODIFIED="1511232813457" TEXT="&#x82e5;&#x652f;&#x4ed8;&#x6210;&#x529f;:">
<node CREATED="1511231503204" ID="ID_1474713984" MODIFIED="1511231543731" TEXT="md_pay_trade&#x76f8;&#x5e94;&#x8bb0;&#x5f55;&#x5237;&#x4e3a;status=8/notify_status=0">
<node CREATED="1511232825004" ID="ID_84044333" MODIFIED="1511246777198">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20132;&#30001;&#21518;&#32493;queue&#31995;&#32479;&#22788;&#29702;,&#20063;&#23601;&#26159;&#20877;&#27425;&#20002;&#32473;<b><font color="#6600ff">&#23450;&#26102;&#26597;&#35810;&#35746;&#21333;&#29366;&#24577;&#20219;&#21153;</font></b>&#21435;&#22788;&#29702;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511231578113" ID="ID_926555060" MODIFIED="1511231617386" TEXT="md_order_info&#x76f8;&#x5e94;&#x8bb0;&#x5f55;order_status=3&#x7684;&#x8bb0;&#x5f55;&#x5237;&#x65b0;&#x4e09;&#x4e2a;&#x5b57;&#x6bb5;">
<node CREATED="1511231619825" ID="ID_154150753" MODIFIED="1511231637105" TEXT="add_time,&#x6539;&#x4e3a;&#x5f53;&#x524d;&#x65f6;&#x95f4;"/>
<node CREATED="1511231639255" ID="ID_1334781263" MODIFIED="1511231691756" TEXT="bind_limit_time&#xff0c;&#x6539;&#x4e3a;&#x5f53;&#x524d;&#x65f6;&#x95f4;&#x52a0;15&#x5206;&#x949f;"/>
<node CREATED="1511231698389" FOLDED="true" ID="ID_1163794357" MODIFIED="1511246998992" TEXT="order_status&#x8be5;&#x4e3a;&#x7ed1;&#x5b9a;&#x6210;&#x529f;&#x72b6;&#x6001;&#x4e3a;5">
<node CREATED="1511246804324" ID="ID_55950037" MODIFIED="1511246989156">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#19968;&#27493;&#30683;&#30462;&#21834;&#65292;&#20250;&#23548;&#33268;&#23450;&#26102;&#26597;&#35810;&#20219;&#21153;&#30340;<b><font color="#ff3300">&#32465;&#23450;&#29992;&#25143;&#22833;&#36133;</font></b>&#65292;&#30452;&#25509;&#36864;&#20986;&#21543;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#00cc66">&#28548;&#28165;&#20102;&#65292;&#32465;&#23450;&#29992;&#25143;&#22833;&#36133;&#19981;&#20250;&#23548;&#33268;&#36864;&#20986;&#65292;&#36824;&#20250;&#32487;&#32493;addQueue&#65292;&#21482;&#26159;&#35760;&#24405;&#26085;&#24535;&#32780;&#24050;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1511231736898" ID="ID_1937586719" MODIFIED="1511231750865" TEXT="remedy&#x8865;&#x5355;&#x8868;&#x63d2;&#x5165;&#x4e00;&#x6761;&#x65e5;&#x5fd7;&#x8bb0;&#x5f55;"/>
</node>
</node>
</node>
</node>
<node CREATED="1511227651200" ID="ID_1786667965" MODIFIED="1511227669224" TEXT="&#x5173;&#x95ed;&#x8ba2;&#x5355;&#x4e5f;&#x5931;&#x8d25;&#xff1a;&#x56e0;&#x4e3a;&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x662f;&#x652f;&#x4ed8;&#x6210;&#x529f;"/>
<node CREATED="1511229694547" ID="ID_1466122779" MODIFIED="1511229703868" TEXT="mdpay.md_pay_queue">
<node CREATED="1511227891281" FOLDED="true" ID="ID_897547559" MODIFIED="1511246649778" TEXT="queueStatusBackTask&#xff1a;&#x603b;&#x662f;&#x4e0d;&#x6b63;&#x5e38;&#x8865;&#x507f;&#x72b6;&#x6001;&#xff1f;">
<node CREATED="1511228182721" ID="ID_343673412" MODIFIED="1511228427110">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21608;&#26399;&#25552;&#21462;&#65292;md_pay_queue&#20013;<b><font color="#ff3300">&#29366;&#24577;&#20026;&#21344;&#29992;</font></b>&#65292;&#19988;next_consum_time&#23567;&#20110;&#24403;&#21069;&#26102;&#38388;&#65288;&#20943;&#19977;&#20998;&#38047;&#65289;&#30340;&#35760;&#24405;,&#30452;&#25509;&#23558;&#35813;&#35760;&#24405;<b><font color="#009966">&#29366;&#24577;&#21047;&#20026;&#21487;&#29992;</font></b>&#65292;&#20294;&#19981;&#26356;&#25913;&#20854;&#20182;&#20219;&#20309;&#23383;&#27573;&#65292;&#20165;&#38480;&#20110;status&#23383;&#27573;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511229366697" FOLDED="true" ID="ID_257030098" MODIFIED="1511246659174" TEXT="QueueConsumeService">
<node CREATED="1511229379065" ID="ID_1287190006" MODIFIED="1511229477767">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26410;&#33021;&#25552;&#21462;&#21040;&#35814;&#32454;&#25968;&#25454;&#30340;queue,&#19988;&#25552;&#21462;&#26102;&#38388;&#19982;&#21019;&#24314;&#26102;&#38388;&#22823;&#20110;2&#20998;&#38047;&#65292;&#24573;&#30053;&#22788;&#29702;&#65292;&#23548;&#33268;&#35813;&#35760;&#24405;&#19968;&#30452;&#22788;&#20110;&#21344;&#29992;&#29366;&#24577;&#32780;&#26410;&#32467;&#26463;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#26681;&#26412;&#21407;&#22240;&#26159;&#22240;&#20026;<b><font color="#ff3300">&#20002;&#22833;&#35814;&#32454;&#25968;&#25454;queueInfo</font></b>&#23548;&#33268;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1511234262896" ID="ID_734032890" MODIFIED="1511250424408">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      closeTrade&#30340;&#33258;&#21160;&#34917;&#21333;&#38393;&#30340;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#25552;&#21462;<b><font color="#9900ff">mdorder.md_order_info</font></b>&#34920;&#20013;&#30340;pay_status=1/0 and order_status=5 and pay_limit_time...
      </li>
    </ul>
    <p>
      
    </p>
    <ul>
      <li>
        &#22788;&#29702;&#26102;&#23621;&#28982;&#20877;&#27425;&#25552;&#21462;<b><font color="#009966">mdpay.md_pay_trade</font></b>&#21028;&#26029;&#20854;&#26159;&#21542;&#25903;&#20184;&#25104;&#21151;&#65292;&#25104;&#21151;&#21017;&#20877;&#27425;&#34917;&#21333;...
      </li>
      <li>
        addQueue&#30001;&#20110;unique_sign&#37325;&#22797;&#20250;&#22833;&#36133;&#65292;&#25152;&#20197;&#20851;&#38190;&#30340;addQueue&#24635;&#26159;&#22833;&#36133;&#30340;&#65292;<b><font color="#ff3300">&#24453;&#20462;&#34917;</font></b>
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      &#22240;&#20026;&#37319;&#29992;&#20132;&#32473;queue&#31995;&#32479;&#22788;&#29702;&#65292;&#20294;queueinfo&#27809;&#26377;&#34917;&#19978;&#65292;&#23548;&#33268;&#20102;closeTrade&#19968;&#30452;&#34917;&#21333;&#65292;&#20294;&#22987;&#32456;&#26080;&#27861;&#30495;&#27491;&#34917;&#25104; &#12290;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1511250527971" ID="ID_985990081" MODIFIED="1511250613616">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#9900ff">&#24212;&#35813;&#22312;QueueConsumeService&#37324;&#20027;&#21160;&#21024;&#38500;&#27809;&#26377;queueinfo&#30340;queue&#35760;&#24405;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511236351018" FOLDED="true" ID="ID_634876208" MODIFIED="1511246663995">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30830;&#23450;md_pay_trade&#30340;status=8&#30340;&#22788;&#29702;&#27969;&#31243;&#65292;&#28041;&#21450;queueInfo
    </p>
  </body>
</html></richcontent>
<node CREATED="1511244032404" ID="ID_1604062165" MODIFIED="1511244126792">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25152;&#26377;&#30340;<b><font color="#6600ff">b to c</font></b>&#30340;&#23450;&#26102;&#26597;&#35810;&#20219;&#21153;&#23601;&#26159;&#26597;&#35810;<font color="#6600ff">status=8(userpaying)</font>&#30340;&#35760;&#24405;&#36827;&#34892;&#26597;&#35810;&#24182;&#22788;&#29702;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1511232101275" FOLDED="true" ID="ID_780251429" MODIFIED="1512615650484">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20132;&#26131;&#20013;&#24515;&#20843;&#20010;&#28857;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffcc99" CREATED="1511232109645" ID="ID_791862894" MODIFIED="1511488935255">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        b - c
      </li>
      <li>
        c - b
      </li>
      <li>
        &#23450;&#26102;&#26597;&#35810;
      </li>
      <li>
        &#22238;&#35843;&#39029;&#38754;
      </li>
      <li>
        &#36864;&#27454;
      </li>
      <li>
        &#33258;&#21160;&#34917;&#21333;
      </li>
      <li>
        &#20851;&#38381;&#35746;&#21333;
      </li>
      <li>
        c - b&#38656;&#35201;&#22686;&#21152;&#31867;&#22411;&#21028;&#26029;&#26469;&#35843;&#29992;&#35821;&#38899;&#36890;&#30693;&#30340;push&#28040;&#24687;
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
<node CREATED="1511232724212" ID="ID_1206280907" MODIFIED="1511232888703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#27454;&#30001;<b><font color="#6600ff">mdtradecenter</font></b>&#30340;hessian&#25509;&#21475;&#21457;&#36215;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511232755584" ID="ID_343521387" MODIFIED="1511232898157">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20851;&#38381;&#35746;&#21333;&#30001;<b><font color="#6600ff">mdtask</font></b>&#30340;NoPayOrderFailureTask&#21457;&#36215;
    </p>
  </body>
</html></richcontent>
<node CREATED="1511233456619" ID="ID_1092259245" MODIFIED="1511233499933">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdpaygate.tradeservice.closeTrade&#36807;&#31243;&#20013;&#38024;&#23545;b-&gt;c&#36824;&#35201;&#20570;&#19968;&#27425;&#34917;&#21333;&#65292;&#21518;&#32493;&#20462;&#25913;&#27492;&#22788;&#37117;&#26159;&#28857;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511232786143" ID="ID_567610426" MODIFIED="1511232925860">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_order_info&#30340;status&#21047;&#20026;3(&#26410;&#32465;&#23450;&#24050;&#36807;&#26399;)&#30001;<b><font color="#6600ff">mdtask</font></b>&#30340;NoBindOrderFailureTask&#21457;&#36215;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511251712517" ID="ID_1654361434" MODIFIED="1511251758718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      QueueConsumeService&#21487;&#28155;&#21152;&#20316;&#24223;&#26080;queueinfo&#30340;queue&#35760;&#24405;&#26426;&#21046;&#26469;&#23436;&#21892;&#34917;&#21333;&#26426;&#21046;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511312736921" FOLDED="true" ID="ID_983040907" MODIFIED="1512633917997" TEXT="22">
<node CREATED="1511315379653" ID="ID_233636515" MODIFIED="1511315399496" TEXT="&#x7ed3;&#x7b97;&#x91d1;&#x989d;&#x4e0d;&#x5bf9;&#x662f;&#x540c;&#x6b65;&#x5230;aof&#x5e93;&#x7684;&#x8ba2;&#x5355;&#x540c;&#x6b65;&#x5931;&#x8d25;&#x5bfc;&#x81f4;"/>
<node CREATED="1511330194797" ID="ID_1547367025" MODIFIED="1511330220593" TEXT="&#x652f;&#x4ed8;&#x5b9d;&#x7f51;&#x5546;&#x652f;&#x4ed8;&#x5df2;&#x8fc7;&#xff0c;&#x5fae;&#x4fe1;&#x90e8;&#x5206;&#x4e0d;&#x901a;&#x8fc7;&#xff0c;&#x5f85;&#x9b41;&#x661f;&#x89e3;&#x51b3;"/>
<node CREATED="1511336250046" ID="ID_992011950" MODIFIED="1511336265680" TEXT="&#x660e;&#x65e5;&#x5f00;&#x59cb;codereview&#x8fd9;&#x90e8;&#x5206;&#x4ee3;&#x7801;"/>
</node>
<node CREATED="1511403203374" FOLDED="true" ID="ID_1059773868" MODIFIED="1512633915237" TEXT="23">
<node CREATED="1511403208467" ID="ID_998029217" MODIFIED="1511403260406" TEXT="&#x6c38;&#x5f3a;&#x4fee;&#x6539;&#x8fde;&#x63a5;&#x6c60;&#xff0c;&#x4eca;&#x5929;&#x4e0b;&#x5348;&#x63a8;&#x5230;&#x5e38;&#x89c4;"/>
<node CREATED="1511422304962" ID="ID_228408687" MODIFIED="1511422308268" TEXT="&#x5b89;&#x591a;&#x6d4b;&#x8bd5;">
<node CREATED="1511421588884" ID="ID_254220944" MODIFIED="1511421607395" TEXT="&#x652f;&#x4ed8;&#x6e05;&#x5355;&#x663e;&#x793a;&#x56fe;&#x6807;&#x4e0d;&#x5bf9;">
<node CREATED="1511422125090" ID="ID_1349480153" MODIFIED="1511422205844">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25903;&#20184;&#22270;&#26631;&#26174;&#31034;
    </p>
    <p>
      1,&#24494;&#20449;&#22270;&#26631;
    </p>
    <p>
      2,&#25903;&#20184;&#23453;&#22270;&#26631;
    </p>
    <p>
      3,&#21453;&#29616;&#20313;&#39069;
    </p>
    <p>
      &#36825;&#37096;&#20998;&#30001;&#20161;&#20255;&#25511;&#21046;&#30340;http&#21327;&#35758;&#26469;&#36127;&#36131;&#36716;&#25442;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511422312149" ID="ID_1790340322" MODIFIED="1511433496086">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21516;&#19968;&#38376;&#24215;,&#24494;&#20449;&#25903;&#20184;&#25104;&#21151;&#65292;&#25903;&#20184;&#23453;&#20840;&#37096;&#22833;&#36133;&#65292;&#21407;&#22240;&#24453;&#26597;
    </p>
    <p>
      &#37197;&#32622;&#38169;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511433499382" ID="ID_246180405" MODIFIED="1511433574586">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24050;&#25512;&#36865;&#21040;&#24120;&#35268;&#29615;&#22659;&#65288;&#23436;&#25104;&#20102;feature/webank&#21040;aliyunmaster&#21512;&#24182;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1511488189806" FOLDED="true" ID="ID_387446125" MODIFIED="1512633912061" TEXT="24">
<node CREATED="1511488198880" ID="ID_1840080951" MODIFIED="1511488255207">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24120;&#35268;&#27979;&#35797;&#20132;&#26131;&#25104;&#21151;&#65292;<b><font color="#ff3300">&#20294;push&#28040;&#24687;&#26410;&#25910;&#21040;</font></b>&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1511488667168" ID="ID_1329971331" MODIFIED="1511488727978">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Push&#28040;&#24687;&#23601;&#26159;&#35821;&#38899;&#36890;&#30693;&#21862;
    </p>
    <p>
      c-b&#35843;&#29992;&#21457;&#36865;&#35821;&#38899;&#32593;&#31449;
    </p>
    <p>
      b-c&#36208;notify&#28040;&#24687;&#36890;&#30693;
    </p>
    <p>
      
    </p>
    <p>
      &#27169;&#26495;&#28040;&#24687;&#26159;&#21478;&#19968;&#22359;&#65292;&#29616;&#22312;&#36208;notify&#28040;&#24687;&#36890;&#30693;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511492472600" ID="ID_1027532896" MODIFIED="1511510087626" TEXT="&#x610f;&#x9510;paytype:18/81,&#x901a;&#x9053;&#x5207;&#x6362;&#x5927;&#x6539;&#x517c;&#x5bb9;&#x610f;&#x9510;&#x626b;&#x7801;"/>
</node>
<node CREATED="1511582078103" FOLDED="true" ID="ID_1303661366" MODIFIED="1512633909884" TEXT="25">
<node CREATED="1511582089089" ID="ID_242350968" MODIFIED="1511582199388" TEXT="&#x5f00;&#x53d1;shopdefaultpayroute&#x63a5;&#x53e3;"/>
</node>
<node CREATED="1511665122844" FOLDED="true" ID="ID_1954548819" MODIFIED="1512608711353" TEXT="26">
<node CREATED="1511665128302" ID="ID_1937470963" MODIFIED="1511665166736">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      shopcenter2&#24050;&#32463;&#21512;&#24182;&#21040;aliyunmaster&#24182;&#37096;&#32626;&#21040;&#24120;&#35268;&#29615;&#22659;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511765710680" FOLDED="true" ID="ID_412944554" MODIFIED="1513042490223" TEXT="27">
<node CREATED="1511765743824" ID="ID_1881265987" MODIFIED="1511765897804">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b - c &#25903;&#20184;&#26102;&#38388;&#27809;&#26377;&#37319;&#29992;GmtPayment&#30340;&#26102;&#38388;
    </p>
    <p>
      c - b &#21017;&#37319;&#29992;&#20102;GmtPayment,&#20294;&#32593;&#21830;&#32473;&#30340;&#32467;&#31639;&#26102;&#38388;&#26412;&#36523;&#23601;&#19982;GmtPayment&#23545;&#19981;&#19978;&#65292;&#24453;&#23545;&#26041;&#26597;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#20960;&#31508;&#25903;&#20184;&#29366;&#24577;&#20026;0 &#30340;b - c&#21017;&#26159;&#22240;&#20026;&#20572;&#20102;&#26597;&#35810;&#26381;&#21153;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1511771062092" ID="ID_1198734991" MODIFIED="1511771168820">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &#29616;&#22312;&#25903;&#20184;&#26159;&#25105;&#20204;&#36127;&#36131;&#25171;&#27454;&#26102;&#26426;&#65292;&#25152;&#20197;&#65292;paytime&#22312;QueueConsumeService&#37324;&#37319;&#29992;&#20102;receivetime&#65292;&#20063;&#23601;&#26159;&#25105;&#20204;&#31995;&#32479;&#30340;&#25910;&#21040;&#24403;&#21069;&#26102;&#38388;&#20316;&#20026;&#25903;&#20184;&#26102;&#38388;&#12290;
      </li>
      <li>
        &#32780;&#32593;&#21830;&#21644;isv&#65292;&#30001;&#23545;&#26041;&#36127;&#36131;&#25171;&#27454;&#26102;&#26426;&#65292;&#23601;&#24517;&#39035;&#37319;&#29992;paytime&#65292;&#20063;&#23601;&#26159;&#23454;&#23454;&#22312;&#22312;&#30340;&#23545;&#26041;&#30340;&#25903;&#20184;&#26102;&#38388;&#20026;&#20934;&#12290;&#24050;&#20462;&#27491;QueueConsumeService.
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1511832743716" FOLDED="true" ID="ID_772826193" MODIFIED="1513042486719" TEXT="28">
<node CREATED="1511832752777" ID="ID_1731725694" MODIFIED="1511834263527">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32593;&#21830;&#20877;&#27425;&#19978;&#32447;&#65292;&#32416;&#27491;&#37096;&#20998;&#25903;&#20184;&#26102;&#38388;&#38169;&#35823;
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffff00" CREATED="1511836026996" ID="ID_1243392608" MODIFIED="1511836051947" TEXT="&#x518d;&#x6b21;&#x4fee;&#x6539;&#x95e8;&#x5e97;&#x9ed8;&#x8ba4;&#x901a;&#x9053;&#x8fd8;&#x8981;&#x5199;&#x5165;&#x6708;&#x5e86;&#x7684;&#x8868;"/>
<node BACKGROUND_COLOR="#ffff00" CREATED="1511839783954" ID="ID_1713708435" MODIFIED="1511839816335" TEXT="&#x4fee;&#x6539;QueueConsumeService&#xff0c;&#x624b;&#x7eed;&#x8d39;&#x91c7;&#x7528;&#x56db;&#x820d;&#x516d;&#x5165;&#x4e94;&#x4e58;&#x53cc;"/>
</node>
<node CREATED="1511922735490" FOLDED="true" ID="ID_757419145" MODIFIED="1513305367866" TEXT="29">
<node CREATED="1511922747397" ID="ID_113987625" MODIFIED="1511922898203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1.0 &#24494;&#32654;b-c&#25195;&#30721;&#25250;&#23458;&#25143;&#31471;
    </p>
    <p>
      2.0 &#24847;&#38160;b-c&#25195;&#30721;&#26538;&#23458;&#25143;&#31471;
    </p>
    <p>
      &#26152;&#22825;shwx.55tuan.com&#27809;&#26377;&#37197;&#32622;&#21040;&#39640;&#38450;ip&#23548;&#33268;&#20197;&#19978;&#30340;&#26080;&#27861;&#25903;&#20184;
    </p>
    <p>
      
    </p>
    <p>
      shopcenter2&#22238;&#28378;&#65292;&#26242;&#19981;&#25903;&#25345;&#40664;&#35748;&#36890;&#36947;&#21151;&#33021;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512010967437" ID="ID_1333974613" MODIFIED="1512010995592" TEXT="&#x4fee;&#x590d;shopcenter2&#x7684;&#x4e00;&#x4e2a;bug&#xff1a;&#x9519;&#x8bef;&#x5c06;payratenow&#x8d4b;&#x503c;&#x7ed9;payrate"/>
</node>
<node CREATED="1512004391451" FOLDED="true" ID="ID_543639781" MODIFIED="1513305366018" TEXT="30">
<node CREATED="1512004397563" ID="ID_14663820" MODIFIED="1512004417414" TEXT="&#x7f51;&#x5546;&#x901a;&#x9053;&#x76d1;&#x63a7;"/>
<node CREATED="1512010914500" ID="ID_1352177655" MODIFIED="1512010951958">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20462;&#22797;QueueConsumeService&#30340;&#36153;&#29575;&#22788;&#29702;&#36923;&#36753;&#65292;&#20860;&#23481;&#36890;&#36947;&#36153;&#29575;&#35760;&#24405;&#19981;&#21305;&#37197;&#30340;&#24773;&#20917;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512024255323" ID="ID_1804040440" MODIFIED="1512024341703" TEXT="&#x624b;&#x7eed;&#x8d39;&#x8865;&#x6551;">
<node CREATED="1512024346935" ID="ID_1678265677" MODIFIED="1512024426901" TEXT="W171128... &#x624b;&#x7eed;&#x8d39;&gt;0&#x7684;&#x95e8;&#x5e97;&#x7684;"/>
<node CREATED="1512024429805" ID="ID_633864919" MODIFIED="1512024444437" TEXT="&#x95e8;&#x5e97;&#x8d39;&#x7387;&#x4e3a;0 &#x7684;"/>
<node CREATED="1512024445489" FOLDED="true" ID="ID_298118680" MODIFIED="1512089138444" TEXT="&#x7b5b;&#x51fa;&#x8ba2;&#x5355;&#x53f7;">
<node CREATED="1512025304894" ENCRYPTED_CONTENT="oTeoFfvVESI= MbxoOADanaLckz+RNhxBK2b1hGk3ksFvtUnLGJpzDfLWXpmg+cDvvhgQdGiBqbP21pTqZN00y7WRYhg+zd9lqkKNUGaBcIYtFmAfcfUnE8luiyFSm63+fyNv+Y/PZbAJD8JE6d928LhfSOu0q0a0M/PCrKZ0+RTBJ2VBykWXiD/qQNrBpcKMmcdQHogW3SFUkZ6RaiJwvCZDeZeyTxx4ep1EiP7yHzsldl3tRDGoSMFXnyCkVj0SNpwlFGfU70Aqj7Gx5bPhRD8Nl+bEl73yMP38pnZWNqt9OxGNcK56A9GcD59Z+atwHN0ZEi89NsCPXS21Z/QA8JF1UfM6kBibLKqRhLV2mTrbuqYxRWC0YKCtvIv9v3lgPaIy55RpHKJE7l4rDItVJkOFas3WInO29A4BqEQIOBoJi7eFa3hbBg5JiDaQ5q9I9klyEsCziVPoDKyyYWQxEoyTxEtgYka5HsUNrebgTVcNBsqREhntIRFUxIB0unfaovc54BrpBtzMyMJB1UkKn3Gni+YrRV9DvRd7YPxkDFHf2mJjbcF9iexHAOpfI6Ocu3/kPClk4C4GlAIYtlnYHOvHRGzEdchseHbjCMsNeqoWJYvGXn22webQFhgO61yMd0qpoEDZYwXCbGHGJS6cPLRl9hlLhofyX3c71BXIPU+G3jnOwE3bRnm3r6de5oAWcC0SmtquUSBQ0exQkD8oBq+z0iuZQaZNaHM8b0CKcB38dqSM8ZvuDn/Td4Oxg7iTOw6f6io8cBYAEyv1eAYu80VE5hsyujyCtvPLhjL4FCv0HSG1fwp/+6LUBLUtK79Qn+2xKKVxqypKfBaPyX6TfvPZSXWlKtEZShoDYDQc9hKQGjHPH4XeuyjJz9VH9gH+snkgZ0kflIZd41o4A4E/N7hRxxGHWFPszzS5Ay2Es3KrxmUfhECec0id5wthKqERORFkO+/5X9pUS2eW2uSj8NRkpJa+NPeS085b32mdxKmHcpGf6odzFA7SsIlzf6hDetXvKuGhS0rfmr6nIOif7cD9cxwPZSkugIz0jaGNKdHThqv/tsFNQMHh86lecVBMNfLXzTYF4Tl6sv4WJvIFJBPmg+Yb+8zPkGnVVt3pcoVMGZ0iXzgVG91AbHXt0xehma16JQ8bmbeUjHgt4QOPQ1omRDGpod2IHGIMloRZQXdC0ldd9LO0h+lOwIB9/GcxsoBRAbXT3y+IFqqn8eqv92Ka9fkCqSmpL1/+QzmJ3ZOhqQGmp3rwv7LZko4zR2LSYxSLlZqyZ8lR4HCGNgXruGkGxbs4e+ZmxtUzYAk9fAy6IL+qaCI/+PEo9NKL1I1PTLV9OL4aZQuCgcuHjmCMR3mPssBDbBidTD4m/2OCJLld6qMk4hBLtr+cvlLzqk5ARd31a7I0A08oCuOCqfL0Ew65nYcEKEgxTd0Y7nVyhgaKe/xs8O/pZyDkoY+ga8gz7j3h9+NiMJB2kY9pZv5PBgGagNp8xEWFaS/HuGtjngRZymdEMVCXpUzubDIAhL8OT2oDnjqVNZRMdSotepm+4Ih7amNeeT/mQZZXJTNH8oAXkPJ6q3cZv1sN4vgtjpZJ6MvkdqQ+rYlCxUHdatzyvxSBKkM6weQx4Gp4uyK7we6bEeWnlcHa4Ry8rZceF6CV97klmgtZOQqZg6gm1ytCunfOXxEXIZn8nFojEbUYiIjYmt6agI1tiXKNFwBdcV/WSJKRHNli0HjTdB+UNAx5dD3qTkRrfmdcDIshreiLjIgf7GYqvABAwojdrtZc8WGCxMHTtiopuOuqQO9Xb/GRdO6Ff3HjhdttBMqXABXWUtmql+br3yBpaxshkyuIVq7AICFbK94zh+CraBisRWa99UyC4LkNfcKYx/dIMKZjCQY0GcSvCIwgK/4hvMluo1pgEsav+6p/pNic0+ta+nv77xt4gC9jeskWEFhcqyRCGvE+xOKBmhCyBvtG+MUY5x1oooKMFxdZ+eqTt//Www0xAg8on3r4eeJSPRBh4J6eAvfSzgHItNfcFop6e+gFqcmxba3MxB1YsC+46jT2AE5I4UJOiWB6AnH13Wq+we+5FG4BBk74+wbenILHW4p8oBkCwIw+8BXkzODxGceSi0tODG0lSj6hzv+bgGhpIMgeWdLRpnl9halHzEdSXFDyk1H8TAhYcnieodL9W4iXZJ4yyyp5e0GlDkNVtm98Zgkx1zjlEUdZgkpTqXzuiRRdvdCu1cljEet/LwQrQ7ow+66yPbK5eAEK40vLRBVKv4Afv5y/OKKZujvFtkG/FjfKvCIdalgAG7lhmmNIbFWgB9oK2X4rNOTPXOwUPWpCYIBTopdO1jGYJ5mVt5no3eVGsVXHEs/89hYS6d0/h1B2kIFfQ1SRowE7fzoQjlp/KG4G9UW4zpIbYFvlVJqA1UXnlB0Hhu9WFtWlCph7ARapECwhmjjyPARwOHa84VYSYV+W72Tiqb3fFm0jQC6oohZLMHf+dIJ2V2mB1z0j6Q8oQjY5ceYvqpErxhiBGG4tEAv88AcRHqBoC8fs7QlMuyCW77LMfTWlWBrHCoS3FCoGTWbz11nBQWGcCdwaaVR1ENXkn+L0cbdewvuqeYmruLQ+qbTiAWNtkASps1b5MouuaSXgD0uWvSxk67EpaPxQGYJolGaxfD8/UUMkOIJNQvEX7n7hAXn00MpcCjQDPyCBFJ7eKooChs7wvmImX1nuKrifn44h+2ZBStYM+Z1vD5t66GpDL2RuK1By6RyzJCpJwFBW4GM5UoMh1cQqQJm4qgHGJLFM71KxLbH+vzwj88pZK3XnOBcMayQDn3jHlxrLYbaGSfyM1txUZhfTbAcFaH0GrNvsiySA3wf8e9g=" FOLDED="true" ID="ID_36556634" MODIFIED="1512035318314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      sql<br />
    </div>
  </body>
</html></richcontent>
</node>
<node CREATED="1512035168114" ID="ID_1409687348" MODIFIED="1512035262113">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &#25903;&#20184;&#36208;&#32593;&#21830;&#20116;&#30334;&#22810;&#65292;&#20063;&#32943;&#23450;&#36827;&#20214;&#25104;&#21151;&#20102;&#65292;&#36825;&#20010;&#19981;&#20250;&#20135;&#29983;&#38169;&#35823;&#12290;
      </li>
      <li>
        &#32593;&#21830;&#36827;&#20214;&#20004;&#19975;&#22810;&#65292;&#20294;&#36824;&#36208;&#29616;&#22312;&#25903;&#20184;&#65292;&#36825;&#20010;&#20250;&#20135;&#29983;&#38169;&#35823;&#12290;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510905258247" ID="ID_1317936558" MODIFIED="1513580849833" TEXT="2017.12">
<node CREATED="1512089142142" ID="ID_166104499" MODIFIED="1512176997299" TEXT="12.1">
<node CREATED="1512089146456" FOLDED="true" ID="ID_135768715" MODIFIED="1513042471646" TEXT="&#x591a;&#x6536;&#x624b;&#x7eed;&#x8d39;&#x95e8;&#x5e97;&#x7b5b;&#x9009;">
<node CREATED="1512089177407" ID="ID_922937729" MODIFIED="1512089275897" TEXT="&#x63d0;&#x53d6;&#x6709;&#x95ee;&#x9898;&#x95e8;&#x5e97;">
<node CREATED="1512089158946" ID="ID_1745879495" MODIFIED="1512089170271">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      select distinct(shop_id) shop_id from sh_multichannel_shop_payrate where channel_type=3
    </p>
    <p>
      and pay_rate&lt;38&#160;&#160;and create_time&lt;UNIX_TIMESTAMP('2017-11-30 15:20')
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1512089205871" FOLDED="true" ID="ID_52603905" MODIFIED="1512179717065" TEXT="&#x63d0;&#x53d6;&#x8ba2;&#x5355;,&#x9700;&#x8981;&#x521b;&#x5efa;&#x4e34;&#x65f6;&#x8868;&#x5173;&#x8054;">
<node CREATED="1512089780058" ID="ID_678383185" MODIFIED="1512092204135">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      select shop_id,shop_name,sum(pay_fee) returnfee,sum(jiesuan_amount) totalfee from (
    </p>
    <p>
      
    </p>
    <p>
      select order_id,md.shop_id,shop_name,pay_id,pay_name,pay_fee,jiesuan_amount,pay_status,order_status from md_order_info md inner join tmp_ordershop tos
    </p>
    <p>
      on md.shop_id = tos.shop_id where md.pay_fee&gt;0 and md.pay_status=2 and md.order_status=5 and
    </p>
    <p>
      (md.order_id like 'W171128%' or md.order_id like 'W171129%' or md.order_id like 'W171130%') and md.shop_id not in (select shop_id from tmp_ordershop1) order by shop_id)
    </p>
    <p>
      
    </p>
    <p>
      a group by a.shop_id,a.shop_name order by returnfee desc
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512093129810" ID="ID_1449076628" MODIFIED="1512093145837">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      select sp.* from sh_shop_payrate sp
    </p>
    <p>
      &#160;inner join tmp_ordershop_payfee tof
    </p>
    <p>
      on sp.shop_id=tof.shop_id
    </p>
    <p>
      where sp.pay_rate&gt;0
    </p>
    <p>
      order by pay_type,pay_rate
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512098614423" ID="ID_624354532" MODIFIED="1512177025382" TEXT="mdorder">
<node CREATED="1512098621077" ID="ID_832547194" MODIFIED="1512098626124">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      select * from tmp_1201_payrate
    </p>
    <p>
      
    </p>
    <p>
      select pay_fee+jiesuan_amount,pay_fee,t1p.pay_rate from tmp_1201_order t1o inner join tmp_1201_payrate t1p on t1o.shop_id = t1p.shop_id
    </p>
    <p>
      
    </p>
    <p>
      where t1p.pay_type=1 and t1o.pay_id=18
    </p>
    <p>
      
    </p>
    <p>
      select shop_name,shop_id,sum(pay_fee),sum(finalfee),sum(totalmoney) from (
    </p>
    <p>
      select t1o.order_id, t1o.shop_id,t1o.shop_name,t1o.jiesuan_amount, (pay_fee+jiesuan_amount) totalmoney,pay_fee,t1p.pay_rate,round((pay_fee+jiesuan_amount)*(pay_rate/10000),2) finalfee from tmp_1201_order t1o
    </p>
    <p>
      inner join tmp_1201_payrate t1p on t1o.shop_id = t1p.shop_id
    </p>
    <p>
      where t1p.pay_type=2 and (t1o.pay_id!=16 and t1o.pay_id!=18 )) b where b.pay_fee!=b.finalfee group by shop_id,shop_name order by sum(finalfee) desc
    </p>
    <p>
      
    </p>
    <p>
      select shop_name,shop_id,sum(pay_fee) total_payfee,sum(jiesuan_amount) total_jiesuan_amount from tmp_1201_order where shop_id not in (select shop_id from tmp_1201_payrate)
    </p>
    <p>
      group by shop_name,shop_id order by total_payfee desc
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#33ccff" CREATED="1512115503220" ID="ID_1647201748" MODIFIED="1512115564596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff6600">&#29616;&#22312;&#25903;&#20184;&#30452;&#28165; 82...&#26681;&#25454;&#20160;&#20040;&#26465;&#20214;&#21047;&#20837;md_order_info&#35760;&#24405;&#12290;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1512171067696" FOLDED="true" ID="ID_1321380636" MODIFIED="1513042466615" TEXT="12.2">
<node CREATED="1512171074531" ID="ID_1681657419" MODIFIED="1512171086479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      select distinct(shop_id) from sh_multichannel_shop_payrate_log where channel_type=3 and FROM_UNIXTIME(create_time)&lt;'2017-11-30 15:20' and shop_id not in (
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      select distinct(shop_id) shop_id from sh_multichannel_shop_payrate where channel_type=3
    </p>
    <p>
      and pay_rate&lt;38&#160;&#160;and create_time&lt;UNIX_TIMESTAMP('2017-11-30 15:20')
    </p>
    <p>
      
    </p>
    <p>
      ) and shop_id not in (select distinct(shop_id) from sh_multichannel_shop_payrate_log where channel_type=1 and FROM_UNIXTIME(create_time)&lt;'2017-11-30 15:20')
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512171096992" ID="ID_712300339" MODIFIED="1512171115612" TEXT="&#x8ffd;&#x52a0;&#x901a;&#x8fc7;&#x66f4;&#x65b0;&#x88ab;&#x9057;&#x6f0f;&#x7684;&#x8ba2;&#x5355;"/>
<node CREATED="1512177276377" ID="ID_264636982" MODIFIED="1512177280624" TEXT="&#x4e34;&#x65f6;&#x8868;">
<node CREATED="1512177282474" ID="ID_1604165065" MODIFIED="1512177290503">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      sh_wowostore<br />select&#160;sp.*&#160;from&#160;sh_shop_payrate&#160;sp&#160;inner&#160;join&#160;tmp_ordershop_payfee&#160;tof&#160;on&#160;sp.shop_id=tof.shop_id&#160;where&#160;sp.pay_rate&gt;0<br />order&#160;by&#160;pay_type,pay_rate<br /><br />mdorder<br />select&#160;order_id,md.shop_id,shop_name,pay_id,pay_name,pay_fee,jiesuan_amount,pay_status,order_status&#160;from&#160;md_order_info&#160;md&#160;inner&#160;join&#160;tmp_ordershop&#160;tos<br />on&#160;md.shop_id&#160;=&#160;tos.shop_id&#160;where&#160;md.pay_fee&gt;0&#160;and&#160;md.pay_status=2&#160;and&#160;md.order_status=5&#160;and<br />(md.order_id&#160;like&#160;'W171128%'&#160;or&#160;md.order_id&#160;like&#160;'W171129%'&#160;or&#160;md.order_id&#160;like&#160;'W171130%')&#160;and&#160;md.shop_id&#160;not&#160;in&#160;(select&#160;shop_id&#160;from&#160;tmp_ordershop1)&#160;order&#160;by&#160;shop_id<br />
    </div>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1512194674178" ID="ID_21508766" MODIFIED="1512194688738" TEXT="&#x5f88;&#x7b80;&#x5355;&#xff1a;&#x8ba1;&#x7b97;&#x624b;&#x7eed;&#x8d39;&#xff0c;&#x624b;&#x7eed;&#x8d39;&#x4e0d;&#x5bf9;&#x5c31;&#x662f;&#x4e0d;&#x5bf9;"/>
</node>
<node CREATED="1512121595926" FOLDED="true" ID="ID_1462105218" MODIFIED="1513071702283" TEXT="12.5">
<node CREATED="1512121601948" ID="ID_838674595" MODIFIED="1512121613888" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x76f4;&#x6e05;"/>
<node CREATED="1512440025465" ID="ID_956070441" MODIFIED="1512441451627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      paytime&#26102;&#38388;&#19981;&#23545;&#65292;&#26159;&#22240;&#20026;&#36716;&#25442;&#20102;&#20004;&#27425;&#23548;&#33268;,&#24453;&#20462;&#22797;
    </p>
    <p>
      &#22240;&#20026;DataUtil&#26159;&#31389;&#31389;&#33258;&#24102;&#30340;&#22403;&#22334;&#31867;&#65292;&#37319;&#29992;&#22266;&#23450;&#30340;concurrentHashMap&#23548;&#33268;&#20914;&#31361;...
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1512440059451" ID="ID_1288853909" MODIFIED="1513042784913">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26412;&#21608;&#24320;&#22987;&#21093;&#31163;&#34917;&#21333;&#65292;&#20851;&#21333;&#65292;&#37319;&#29992;&#28176;&#34928;&#27169;&#24335;&#36827;&#34892;&#38388;&#38548;&#26597;&#35810;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1512457246374" ID="ID_1148091029" MODIFIED="1512457250811" TEXT="task">
<node CREATED="1512454848168" ID="ID_476777101" MODIFIED="1512454868760" TEXT="&#x505c;&#x4e86;&#x6240;&#x6709;&#x76f8;&#x5173;&#x7684;b-c&#x7684;&#x67e5;&#x8be2;&#x8ba2;&#x5355;&#x7684;jobcenter"/>
<node CREATED="1512454229057" ID="ID_1189642073" MODIFIED="1512454256167" TEXT="&#x4e0a;&#x7ebf;&#x540e;&#xff0c;&#x505c;&#x6b62;&#x8865;&#x5355;/&#x5173;&#x5355;&#x7684;jobcenter&#x6216;&#x4efb;&#x52a1;">
<node CREATED="1512463339956" ID="ID_1782795065" MODIFIED="1512463344990" TEXT="&#x5173;&#x5355;&#x4e24;&#x5929;&#x540e;"/>
<node CREATED="1512463345917" FOLDED="true" ID="ID_1530290403" MODIFIED="1513042533631" TEXT="&#x4e0d;&#x518d;&#x5b58;&#x5728;&#x4ec0;&#x4e48;&#x8865;&#x5355;">
<node CREATED="1512463355945" ID="ID_872187841" MODIFIED="1512463391823">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      pay_limit_time/bind_limit_time
    </p>
    <p>
      &#25918;&#23485;&#33267;&#20004;&#22825;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512463394186" ID="ID_858215099" MODIFIED="1512463534491">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b-c &#20998;&#31163;&#21333;&#29420;&#26381;&#21153;&#65292;&#29992;dubbo&#26469;&#35843;&#29992;&#30456;&#24212;&#22788;&#29702;&#29366;&#24577;&#37096;&#20998;&#65292;&#32780;http&#35831;&#27714;&#37096;&#20998;&#20998;&#31163;&#21040;&#26381;&#21153;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512463538367" ID="ID_1685383446" MODIFIED="1512463545965" TEXT="c-b&#xff0c;&#x56de;&#x8c03;."/>
</node>
</node>
<node CREATED="1512454195772" ID="ID_827404509" MODIFIED="1512454219642" TEXT="&#x8865;&#x5355;b-c &#x6e10;&#x8870;&#xff0c;c-b&#x6301;&#x7eed;&#x7b49;"/>
<node CREATED="1512454178729" ID="ID_1324093461" MODIFIED="1512454194770" TEXT="&#x5173;&#x5355;&#x653e;&#x5230;&#x4e24;&#x5929;&#x540e;"/>
</node>
<node CREATED="1512459615223" FOLDED="true" ID="ID_1979391981" MODIFIED="1513071697309" TEXT="refactor">
<node CREATED="1512459623068" ID="ID_1105634434" MODIFIED="1512459626394" TEXT="addQueue"/>
<node CREATED="1512462210529" ID="ID_1252846677" MODIFIED="1512465835115" TEXT=" template for queryorder">
<node CREATED="1512463009043" ID="ID_1307159072" MODIFIED="1512463023734" TEXT="1,&#x63d0;&#x53d6;&#x672a;&#x652f;&#x4ed8;&#x8ba2;&#x5355;">
<node CREATED="1512464148761" ID="ID_1183503623" MODIFIED="1512464165909" TEXT="&#x6e10;&#x8870;&#x5f0f;&#x63d0;&#x53d6;"/>
<node CREATED="1512464184484" ID="ID_1820026394" MODIFIED="1512465128563">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22686;&#21152;&#34920;&#23383;&#27573;:querycount&#65292;&#29992;&#20110;&#23454;&#29616;&#28176;&#34928;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512464886262" ID="ID_52333153" MODIFIED="1512464910698">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24517;&#39035;&#36830;&#25509;&#27744;&#65292;&#20294;&#19981;&#21516;&#36890;&#36947;&#38656;&#35201;&#39069;&#22806;&#37197;&#32622;&#19978;&#32447;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1512463025397" ID="ID_1110706272" MODIFIED="1512463033759" TEXT="2&#xff0c;&#x67e5;&#x8be2;&#x672a;&#x652f;&#x4ed8;&#x8ba2;&#x5355;&#x72b6;&#x6001;">
<node CREATED="1512464143142" ID="ID_310711434" MODIFIED="1512465504443">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#37324;&#37319;&#29992;virutal&#26041;&#27861;&#24310;&#36831;&#21040;&#23376;&#31867;&#21435;&#22788;&#29702;&#36820;&#22238;&#32467;&#26524;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1512463034982" ID="ID_1944940246" MODIFIED="1512463045958" TEXT="3&#xff0c;&#x6839;&#x636e;&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x5237;&#x65b0;&#x72b6;&#x6001;">
<node CREATED="1512465507901" ID="ID_1204119220" MODIFIED="1512467307847">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.1 &#21464;&#21270;&#37096;&#20998;
    </p>
    <p>
      
    </p>
    <p>
      bizEngine
    </p>
  </body>
</html></richcontent>
<node CREATED="1512465517769" ID="ID_848287717" MODIFIED="1512465527509" TEXT="&#x6784;&#x9020;&#x8bf7;&#x6c42;&#x53c2;&#x6570;"/>
<node CREATED="1512465528793" ID="ID_1668935033" MODIFIED="1512465538014" TEXT="&#x5904;&#x7406;&#x8fd4;&#x56de;&#x7ed3;&#x679c;">
<node CREATED="1512465542999" ID="ID_1264455350" MODIFIED="1512465565936" TEXT="&#x9a8c;&#x7b7e;"/>
<node CREATED="1512465566991" ID="ID_1595155254" MODIFIED="1512465572469" TEXT="&#x6570;&#x636e;&#x683c;&#x5f0f;&#x5904;&#x7406;"/>
<node CREATED="1512465573685" ID="ID_587611278" MODIFIED="1512465578085" TEXT="&#x8fd4;&#x56de;&#x903b;&#x8f91;&#x5904;&#x7406;"/>
</node>
<node CREATED="1512465539076" ID="ID_322429131" MODIFIED="1512465539076" TEXT="">
<node CREATED="1512465586995" ID="ID_913748138" MODIFIED="1512467339130" TEXT="&#x8003;&#x8651;&#x76f4;&#x6e05;&#x4e0d;&#x518d;&#x7b97;&#x624b;&#x7eed;&#x8d39;"/>
</node>
</node>
</node>
<node CREATED="1512465591314" ID="ID_1047751546" MODIFIED="1512465638601">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4. addQueue/&#21047;&#26032;md_pay_trade
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1512526647936" FOLDED="true" ID="ID_554967374" MODIFIED="1513045651466" TEXT="uml">
<node CREATED="1513042854501" ID="ID_1982167362" MODIFIED="1513042868593">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/refactor-queryorder.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1512440019347" FOLDED="true" ID="ID_96461534" MODIFIED="1513042424783" TEXT="12.6">
<node CREATED="1512546558152" ID="ID_630834797" MODIFIED="1512546624200">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20020;&#26102;&#25913;&#20570;&#30452;&#28165;&#39033;&#30446;&#65292;&#24310;&#26399;&#19977;&#22825;
    </p>
    <p>
      &#34917;&#21333;&#65292;&#20851;&#21333;&#24310;&#26399;&#21040;12.25
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1512607404971" FOLDED="true" ID="ID_1535541406" MODIFIED="1513580851495" TEXT="12.7">
<node CREATED="1512607410437" ID="ID_1916061441" MODIFIED="1512972047929" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x76f4;&#x6e05;&#x7f16;&#x7801;">
<node CREATED="1512610014989" ID="ID_428972801" MODIFIED="1512610026656" TEXT="b to c&#x90e8;&#x5206;&#x7f16;&#x7801;&#x5b8c;&#x6210;"/>
<node CREATED="1512611432764" ID="ID_695151813" MODIFIED="1512611440715" TEXT="c to b&#x90e8;&#x5206;&#x7f16;&#x7801;&#x5b8c;&#x6210;"/>
<node CREATED="1512611443406" ID="ID_1736335207" MODIFIED="1512611455372" TEXT="&#x67e5;&#x8be2;&#x9000;&#x6b3e;&#x90e8;&#x5206;&#x5b8c;&#x6210;"/>
<node CREATED="1512611681836" ID="ID_1092091633" MODIFIED="1512611694346" TEXT="&#x9000;&#x6b3e;&#x63a5;&#x53e3;&#x90e8;&#x5206;&#x5b8c;&#x6210;"/>
<node CREATED="1512613493816" ID="ID_1202035168" MODIFIED="1512613510444" TEXT="&#x901a;&#x77e5;&#x56de;&#x8c03;&#x90e8;&#x5206;&#x5b8c;&#x6210;/&#x8bed;&#x97f3;&#x901a;&#x77e5;&#x90e8;&#x5206;&#x5b8c;&#x6210;"/>
<node CREATED="1512614338455" ID="ID_1489395928" MODIFIED="1512614349179" TEXT="&#x5b9a;&#x65f6;&#x67e5;&#x8be2;&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x5b8c;&#x6210;"/>
<node CREATED="1512615493015" ID="ID_1200655549" MODIFIED="1512615503453" TEXT="&#x81ea;&#x52a8;&#x8865;&#x5355;&#x6628;&#x65e5;&#x5df2;&#x6838;&#x5b9e;"/>
<node CREATED="1512615604411" ID="ID_1717998207" MODIFIED="1512615632509" TEXT="&#x5173;&#x5355;&#x53ea;&#x662f;&#x81ea;&#x5df1;&#x6570;&#x636e;&#x5e93;&#x5173;&#xff0c;&#x6ca1;&#x6709;&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x7684;&#x5173;&#x5355;"/>
</node>
<node CREATED="1512627198079" ID="ID_150753474" MODIFIED="1512694485340" TEXT="&#x6d4b;&#x8bd5;">
<node CREATED="1512628495620" ID="ID_1551266438" MODIFIED="1512628500633" TEXT="mdfrontserver">
<node CREATED="1512627203289" ID="ID_90334901" MODIFIED="1512634599208">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36947;&#20999;&#25442;
    </p>
  </body>
</html></richcontent>
<node CREATED="1512627211503" ID="ID_787233721" MODIFIED="1512627215452" TEXT="b - c">
<node CREATED="1512627221694" ID="ID_1473609704" MODIFIED="1512627489124" TEXT="alipay  18 - 85"/>
<node CREATED="1512627225428" ID="ID_1533483063" MODIFIED="1512627473857" TEXT="wechat  81 - 84"/>
</node>
<node CREATED="1512627216437" ID="ID_1949075852" MODIFIED="1512627219313" TEXT="c - b">
<node CREATED="1512627229266" ID="ID_1737263933" MODIFIED="1512627485505" TEXT="alipay  16 - 83"/>
<node CREATED="1512627232885" ID="ID_1868340467" MODIFIED="1512627392697" TEXT="wechat    61 - 82"/>
</node>
</node>
<node CREATED="1512627251748" ID="ID_550923750" MODIFIED="1512634605151">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;&#37197;&#32622;
    </p>
    <p>
      
    </p>
    <p>
      &#38656;&#35201;&#25163;&#21160;&#25191;&#34892;jobcenter,pickpayarg
    </p>
  </body>
</html></richcontent>
<node CREATED="1512628331931" ID="ID_515728346" MODIFIED="1512628471254">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_paygate_conf
    </p>
  </body>
</html></richcontent>
<node CREATED="1512627285264" ID="ID_1488717400" MODIFIED="1512627297235" TEXT="id=60,&#x652f;&#x4ed8;&#x5b9d;&#x9ed8;&#x8ba4;&#x914d;&#x7f6e;b-c/c-b"/>
<node CREATED="1512627265216" ID="ID_991722555" MODIFIED="1512627284161" TEXT="id =6 ,&#x5fae;&#x4fe1;&#x9ed8;&#x8ba4;&#x914d;&#x7f6e;b-c/c-b"/>
</node>
<node CREATED="1512628349663" ID="ID_1611109347" MODIFIED="1512628400412" TEXT="sh_shop_payconfig">
<node CREATED="1512628401576" ID="ID_1632405698" MODIFIED="1512628411529" TEXT="&#x4e00;&#x4e2a;&#x95e8;&#x5e97;&#x914d;&#x4e24;&#x4e2a;">
<node CREATED="1512628412670" ID="ID_1302140147" MODIFIED="1512628417969" TEXT="paytype=1 &#x5fae;&#x4fe1;"/>
<node CREATED="1512628418886" ID="ID_586906297" MODIFIED="1512628424850" TEXT="paytype=2 &#x652f;&#x4ed8;&#x5b9d;"/>
</node>
</node>
</node>
</node>
<node CREATED="1512628508910" ID="ID_1198631297" MODIFIED="1512628512353" TEXT="mdpaygate">
<node CREATED="1512628528963" ID="ID_753248824" MODIFIED="1512628541473" TEXT="&#x67e5;&#x8fd4;&#x56de;&#x662f;&#x5426;&#x89e3;&#x6790;&#x8d39;&#x7387;"/>
</node>
<node CREATED="1512628515446" ID="ID_1970349493" MODIFIED="1512628521418" TEXT="QueueConsumeService">
<node CREATED="1512628522736" ID="ID_1664396229" MODIFIED="1512628527484" TEXT="&#x67e5;&#x8d39;&#x7387;&#x65e5;&#x5fd7;"/>
</node>
</node>
<node CREATED="1512643461967" ID="ID_1437330863" MODIFIED="1512643477400" TEXT="&#x518d;&#x5566;&#x5206;&#x652f;&#xff0c;&#x53ea;&#x6539;paytypeenum"/>
<node COLOR="#ff3333" CREATED="1512643479041" ID="ID_1609729714" MODIFIED="1512643501230" TEXT="&#x5e73;&#x884c;&#x73af;&#x5883;&#x7684;&#x9ed8;&#x8ba4;6&#x8981;&#x6e05;&#x7a7a;&#x6216;&#x6539;&#x56de;&#x6765;"/>
</node>
<node CREATED="1512695108243" ID="ID_336817156" MODIFIED="1513305372018" TEXT="12.8">
<node CREATED="1512695114983" FOLDED="true" ID="ID_679174748" MODIFIED="1513391327391" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x76f4;&#x6e05;&#x4e8c;&#x7248;">
<node CREATED="1512695132752" ID="ID_1578511346" MODIFIED="1512695143193" TEXT="&#x901a;&#x9053;&#x6620;&#x5c04;&#x4fee;&#x6539;">
<node CREATED="1512695145979" ID="ID_1876532576" MODIFIED="1512695152528" TEXT="b - c ">
<node CREATED="1512627221694" ID="ID_143493372" MODIFIED="1512695238525" TEXT="alipay  18 - 51 -  85"/>
<node CREATED="1512627225428" ID="ID_1040004692" MODIFIED="1512627473857" TEXT="wechat  81 - 84"/>
</node>
<node CREATED="1512695153482" ID="ID_1286923690" MODIFIED="1512695156724" TEXT="c - b">
<node CREATED="1512695160212" ID="ID_1395618140" MODIFIED="1512695214895" TEXT="alipay 16 -  49 - 83"/>
<node CREATED="1512695174229" ID="ID_312234530" MODIFIED="1512695185368" TEXT="wechat 61 -82"/>
</node>
</node>
<node CREATED="1512700441776" ID="ID_1089634621" MODIFIED="1512700465641" TEXT="&#x5df2;&#x90e8;&#x7f72;&#x5e73;&#x884c;&#x73af;&#x5883;&#x5f85;&#x6d4b;&#xff0c;&#x9700;&#x5b89;&#x591a;&#x914d;&#x5408;"/>
<node CREATED="1512720744924" ID="ID_70962605" MODIFIED="1512720797313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26681;&#25454;&#32447;&#19978;&#38376;&#24215;id,&#20174;&#32447;&#19978;&#21516;&#27493;&#25968;&#25454;&#21040;34,47&#24211;&#65292;&#24182;&#36890;&#36807;&#38376;&#24215;&#25509;&#21475;&#21047;redis&#65292;&#28982;&#21518;&#21578;&#35785;&#23433;&#22810;&#65292;&#21363;&#21487;&#27979;&#35797;
    </p>
  </body>
</html></richcontent>
<node CREATED="1512720816326" ID="ID_11463485" MODIFIED="1512720825504" TEXT="&#x95e8;&#x5e97;&#x53cd;&#x73b0;&#x8868;"/>
<node CREATED="1512720826602" ID="ID_429957529" MODIFIED="1512720831604" TEXT="&#x95e8;&#x5e97;&#x8d39;&#x7387;&#x8868;"/>
<node CREATED="1512720833091" ID="ID_307000739" MODIFIED="1512720847937" TEXT="&#x95e8;&#x5e97;&#x4fe1;&#x606f;&#x8868;">
<node CREATED="1512720960895" ID="ID_1824543491" MODIFIED="1512720963479" TEXT="getShopDetailById"/>
</node>
<node CREATED="1512720850384" ID="ID_1830381021" MODIFIED="1512720870274" TEXT="&#x5237;redis&#x7684;&#x63a5;&#x53e3;"/>
<node CREATED="1512724557953" ID="ID_81839039" MODIFIED="1512724557953" TEXT=""/>
</node>
<node CREATED="1512724562164" ID="ID_1506883515" MODIFIED="1512724580953" TEXT="&#x652f;&#x4ed8;&#x5b9d;&#x7684;&#x914d;&#x7f6e;&#x662f;&#x5426;&#x8981;&#x6539;...&#x90a3;&#x5c31;&#x9ebb;&#x70e6;&#x4e86;">
<node CREATED="1512724655290" ID="ID_270044365" MODIFIED="1512724659540" TEXT="&#x9700;&#x8981;&#x5355;&#x72ec;&#x914d;&#x7f6e;"/>
<node CREATED="1512727714068" ID="ID_527019319" MODIFIED="1512727735101" TEXT="shopcenter2 &#x914d;&#x7f6e;&#x4e86; 8245012&#x7684;payconfigid&#x4e3a;60">
<node CREATED="1512727763594" ID="ID_856766097" MODIFIED="1512727774661" TEXT="md_pay_config&#x7684;60&#x8bb0;&#x5f55;&#x5df2;&#x52a0;&#x5165;"/>
</node>
<node CREATED="1512727737652" ID="ID_1257465929" MODIFIED="1512727758084" TEXT="8245012&#x7684;&#x901a;&#x9053;&#x5207;&#x6362;&#x5230;&#x4e86;61,81,16,18"/>
<node CREATED="1512727798107" ID="ID_1805178167" MODIFIED="1512727802453" TEXT="&#x6d4b;&#x8bd5;&#x6b65;&#x9aa4;">
<node CREATED="1512727803785" ID="ID_1513495472" MODIFIED="1512727826493" TEXT="&#x516c;&#x53f8;&#x6d4b;82,83,84,85&#x662f;&#x5426;&#x6b63;&#x5e38;&#x6807;&#x8bc6;&#x5230;md_order_info"/>
<node CREATED="1512727829100" ID="ID_191307577" MODIFIED="1512727860237" TEXT="&#x7ebf;&#x4e0a;&#x6d4b;&#x8bd5;60&#x914d;&#x7f6e;8245012&#x662f;&#x5426;&#x8d70;&#x76f4;&#x6e05;&#x7684;&#x5fae;&#x4fe1;&#x6210;&#x529f;"/>
</node>
</node>
</node>
</node>
<node CREATED="1512962100382" FOLDED="true" ID="ID_1933128280" MODIFIED="1513567842451" TEXT="12.11">
<node CREATED="1512962105899" ID="ID_890292487" MODIFIED="1512962142423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32487;&#32493;&#29616;&#22312;&#25903;&#20184;&#30452;&#28165;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1512980860786" ID="ID_170748808" MODIFIED="1512980879798" TEXT="&#x660e;&#x5929;&#x5f00;&#x59cb;&#x7ee7;&#x7eed;&#x5206;&#x79bb;&#x8865;&#x5355;&#xff0c;&#x5173;&#x5355;&#x4efb;&#x52a1;"/>
<node CREATED="1512981524188" ID="ID_763177073" MODIFIED="1512981575047">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38544;&#34255;&#24453;&#24320;&#21457;&#21151;&#33021;&#65306;&#38376;&#24215;&#20808;&#26399;&#38544;&#34255;b-c&#25903;&#20184;&#21151;&#33021;&#65292;&#38656;&#35201;&#38376;&#24215;&#36861;&#21152;&#23646;&#24615;&#24182;&#20462;&#25913;mdfrontserver
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1513071711186" FOLDED="true" ID="ID_1690769175" MODIFIED="1513567840635" TEXT="12.12">
<node CREATED="1513071715076" ID="ID_983521176" MODIFIED="1513071737450" TEXT="&#x642d;&#x5efa;&#x8865;&#x5355;&#xff0c;&#x5173;&#x5355;&#x4efb;&#x52a1;&#x6846;&#x67b6;"/>
<node CREATED="1513071740975" ID="ID_38021798" MODIFIED="1513071774841" TEXT="&#x660e;&#x5929;&#x5f00;&#x59cb;&#x5c4f;&#x853d;b-c&#x529f;&#x80fd;&#xff0c;&#x4fee;&#x6539;&#x95e8;&#x5e97;&#x4e2d;&#x5fc3;&#x548c;mdfrontserver"/>
</node>
<node CREATED="1513127766268" FOLDED="true" ID="ID_683099941" MODIFIED="1513567838195" TEXT="12.13">
<node COLOR="#ff0000" CREATED="1513127777087" ID="ID_329831638" MODIFIED="1513127868062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22240;&#20026;sh_shop_draft&#34920;&#65292;&#20813;&#23457;&#26680;&#30452;&#25509;&#19978;&#32447;&#65292;&#30446;&#21069;&#65292;sh_shop&#34920;&#22522;&#26412;&#21487;&#20197;&#24223;&#20102;&#65292;&#20197;&#21518;&#38376;&#24215;&#20013;&#24515;&#37319;&#29992;sh_shop_draft&#34920;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1513238112954" FOLDED="true" ID="ID_1372062299" MODIFIED="1513567835979" TEXT="12.14">
<node CREATED="1513238117714" ID="ID_985892234" MODIFIED="1513238161807">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23631;&#34109;b-c&#21151;&#33021;&#24320;&#21457;&#27979;&#35797;i&#36890;&#36807;
    </p>
    <p>
      &#24050;&#25552;&#20132;&#19978;&#32447;&#30003;&#35831;
    </p>
  </body>
</html>
</richcontent>
</node>
<node COLOR="#ff3300" CREATED="1513238163529" ID="ID_1194966642" MODIFIED="1513238233554" TEXT="&#x8d39;&#x7387;&#x518d;&#x4fee;&#x6539;">
<node CREATED="1513238170642" ID="ID_785080112" MODIFIED="1513238190507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wft,&#26681;&#25454;merchantid&#25552;&#21462;&#36153;&#29575;&#65292;&#24320;&#21457;&#23384;&#20837;&#25509;&#21475;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1513238192790" ID="ID_618162532" MODIFIED="1513238221253">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      wft,&#35746;&#21333;&#20449;&#24687;&#20013;&#20445;&#23384;merchantid
    </p>
    <p>
      &#21033;&#29992;&#26410;&#20351;&#29992;&#30340;&#25193;&#23637;&#23383;&#27573;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1513301810351" FOLDED="true" ID="ID_1255250454" MODIFIED="1513567834036" TEXT="12.15">
<node CREATED="1513301816129" ID="ID_792493500" MODIFIED="1513301834964" TEXT="payrate with merchanid in shshop"/>
<node CREATED="1513301849691" ID="ID_600037940" MODIFIED="1513301869843" TEXT="insert merchantid in md_order_info"/>
<node CREATED="1513305013894" ID="ID_271966785" MODIFIED="1513305025850" TEXT="&#x7f51;&#x5546;&#x663e;&#x793a;&#x4fee;&#x6b63;"/>
<node CREATED="1513308655705" ID="ID_1493379116" MODIFIED="1513308673401" TEXT="wft&#x666e;&#x901a;&#x5546;&#x6237;&#x4ea4;&#x6613;&#x6821;&#x9a8c;"/>
<node CREATED="1513313233713" ID="ID_1386970282" MODIFIED="1513313247329" TEXT="&#x7d27;&#x6025;&#x5904;&#x7406;&#x7f51;&#x5546;&#x4ea4;&#x6613;&#x5d29;&#x6e83;&#x4e8b;&#x5b9c;"/>
</node>
<node CREATED="1513390099943" FOLDED="true" ID="ID_227395765" MODIFIED="1513590315812" TEXT="12.16">
<node CREATED="1513390105350" ID="ID_99162392" MODIFIED="1513390125084" TEXT="md_order_info&#x53ca;&#x5176;&#x5907;&#x4efd;&#xff0c;&#x9700;&#x8981;&#x52a0;&#x5165;merchantid&#x5b57;&#x6bb5;"/>
<node CREATED="1513390162011" ID="ID_168867036" MODIFIED="1513395568957" TEXT="shopcenter2&#x9700;&#x8981;&#x5199;&#x5165;reids - merchantid">
<node CREATED="1513393949971" ID="ID_331956564" MODIFIED="1513395459642">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22797;&#29992;sh_shop_paychannel&#34920;&#30340;
    </p>
    <p>
      jsondata&#21152;&#20837;feerate&#23383;&#27573;&#65288;&#24494;&#20449;&#65292;&#25903;&#20184;&#23453;&#65289;
    </p>
    <p>
      
    </p>
    <div>
      <font color="#660099">{&quot;merchantId&quot;:&quot;399580228772&quot;,&quot;wxFee&quot;:&quot;38&quot;,&quot;zfbFee&quot;:&quot;28&quot;}</font><br />
    </div>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font color="#006699">shopcenter2</font><font color="#ff6633">&#20160;&#20040;&#37117;&#19981;&#29992;&#25913;</font><font color="#006699">&#65292;&#25913;&#21160;&#30456;&#24212;&#30340;mdpaygate&#21462;merchantid&#30340;&#22320;&#26041;&#65292;&#21152;&#20837;feerate&#37096;&#20998;&#21363;&#21487;&#12290;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1513566837917" ID="ID_1941819116" MODIFIED="1513586819887" TEXT="12.17">
<node CREATED="1513566843295" ID="ID_1928796515" MODIFIED="1513580890477">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23041;&#23500;&#36890;&#22823;&#21830;&#25143;,&#37325;&#26032;&#23450;&#20041;&#22235;&#20010;paytype&#65292;&#19982;&#23041;&#23500;&#36890;&#26222;&#36890;&#21830;&#25143;&#20570;&#21306;&#21035;
    </p>
    <p>
      
    </p>
    <p>
      &#26222;&#36890;&#21830;&#25143;&#19978;&#32447; - mdfrontserver&#65292;&#23631;&#34109;b-c/mdpaygate -&#20572;&#29992;&#23041;&#23500;&#36890;&#36830;&#25509;&#27744;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1513586825014" ID="ID_1227338801" MODIFIED="1513587545865" TEXT="&#x5a01;&#x5bcc;&#x901a;&#x5927;&#x5546;&#x6237;">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1513586831654" ID="ID_873367550" MODIFIED="1513587537486">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21019;&#24314;&#35746;&#21333;&#26102;&#65292;&#20889;&#20837;merchantid&#21644;&#30456;&#24212;&#36153;&#29575; &#24182;&#20889;&#20837;tradeVo&#65292;&#20132;&#26131;&#23436;&#25104;&#26102;&#20889;&#20837;queue!&#20462;&#25913;tradePayModel,&#23601;&#26159;&#36825;&#26679;&#65292;&#30830;&#20445;&#20132;&#26131;&#30340;merchanid&#23545;&#24212;&#30340;fee(&#35760;&#24405;&#26085;&#24535;)&#23601;&#26159;&#35745;&#31639;&#36153;&#29575;&#26102;&#30340;fee
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1513587908504" ID="ID_1982291679" MODIFIED="1513587912373" TEXT="&#x5e38;&#x89c4;&#x73af;&#x5883;">
<node CREATED="1513587913656" ID="ID_1703481568" MODIFIED="1513587961064">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23041;&#23500;&#36890;&#38376;&#24215;&#26410;&#36827;&#20214;&#65292;&#23548;&#33268;&#31532;&#19968;&#27425;&#24120;&#35268;&#27979;&#35797;&#24322;&#24120;&#65292;&#27809;&#26377;&#21462;&#21040;merchantid
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510714191216" FOLDED="true" ID="ID_1987457160" MODIFIED="1513580847599" TEXT="2018">
<node CREATED="1510714279628" ID="ID_661651074" MODIFIED="1510714284882" TEXT="2018.01"/>
</node>
</node>
<node CREATED="1513567860337" ID="ID_1554936111" MODIFIED="1513570103708" POSITION="left" TEXT="&#x652f;&#x4ed8;&#x6620;&#x5c04;">
<node CREATED="1513567876919" ID="ID_1840779792" MODIFIED="1513567920797">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26631;&#20934;&#22266;&#23450;&#65292;16,18,61,81
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1512627203289" ID="ID_1918104925" MODIFIED="1513568098870">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29616;&#22312;&#25903;&#20184;ISV&#30452;&#28165;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1512627211503" ID="ID_1847982016" MODIFIED="1512627215452" TEXT="b - c">
<node CREATED="1512627221694" ID="ID_1911178767" MODIFIED="1512627489124" TEXT="alipay  18 - 85"/>
<node CREATED="1512627225428" ID="ID_1538553409" MODIFIED="1512627473857" TEXT="wechat  81 - 84"/>
</node>
<node CREATED="1512627216437" ID="ID_403100667" MODIFIED="1512627219313" TEXT="c - b">
<node CREATED="1512627229266" ID="ID_389312461" MODIFIED="1512627485505" TEXT="alipay  16 - 83"/>
<node CREATED="1512627232885" ID="ID_1803799683" MODIFIED="1512627392697" TEXT="wechat    61 - 82"/>
</node>
</node>
<node CREATED="1513568102334" ID="ID_1508467221" MODIFIED="1513568123009" TEXT="&#x5a01;&#x5bcc;&#x901a;&#x666e;&#x901a;&#x5546;&#x6237;">
<node CREATED="1513568510223" ID="ID_1659420214" MODIFIED="1513568540258" TEXT="c - b">
<node CREATED="1513568541819" ID="ID_929580583" MODIFIED="1513568577050" TEXT="alipay 16 -  47 - 14"/>
<node CREATED="1513568839486" ID="ID_287057214" MODIFIED="1513568886073" TEXT="wechat 61 - 43 - 9"/>
</node>
<node CREATED="1513568888483" ID="ID_1860883753" MODIFIED="1513568891840" TEXT="b - c">
<node CREATED="1513568900518" ID="ID_85393304" MODIFIED="1513568953843" TEXT="alipay 18 - 46 - 13"/>
<node CREATED="1513568955511" ID="ID_1930179862" MODIFIED="1513568964257" TEXT="wechat 81 - 46 - 12"/>
</node>
</node>
<node CREATED="1513568125013" ID="ID_383540643" MODIFIED="1513568131818" TEXT="&#x5a01;&#x5bcc;&#x901a;&#x5927;&#x5546;&#x6237;">
<node CREATED="1513569228872" ID="ID_170456567" MODIFIED="1513569232064" TEXT="c - b">
<node CREATED="1513577839890" ID="ID_374654472" MODIFIED="1513577860919" TEXT=" alipay 16 - 75"/>
<node CREATED="1513577887460" ID="ID_512505961" MODIFIED="1513577900415" TEXT="wechat 61 - 76"/>
</node>
<node CREATED="1513569235181" ID="ID_236959735" MODIFIED="1513569238744" TEXT="b - c">
<node CREATED="1513577862182" ID="ID_1350634588" MODIFIED="1513577885086" TEXT="alipay  18 - 77"/>
<node CREATED="1513577901637" ID="ID_53633339" MODIFIED="1513577911453" TEXT="wechat 81 - 78"/>
</node>
</node>
<node CREATED="1513569241733" ID="ID_898666170" MODIFIED="1513569249881" TEXT="&#x7f51;&#x5546;">
<node CREATED="1513569284765" ID="ID_1570429714" MODIFIED="1513569288450" TEXT="c - b">
<node CREATED="1513569424862" ID="ID_1118302711" MODIFIED="1513569465362" TEXT="alipay  16 - 92"/>
<node CREATED="1513569480511" ID="ID_510105821" MODIFIED="1513569486961" TEXT="wechat 61 - 91"/>
</node>
<node CREATED="1513569290282" ID="ID_465155125" MODIFIED="1513569293584" TEXT="b - c">
<node CREATED="1513569503091" ID="ID_1489691574" MODIFIED="1513569533088" TEXT="alipay 18 - 94"/>
<node CREATED="1513569548542" ID="ID_1837309955" MODIFIED="1513569555881" TEXT="wechat 81 - 93 "/>
</node>
</node>
</node>
</node>
</map>
