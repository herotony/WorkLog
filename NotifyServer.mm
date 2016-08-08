<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1469608101625" ID="ID_1514670679" MODIFIED="1470626310335" TEXT="NotifyServer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      com.tuan.notifyserver
    </p>
    <p>
      
    </p>
    <p>
      CTRL+G&#21487;&#20197;&#25628;&#32034;&#19979;&#19968;&#20010;&#21305;&#37197;&#39033;&#12290;&#65288;CTRL+F&#65289;&#30340;&#21518;&#32493;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1469608227714" FOLDED="true" ID="ID_928773600" MODIFIED="1470620766018" POSITION="right" TEXT="core">
<node CREATED="1469608274882" ID="ID_1288985491" MODIFIED="1470620744677" TEXT="distribute">
<node CREATED="1469608287752" ID="ID_1211567719" MODIFIED="1469608292473" TEXT="Distribute"/>
<node CREATED="1469608294381" ID="ID_530536870" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-distributeget-java" MODIFIED="1470303376306" TEXT="DistributeGet">
<node CREATED="1469608886379" ID="ID_159199625" MODIFIED="1469608895770" TEXT="start"/>
<node CREATED="1469608897927" ID="ID_272696881" MODIFIED="1469608902443" TEXT="destroy"/>
<node CREATED="1469608904059" ID="ID_1686490845" MODIFIED="1469608928434" TEXT="DistributeGet &#x6784;&#x9020;&#x51fd;&#x6570;"/>
<node CREATED="1469611094380" ID="ID_1064528917" MODIFIED="1469668285203" TEXT="DistributeGetRunnable">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    &#36127;&#36131;&#20174;redis&#25552;&#21462;&#26032;&#28040;&#24687;&#25110;&#32773;&#37325;&#21457;&#28040;&#24687;
  </body>
</html></richcontent>
</node>
<node CREATED="1469611143111" ID="ID_1935519136" MODIFIED="1469691909303" TEXT="DistributeExecuteRunnable">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36127;&#36131;&#21457;&#36865;&#25110;&#37325;&#21457;&#28040;&#24687;&#32473;&#28040;&#36153;&#32773;&#23458;&#25143;&#31471;
    </p>
    <p>
      &#36755;&#20837;&#65306; queueCacheName
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;executeBlockingQueue[BlockingQueue&lt;MessageDm&gt;]
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;queueType[boolean,isNew?]true&#20026;&#26032;&#28040;&#24687;&#65292;false&#20026;&#37325;&#21457;&#28040;&#24687;
    </p>
  </body>
