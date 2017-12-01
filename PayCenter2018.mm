<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node COLOR="#000000" CREATED="1510713087405" ID="ID_1700999216" MODIFIED="1511852992295" TEXT="PayCenter2018">
<edge COLOR="#111111" WIDTH="thin"/>
<font NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<hook NAME="accessories/plugins/CreationModificationPlugin_new.properties"/>
<node COLOR="#111111" CREATED="1510713988382" ID="ID_23680819" MODIFIED="1510714050402" POSITION="right" TEXT="&#x6545;&#x969c;&#x8bb0;&#x5f55;">
<edge COLOR="#111111" WIDTH="thin"/>
<node CREATED="1510913611960" ID="ID_1173122374" MODIFIED="1510913621959" TEXT="isv&#x9000;&#x6b3e;&#x5361;&#x58f3;">
<node CREATED="1510913623400" FOLDED="true" ID="ID_1667729884" MODIFIED="1511836065617" TEXT="&#x9000;&#x6b3e;&#x6d41;&#x7a0b;&#x56fe;">
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
<node CREATED="1510974456360" FOLDED="true" ID="ID_951616101" MODIFIED="1511836110851" TEXT="&#x9000;&#x6b3e;&#x6570;&#x636e;&#x5c42;&#x6d41;&#x7a0b;">
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
</node>
<node CREATED="1510714159564" FOLDED="true" ID="ID_1656036778" MODIFIED="1511145378239" POSITION="left" TEXT="&#x5b89;&#x88c5;&#x90e8;&#x7f72;&#x8bf4;&#x660e;">
<node CREATED="1510714323785" ID="ID_1257702630" MODIFIED="1510714328627" TEXT="notifyserver"/>
<node CREATED="1510714329552" ID="ID_363965362" MODIFIED="1510714334600" TEXT="jobcenter"/>
</node>
<node CREATED="1510714176504" ID="ID_1130548846" MODIFIED="1510714299516" POSITION="right" TEXT="&#x5de5;&#x4f5c;&#x8bb0;&#x5f55;">
<node CREATED="1510714185418" ID="ID_977109342" MODIFIED="1512004386668" TEXT="2017">
<node CREATED="1510714196051" ID="ID_1115097963" MODIFIED="1511832707267" TEXT="2017.11">
<node CREATED="1510714208857" FOLDED="true" ID="ID_849812306" MODIFIED="1511922909622" TEXT="15">
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
<node CREATED="1510903429305" FOLDED="true" ID="ID_76919751" MODIFIED="1511922939717" TEXT="17">
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
<node CREATED="1510969524321" FOLDED="true" ID="ID_302237951" MODIFIED="1511922942045" TEXT="18">
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
<node CREATED="1511145251800" FOLDED="true" ID="ID_1071800148" MODIFIED="1511922945768" TEXT="20">
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
<node CREATED="1511227516886" FOLDED="true" ID="ID_1260094623" MODIFIED="1511922949229" TEXT="21">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1511227521426" FOLDED="true" ID="ID_1120676403" MODIFIED="1511252525314">
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
<node CREATED="1511232101275" FOLDED="true" ID="ID_780251429" MODIFIED="1511488947397">
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
<node CREATED="1511312736921" FOLDED="true" ID="ID_983040907" MODIFIED="1511922951653" TEXT="22">
<node CREATED="1511315379653" ID="ID_233636515" MODIFIED="1511315399496" TEXT="&#x7ed3;&#x7b97;&#x91d1;&#x989d;&#x4e0d;&#x5bf9;&#x662f;&#x540c;&#x6b65;&#x5230;aof&#x5e93;&#x7684;&#x8ba2;&#x5355;&#x540c;&#x6b65;&#x5931;&#x8d25;&#x5bfc;&#x81f4;"/>
<node CREATED="1511330194797" ID="ID_1547367025" MODIFIED="1511330220593" TEXT="&#x652f;&#x4ed8;&#x5b9d;&#x7f51;&#x5546;&#x652f;&#x4ed8;&#x5df2;&#x8fc7;&#xff0c;&#x5fae;&#x4fe1;&#x90e8;&#x5206;&#x4e0d;&#x901a;&#x8fc7;&#xff0c;&#x5f85;&#x9b41;&#x661f;&#x89e3;&#x51b3;"/>
<node CREATED="1511336250046" ID="ID_992011950" MODIFIED="1511336265680" TEXT="&#x660e;&#x65e5;&#x5f00;&#x59cb;codereview&#x8fd9;&#x90e8;&#x5206;&#x4ee3;&#x7801;"/>
</node>
<node CREATED="1511403203374" FOLDED="true" ID="ID_1059773868" MODIFIED="1511922956069" TEXT="23">
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
<node CREATED="1511488189806" FOLDED="true" ID="ID_387446125" MODIFIED="1511922964373" TEXT="24">
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
<node CREATED="1511582078103" FOLDED="true" ID="ID_1303661366" MODIFIED="1511765935548" TEXT="25">
<node CREATED="1511582089089" ID="ID_242350968" MODIFIED="1511582199388" TEXT="&#x5f00;&#x53d1;shopdefaultpayroute&#x63a5;&#x53e3;"/>
</node>
<node CREATED="1511665122844" FOLDED="true" ID="ID_1954548819" MODIFIED="1511765741644" TEXT="26">
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
<node CREATED="1511765710680" FOLDED="true" ID="ID_412944554" MODIFIED="1511853009375" TEXT="27">
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
<node CREATED="1511832743716" FOLDED="true" ID="ID_772826193" MODIFIED="1512010962710" TEXT="28">
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
<node CREATED="1511922735490" FOLDED="true" ID="ID_757419145" MODIFIED="1512010997871" TEXT="29">
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
<node CREATED="1512004391451" ID="ID_543639781" MODIFIED="1512024248050" TEXT="30">
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
</html>
</richcontent>
</node>
<node CREATED="1512024255323" ID="ID_1804040440" MODIFIED="1512024341703" TEXT="&#x624b;&#x7eed;&#x8d39;&#x8865;&#x6551;">
<node CREATED="1512024346935" ID="ID_1678265677" MODIFIED="1512024426901" TEXT="W171128... &#x624b;&#x7eed;&#x8d39;&gt;0&#x7684;&#x95e8;&#x5e97;&#x7684;"/>
<node CREATED="1512024429805" ID="ID_633864919" MODIFIED="1512024444437" TEXT="&#x95e8;&#x5e97;&#x8d39;&#x7387;&#x4e3a;0 &#x7684;"/>
<node CREATED="1512024445489" FOLDED="true" ID="ID_298118680" MODIFIED="1512089138444" TEXT="&#x7b5b;&#x51fa;&#x8ba2;&#x5355;&#x53f7;">
<node CREATED="1512025304894" ENCRYPTED_CONTENT="oTeoFfvVESI= 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" FOLDED="true" ID="ID_36556634" MODIFIED="1512035318314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      sql<br />
    </div>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510905258247" ID="ID_1317936558" MODIFIED="1510905262113" TEXT="2017.12">
<node CREATED="1512089142142" ID="ID_166104499" MODIFIED="1512089145032" TEXT="12.1">
<node CREATED="1512089146456" ID="ID_135768715" MODIFIED="1512089157597" TEXT="&#x591a;&#x6536;&#x624b;&#x7eed;&#x8d39;&#x95e8;&#x5e97;&#x7b5b;&#x9009;">
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
<node CREATED="1512089205871" ID="ID_52603905" MODIFIED="1512089238568" TEXT="&#x63d0;&#x53d6;&#x8ba2;&#x5355;,&#x9700;&#x8981;&#x521b;&#x5efa;&#x4e34;&#x65f6;&#x8868;&#x5173;&#x8054;">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1512098614423" FOLDED="true" ID="ID_624354532" MODIFIED="1512098630644" TEXT="mdorder">
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1510714191216" ID="ID_1987457160" MODIFIED="1510714193879" TEXT="2018">
<node CREATED="1510714279628" ID="ID_661651074" MODIFIED="1510714284882" TEXT="2018.01"/>
</node>
</node>
</node>
</map>
