<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1469608101625" ID="ID_1514670679" MODIFIED="1469608260284" TEXT="NotifyServer">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      com.tuan.notifyserver
    </p>
  </body>
</html></richcontent>
<node CREATED="1469608227714" ID="ID_928773600" MODIFIED="1469608257903" POSITION="right" TEXT="core">
<node CREATED="1469608274882" FOLDED="true" ID="ID_1288985491" MODIFIED="1470305550431" TEXT="distribute">
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
</html>
</richcontent>
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
</html>
</richcontent>
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
<node CREATED="1470305248727" ID="ID_1148778242" MODIFIED="1470306156558" POSITION="left" TEXT="console">
<node CREATED="1470305264060" ID="ID_1361829475" MODIFIED="1470305267968" TEXT="vo">
<node CREATED="1470305270957" ID="ID_1857442554" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-queuedistributervo-java" MODIFIED="1470305383603" TEXT="QueueDistributeVo"/>
</node>
<node CREATED="1470305610426" ID="ID_1331409421" MODIFIED="1470305614976" TEXT="dao">
<node CREATED="1470305620318" ID="ID_754826342" MODIFIED="1470305625537" TEXT="impl">
<node CREATED="1470305636144" ID="ID_724713266" MODIFIED="1470305651344" TEXT="QueueDistributerDaoImpl"/>
</node>
</node>
<node CREATED="1470305711692" ID="ID_915538262" MODIFIED="1470305720273" TEXT="persistence">
<node BACKGROUND_COLOR="#ccffcc" COLOR="#000000" CREATED="1470305726523" ID="ID_1887032770" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-dynamicsqltemplate-java" MODIFIED="1470305932562" TEXT="DynamicSqlTemplate">
<node CREATED="1470305948662" ID="ID_788936059" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-dynamicsqltemplateimpl-java" MODIFIED="1470306140730" TEXT="DynamicSqlTemplateImpl">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19968;&#22871;&#22522;&#20110;Hibernate&#30340;&#21160;&#24577;&#25191;&#34892;sql&#27169;&#26495;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