</html></richcontent>
<node CREATED="1469674237888" ID="ID_594726598" MODIFIED="1470274912637" TEXT="1&#x3001;&#x7ebf;&#x7a0b;&#x6700;&#x591a;&#x6302;&#x8d77;10&#x6beb;&#x79d2;&#xff0c;&#x5173;&#x952e;&#x4ec0;&#x4e48;&#x60c5;&#x51b5;&#x624d;&#x4f1a;&#x6302;&#x8d77;&#xff1f;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      try
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;while (!<font color="#ff0033">executeBlockingQueue</font><font color="#009999">BatchCount</font>.offer(1, 1000, TimeUnit.MILLISECONDS))
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;startSleep(executeBlockingQueueBatchCount.size() &gt; 0 ? executeBlockingQueueBatchCount.size() : 1000);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (stopSign)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;break;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
    <p>
      catch (InterruptedException e)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (logger.isErrorEnabled())
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.error(&quot;DistributeExecuteRunnable-&gt; run-&gt; &quot; + queueCacheName + &quot; -&gt; Offer To ExecuteBlockingQueueBatchCount throw InterruptedException -&gt; &quot; , e);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<node CREATED="1469675058884" ID="ID_798852035" MODIFIED="1469675274100" TEXT="1&#x79d2;&#x4e4b;&#x5185;&#x4e0d;&#x80fd;&#x6210;&#x529f;&#x5199;&#x5165;1&#x5230;&#x5bb9;&#x91cf;&#x4e3a;10&#x7684;&#x8ba1;&#x6570;&#x961f;&#x5217;&#xff0c;&#x5219;&#x6302;&#x8d77;&#x7ebf;&#x7a0b;&#x82e5;&#x5e72;&#x6beb;&#x79d2;"/>
<node CREATED="1469675147919" ID="ID_1137081677" MODIFIED="1469675368622" TEXT="&#x5426;&#x5219;&#xff0c;&#x7ee7;&#x7eed;&#xff0c;&#x4ece;executeBlockingQueue&#x4e2d;1&#x79d2;&#x4e4b;&#x5185;&#x63d0;&#x53d6;&#x5230;&#x6d88;&#x606f;&#x4f53;&#xff0c;&#x5982;&#x679c;&#x63d0;&#x53d6;&#x8fc7;&#x7a0b;&#x4e2d;&#x5f02;&#x5e38;&#x6216;&#x8005;&#x6d88;&#x606f;&#x4f53;&#x4e3a;null&#xff0c;&#x5219;&#x8ba1;&#x6570;&#x961f;&#x5217;&#x53d6;&#x503c;&#x4e00;&#x6b21;&#xff0c;&#x4ee3;&#x8868;&#x7a7a;&#x51fa;&#x4e00;&#x4e2a;&#x4f4d;&#x7f6e;&#x5e76;continue"/>
<node CREATED="1469675317555" ID="ID_1905583394" MODIFIED="1469675352837" TEXT="&#x5982;&#x679c;&#x6d88;&#x606f;&#x4f53;&#x5bf9;&#x5e94;&#x7684;&#x6570;&#x636e;&#x5e93;ConnectAgent&#x4e3a;&#x7a7a;&#xff0c;&#x8ba1;&#x6570;&#x961f;&#x5217;&#x53d6;&#x503c;&#x4e00;&#x6b21;&#xff0c;&#x5e76;continue"/>
<node CREATED="1469675431052" ID="ID_1274107859" MODIFIED="1469675465436" TEXT="&#x63d0;&#x53d6;&#x5206;&#x53d1;&#x961f;&#x5217;&#x5bf9;&#x5e94;&#x7684;netConnectAgent&#xff0c;&#x82e5;&#x4e3a;&#x7a7a;&#xff0c;&#x8ba1;&#x6570;&#x961f;&#x5217;&#x53d6;&#x503c;&#x4e00;&#x6b21;&#xff0c;&#x5e76;continue"/>
<node CREATED="1469675665491" ID="ID_1386089298" MODIFIED="1469675711429" TEXT="&#x6700;&#x540e;dbConnectAgent.update(messageDm)&#x5f02;&#x5e38;&#xff0c;&#x8ba1;&#x6570;&#x961f;&#x5217;&#x53d6;&#x503c;&#x4e00;&#x6b21;&#xff0c;&#x5e76;continue"/>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1469676135626" ID="ID_1147415277" MODIFIED="1469676203333" TEXT="&#x9700;&#x8981;&#x7edf;&#x4e00;checkresult&#x6765;&#x91ca;&#x653e;&#x8be5;&#x8ba1;&#x6570;&#x961f;&#x5217;&#x4ee5;&#x4fbf;&#x540e;&#x7eed;&#x6267;&#x884c;"/>
</node>
<node CREATED="1469691702079" ID="ID_755648254" MODIFIED="1469760374724" TEXT="2&#x3001;executeBlockingQueue&#x63d0;&#x53d6;messageDm">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">&#33509;&#25552;&#21462;messageDm&#25104;&#21151;&#65292;&#21017;&#29992;overtimePerformanceService.before&#35760;&#24405;&#35774;&#32622;&#35813;&#28040;&#24687;&#30340;starttime&#65292;&#24182;&#25191;&#34892;&#22914;&#19979;updatingCount&#35745;&#25968;&#21152;&#19968;</font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#006600">updatingCount</font>.incrementAndGet() if messageDm is valid
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1469692004948" ID="ID_609563486" MODIFIED="1469692508522" TEXT="3&#x3001;&#x6839;&#x636e;messageDm.getDb()&#x63d0;&#x53d6;dbConnectAgent">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#990099">removeQueeu(queueCacheName,messageDm) </font>if it is null
    </p>
  </body>
