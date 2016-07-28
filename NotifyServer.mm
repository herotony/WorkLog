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
<node CREATED="1469608274882" ID="ID_1288985491" MODIFIED="1469608280856" TEXT="distribute">
<node CREATED="1469608287752" ID="ID_1211567719" MODIFIED="1469608292473" TEXT="Distribute"/>
<node CREATED="1469608294381" ID="ID_530536870" LINK="https://gist.github.com/herotony/f93492ef8b3fa60f77922d69c86ef7c4/#file-distributeget-java" MODIFIED="1469611092858" TEXT="DistributeGet">
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
</html>
</richcontent>
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
</html>
</richcontent>
<node CREATED="1469674237888" ID="ID_594726598" MODIFIED="1469691699260" TEXT="1&#x3001;&#x7ebf;&#x7a0b;&#x6700;&#x591a;&#x6302;&#x8d77;10&#x6beb;&#x79d2;&#xff0c;&#x5173;&#x952e;&#x4ec0;&#x4e48;&#x60c5;&#x51b5;&#x624d;&#x4f1a;&#x6302;&#x8d77;&#xff1f;">
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
      &#160;&#160;&#160;&#160;while (!executeBlockingQueueBatchCount.offer(1, 1000, TimeUnit.MILLISECONDS))
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
<node CREATED="1469691702079" ID="ID_755648254" MODIFIED="1469692530882" TEXT="2&#x3001;executeBlockingQueue&#x63d0;&#x53d6;messageDm">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#006600">updatingCount</font>.incrementAndGet() if messageDm is valid
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1469692844159" ID="ID_1074828555" MODIFIED="1469697676929" TEXT="6&#x3001;&#x904d;&#x5386;&#x63d0;&#x53d6;...">
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
</html>
</richcontent>
<icon BUILTIN="help"/>
<node CREATED="1469697081688" ID="ID_1671403402" MODIFIED="1469697110814" TEXT="netQueueAgent.getChildQueueAgent"/>
<node CREATED="1469697127415" ID="ID_1538603109" MODIFIED="1469697615977" TEXT="while {...netGroupQueueAgent.getConnectAgent()...}"/>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1469614878603" ID="ID_649672348" MODIFIED="1469674247530" TEXT="netConnectAgent.send">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      netConnectAgent.send&#36127;&#36131;&#21457;&#36865;&#28040;&#24687;&#32473;&#28040;&#36153;&#32773;
    </p>
  </body>
</html>
</richcontent>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1469697331462" ID="ID_527230530" MODIFIED="1469697630111" TEXT="resultQueueNew |= executeQueueNum;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#26159;&#24178;&#21861;&#28404;?
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