</html></richcontent>
<node CREATED="1469760556386" ID="ID_1561876463" MODIFIED="1469760585909" TEXT="removeQueue(queueCacheName,messageDm) if dbConnectAgent is null"/>
</node>
<node CREATED="1469692177968" ID="ID_1488781829" MODIFIED="1469692404681" TEXT="4&#x3001;netConnectManager.getQueueAgent&#x6839;&#x636e;queueName&#x63d0;&#x53d6;&#x5bf9;&#x5e94;&#x7684;netQueueAgent">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      removeQueeu(queueCacheName,messageDm) if it is null
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1469692575191" ID="ID_1735761457" MODIFIED="1469692654812" TEXT="5&#x3001;messageDm.getExecuteQueue;messageDm.getResultQueue">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37117;&#26159;<font color="#003333">long&#22411;&#25968;&#25454;</font>&#65292;&#26684;&#24335;&#20026;00000111
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1469692844159" ID="ID_1074828555" MODIFIED="1469753084600" TEXT="6&#x3001;&#x904d;&#x5386;&#x63d0;&#x53d6;...">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      long <font color="#990000">executeQueueNum</font>&#160;= 1;
    </p>
    <p>
      long testNum = 1;
    </p>
    <p>
      
    </p>
    <p>
      while(executeQueue&gt;0){
    </p>
    <p>
      
    </p>
    <p>
      &#160;if((executeQueue &amp; testNum) &gt;0 &amp;&amp; (resultQueue &amp; testNum)==0){
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;QueueAgent netGroupQueueAgent = netQueueAgent.getChildQueueAgent(<font color="#990000">executeQueueNum</font>);
    </p>
    <p>
      &#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;executeQueue &gt;&gt;= 1;
    </p>
    <p>
      &#160;resultQueue &gt;&gt;= 1;
    </p>
    <p>
      &#160;<font color="#990000">executeQueueNum</font>&#160;&lt;&lt;= 1;
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="help"/>
<node CREATED="1469697081688" ID="ID_1671403402" MODIFIED="1469697110814" TEXT="netQueueAgent.getChildQueueAgent"/>
<node CREATED="1469697127415" ID="ID_1538603109" MODIFIED="1469697615977" TEXT="while {...netGroupQueueAgent.getConnectAgent()...}"/>
<node BACKGROUND_COLOR="#ccffff" CREATED="1469753084608" ID="ID_1323511235" MODIFIED="1470303271708" TEXT="&#x5c0f;&#x63d2;&#x66f2;&#xff0c;0&#x5f00;&#x5934;&#x7684;&#x6570;&#x5b57;&#x662f;&#x8bc6;&#x522b;&#x4e3a;&#x516b;&#x8fdb;&#x5236;&#xff0c;0x&#x5f00;&#x5934;&#x7684;&#x4e3a;16&#x8fdb;&#x5236;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      long value =10;&#160;&#20195;&#34920;10
    </p>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      long value =010; &#20195;&#34920;8
    </p>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      long value =0x10;&#20195;&#34920;16
    </p>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      &#23588;&#20854;&#24536;&#20102;010&#65292;&#23548;&#33268;value&gt;&gt;=1&#65292;&#32435;&#38391;&#20102;&#21322;&#22825;&#24590;&#20040;value&#32467;&#26524;&#26159;4
    </p>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      
    </p>
    <p style="color: rgb(0, 0, 0); font-family: Simsun; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      &#22312;c#&#20013;&#19981;&#20877;&#25903;&#25345;&#20843;&#36827;&#21046;&#30340;0&#24320;&#22836;&#34920;&#31034;&#65292;&#21482;&#25903;&#25345;&#21313;&#20845;&#36827;&#21046;&#21644;&#21313;&#36827;&#21046;&#65292;<content ename="content">Java&#36824;&#25903;&#25345;&#12290;</content>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1469614878603" ID="ID_649672348" MODIFIED="1469749666825">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      netConnectAgent.send
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      netConnectAgent.send&#36127;&#36131;&#21457;&#36865;&#28040;&#24687;&#32473;&#28040;&#36153;&#32773;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1469697331462" ID="ID_527230530" MODIFIED="1469697630111" TEXT="resultQueueNew |= executeQueueNum;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#26159;&#24178;&#21861;&#28404;?
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node CREATED="1469611195192" ID="ID_85161463" MODIFIED="1469611281125" TEXT="DistributeCheckRunnable">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24453;&#26597;&#26159;&#26816;&#27979;&#20160;&#20040;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1470303376310" ID="ID_588399213" MODIFIED="1470303392993" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<node CREATED="1470305128447" ID="ID_125525219" MODIFIED="1470305144892" TEXT="1&#x3001;new&#x65b9;&#x6cd5;&#x6784;&#x9020;&#x51fd;&#x6570;&#x4f20;&#x5165;&#x53c2;&#x6570;">
<node CREATED="1470305151482" ID="ID_1499222218" MODIFIED="1470305195384" TEXT="queueNm (&#x961f;&#x5217;&#x540d;&#x79f0;)"/>
</node>
</node>
</node>
<node CREATED="1469608302491" ID="ID_908590532" MODIFIED="1469608307512" TEXT="DistributeSet"/>
<node CREATED="1469608309423" ID="ID_1126138174" MODIFIED="1469608320410" TEXT="DistributeConfParam"/>
</node>
<node CREATED="1469671753939" ID="ID_1537327057" MODIFIED="1469671762970" TEXT="domain">
<node CREATED="1469671767774" ID="ID_858958287" MODIFIED="1469672130583" TEXT="message">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1469672133614" ID="ID_1817428030" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-messagedm-java" MODIFIED="1469672593033" TEXT="MessageDm">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26680;&#24515;&#31867; &#28040;&#24687;&#20307;&#160;messagedm
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1470305248727" ID="ID_1148778242" MODIFIED="1470636768601" POSITION="left" TEXT="console">
<node CREATED="1470305264060" ID="ID_1361829475" MODIFIED="1470305267968" TEXT="vo">
<node CREATED="1470305270957" ID="ID_1857442554" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-queuedistributervo-java" MODIFIED="1470305383603" TEXT="QueueDistributeVo"/>
</node>
<node CREATED="1470305610426" FOLDED="true" ID="ID_1331409421" MODIFIED="1470626365492" TEXT="dao">
<node CREATED="1470305620318" ID="ID_754826342" MODIFIED="1470305625537" TEXT="impl">
<node CREATED="1470305636144" ID="ID_724713266" MODIFIED="1470305651344" TEXT="QueueDistributerDaoImpl"/>
</node>
<node CREATED="1470355335987" ID="ID_1873229734" MODIFIED="1470355745798" TEXT="interface">
<node CREATED="1470355127316" ID="ID_602075147" MODIFIED="1470355139956" TEXT="PerfMonitorRecordDao"/>
<node CREATED="1470355179834" ID="ID_690426878" MODIFIED="1470355188092" TEXT="ProducerDao"/>
<node CREATED="1470354980038" ID="ID_867341724" MODIFIED="1470359241268" TEXT="FailedMsgDao">
<node CREATED="1470358912031" ID="ID_1564727164" MODIFIED="1470359314185" TEXT="&#x4fdd;&#x5b58;&#x5931;&#x8d25;&#x7684;&#x6d88;&#x606f;&#xff0c;&#x5e76;&#x5b9a;&#x671f;&#x6e05;&#x9664;"/>
<node CREATED="1470359362188" ID="ID_334710040" MODIFIED="1470359378305" TEXT="&#x5bf9;&#x5e94;CSL_FAILED_MSG&#x8868;">
<node CREATED="1470359613289" ID="ID_972466173" LINK="#ID_1560190144" MODIFIED="1470359906294" TEXT="FailedMsgMd.java&#x5bf9;&#x5e94;&#x8be5;&#x8868;&#x8bbe;&#x7f6e;"/>
</node>
</node>
<node CREATED="1470354993763" ID="ID_1054346330" MODIFIED="1470355017844" TEXT="GroupAuxiliaryDao"/>
<node CREATED="1470355825983" FOLDED="true" ID="ID_854981102" MODIFIED="1470356334566" TEXT="Queue&#x7c7b;">
<node CREATED="1470355324325" ID="ID_719075089" MODIFIED="1470355332844" TEXT="QueueDao"/>
<node CREATED="1470355592274" ID="ID_629630464" MODIFIED="1470355602451" TEXT="QueueDistributerDao"/>
<node CREATED="1470355607442" ID="ID_1153547940" MODIFIED="1470355612971" TEXT="QueueExchangeDao"/>
<node CREATED="1470355620106" ID="ID_1254835018" MODIFIED="1470355630564" TEXT="QueueMsgBodyCacheDao"/>
<node CREATED="1470355687182" ID="ID_1210452213" MODIFIED="1470355714187" TEXT="QueueMsgQueueCacheDao"/>
<node CREATED="1470355722842" ID="ID_1695894183" MODIFIED="1470355739290" TEXT="QueueMsgStorageDao"/>
<node CREATED="1470355747594" ID="ID_406361169" MODIFIED="1470355756499" TEXT="QueueTraceStorageDao"/>
<node CREATED="1470355305210" ID="ID_679410229" MODIFIED="1470355319324" TEXT="QueueCustomerGroupDao"/>
<node CREATED="1470355190095" ID="ID_17599691" MODIFIED="1470355199804" TEXT="QueueCustomerDao"/>
</node>
<node CREATED="1470355970385" FOLDED="true" ID="ID_1513574283" MODIFIED="1470356336349" TEXT="Queue-map&#x7c7b;">
<node CREATED="1470355025267" ID="ID_453516287" MODIFIED="1470355041948" TEXT="MsgBodyCacheDao"/>
<node CREATED="1470355064866" ID="ID_652576407" MODIFIED="1470355097718" TEXT="MsgQueueCacheDao"/>
<node CREATED="1470355760603" ID="ID_250001117" MODIFIED="1470355765851" TEXT="TraceStorageDao"/>
<node CREATED="1470355111067" ID="ID_317175597" MODIFIED="1470356040991" TEXT="MsgStorageDao"/>
<node CREATED="1470356060755" ID="ID_1418773706" MODIFIED="1470356064523" TEXT="ExchangeDao"/>
<node CREATED="1470354968392" ID="ID_367377244" MODIFIED="1470356072428" TEXT="DistributerDao"/>
<node CREATED="1470354911383" ID="ID_1107705049" MODIFIED="1470356164920" TEXT="CustomerDao"/>
<node CREATED="1470354953832" ID="ID_118242042" MODIFIED="1470356240151" TEXT="CustomerGroupDao"/>
</node>
</node>
</node>
<node CREATED="1470305711692" FOLDED="true" ID="ID_915538262" MODIFIED="1470626350843" TEXT="persistence">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29992;&#21040;&#20102;hibernate-jpa-2.0-api.jar
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccffcc" COLOR="#000000" CREATED="1470305726523" ID="ID_1887032770" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-dynamicsqltemplate-java" MODIFIED="1470305932562" TEXT="DynamicSqlTemplate">
<node CREATED="1470305948662" ID="ID_788936059" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-dynamicsqltemplateimpl-java" MODIFIED="1470362996515" TEXT="DynamicSqlTemplateImpl">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19968;&#22871;&#22522;&#20110;Hibernate&#30340;&#21160;&#24577;&#25191;&#34892;sql&#27169;&#26495;
    </p>
  </body>
</html></richcontent>
<node CREATED="1470360980319" ID="ID_1337162973" MODIFIED="1470361033815" TEXT="&#x8be5;&#x7c7b;&#x7684;&#x7279;&#x70b9;&#x4f20;&#x5165;&#x53c2;&#x6570;&#x56fa;&#x5b9a;&#x662f;vo&#x7c7b;&#x548c;md&#x7c7b;&#xff0c;&#x7136;&#x540e;&#x662f;&#x67d0;&#x4e2a;insert,delete...&#x65b9;&#x6cd5;&#x53bb;&#x6267;&#x884c;&#x6570;&#x636e;&#x5e93;&#x64cd;&#x4f5c;"/>
<node BACKGROUND_COLOR="#ccccff" CREATED="1470363583153" ID="ID_238866890" MODIFIED="1470388075266">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36807;<font color="#0033cc">notifyserver-console-bean.xml</font>&#20013;&#20026;&#35813;&#31867;&#23548;&#20837;sql&#25991;&#20214;&#21015;&#34920;
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;bean id=&quot;dynamicSqlTemplate&quot; class=&quot;com.tuan.notifyserver.console.persistence.DynamicSqlTemplateImpl&quot;&gt;
    </p>
    <p>
      &lt;property name=&quot;hibernateTemplate&quot; ref=&quot;hibernateTemplate&quot; /&gt;
    </p>
    <p>
      &lt;property name=&quot;isRefresh&quot; value=&quot;true&quot; /&gt;
    </p>
    <p>
      &lt;property name=&quot;pageSize&quot; value=&quot;10&quot; /&gt;
    </p>
    <p>
      <font color="#006600">&lt;property name=&quot;fileNameList&quot;&gt; </font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&lt;list&gt; </font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&#160; &lt;value&gt;classpath:com/tuan/notifyserver/console/sql/sql-*.xml&lt;/value&gt; </font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&lt;/list&gt; </font>
    </p>
    <p>
      <font color="#006600">&lt;/property&gt;</font>
    </p>
    <p>
      &lt;/bean&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1470359698962" FOLDED="true" ID="ID_655844904" MODIFIED="1470636770123" TEXT="domain">
<node CREATED="1470359860844" FOLDED="true" ID="ID_1560190144" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-failedmsgmd-java" MODIFIED="1470388606532" TEXT="FailedMsgMd.java">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1470360353940" ID="ID_221160667" MODIFIED="1470360833233" TEXT="&#x4e00;&#x4e2a;&#x53ef;&#x53d1;&#x9001;&#x6d88;&#x606f;&#x5fc5;&#x987b;&#x6709;&#x7684;&#x51e0;&#x4e2a;&#x5916;&#x90e8;&#x5b57;&#x6bb5;">
<node CREATED="1470360372650" ID="ID_851095552" MODIFIED="1470360770358">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28040;&#36153;<font color="#0033cc">&#32452;</font>&#21517;&#31216;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1470360382636" ID="ID_1625071167" MODIFIED="1470360785838">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28040;&#36153;&#32773;<font color="#0033cc">&#32452;</font>&#32534;&#21495;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1470360447938" ID="ID_1123323842" MODIFIED="1470360799149">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28040;&#36153;<font color="#006600">&#32773;</font>Id
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1470360536729" ID="ID_1173598368" MODIFIED="1470360813318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#006666">&#38431;&#21015;</font>&#21517;&#31216;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1470360664567" ID="ID_812274470" MODIFIED="1470360671864" TEXT="&#x5206;&#x914d;&#x4e2d;&#x5fc3;Id"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1470388449124" ID="ID_1451792036" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-queuemd-java" MODIFIED="1470391788267" TEXT="QueueMd.java">
<node CREATED="1470388651246" ID="ID_1589122672" MODIFIED="1470388721591">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35774;&#23450;&#20102;&#38431;&#21015;&#30340;&#21508;&#31181;&#23646;&#24615;&#65292;&#26681;&#25454;&#36825;&#20123;&#23646;&#24615;&#20915;&#23450;&#20102;
    </p>
    <p>
      &#22914;&#20309;&#35813;&#38431;&#21015;&#22788;&#29702;&#30340;&#28040;&#24687;&#30340;&#21508;&#31181;&#37197;&#32622;
    </p>
  </body>
</html></richcontent>
<node CREATED="1470388738467" ID="ID_561917376" MODIFIED="1470388771712" TEXT="&#x8be5;&#x961f;&#x5217;&#x4e2d;&#x7684;&#x6d88;&#x606f;&#x662f;&#x5426;&#x8981;&#x8ffd;&#x8e2a;"/>
<node CREATED="1470388773684" ID="ID_372665874" MODIFIED="1470388799930" TEXT="&#x8be5;&#x961f;&#x5217;&#x4e2d;&#x6d88;&#x606f;&#x88ab;&#x51e0;&#x4e2a;&#x7ebf;&#x7a0b;&#x63d0;&#x53d6;&#x4ee5;&#x53ca;&#x88ab;&#x51e0;&#x4e2a;&#x7ebf;&#x7a0b;&#x5904;&#x7406;&#x7b49;"/>
<node CREATED="1470388837540" ID="ID_1359342156" MODIFIED="1470388935186" TEXT="&#x5404;&#x79cd;&#x541e;&#x5410;&#x7387;&#x7684;&#x7edf;&#x8ba1;&#x53c2;&#x6570;&#x7b49;"/>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1470388860748" ID="ID_1880357937" MODIFIED="1470388892188" TEXT="&#x6545;&#x800c;&#x8981;&#x91cd;&#x70b9;&#x7814;&#x7a76;&#x8be5;&#x7c7b;&#x4ee5;&#x53ca;&#x4e0e;&#x4e4b;&#x76f8;&#x5173;&#x7c7b;&#x7684;&#x5904;&#x7406;&#x903b;&#x8f91;"/>
</node>
</node>
<node CREATED="1470363835755" ID="ID_134193828" MODIFIED="1470626841598" TEXT="&#x6d89;&#x53ca;&#x8868;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#37324;&#25152;&#26377;&#34920;&#30340;&#21508;&#23383;&#27573;&#35828;&#26126;&#37117;&#33021;&#22312;domain&#19979;&#30340;&#21508;***Md.java&#20013;&#25214;&#21040;&#23545;&#24212;&#35828;&#26126;
    </p>
  </body>
</html>
</richcontent>
<node COLOR="#9900cc" CREATED="1470363941704" ID="ID_287506335" MODIFIED="1470624406412" TEXT="CSL_CUSTOMER_GROUP">
<node CREATED="1470364070670" ID="ID_716769071" MODIFIED="1470364107301" TEXT="&#x6d88;&#x8d39;&#x8005;&#x7ec4;&#x4e3b;&#x8981;&#x662f;&#x6d89;&#x53ca;&#x5177;&#x4f53;&#x7684;&#x8d1f;&#x8d23;&#x4eba;&#xff0c;&#x7528;&#x4e8e;&#x62a5;&#x8b66;&#x901a;&#x77e5;&#x76f8;&#x5173;&#x4eba;&#x5458;"/>
</node>
<node CREATED="1470364454675" ID="ID_552023965" MODIFIED="1470364464556" TEXT="CSL_FAILED_MSG">
<node CREATED="1470364535557" ID="ID_808002981" MODIFIED="1470364578284" TEXT="&#x5173;&#x952e;&#x8bb0;&#x5f55;&#x8be5;&#x6d88;&#x606f;&#x54ea;&#x4e2a;&#x5206;&#x53d1;&#x4e2d;&#x5fc3;&#x53d1;&#x9001;&#x7ed9;&#x54ea;&#x4e2a;&#x6d88;&#x8d39;&#x8005;&#x5931;&#x8d25;&#x53ca;&#x5176;&#x539f;&#x56e0;"/>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1470365429962" ID="ID_244207119" MODIFIED="1470388171447" TEXT="CSL_PERF_MONITOR_RECORD">
<node CREATED="1470365466808" ID="ID_732089122" MODIFIED="1470365615416" TEXT="&#x6027;&#x80fd;&#x76d1;&#x63a7;&#xff0c;&#x76d1;&#x63a7;&#x67d0;&#x4e2a;&#x961f;&#x5217;&#x6240;&#x53d1;&#x9001;&#x6d88;&#x606f;&#x7684;&#x7edf;&#x8ba1;&#x60c5;&#x51b5;&#xff0c;&#xa;&#x6bd4;&#x5982;&#xff0c;&#x5c0f;&#x4e8e;50&#x6beb;&#x79d2;&#x7684;&#x6570;&#x91cf;&#xff0c;&#x5927;&#x4e8e;1&#x79d2;&#x7684;&#x6d88;&#x606f;&#x6570;&#x91cf;&#x7b49;&#x7b49;"/>
</node>
<node CREATED="1470365263940" FOLDED="true" ID="ID_194915920" MODIFIED="1470624047942" TEXT="&#x76d1;&#x542c;&#x670d;&#x52a1;&#x7c7b;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#20960;&#20010;&#34920;&#37117;&#26159;&#35760;&#24405;&#26576;&#20010;&#26381;&#21153;&#22120;&#21644;&#31471;&#21475;&#30340;&#24212;&#29992;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#19968;&#33324;&#37117;&#26377;&#20010;system_Status,manual_Status&#26631;&#24535;&#20195;&#34920;&#35813;&#26381;&#21153;&#30446;&#21069;&#29366;&#24577;
    </p>
  </body>
</html></richcontent>
<node CREATED="1470364641044" ID="ID_84664787" MODIFIED="1470364660900" TEXT="CSL_MSG_BODY_CACHE">
<node CREATED="1470364720320" ID="ID_874601357" MODIFIED="1470364793838" TEXT="&#x5b57;&#x6bb5;&#x4ec5;&#x6709;ip,port,system_status,manual_status,size&#xff0c;&#x540c;&#x4e8e;distributer,exchanger,&#x662f;&#x4e2a;&#x5355;&#x72ec;&#x670d;&#x52a1;&#x5e94;&#x7528;&#x7684;&#x914d;&#x7f6e;"/>
<node CREATED="1470364894181" ID="ID_841735833" MODIFIED="1470364903412" TEXT="redis&#x670d;&#x52a1;&#x5668;?"/>
</node>
<node CREATED="1470364933891" ID="ID_121943438" MODIFIED="1470364955204" TEXT="CSL_MSG_QUEUE_CACHE">
<node CREATED="1470364963430" ID="ID_1779278105" MODIFIED="1470364982660" TEXT="&#x8868;&#x7ed3;&#x6784;&#x5b8c;&#x5168;&#x540c;&#x4e8e;CSL_MSG_BODY_CACHE"/>
<node CREATED="1470364984970" ID="ID_1412347532" MODIFIED="1470364990476" TEXT="&#x4e5f;&#x662f;redis&#xff1f;"/>
</node>
<node CREATED="1470365097519" ID="ID_1188927563" MODIFIED="1470365112811" TEXT="CSL_MSG_STORAGE">
<node CREATED="1470364963430" ID="ID_561530468" MODIFIED="1470364982660" TEXT="&#x8868;&#x7ed3;&#x6784;&#x5b8c;&#x5168;&#x540c;&#x4e8e;CSL_MSG_BODY_CACHE"/>
<node CREATED="1470365128997" ID="ID_735092409" MODIFIED="1470365225398" TEXT="&#x4e5f;&#x662f;redis?"/>
</node>
<node CREATED="1470364217086" ID="ID_72169839" MODIFIED="1470364230004" TEXT="CSL_DISTRIBUTER">
<node CREATED="1470364256073" ID="ID_1624943357" MODIFIED="1470364301037" TEXT="&#x5173;&#x952e;&#x53c2;&#x6570;&#x5c31;&#x662f;&#x76d1;&#x542c;&#x7684;&#x7aef;&#x53e3;&#xff0c;&#x5065;&#x5eb7;&#x68c0;&#x67e5;&#x7aef;&#x53e3;&#x548c;&#x5730;&#x5740;"/>
</node>
<node CREATED="1470364334569" ID="ID_469286795" MODIFIED="1470364343124" TEXT="CSL_EXCHANGER">
<node CREATED="1470364345795" ID="ID_1725984967" MODIFIED="1470364377366" TEXT="&#x5173;&#x952e;&#x53c2;&#x6570;&#x540c;&#x4e8e;distributer&#xff0c;&#x4f46;&#x591a;&#x4e2a;manual_status&#x5c1a;&#x4e0d;&#x77e5;&#x4f55;&#x7528;"/>
</node>
<node CREATED="1470365721713" ID="ID_699917669" MODIFIED="1470388167114" TEXT="CSL_PRODUCER">
<node CREATED="1470364963430" ID="ID_116609699" MODIFIED="1470364982660" TEXT="&#x8868;&#x7ed3;&#x6784;&#x5b8c;&#x5168;&#x540c;&#x4e8e;CSL_MSG_BODY_CACHE"/>
</node>
<node CREATED="1470363847898" ID="ID_78233494" MODIFIED="1470363859781" TEXT="CSL_CUSTOMER">
<node CREATED="1470364000982" ID="ID_1749184607" MODIFIED="1470364067397" TEXT="&#x5177;&#x4f53;&#x7684;&#x6d88;&#x606f;&#x6d88;&#x8d39;&#x8005;&#xff0c;&#x6240;&#x6709;&#x53c2;&#x6570;&#x6d89;&#x53ca;&#x76d1;&#x542c;&#x7aef;&#x53e3;&#xff0c;&#x5730;&#x5740;&#x7b49;&#x5177;&#x4f53;&#x63a5;&#x6536;&#x6d88;&#x606f;&#x7684;&#x8bbe;&#x7f6e;"/>
</node>
<node CREATED="1470391634847" ID="ID_1704669926" MODIFIED="1470391648183" TEXT="CSL_TRACE_STORAGE">
<node CREATED="1470391653070" ID="ID_1935624464" MODIFIED="1470391664071" TEXT="ip ,port &#x76d1;&#x542c;&#x670d;&#x52a1;&#x5668;&#x914d;&#x7f6e;"/>
</node>
</node>
<node CREATED="1470388204841" FOLDED="true" ID="ID_1847773264" MODIFIED="1470626846363" TEXT="Queue&#x7c7b;&#x76f8;&#x5173;">
<node CREATED="1470388294816" ID="ID_1318050642" MODIFIED="1470388304315" TEXT="CSL_QUEUE"/>
<node CREATED="1470389365887" ID="ID_984740154" MODIFIED="1470389495254" TEXT="CSL_QUEUE_CUSTOMER">
<node CREATED="1470389381192" ID="ID_1963097487" MODIFIED="1470389491936">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      queue_Nm&#21644;customer_Id&#30340;&#19968;&#20010;&#31616;&#21333;&#20851;&#32852;&#34920;
    </p>
    <p>
      
    </p>
    <p>
      &#20195;&#34920;&#35813;<font color="#0033cc">&#28040;&#36153;&#32773;</font><font color="#006666">&#25910;&#21040;&#30340;&#28040;&#24687;</font>&#26469;&#33258;&#21738;&#20010;<font color="#990099">&#38431;&#21015;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1470389525676" ID="ID_934993412" MODIFIED="1470389969921" TEXT="CSL_QUEUE_CUSTOMER_GROUP">
<node CREATED="1470390074480" ID="ID_1902802195" MODIFIED="1470390169284" TEXT="&#x8bb0;&#x5f55; &#x6d88;&#x8d39;&#x8005;&#x7ec4; &#x4e0e; &#x961f;&#x5217;&#x7684;&#x5173;&#x7cfb;&#xff0c;&#x591a;&#x662f;&#x7528;&#x4e8e;&#x67e5;&#x8be2;&#x76f8;&#x5173;&#xa;&#x62a5;&#x8b66;&#x4eba;&#x7b49;&#x4fe1;&#x606f;&#xff0c;&#x4e0e;&#x5177;&#x4f53;&#x63a5;&#x6536;&#x6d88;&#x606f;&#x6ca1;&#x591a;&#x5927;&#x5173;&#x7cfb;"/>
</node>
<node CREATED="1470390184352" ID="ID_1343253927" MODIFIED="1470390197889" TEXT="CSL_QUEUE_DISTRIBUTER">
<node CREATED="1470390202847" ID="ID_1721183232" MODIFIED="1470390283846">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      queue_Nm&#21644;distributer_Id&#30340;&#20851;&#32852;&#65292;
    </p>
    <p>
      &#26597;&#35810;&#35813;&#38431;&#21015;&#19982;&#37027;&#20123;&#20998;&#21457;&#20013;&#24515;&#20851;&#32852;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1470390316893" ID="ID_1526536074" MODIFIED="1470390329959" TEXT="CSL_QUEUE_EXCHANGER">
<node CREATED="1470390342650" ID="ID_90955850" MODIFIED="1470390369345" TEXT="queue_Nm with  exchanger_Id"/>
</node>
<node CREATED="1470390442901" ID="ID_1210612683" MODIFIED="1470390473055" TEXT="CSL_QUEUE_MSG_BODY_CACHE">
<node CREATED="1470390489569" ID="ID_1422394501" MODIFIED="1470390506537" TEXT="queue_Nm with msgBodyCache_Id"/>
</node>
<node CREATED="1470390544406" ID="ID_1242456619" MODIFIED="1470390577825" TEXT="CSL_QUEUE_MSG_QUEUE_CACHE">
<node CREATED="1470390585365" ID="ID_1790890589" MODIFIED="1470390602649" TEXT="queue_Nm with msgQueueCache_Id"/>
</node>
<node CREATED="1470391534330" ID="ID_1837608922" MODIFIED="1470391547198" TEXT="CSL_QUEUE_MSG_STORAGE">
<node CREATED="1470391552451" ID="ID_1809229514" MODIFIED="1470391566223" TEXT="queue_Nm with msgStroage_Id"/>
</node>
<node CREATED="1470391583149" ID="ID_1131525716" MODIFIED="1470391598375" TEXT="CSL_QUEUE_TRACE_STORAGE">
<node CREATED="1470391601790" ID="ID_1595212466" MODIFIED="1470391617703" TEXT="queue_Nm with traceStorage_Id"/>
</node>
</node>
<node COLOR="#ff3333" CREATED="1470626855761" ID="ID_1037128436" MODIFIED="1470626897345" TEXT="CSL_AXL_GROUP_NUM">
<node CREATED="1470626915928" ID="ID_1126090641" MODIFIED="1470626955106" TEXT="&#x5c31;&#x4e00;&#x4e2a;&#x5b57;&#x6bb5;GROUP_NUM long&#x578b;"/>
</node>
</node>
</node>
<node CREATED="1470624231227" ID="ID_126198473" MODIFIED="1470624251133" TEXT="alarm.conf">
<node COLOR="#9900cc" CREATED="1470624259152" ID="ID_1440718647" MODIFIED="1470624493188" TEXT="ConsumerGroupAlarmParam">
<node COLOR="#338800" CREATED="1470624276577" ID="ID_186123519" MODIFIED="1470624971630" TEXT="&#x6211;&#x4eec;&#x786e;&#x8ba4;&#x4e86;&#x6d88;&#x8d39;&#x8005;&#x7ec4;&#x662f;&#x7528;&#x4e8e;&#x62a5;&#x8b66;&#x7684;&#xff0c;&#x5fc5;&#x987b;&#x6709;&#x7684;&#xff0c;&#xa;&#x6539;&#x7ec4;&#x8d1f;&#x8d23;&#x7ba1;&#x7406;&#x76f8;&#x5173;&#x7684;&#x6d88;&#x8d39;&#x8005;&#xff0c;&#x8fd9;&#x91cc;&#x8bbe;&#x7f6e;&#x5404;&#x7c7b;&#x62a5;&#x8b66;&#x53c2;&#x6570;&#x7684;&#x9608;&#x503c;"/>
</node>
</node>
<node CREATED="1470626561257" FOLDED="true" ID="ID_1677285771" MODIFIED="1470636772548" TEXT="init">
<node CREATED="1470636668635" ID="ID_87120954" MODIFIED="1470636739958" TEXT="ConsoleInitExecuter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21021;&#22987;&#21270;&#65292;&#21482;&#25191;&#34892;&#19968;&#27425;&#65292;&#30446;&#21069;&#20063;&#21482;&#25191;&#34892;&#20102;GroupAuxiliaryConsoleInit&#30340;initialize&#26041;&#27861;&#19968;&#27425;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1470626582023" ID="ID_688615701" MODIFIED="1470636465401" TEXT="GroupAuxiliaryConsoleInit">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;&#26524;CSL_AXL_GROUP_NUM<font color="#cc0000">&#20026;&#31354;</font>&#65292;&#21017;&#28155;&#21152;63&#26465;&#35760;&#24405;&#65292;&#20381;&#27425;&#26159;2&#30340;i&#27425;&#26041;&#30340;&#32467;&#26524;&#20540;&#23384;&#20837;group_num&#23383;&#27573;&#12290;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1470635751465" ID="ID_336618729" MODIFIED="1470636125147">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i:0-&gt;63,1L&lt;&lt;i
    </p>
    <p>
      &#30456;&#24403;&#20110;2&#30340;i&#27425;&#26041;&#22788;&#29702;&#65292;&#20027;&#35201;&#29992;&#20110;&#21518;&#32493;&#30340;&quot;&#20301;&#19982;&quot;&#36816;&#31639;&#65292;&#27599;&#20010;group_num&#23545;&#24212;&#19968;&#20010;customergroup? or queue_Nm?
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccffff" CREATED="1470636775775" ID="ID_1270837335" MODIFIED="1470637339001" TEXT="resources:bean xml / sql xml">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20379;spring&#28608;&#27963;notify console&#30340;bean,&#36825;&#26159;<font color="#3333ff">&#21551;&#21160;notify console&#30340;&#21807;&#19968;&#20837;&#21475;&#22788;</font>&#65281;
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
<node CREATED="1470636849585" ID="ID_994318406" MODIFIED="1470636849585" TEXT=""/>
</node>
</node>
</node>
</map>
