<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1472694016229" ID="ID_1380030112" MODIFIED="1490771981266" TEXT="&#x652f;&#x4ed8;&#x7ec4;">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p type="text/css">
      com.tuan.notifyserver
    </p>
    <p>
      
    </p>
    <p>
      CTRL+G&#21487;&#20197;&#25628;&#32034;&#19979;&#19968;&#20010;&#21305;&#37197;&#39033;&#12290;&#65288;CTRL+F&#65289;&#30340;&#21518;&#32493;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#009933">&#26412;&#39033;&#30446;&#20013;&#32467;&#26500;&#65292;&#22810;&#37319;&#29992;interface + abstract + realimpl&#30340;&#26550;&#26500; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#009933">&#21363;interface&#23450;&#20041;&#25509;&#21475; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#009933">abstract&#23450;&#20041;&#19994;&#21153;&#27969;&#31243;&#65292;&#24182;&#30041;&#19979;&#33509;&#24178;&#20851;&#38190;&#30340;abstract&#26680;&#24515;&#22788;&#29702;&#20379;realimpl&#21435;&#32487;&#25215;&#24182;&#23454;&#29616;&#12290;&#160;</font><font color="#006633">&#160;</font>
    </p>
    <p>
      
    </p>
    <p>
      &#28857;&#20987;&#32418;&#33394;&#38142;&#25509;&#21551;&#21160;&#24037;&#20855;&#29992;&#26469;&#30699;&#27491;&#65292;&#26041;&#24335;&#24456;&#31616;&#21333;&#65292;&#23558;&#20081;&#30721;&#25335;&#36125;&#36827;&#36755;&#20837;&#26694;&#65292;&#28857;&#20987;&#22788;&#29702;&#25353;&#38062;&#65292;&#19979;&#26041;&#27983;&#35272;&#22120;&#21487;&#30475;&#21040;&#27491;&#24120;&#20869;&#23481;&#65292;&#25335;&#36125;&#22238;&#26469;&#21363;&#21487;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#30830;&#23450;&#20102;&quot;&#38271;&#33410;&#28857;&quot;&#21487;&#20197;&#26367;&#20195;&#22791;&#27880;&#65292;&#20294;&#29992;&#38271;&#33410;&#28857;&#21069;&#65292;&#35831;&#21153;&#24517;&#36755;&#20837;&#36739;&#23569;&#23383;&#31526;&#65292;&#20445;&#23384;&#21518;&#65292;&#28982;&#21518;&#20877;&#28857;&#24320;&#8220;&#38271;&#33410;&#28857;&quot;&#25165;&#33021;&#36827;&#34892;html&#31561;&#39068;&#33394;&#26631;&#27880;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000">&#25214;&#21040;&#21407;&#22240;&#20102;&#65306;&#22791;&#27880;&#25110;&#32773;&#21482;&#35201;&#29992;&#21040;&#20102;html&#30340;&#22320;&#26041;&#19968;&#23450;&#19981;&#35201;&#29992;&#33521;&#25991;&#24341;&#21495;&#65292;&#20882;&#21495;&#31561;&#29305;&#27530;&#23383;&#31526;&#21543;&#65292;&#21542;&#21017;&#24517;&#23450;&#20081;&#30721;&#20102;&#12290;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482730803024" ID="ID_1736184661" MODIFIED="1484279221862" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2016
    </p>
  </body>
</html></richcontent>
<node CREATED="1482730698440" FOLDED="true" ID="ID_198244194" MODIFIED="1486365671210">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jedis
    </p>
  </body>
</html></richcontent>
<node CREATED="1473649150839" FOLDED="true" ID="ID_292738889" MODIFIED="1482884863029">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20027;&#31449;&#24182;&#21457;&#38145;&#26426;&#21046;
    </p>
    <p>
      
    </p>
    <p>
      &#22522;&#20110;redis
    </p>
  </body>
</html></richcontent>
<node CREATED="1473649191071" ID="ID_427966017" MODIFIED="1475029831483" TEXT="&#x5e94;&#x7528;&#x573a;&#x666f;">
<node CREATED="1473649373014" ID="ID_854254399" MODIFIED="1473649540923">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25353;&#23581;&#35797;&#27425;&#25968;<font color="#0033cc">&#21462;&#38145;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473649196876" ID="ID_1378498456" MODIFIED="1473649656945">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#660066">DLock</font></b>&#160;dLock;
    </p>
    <p>
      long lockTime = 60*1000;
    </p>
    <p>
      int lockTryTimes =1; //&#21482;&#23581;&#35797;&#21462;&#19968;&#27425;&#38145;
    </p>
    <p>
      <font color="#009933">LockResult&lt;?&gt;</font>&#160;lockResult =<font color="#660066">dLock</font>.<font color="#0033cc">lockManualByTimes</font>(<font color="#990099">distributeKey</font>,lockTime,lockTryTimes);
    </p>
    <p>
      
    </p>
    <p>
      if(<font color="#009933">lockResult</font>.<font color="#006666">getCode() </font>!= 0){//&#21462;&#38145;&#22833;&#36133;&#65281;}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473649504128" ID="ID_198560107" MODIFIED="1473649581951">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#009933">&#35299;&#38145;</font>&#65292;&#19968;&#33324;&#24517;&#22312;try/catch/finally&#30340;<font color="#ff3300">finally&#22359;</font>&#20013;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473649577966" ID="ID_1547846446" MODIFIED="1473649644688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if(lockResult!=null &amp;&amp; lockResult.getCode ==0)
    </p>
    <p>
      &#160;&#160;&#160;dLock.<font color="#cc0000">unlockManual</font>(<font color="#990099">distributerKey</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473650039612" ID="ID_999571497" MODIFIED="1473673444250" TEXT="cozy-common-lock-redis.jar">
<node CREATED="1473650182377" FOLDED="true" ID="ID_1563670027" MODIFIED="1482364565023" TEXT="interface">
<node CREATED="1473650190720" ID="ID_1453584469" MODIFIED="1473650194138" TEXT="DLock"/>
<node CREATED="1473650494413" ID="ID_424867507" MODIFIED="1473650508595" TEXT="ConnectionFactory">
<node CREATED="1473650571031" ID="ID_905801232" MODIFIED="1473650578242" TEXT="makeLockCache"/>
<node CREATED="1473650580132" ID="ID_1596311304" MODIFIED="1473650598573" TEXT="makeLockCache(PoolInfoBean)">
<node CREATED="1473662578658" ID="ID_1032333150" MODIFIED="1475029831489" TEXT="PoolInfoBean">
<node CREATED="1473662599090" ID="ID_829566831" MODIFIED="1473662611159" TEXT="host: ip or &#x57df;&#x540d;"/>
<node CREATED="1473662612840" ID="ID_1187602838" MODIFIED="1473662624646" TEXT="port: &#x7aef;&#x53e3;"/>
<node CREATED="1473662627414" ID="ID_283466111" MODIFIED="1473662653800" TEXT="url:&#x6c60;&#x5b50;&#x6807;&#x8bc6; = host+port"/>
<node CREATED="1473662658483" ID="ID_1953891214" MODIFIED="1473662663272" TEXT="isCanUsed"/>
</node>
</node>
<node CREATED="1473650603984" ID="ID_522118375" MODIFIED="1473650621673" TEXT="isAvailable(PoolInfoBean)"/>
</node>
</node>
<node CREATED="1473650196082" FOLDED="true" ID="ID_1609072683" MODIFIED="1475030270663" TEXT="implement">
<node CREATED="1473650224188" ID="ID_94512994" MODIFIED="1473650230845" TEXT="DLockImpl"/>
<node CREATED="1473650511516" ID="ID_1885791459" MODIFIED="1473650523123" TEXT="RedisConnectionFactory">
<node CREATED="1473662745827" ID="ID_726515104" MODIFIED="1473662752943" TEXT="makeLockCache">
<node CREATED="1473662754470" ID="ID_1992131929" MODIFIED="1473662797204">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;Jedis jedis = getConnection();
    </p>
  </body>
</html></richcontent>
<node CREATED="1473662835423" ID="ID_436004385" MODIFIED="1475029831498" TEXT="FailOver&#x6545;&#x969c;&#x81ea;&#x52a8;&#x5207;&#x6362;&#x7b56;&#x7565;&#x5de5;&#x5177;">
<node CREATED="1473663106742" ID="ID_703918514" MODIFIED="1473663150447" TEXT="isFailOver&#x4ee3;&#x8868;&#x662f;&#x5426;&#x652f;&#x6301;FailOver&#xff0c;&#x5373;&#x65e0;&#x6545;&#x969c;&#x5207;&#x6362;"/>
<node CREATED="1473663163642" ID="ID_1425107448" MODIFIED="1473663205703" TEXT="List&lt;PoolInfoBean&gt; poolStatusList,&#x8fde;&#x63a5;&#x6c60;&#x72b6;&#x6001;&#x5217;&#x8868;"/>
<node CREATED="1473663217317" ID="ID_147913593" MODIFIED="1473663221752" TEXT="poolSize"/>
<node CREATED="1473663222626" ID="ID_1333595643" MODIFIED="1473663247055" TEXT="primaryIndex,&#x5f53;&#x524d;&#x4e3b;&#x6c60;&#x5b50;"/>
<node CREATED="1473663557973" ID="ID_1027370218" MODIFIED="1473663609372">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#30340;&#65306;&#19968;&#20010;&#31616;&#21333;&#30340;&#31649;&#29702;PoolInfoBean&#30340;&#31867;
    </p>
    <p>
      
    </p>
    <p>
      &#29992;&#20110;&#26816;&#32034;&#12289;&#35774;&#32622;&#12289;&#26597;&#35810;&#26377;&#25928;&#30340;PoolInfoBean&#32780;&#24050;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473662763797" ID="ID_1503411180" MODIFIED="1473662782414" TEXT="2&#x3001;new RedisLockCache(jedis,this)"/>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1473673451075" ID="ID_452242232" MODIFIED="1473673476068" TEXT="initialPool&#x5f88;&#x5173;&#x952e;">
<node CREATED="1473673478902" ID="ID_828990800" MODIFIED="1473673494788" TEXT="&#x521d;&#x59cb;&#x5316;&#x8fde;&#x63a5;&#x5230;redis&#x7684;&#x6c60;"/>
</node>
</node>
</node>
<node CREATED="1473650689895" ID="ID_1931263681" MODIFIED="1473650692643" TEXT="other">
<node CREATED="1473650273246" FOLDED="true" ID="ID_1028595152" MODIFIED="1475030302959" TEXT="LockResult">
<node CREATED="1473650291730" ID="ID_1364349760" MODIFIED="1473650425246">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import java.io.Serializable;
    </p>
    <p>
      
    </p>
    <p>
      public class LockResult &lt;T&gt; implements Serializable{
    </p>
    <p>
      private static final long serialVersionUID = -7891440771293974054L;
    </p>
    <p>
      <b><font color="#006600">/*</font><font color="#0033cc">0,&#25104;&#21151;</font><font color="#006600">&#65307;&#20854;&#23427;&#24453;&#23450;*/</font></b>
    </p>
    <p>
      public int <font color="#0033cc">code</font>;
    </p>
    <p>
      /** &#25551;&#36848;&#160;&#160;*/
    </p>
    <p>
      public String description;
    </p>
    <p>
      /** &#19994;&#21153;&#36820;&#22238;&#23545;&#35937;&#160;&#160;*/
    </p>
    <p>
      <font color="#0033cc">public T result;</font>
    </p>
    <p>
      
    </p>
    <p>
      public LockResult(int code,String description,T result){
    </p>
    <p>
      super();
    </p>
    <p>
      this.code = code;
    </p>
    <p>
      this.description = description;
    </p>
    <p>
      this.result = result;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      public int getCode() {
    </p>
    <p>
      return code;
    </p>
    <p>
      }
    </p>
    <p>
      public void setCode(int code) {
    </p>
    <p>
      this.code = code;
    </p>
    <p>
      }
    </p>
    <p>
      public String getDescription() {
    </p>
    <p>
      return description;
    </p>
    <p>
      }
    </p>
    <p>
      public void setDescription(String description) {
    </p>
    <p>
      this.description = description;
    </p>
    <p>
      }
    </p>
    <p>
      public<b>&#160;<font color="#006600">T</font></b>&#160;<font color="#0033cc">getResult</font>() {
    </p>
    <p>
      return result;
    </p>
    <p>
      }
    </p>
    <p>
      public void <font color="#0033cc">setResult</font>(<b><font color="#006600">T</font></b>&#160;result) {
    </p>
    <p>
      this.result = result;
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473650697365" ID="ID_761976244" MODIFIED="1473650706380" TEXT="RedisDlockConfig"/>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1473673257411" ID="ID_1375454175" MODIFIED="1473673534861" TEXT="&#x8be5;&#x9501;&#x673a;&#x5236;&#x7684;redis&#x914d;&#x7f6e;&#x5199;&#x6b7b;&#x5728;&#x4ee3;&#x7801;&#x91cc;&#x4e86;&#xff0c;shit!">
<node BACKGROUND_COLOR="#99ff99" CREATED="1473673278917" ID="ID_1448612529" MODIFIED="1473673527301" TEXT="redis.55tuan.me:7380?timeout=30*1000"/>
<node CREATED="1473673315204" ID="ID_279898971" MODIFIED="1473673327827" TEXT="in AbstractDlockConfig"/>
<node BACKGROUND_COLOR="#ff99cc" CREATED="1473674688940" ID="ID_90315083" MODIFIED="1473674735652" TEXT="&#x6211;&#x5f04;&#x9519;&#x4e86;&#xff0c;&#x5728;mdpaygate-cache-impl-bean.xml&#x4e2d;&#x6709;&#x5355;&#x72ec;&#x914d;&#x7f6e;&#x51fa;&#x6765;&#x7684;dlockConfig"/>
</node>
</node>
<node CREATED="1472694045163" ID="ID_1130587513" MODIFIED="1472694053721" TEXT="mdtradecenter">
<node CREATED="1473066573935" ID="ID_493780406" MODIFIED="1473066580789" TEXT="&#x6570;&#x636e;&#x5e93;&#x5904;&#x7406;&#x6a21;&#x5f0f;"/>
</node>
<node CREATED="1472694032236" ID="ID_1260912116" MODIFIED="1472694038152" TEXT="mdfrontserver">
<node CREATED="1473066573935" ID="ID_1036565298" MODIFIED="1473066580789" TEXT="&#x6570;&#x636e;&#x5e93;&#x5904;&#x7406;&#x6a21;&#x5f0f;"/>
</node>
<node CREATED="1472694078828" ID="ID_101371554" MODIFIED="1472694082632" TEXT="mdtask">
<node CREATED="1473066573935" ID="ID_175032134" MODIFIED="1473066580789" TEXT="&#x6570;&#x636e;&#x5e93;&#x5904;&#x7406;&#x6a21;&#x5f0f;"/>
</node>
<node BACKGROUND_COLOR="#66ff66" CREATED="1473734185522" FOLDED="true" ID="ID_47046362" MODIFIED="1482364550125" TEXT="&#x65b9;&#x5f0f;&#x65b9;&#x6cd5;">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1473734197680" ID="ID_17049138" MODIFIED="1473734248675">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#29992;onenote&#25490;&#29256;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473734207893" ID="ID_135312101" MODIFIED="1473734332225">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#29992;&#21360;&#35937;&#31508;&#35760;&#36716;&#25442;&#20026;&#22270;&#29255;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473734222456" ID="ID_1534577137" MODIFIED="1473734262802">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;&#29992;freemind&#32452;&#32455;&#26550;&#26500;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1472694040313" ID="ID_589861280" MODIFIED="1481852462920" TEXT="mdpaygate">
<node CREATED="1473066573935" ID="ID_1020199487" MODIFIED="1473066580789" TEXT="&#x6570;&#x636e;&#x5e93;&#x5904;&#x7406;&#x6a21;&#x5f0f;"/>
<node BACKGROUND_COLOR="#99ff99" CREATED="1473299914657" FOLDED="true" ID="ID_1223111739" MODIFIED="1482884858901">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      service
    </p>
  </body>
</html></richcontent>
<node CREATED="1473299929166" ID="ID_1873389800" MODIFIED="1473643038780">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      impl
    </p>
    <p>
      &#25509;&#21475;&#23454;&#29616;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473299934571" ID="ID_35179078" MODIFIED="1473299974236" TEXT="TradeServiceImpl">
<node CREATED="1473299948374" ID="ID_403457848" MODIFIED="1473299959058" TEXT="createMobileParams"/>
<node CREATED="1473299975710" ID="ID_1852803542" MODIFIED="1473299983608" TEXT="createTradeNo"/>
</node>
</node>
<node CREATED="1473643015840" ID="ID_427646929" MODIFIED="1482364540751" TEXT="&#x63a5;&#x53e3;&#x5b9a;&#x4e49;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1473643411006" ID="ID_906423994" MODIFIED="1475029831071">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      TradeService
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#21019;&#24314;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#25903;&#20184;&#35831;&#27714;
      </li>
      <li>
        &#25509;&#25910;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#36890;&#30693;&#25509;&#21475;
      </li>
      <li>
        &#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#26597;&#35810;&#25509;&#21475;
      </li>
    </ul>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffff99" CREATED="1473643421631" ID="ID_1470068820" MODIFIED="1473644271534" TEXT="createMobileParams">
<node CREATED="1473643500524" ID="ID_1305735498" MODIFIED="1473643505829" TEXT="&#x5b9a;&#x4e49;">
<node CREATED="1473643510006" ID="ID_424745433" MODIFIED="1473643539972">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public <font color="#0033cc">CallResult&lt;Map&lt;String,String&gt;&gt;</font>&#160; createMobileParams(<font color="#660066">TradeVO</font>&#160;tradeVO, String secret);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1473643580317" ID="ID_1495652446" MODIFIED="1473644330582" TEXT="tradePayNotify">
<node CREATED="1473643591100" ID="ID_1072954253" MODIFIED="1473643596246" TEXT="&#x5b9a;&#x4e49;">
<node CREATED="1473643601016" ID="ID_1062166413" MODIFIED="1473643665012">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public <font color="#0033cc">CallResult&lt;TradeNotifyResult&gt; </font>tradePayNotify(
    </p>
    <p>
      <font color="#cc0000">PayTypeEnum</font>&#160;bankTypeEnum, Map&lt;String, String&gt; <font color="#006666">requestParams</font>,String requestUrl,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String ip,int notifyStatus) throws TuanRuntimeException;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473644201706" ID="ID_185322944" MODIFIED="1473644342003">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0033cc">processWeiFuTongScanPayResult</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473644235494" ID="ID_636103439" MODIFIED="1473644238990" TEXT="&#x5b9a;&#x4e49;">
<node CREATED="1473644240600" ID="ID_1756978548" MODIFIED="1473644252883">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public void processWeiFuTongScanPayResult(String commonScanPayResultString, String ip , String inputTradeNo);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1473643939673" ID="ID_594689279" MODIFIED="1473644282560" TEXT="closeTrade">
<node CREATED="1473643988340" ID="ID_1041891062" MODIFIED="1473643992519" TEXT="&#x5b9a;&#x4e49;">
<node CREATED="1473644007129" ID="ID_1740293524" MODIFIED="1473644036508">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public <font color="#0033cc">CallResult&lt;String&gt;</font>&#160;closeTrade(String <font color="#ff3300">tradeId</font>,int businessType,String secret);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473644111708" ID="ID_256557926" MODIFIED="1473644128549" TEXT="...&#x5176;&#x4ed6;">
<node CREATED="1473644130284" ID="ID_670333040" MODIFIED="1473644178436">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tradePayQueryBy<font color="#cc0000">TradeNo</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473644158191" ID="ID_1869483276" MODIFIED="1473644187586">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tradePayQueryBy<font color="#0033cc">TradeId</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1473643212402" FOLDED="true" ID="ID_1277502724" MODIFIED="1481852470662" TEXT="spring bean xml&#x914d;&#x7f6e;">
<node CREATED="1473643225824" ID="ID_73378328" MODIFIED="1475029831084" TEXT="mdpaygate-dubbo.xml">
<node CREATED="1473643271319" ID="ID_1453519399" MODIFIED="1473643372705">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
    </p>
    <p>
      &lt;beans xmlns=&quot;http://www.springframework.org/schema/beans&quot;
    </p>
    <p>
      xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns:dubbo=&quot;http://code.alibabatech.com/schema/dubbo&quot;
    </p>
    <p>
      xsi:schemaLocation=&quot;http://www.springframework.org/schema/beans
    </p>
    <p>
      http://www.springframework.org/schema/beans/spring-beans.xsd
    </p>
    <p>
      http://code.alibabatech.com/schema/dubbo&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      http://code.alibabatech.com/schema/dubbo/dubbo.xsd&quot;
    </p>
    <p>
      default-autowire=&quot;byName&quot;&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;!-- &#25903;&#20184;&#25509;&#21475; --&gt;
    </p>
    <p>
      &lt;dubbo:reference id=&quot;<b><font color="#660066">tradeService</font></b>&quot;
    </p>
    <p>
      interface=&quot;<font color="#006666">com.wowo.mdpaygate.service.</font><font color="#660066">TradeService</font>&quot; check=&quot;false&quot;
    </p>
    <p>
      version=&quot;1.0&quot; /&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;!-- &#36864;&#27454;&#25509;&#21475; --&gt;
    </p>
    <p>
      &lt;dubbo:reference id=&quot;<b><font color="#006600">refundService</font></b>&quot;
    </p>
    <p>
      interface=&quot;<font color="#006666">com.wowo.mdpaygate.service.</font><font color="#006600">RefundService</font>&quot; check=&quot;false&quot;
    </p>
    <p>
      version=&quot;1.0&quot; /&gt;
    </p>
    <p>
      
    </p>
    <p>
      &lt;/beans&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1473642746001" ID="ID_1950575455" MODIFIED="1473642829429" TEXT="&#x8d1f;&#x8d23;">
<node CREATED="1473642831154" ID="ID_104838692" MODIFIED="1473642837394" TEXT="&#x8ba2;&#x5355;&#x53c2;&#x6570;&#x7684;&#x751f;&#x6210;"/>
<node CREATED="1473642838677" ID="ID_1962340266" MODIFIED="1473642847359" TEXT="&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x7684;&#x66f4;&#x65b0;"/>
</node>
</node>
<node CREATED="1473237168608" ID="ID_29738871" MODIFIED="1481852497523" TEXT="&#x652f;&#x4ed8;&#x6d41;&#x7a0b;">
<node CREATED="1473835794197" FOLDED="true" ID="ID_269882459" MODIFIED="1482364585774" TEXT="5&#x6b65;">
<node CREATED="1473237176756" ID="ID_344807398" MODIFIED="1473835815590">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;<font color="#009933">newwap</font>-&gt;<font color="#660066">frontserver</font>&#65288;&#21019;&#24314;&#35746;&#21333;&#21495;&#65289;-&gt;<font color="#006633">tradecenter</font>&#65288;&#29983;&#25104;&#35746;&#21333;&#24182;&#20889;&#20837;&#25968;&#25454;&#24211;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473237297826" ID="ID_152306061" MODIFIED="1473835817877">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;tradecenter&#29983;&#25104;&#35746;&#21333;&#25104;&#21151;&#21518;&#65292;&#36820;&#22238;fronserver
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;frontserver&#32487;&#32493;&#35843;&#29992;paygate&#29983;&#25104;&#25509;&#21475;&#25152;&#38656;&#30340;&#25903;&#20184;&#21442;&#25968;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473237388008" ID="ID_1361393808" MODIFIED="1473835819955">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;frontserver&#25226;&#25903;&#20184;&#21442;&#25968;&#36890;&#36807;newwap&#36820;&#32473;&#23458;&#25143;&#31471;&#29992;&#20110;&#23458;&#25143;&#31471;&#23436;&#25104;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473237441231" ID="ID_1879423323" MODIFIED="1473835821403">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;&#23458;&#25143;&#31471;&#25903;&#20184;&#30340;&#31532;&#19977;&#26041;&#25509;&#21475;&#20250;&#36890;&#36807;&#22238;&#35843;paygate&#25509;&#21475;&#36890;&#30693;&#25903;&#20184;&#25104;&#21151;&#24182;&#23436;&#25104;&#21518;&#32493;&#29366;&#24577;&#21047;&#26032;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473321350215" ID="ID_465633433" MODIFIED="1473321364308" TEXT="&#x641c;&#x7d22;AbstractNotify"/>
</node>
<node CREATED="1473321382573" ID="ID_1176765549" MODIFIED="1473321402774" TEXT="5&#x3001;paygate&#x8c03;&#x7528;frontserver&#x6765;&#x5b8c;&#x6210;&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x66f4;&#x65b0;">
<node CREATED="1473321404676" ID="ID_848742019" MODIFIED="1473321412252" TEXT="paycallback.do"/>
</node>
</node>
<node CREATED="1473835826658" FOLDED="true" ID="ID_777148863" MODIFIED="1482364580846" TEXT="&#x8be6;&#x7ec6;&#x8bf4;&#x660e;">
<node CREATED="1473835858709" ID="ID_1214891478" MODIFIED="1476068116544">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver : com.wowo.<b><font color="#660066">mdfrontserver</font></b>.<font color="#000099">web</font><font color="#cc0000">.controller.trade.</font><font color="#336600">ShOrderController</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473836197463" ID="ID_1724087648" MODIFIED="1473836202839" TEXT="/create.do">
<node CREATED="1473836217238" ID="ID_913017427" MODIFIED="1473836309822">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return&#160;&#160;shOrderServiceAdapter.<font color="#000099">createShOrder</font>(<font color="#660066">orderParamModel</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473836205316" ID="ID_1220567706" MODIFIED="1473836211662" TEXT="/wftcreate.do"/>
</node>
<node CREATED="1473836610870" ID="ID_174701000" MODIFIED="1481162781044">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21442;&#25968;&#30340;&#37096;&#20998;&#37325;&#35201;&#23646;&#24615;&#35828;&#26126;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473836621753" ID="ID_826244738" MODIFIED="1476068157936" TEXT="ShOrderCreateParam">
<node CREATED="1473837155000" FOLDED="true" ID="ID_671134209" MODIFIED="1481162784393" TEXT="payType ">
<node CREATED="1473837168036" ID="ID_1138412187" MODIFIED="1473837182121" TEXT="0 , &#x4e0d;&#x7528;&#x7b2c;&#x4e09;&#x65b9;&#x652f;&#x4ed8;"/>
<node CREATED="1473837183953" ID="ID_1027042987" MODIFIED="1473837195416" TEXT="1&#xff0c;&#x652f;&#x4ed8;&#x5b9d;&#x7f51;&#x9875;&#x652f;&#x4ed8;"/>
<node CREATED="1473837197145" ID="ID_1197850042" MODIFIED="1473837203778" TEXT="2&#xff0c;&#x652f;&#x4ed8;&#x5b9d;&#x94b1;&#x5305;&#x652f;&#x4ed8;"/>
<node CREATED="1473837205008" ID="ID_966259890" MODIFIED="1473837215864" TEXT="3&#xff0c;&#x652f;&#x4ed8;&#x5b9d;&#x4e00;&#x952e;&#x652f;&#x4ed8;"/>
<node CREATED="1473837217613" ID="ID_1181061830" MODIFIED="1473837227698" TEXT="4&#xff0c;&#x8d22;&#x4ed8;&#x901a;&#x7f51;&#x9875;&#x652f;&#x4ed8;"/>
<node CREATED="1473837228718" ID="ID_518100470" MODIFIED="1473837264680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      6&#65292;&#24494;&#20449;&#23458;&#25143;&#31471;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473837240964" ID="ID_1735438329" MODIFIED="1473837258184" TEXT="7 &#x652f;&#x4ed8;&#x5b9d;&#x65b0;&#x7248;&#x6536;&#x94f6;&#x53f0;"/>
<node CREATED="1474440943321" ID="ID_505455569" MODIFIED="1474440991641" TEXT="8 &#x5fae;&#x4fe1;&#x626b;&#x7801;&#x652f;&#x4ed8;"/>
<node CREATED="1474440974687" ID="ID_182807257" MODIFIED="1474440994733" TEXT="9 &#x5a01;&#x5bcc;&#x901a;&#x652f;&#x4ed8;"/>
<node CREATED="1474440896074" ID="ID_214860495" MODIFIED="1474440996775" TEXT="11 &#x597d;&#x9002;&#x53e3;"/>
<node CREATED="1474440872481" ID="ID_804357656" MODIFIED="1474440891011" TEXT="12 &#x5a01;&#x5bcc;&#x901a;&#x5c0f;&#x989d;&#x652f;&#x4ed8;"/>
<node CREATED="1474440915674" ID="ID_690782996" MODIFIED="1474440929899" TEXT="106 &#x652f;&#x4ed8;&#x5b9d;&#x670d;&#x52a1;&#x7a97;"/>
</node>
<node CREATED="1473837274248" ID="ID_452692607" MODIFIED="1473837296766" TEXT="orderId&#xff0c;&#x4ece;newwap&#x4f20;&#x8fc7;&#x6765;&#x7684;&#x5e94;&#x8be5;&#x4e3a;&#x7a7a;&#x5427;"/>
</node>
</node>
</node>
<node CREATED="1476067211508" FOLDED="true" ID="ID_1054888844" MODIFIED="1481852501055" TEXT="2016.10.10 restart...">
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<node CREATED="1476067229031" FOLDED="true" ID="ID_611800187" MODIFIED="1481162851352">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver
    </p>
    <p>
      
    </p>
    <p>
      com.wowo.mdfrontserver.web.controller<font color="#006633">.trade</font>.<font color="#006666">shOrderController</font>
    </p>
    <p>
      &#26159;&#20837;&#21475;&#28857;&#65292;&#23545;&#24212;url:<font color="#660099">/wftcreate.do</font>&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#31616;&#21333;&#35843;&#29992;:<font color="#006666">shOrderServiceAdapter.wftCreateShOrder(orderParamModel : ShOrderCreateParam)</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1476068195636" ID="ID_230310000" MODIFIED="1476068230092" TEXT="String orderId = shOrderCreateParam.getOrderId()"/>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1476068741162" ID="ID_1697838193" MODIFIED="1476068936868" TEXT="initPayCode()"/>
<node CREATED="1476068772941" ID="ID_562459350" MODIFIED="1476068855777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      orderGenerateService.<font color="#006666">createOrder</font>(<font color="#660099">getCreateParam</font>(shOrderCreateParam))
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476068967483" ID="ID_625081846" MODIFIED="1476069081025">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      orderFsService.<font color="#009999">wftPayOrder</font>(<font color="#660099">getPayParam</font>(result.orderId))
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476069097660" ID="ID_817512710" MODIFIED="1476069137225">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return <font color="#006666">getAdapterResultFromSuccess</font>(payOrderResult)
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1476069204359" ID="ID_1665307384" MODIFIED="1476069266428" TEXT="&#x5176;&#x4f59;&#x7684;&#x7528;&#x4e4b;&#x524d;&#x7684;&#x6574;&#x7406;&#x53ef;&#x7528;ctrl+f&#x6765;&#x67e5;">
<node CREATED="1473836256883" FOLDED="true" ID="ID_289967887" MODIFIED="1481162849194">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return shOrderServiceAdapter<font color="#000099">.<b>wft</b>CreateShOrder</font>(<font color="#660066">orderParamModel</font>)
    </p>
  </body>
</html></richcontent>
<node CREATED="1473836518637" ID="ID_643337987" MODIFIED="1473837789479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#336600">1&#12289;</font></b>shOrderCreateParam.getOrderId()
    </p>
  </body>
</html></richcontent>
<node CREATED="1474269737855" ID="ID_1680834285" MODIFIED="1474269757027" TEXT="&#x63d0;&#x53d6;&#x5c5e;&#x6027;&#x503c;&#x800c;&#x5df2;&#xff0c;&#x4e00;&#x822c;&#x6b64;&#x65f6;&#x4e3a;&#x7a7a;&#x5566;"/>
</node>
<node CREATED="1473837792616" ID="ID_348144110" MODIFIED="1474269947667">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#336600">2&#12289;</font></b>initPayCode&#65292;&#27979;&#35797;<font color="#009900">RedisSentinelPool</font>&#20013;key&#20026;paycode&#30340;jedisPool&#26159;&#21542;&#26377;&#21487;&#29992;&#36830;&#25509;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473837960413" ID="ID_1038592772" MODIFIED="1474269923595">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#336600">3&#12289;</font></b><font color="#000000">&#36890;&#36807;</font><font color="#000099">getCreateParam</font><font color="#000000">(shOrderCreateParam)</font>&#25552;&#21462;orderParamModel&#21442;&#25968;&#21040;OrderGenerateParam&#20013;&#65292;&#27492;&#26102;&#32943;&#23450;&#27809;&#26377;orderId&#20540;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473838052473" ID="ID_1358979736" MODIFIED="1476847419732">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#336600">4&#12289;</font></b>orderGenerateService.createOrder(orderGenerateParam)&#26469;&#21019;&#24314;&#35746;&#21333;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#336600">&#23601;&#26159;&#22312;md_order_info,md_order_action&#34920;&#25554;&#20837;&#30456;&#20851;&#26032;&#35760;&#24405;</font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000"><b>&#21019;&#24314;&#35746;&#21333;&#33509;&#22833;&#36133;&#65292;&#21017;&#36864;&#20986;</b></font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474270103625" ID="ID_797375467" MODIFIED="1476238282922" TEXT="OrderGenerateServiceImpl">
<node CREATED="1473839398965" ID="ID_453502703" MODIFIED="1481162831690">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      createOrder
    </p>
  </body>
</html></richcontent>
<node CREATED="1474270150134" FOLDED="true" ID="ID_1985972573" MODIFIED="1476847425483">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      0&#12289;final <font color="#000099">OrderGenerateDomain</font>&#160;<font color="#009900">domain</font>&#160;= new OrderGenerateDomain()
    </p>
  </body>
</html></richcontent>
<node CREATED="1474270220328" ID="ID_147214584" MODIFIED="1474270256013" TEXT="1&#x3001;domain.setOrderGenerateParam(orderGenerateParam)"/>
<node CREATED="1474270258028" ID="ID_1509828585" MODIFIED="1474270291675">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;domain.setOrderCreateExtService(<font color="#990099">orderCreateExtService</font>)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474270295633" ID="ID_341601780" MODIFIED="1474270343420">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;domain.setOrderRefreshDomainRepository(<font color="#990099">orderRefereshDominRepository</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1474270370176" ID="ID_170003178" MODIFIED="1476847427596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;<font color="#990099">mdServiceTemplate</font>.<font color="#660000">exeWithoutDB</font>(new <font color="#990099">TemplateAction</font>&lt;<font color="#000099">OrderBindBasicModel</font>&gt;(){checkParam;doAction;checkBiz;}
    </p>
  </body>
</html></richcontent>
<node CREATED="1473839437040" ID="ID_1671916757" MODIFIED="1474270543523">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;checkParam -&gt; <font color="#009900">domain</font>.checkParam
    </p>
  </body>
</html></richcontent>
<node CREATED="1473839443156" ID="ID_1099434969" MODIFIED="1473839503129" TEXT="shopId,orderChannel,billAmount,devicestr&#x4e0d;&#x80fd;&#x4e3a;&#x7a7a;"/>
</node>
<node CREATED="1473839537274" ID="ID_505777804" MODIFIED="1476069325077">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;doAction -&gt; <font color="#009900">domain</font>.generateOrder()
    </p>
  </body>
</html></richcontent>
<node CREATED="1473839771206" ID="ID_30206415" MODIFIED="1474357859113">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;checkShop
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#21462;&#19981;&#21040;ShopForQuery&#21017;&#36864;&#20986;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473839809420" FOLDED="true" ID="ID_1289375909" MODIFIED="1476344014638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;CallResult&lt;<font color="#336600">ShopForQuery</font>&gt; result = orderCreateExtService.GetShopByIdWithRebateNow(shopId)
    </p>
    <p>
      <b><font color="#000099">&#25552;&#21462;&#38376;&#24215;&#36820;&#29616;&#26041;&#26696;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473839875949" ID="ID_9736253" MODIFIED="1473839948274">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#003333">shopServic</font>e<b><font color="#ff0000">Dubbo</font></b>.getShopByIdWithRebateNow(shopId)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476238309963" ID="ID_787929270" MODIFIED="1476238320531" TEXT="&#x8fd4;&#x56de;&#x8282;&#x70b9;">
<node CREATED="1476238290097" ID="ID_1589802964" LINK="#ID_1720308229" MODIFIED="1476238335426" TEXT="&#x8fd4;&#x56de;wftPay&#x8282;&#x70b9;"/>
</node>
</node>
<node CREATED="1473840028385" ID="ID_1447184236" MODIFIED="1473840045635" TEXT="2&#x3001;result == null &#x5219;&#x62a5;&#x9519;"/>
<node CREATED="1473840060868" ID="ID_1451686571" MODIFIED="1473840156641">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;&#21542;&#21017;&#65292;<font color="#336600">ShopForQuery</font>&#160;ShopRebateDTO = result.getResultObject();
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473840703072" ID="ID_1072251947" MODIFIED="1476069338280">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;orderCreateExtService.getOrderId()&#65292;&#33719;&#21462;&#35746;&#21333;&#21495;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff3333">&#33719;&#21462;&#35746;&#21333;&#20026;&#31354;&#21017;&#36864;&#20986;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473840762489" ID="ID_1669329778" MODIFIED="1476847440758" TEXT="payService.generateOrderId(&quot;Z&quot;);">
<node CREATED="1473840986209" ID="ID_1781980063" MODIFIED="1473841029451" TEXT="1&#x3001;OrderIdGenerateHandler handler = handleMap.get(&quot;Z&quot;);">
<node CREATED="1473841039486" ID="ID_1573244083" MODIFIED="1473841067229" TEXT="Map&lt;String,OrderGenerateHandler&gt; handleMap"/>
</node>
<node CREATED="1473841090098" ID="ID_1971853675" MODIFIED="1476069355130" TEXT="2&#x3001;if  handler = null">
<node CREATED="1473841100435" FOLDED="true" ID="ID_463630146" MODIFIED="1476069404382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff3333">handler</font>&#160;= new OrderIdGenerateHandler();
    </p>
  </body>
</html></richcontent>
<node CREATED="1473842025840" ID="ID_626703114" MODIFIED="1473842078370">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      RedisCache <b><font color="#660066">redisCache </font></b>= RedisCacheFactory.get<font color="#000099">PayCode</font>RedisCache():
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473841848732" ID="ID_1137477335" MODIFIED="1473841905465">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23454;&#29616;&#20102;<b><font color="#336600">run&#26041;&#27861;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1473841981267" ID="ID_295406210" MODIFIED="1473841998516" TEXT="while(true)">
<node CREATED="1473842000034" ID="ID_353609463" MODIFIED="1473842649807" TEXT="1&#x3001;String dateStr  = getKeyDate();&#x83b7;&#x53d6;20160914"/>
<node CREATED="1473842652372" ID="ID_1645080614" MODIFIED="1473842919355">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#32452;&#35013; String <b><font color="#000099">key </font></b>= &quot;ORDER_ID_GENERATE_KEY_PREFIX&quot;+&quot;20160914&quot;;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473842711643" ID="ID_1589411562" MODIFIED="1474270937617">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;redisCache.setnx(<font color="#000099">key</font>,<font color="#ff0000">1000+&quot;&quot;</font>)
    </p>
    <p>
      
    </p>
    <p>
      &#21482;&#26159;&#35774;&#32622;orderid&#30340;&#36215;&#22987;&#20540;&#20026;1000
    </p>
  </body>
</html></richcontent>
<node CREATED="1473842751218" ID="ID_548761490" MODIFIED="1473843014779">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;&#26524;&#35774;&#32622;&#25104;&#21151;&#65288;&#19981;&#23384;&#22312;&#27492;key)&#65292;&#21017;&#65306;
    </p>
    <p>
      &#39069;&#22806;&#20877;&#35774;&#32622;<font color="#336600">28&#23567;&#26102;</font>&#36807;&#26399;&#26102;&#38388;&#65292;redisCache.setex(<font color="#000099">key</font>,<b><font color="#006600">100800</font></b>,<font color="#ff0000">1000+&quot;&quot;</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473843026207" ID="ID_1810999961" MODIFIED="1473843443715">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;redis.incrby(<font color="#000099">key</font>,100);
    </p>
  </body>
</html></richcontent>
<node CREATED="1473843533264" ID="ID_1120585427" MODIFIED="1473843901028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;&#26524;&#22686;&#21152;&#25104;&#21151;(&#31532;&#19968;&#27425;&#65292;&#21017;&#21464;&#20026;1100)&#65292;&#21017;
    </p>
    <p>
      long begin = <font color="#ff0000">1100</font>&#160;- 100;
    </p>
    <p>
      for(long orderId = begin;begin&lt;1100;orderId++)
    </p>
    <p>
      
    </p>
    <p>
      String <b><font color="#660066">orderIdK</font></b>&#160;= <b><font color="#000099">dateStr + orderId</font></b>,&#27604;&#22914;&#65306;<font color="#000099">20160914</font><font color="#ff0000">1000</font>
    </p>
    <p>
      queue.put(<b><font color="#660066">orderIdK</font></b>) <b><font color="#660066">// put&#21040;&#23481;&#37327;200&#26102;&#65292;&#35302;&#21457;</font><font color="#ff3333">&#32447;&#31243;</font><font color="#660066">&#38459;&#26029;&#31561;&#24453;...</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1473841116632" ID="ID_808140620" MODIFIED="1473841134811" TEXT="handleMap.put(&quot;Z&quot;,handler);"/>
<node CREATED="1473841163040" ID="ID_394630712" MODIFIED="1473841219305">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Thread <b><font color="#000099">t</font></b>&#160;= new Thread(<font color="#ff3333">handler</font>);<font color="#000099">t.start()</font>;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473841225929" ID="ID_1032977414" MODIFIED="1473841888187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;return &quot;Z&quot;+<b><font color="#ff0000">handler</font><font color="#000099">.take()</font></b>;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473841425332" FOLDED="true" ID="ID_915675449" MODIFIED="1475030985918" TEXT="1&#x3001;String date = getKeyDate();">
<node CREATED="1473841472038" ID="ID_1545844564" MODIFIED="1473841553378">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Date date = new Date(System.currentTimeMillis());
    </p>
    <p>
      SimpleDateFormat sdf = new SimpleDateFormat(&quot;YYMMdd&quot;);
    </p>
    <p>
      String dateS = sdf.format(date);
    </p>
    <p>
      return dateS
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473841585684" ID="ID_1095942474" MODIFIED="1473841740474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;while(<font color="#ff0000">true</font>)
    </p>
    <p>
      &#20174;<b><font color="#336600">queue.take()&#19968;</font></b>&#30452;&#21040;&#21462;&#21040;orderId.<font color="#000099">startsWith(date)</font>&#25104;&#31435;&#30340;&#35746;&#21333;id&#20026;&#27490;&#25165;&#36339;&#20986;
    </p>
  </body>
</html></richcontent>
<node CREATED="1473841756739" ID="ID_1137885937" MODIFIED="1473841829290">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ArrayBlockingQueue&lt;String&gt; queue
    </p>
    <p>
      &#160;= new ArrayBlockingQueue&lt;String&gt;(<font color="#000099">200</font>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1473844074510" ID="ID_1663860896" MODIFIED="1476847495063">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;PayCodeGenerateResult <font color="#009900">result</font>&#160;= orderCreateExtService.getePayCode(orderId);
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#25552;&#21462;paycode&#22833;&#36133;&#21017;&#36864;&#20986;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474271638637" ID="ID_881861119" MODIFIED="1474338724371">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#990099">payCodeServiceImpl</font>.generatePayCode(orderId)
    </p>
  </body>
</html></richcontent>
<node CREATED="1474271762951" ID="ID_468196389" MODIFIED="1474271800976">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;<font color="#009900">result</font>&#160;= new <font color="#990099">PayCodeGenerateResult()</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474271807947" HGAP="35" ID="ID_1227677744" MODIFIED="1475031020518" VSHIFT="15">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;<font color="#009900">result</font>.setOrderId(orderId)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474271830882" ID="ID_631947599" MODIFIED="1474338361007">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;<font color="#009900">result.</font>setPayCode(payCode)
    </p>
    <p>
      
    </p>
    <p>
      paycode&#26159;270&#19975;&#20010;&#25968;&#20540;&#20013;&#30340;&#19968;&#20010;&#20843;&#20301;&#38543;&#26426;&#25968;&#32780;&#24050;
    </p>
  </body>
</html></richcontent>
<node CREATED="1474273144786" ID="ID_1813593769" MODIFIED="1474273179948">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#000099">handler</font></b>.<font color="#990099">take()</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474273192433" ID="ID_907901202" MODIFIED="1474273232107">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000099">handler </font>: <b><font color="#990099">PayCodeGernerateHandler</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474273667499" ID="ID_1802904189" MODIFIED="1474273717227">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;PayCodeServiceImpl&#30340;<font color="#000099">init&#26041;&#27861;&#20013;&#21021;&#22987;&#21270;</font>&#24182;&#21551;&#21160;<font color="#990099">&#24490;&#29615;&#32447;&#31243;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474273754700" ID="ID_459863945" MODIFIED="1476068116706">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#000099">run</font></b>&#26041;&#27861;
    </p>
    <p>
      
    </p>
    <p>
      &#24490;&#29615;&#32447;&#31243;&#35843;&#29992;&#65292;&#21363;&#27599;step&#25209;&#27425;&#25552;&#21462;paycode&#20379;&#20351;&#29992;
    </p>
  </body>
</html></richcontent>
<node CREATED="1474274032221" ID="ID_212544549" MODIFIED="1474274036684" TEXT="while(true)">
<node CREATED="1474273844708" ID="ID_1380546637" MODIFIED="1476847580607">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;RedisSentinelCache.<font color="#000099">rotation</font>(rotationKey,<font color="#990099">step</font>)
    </p>
    <p>
      
    </p>
    <p>
      rotationKey:PAY_CODE_ROTATION_KEY
    </p>
    <p>
      <font color="#990099">step</font>:queueStep
    </p>
  </body>
</html></richcontent>
<node CREATED="1474275428123" ID="ID_1985922833" MODIFIED="1474275461136">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36127;&#36131;&#25209;&#37327;&#29983;&#25104;paycode,<font color="#cc0000">paycode&#26159;&#24178;&#22043;&#28404;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474335239691" ID="ID_1963820969" MODIFIED="1474335252734" TEXT="PayCodeInitServiceImpl">
<node CREATED="1474336302261" ID="ID_1086537522" MODIFIED="1474338155033">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      initPayCodeRedis
    </p>
    <p>
      
    </p>
    <p>
      redis&#20869;&#23384;&#20837;&#20102;270&#19975;&#20010;&#20843;&#20301;&#25968;&#30340;paycode
    </p>
    <p>
      &#34987;&#24490;&#29615;&#20351;&#29992;
    </p>
  </body>
</html></richcontent>
<node CREATED="1474336619260" ID="ID_1193277683" MODIFIED="1474336798678" TEXT="1&#x3001;Set&lt;Integer&gt; s&#x8d4b;&#x503c;100000&#x4e2a;&#x968f;&#x673a;&#x6570;&#xff0c;&#x4e8b;&#x5b9e;&#x4e0a;&#x8fd9;&#x79cd;&#x5199;&#x6cd5;&#x5f88;&#x72d7;&#x5c4e;&#xff0c;&#x76f4;&#x63a5;&#x8d4b;&#x503c;100000&#x6b21;&#x9012;&#x589e;&#x503c;&#x5373;&#x53ef;&#x554a;&#xff0c;&#x4f60;size&#x8981;&#x6c42;&#x5fc5;&#x987b;100000&#x968f;&#x673a;&#x8fd8;&#x6709;JB&#x610f;&#x4e49;"/>
<node CREATED="1474336855487" ID="ID_704089410" MODIFIED="1474336934762" TEXT="2&#x3001;startSet&#x6709;27&#x4e2a;&#x4e09;&#x4f4d;&#x6570;&#x7684;&#xff0c;&#x4e0d;&#x91cd;&#x590d;&#x7684;&#x6574;&#x6570;&#x6570;&#x7ec4;"/>
<node CREATED="1474337342302" ID="ID_26542718" MODIFIED="1474337374402" TEXT="3&#x3001;&#x5faa;&#x73af;&#x5904;&#x7406;&#x8fd9;27&#x4e2a;&#x4e09;&#x4f4d;&#x6570;&#xff0c;&#x542f;&#x52a8;27&#x4e2a;&#x7ebf;&#x7a0b;&#x5904;&#x7406;">
<node CREATED="1474337389049" ID="ID_557733732" MODIFIED="1474337453715" TEXT="1&#x3001;reids&#x7684;key&#xff08;rotation_prefix_set&#xff09;&#x5bf9;&#x5e94;&#x7684;&#x5217;&#x8868;&#x662f;&#x5426;&#x5df2;&#x5b58;&#x5728;&#xff08;&#x5b58;&#x5728;&#x4ee3;&#x8868;&#x521d;&#x59cb;&#x5316;&#x8fc7;&#x4e86;)"/>
<node CREATED="1474337459939" ID="ID_1034629055" MODIFIED="1474337535499" TEXT="2&#x3001;&#x82e5;&#x4e0d;&#x5b58;&#x5728;&#xff0c;&#x5219; redis&#x4f1a;&#x5199;&#x5165;&#xff0c;&#x540c;&#x65f6;start * 100000&#x4e3a;&#x8d77;&#x59cb;&#x6570;&#x503c;&#xff0c;&#x6b64;&#x65f6;&#x8d77;&#x59cb;&#x6570;&#x503c;&#x4e3a;&#x516b;&#x4f4d;&#x6570;&#x3002;"/>
<node CREATED="1474337565521" ID="ID_1585075570" MODIFIED="1474337812388" TEXT="3&#x3001;&#x5c06;&#x8d77;&#x59cb;&#x503c;&#x4e3a;start*100000&#x7684;100000&#x4e2a;&#x4e0d;&#x540c;&#x6570;&#x503c;&#xff08;&#x5c0f;&#x4e8e;100000&#xff09;&#x6bcf;200&#x4e00;&#x6279;&#x6b21;&#x8ffd;&#x52a0;&#x5230;rotation_key&#x7684;&#x5217;&#x8868;&#x4e2d;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1474337815114" ID="ID_685943789" MODIFIED="1474338097156" TEXT="&#x5373;&#x8be5;key&#x5bf9;&#x5e94;&#x5217;&#x8868;&#x5143;&#x7d20;&#x6570;&#x91cf;&#x4e3a;27*100000&#x4e2a;"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1474334372350" ID="ID_1998135548" MODIFIED="1474334536599">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rotation&#20869;&#37096;&#35843;&#29992;&#20102;p = jedis.pipelined()
    </p>
    <p>
      
    </p>
    <p>
      for&#65288;int i =0;i&lt;step;i++)
    </p>
    <p>
      &#160;&#160;&#160;p.rpoplpush(samekey,samekey)
    </p>
    <p>
      
    </p>
    <p>
      list&lt;object&gt; ret = p.syncAndReturnAll()
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#23601;&#26159;&#23558;&#21516;&#19968;&#20010;key&#23545;&#24212;&#30340;&#21015;&#34920;&#21453;&#22797;&#20174;&#26368;&#21518;&#25552;&#21462;&#20986;&#26469;&#36820;&#22238;&#65292;&#24182;&#20877;&#25554;&#20837;&#21015;&#34920;&#21069;&#21015;&#24453;&#21518;&#32493;&#20877;&#25552;&#21462;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1474274050550" ID="ID_471016095" MODIFIED="1474274394865" TEXT="2&#x3001;for(String payCode : payCodeList){ queue.put(payCode) }"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1474271872157" ID="ID_482064447" MODIFIED="1474271913895">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;<font color="#009900">result</font>.setExpireTime(nowTime+<font color="#000099">liveTime</font>)
    </p>
  </body>
</html></richcontent>
<node CREATED="1474338785481" ID="ID_727956199" MODIFIED="1474338796578" TEXT="15&#x5206;&#x949f;&#x7684;&#x652f;&#x4ed8;&#x6709;&#x6548;&#x671f;"/>
</node>
<node CREATED="1474271933308" ID="ID_1291544289" MODIFIED="1474271976664">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      final:&#160;&#160;<font color="#660000">json</font>&#160;= JSON.toJSONString(<font color="#009900">result</font>)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474271993132" ID="ID_521537002" MODIFIED="1474272001933" TEXT="then set in redis">
<node CREATED="1474272059955" ID="ID_1326357112" MODIFIED="1474272094887">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      payCodeCache.<font color="#000099">setnx</font>(key,<font color="#660000">json</font>)
    </p>
  </body>
</html></richcontent>
<node CREATED="1474273080898" ID="ID_437733124" MODIFIED="1474338309639">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      set ok then : payCodeCache.<b><font color="#006666">setpx</font></b>(key,millis,<font color="#660000">json</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1474273128751" ID="ID_1127258017" MODIFIED="1474273141812">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      return <font color="#009900">result</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1474338995673" ID="ID_782625155" MODIFIED="1474339119199">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;&#26681;&#25454;ShopForQuery,OrderId,PayCode&#21019;&#24314;OrderCreateParam&#160;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476259179988" ID="ID_1697886946" MODIFIED="1476344516586" TEXT="fillParam(orderCreateParam,paycodeGenerateResult,ShopForQuery)"/>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1474339144249" ID="ID_636805778" MODIFIED="1476344599106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      5&#12289;<font color="#660099">orderCreateExtService</font>.<b><font color="#006633">createOrder</font></b>(<font color="#cc0000">orderCreateParam</font>)
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#22914;&#26524;tradecenter&#22788;&#29702;&#25104;&#21151;&#65292;&#20174;&#32467;&#26524;&#20013;&#25552;&#21462;orderInfoModel&#23545;&#35937;
      </li>
      <li>
        &#23553;&#35013;OrderBasicModel&#23545;&#35937;&#24182;&#36820;&#22238;
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1474339276012" ID="ID_1155922202" MODIFIED="1474339330166">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35843;&#29992;<b><font color="#660099">tradeCenter&#39033;&#30446;</font></b>&#30340;OrderCreateService.CreateOrder(orderCreateParam)
    </p>
  </body>
</html></richcontent>
<node CREATED="1476078864228" ID="ID_1866008054" MODIFIED="1476078900407" TEXT="&#x6392;&#x67e5;&#x65e5;&#x5fd7;&#x8bb0;&#x5f55;&#xff0c;&quot;&#x53c2;&#x6570;&#x4fe1;&#x606f;param= &quot;&#x53ef;&#x67e5;&#x770b;&#x8f93;&#x5165;&#x7684;&#xff0c;&#x521b;&#x5efa;&#x8ba2;&#x5355;&#x53c2;&#x6570;"/>
<node CREATED="1476078919315" ID="ID_1979356558" MODIFIED="1476078931375" TEXT="&#x5177;&#x4f53;&#x6b65;&#x9aa4;">
<node CREATED="1476078953275" FOLDED="true" ID="ID_377498896" MODIFIED="1476079158825" TEXT="1&#x3001;new &#x521b;&#x5efa;OrderCreateDomain &#x5e76;&#x8bbe;&#x7f6e;&#x5c5e;&#x6027; ">
<node CREATED="1476078994215" ID="ID_586070767" MODIFIED="1476079027814">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35774;&#32622;notifySendManager&#23646;&#24615;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476079034818" ID="ID_1792741214" MODIFIED="1476079045957" TEXT="&#x8bbe;&#x7f6e;orderCreateParam&#x5c5e;&#x6027;"/>
<node CREATED="1476079055421" ID="ID_999379996" MODIFIED="1476079071933" TEXT="&#x8bbe;&#x7f6e;orderCreateDomainRepository&#x5c5e;&#x6027;"/>
<node CREATED="1476079078456" ID="ID_685413555" MODIFIED="1476079095822" TEXT="&#x8bbe;&#x7f6e;orderQueryDomainRepository&#x5c5e;&#x6027;"/>
</node>
<node CREATED="1476079115902" ID="ID_767504543" MODIFIED="1476079155400" TEXT="2&#x3001;&#x8c03;&#x7528;&#x7edf;&#x4e00;&#x6a21;&#x677f;serviceTemplate&#x6267;&#x884c;&#x521b;&#x5efa;&#x8ba2;&#x5355;&#x5177;&#x4f53;&#x4e1a;&#x52a1;&#xff0c;&#x56fa;&#x5b9a;&#x5206;&#x4e09;&#x6b65;">
<node CREATED="1476079163054" ID="ID_1106231573" LINK="2016/10/OrderCreateDomain.checkParam.java" MODIFIED="1476086552477">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;checkParam
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#35843;&#29992;orderCreateDomain.checkParam()
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476086637564" ID="ID_156718573" MODIFIED="1476092272456">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;createOrder() (in doAction)
    </p>
  </body>
</html></richcontent>
<node CREATED="1476087362874" ID="ID_1815866790" MODIFIED="1476087401038" TEXT="1&#x3001;orderCreateDomainRepository.insertOrderInfo(fillOrderInfoDo())">
<node CREATED="1476087422541" ID="ID_1144210544" LINK="2016/10/OrderCreateDomain.fillOrderInfoDo.java" MODIFIED="1476087704721" TEXT="fillOrderInfoDo()"/>
<node CREATED="1476087767140" ID="ID_518444844" LINK="2016/10/OrderInfoDAOImpl.insert.java" MODIFIED="1476087869596" TEXT="OrderInfoDAOImpl.insert(orderInfoDo)">
<node CREATED="1476087945809" ID="ID_1543108944" MODIFIED="1476088017452">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20855;&#20307;&#21442;&#32771;mdtradecenter.dao&#19979;&#30340;mybatis&#30340;md-order-info-sqlmap.xml&#20013;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476089009723" ID="ID_554172526" MODIFIED="1476089037613">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23601;&#26159;&#22312;md_order_info&#34920;&#20013;&#25554;&#20837;&#19968;&#26465;&#26032;&#35760;&#24405;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476089220775" ID="ID_1637716732" MODIFIED="1476089254384" TEXT="&#x6392;&#x67e5;&#x65e5;&#x5fd7;&#x8bb0;&#x5f55;&#xff1a;insertOrderInfo&#xff0c;&#x53ef;&#x67e5;&#x65b0;&#x63d2;&#x5165;&#x8bb0;&#x5f55;&#x7684;id"/>
</node>
</node>
<node CREATED="1476089319890" ID="ID_1843967620" MODIFIED="1476089351688" TEXT="2&#x3001;&#x63d2;&#x5165;md_order_info&#x6210;&#x529f;&#x540e;&#xff0c;&#x4f1a;&#x5728;&#x8ba2;&#x5355;&#x6269;&#x5c55;&#x8868;&#x548c;&#x64cd;&#x4f5c;&#x65e5;&#x5fd7;&#x8868;&#x4e2d;&#x63d2;&#x5165;&#x76f8;&#x5e94;&#x8bb0;&#x5f55;">
<node CREATED="1476089424217" ID="ID_902173501" MODIFIED="1476089486285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25554;&#20837;&#26085;&#24535;&#25805;&#20316;&#34920;&#24322;&#24120;&#65292;
    </p>
    <p>
      &#21017;&#20250;&#29992;&quot;__&#29305;&#27530;&#23383;&#31526;__&quot;&#20316;&#20026;username&#32487;&#32493;&#20889;&#20837;&#25805;&#20316;&#26085;&#24535;&#34920;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1476089588974" ID="ID_1542935685" MODIFIED="1476092123944">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;orderQueryDomainRepository.queryOrderDetailInfo(orderQueryDetailInfoParam)&#26681;&#25454;orderid&#20174;<font color="#6600ff">md_order_info</font>&#25552;&#21462;&#23545;&#24212;&#30340;&#35760;&#24405;
    </p>
    <p>
      
    </p>
    <p>
      &#24182;&#23553;&#35013;&#21040;callresult&#20013;&#36820;&#22238;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476089856555" ID="ID_1563528633" MODIFIED="1476089914626" TEXT="then,&#x5229;&#x7528;cglib-nodep-2.1.3.jar&#x5f00;&#x6e90;&#x5305;&#x62f7;&#x8d1d;detailinfo&#x5230;OrderInfoModel&#x4e2d;"/>
<node CREATED="1476089956104" ID="ID_467049524" LINK="2016/10/OrderInfoModel.java" MODIFIED="1476092050997" TEXT="OrderInfoModel"/>
<node CREATED="1476089971121" ID="ID_515900600" LINK="2016/10/OrderInfoDO.java" MODIFIED="1476092040302" TEXT="OrderInfoDO">
<node CREATED="1476237743491" ID="ID_535480920" MODIFIED="1476237765843" TEXT="md_order_info ,&#x8ba2;&#x5355;&#x8be6;&#x60c5;&#xff0c;&#x7528;&#x4e8e;&#x67e5;&#x8be2;&#x63cf;&#x8ff0;&#x8282;&#x70b9;"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1474339633320" ID="ID_1705248764" MODIFIED="1476754195990">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#006633">5&#12289;</font></b>orderFsService.wftPayOrder(...)
    </p>
    <p>
      
    </p>
    <p>
      &#20027;&#35201;&#26159;createMobileParams&#29992;&#20110;&#25163;&#26426;&#25903;&#20184;&#65311;
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#20851;&#38190;&#21442;&#25968;&#23601;&#26159;&#20808;&#33719;&#21462;&#21040;orderId
    </p>
  </body>
</html></richcontent>
<node CREATED="1474357339993" ID="ID_1885628025" MODIFIED="1476236239706">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;new <font color="#006633">OrderPayDomain </font>
    </p>
    <p>
      
    </p>
    <p>
      &#25414;&#32465;&#36755;&#20837;&#21442;&#25968;order<font color="#006666">PayParam</font>,&#33509;&#24178;&#19994;&#21153;&#23545;&#35937;
    </p>
    <ul>
      <li>
        <font color="#660099">tradeExtService</font>
      </li>
      <li>
        youhuiExtService
      </li>
      <li>
        orderBindDomain<font color="#336600">Repository</font>
      </li>
      <li>
        orderCreateExtService
      </li>
      <li>
        orderRefresh<font color="#336600">DomainRepository</font>
      </li>
      <li>
        mobileMsg
      </li>
      <li>
        publicConfig.<font color="#990099">getMdtKey()&#65292;&#22403;&#22334;&#21442;&#25968;</font>
      </li>
    </ul>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffff99" CREATED="1476236299252" ID="ID_1503303983" LINK="#ID_500500888" MODIFIED="1476236630589" TEXT="&#x5173;&#x952e;&#x65b9;&#x6cd5;&#xff1a;wftPayOrder()"/>
</node>
<node CREATED="1474357727469" ID="ID_1252319875" MODIFIED="1476927641424" TEXT="2&#x3001;mdServiceTemplate.exeWithoutDB(new TemplateAction&lt;OrderPayModel&gt;{checkParam;doAction;checkBiz;finishUp})">
<node CREATED="1474357907795" FOLDED="true" ID="ID_1471057743" MODIFIED="1476236616500">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      checkParam&#160;
    </p>
    <p>
      
    </p>
    <p>
      &#37096;&#20998;&#21442;&#25968;&#19981;&#33021;&#20026;&#31354;&#25110;null
    </p>
  </body>
</html></richcontent>
<node CREATED="1474357944634" ID="ID_523066958" MODIFIED="1474357964258" TEXT="orderPayParam.getOrderId()"/>
<node CREATED="1474357969357" ID="ID_1951149717" MODIFIED="1474357984569" TEXT="orderPayParam.getUseFbalance()"/>
<node CREATED="1474357990299" ID="ID_850144423" MODIFIED="1474357999796" TEXT="orderPayParam.getPayType()"/>
<node CREATED="1474358034540" ID="ID_1193893571" MODIFIED="1474358056114" TEXT="ip,lat,lng,deviceid,devicestr"/>
</node>
<node CREATED="1474358075084" ID="ID_500500888" MODIFIED="1476344631160">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      doAction: <font color="#006633">orderPayDomain</font>.<font color="#660099">wftPayOrder()</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474358504179" FOLDED="true" ID="ID_1982053368" MODIFIED="1476927649199">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#660099">1&#12289;tradeExtService</font>.queryOrderInfoById(orderId)
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#26597;&#35810;&#22833;&#36133;&#65292;&#36864;&#20986;&#24182;&#36820;&#22238;&#22833;&#36133;&#20195;&#30721;&#21644;&#21407;&#22240;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474358563188" ID="ID_52516540" MODIFIED="1474358592658">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35843;&#29992;<font color="#660099">tradecenter</font>&#39033;&#30446;&#25552;&#21462;&#35746;&#21333;&#35814;&#24773;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476170784388" ID="ID_1873643515" MODIFIED="1476170905792">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      OrderQueryServiceImpl.queryOrderDetailInfo<font color="#cc0000">FromMaster </font>
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#35835;&#30340;&#26159;&#20174;&#24211;&#65292;&#22240;&#20026;&#21442;&#25968;isMaster&#35774;&#32622;&#20026;false&#20102;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476172461791" ID="ID_1719651832" LINK="#ID_1542935685" MODIFIED="1476172713004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37319;&#29992;orderQueryDomainRepository
    </p>
    <p>
      
    </p>
    <p>
      &#35843;&#29992;&#20854;&#26041;&#27861;queryOrderDetailInfo(...)
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#37096;&#20998;&#22788;&#29702;&#23436;&#20840;&#21516;&#20110;createOrder(&#32511;&#33394;&#31661;&#22836;&#25152;&#25351;&#20998;&#25903;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1474359828598" FOLDED="true" ID="ID_1237226781" MODIFIED="1476238026536">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#25552;&#21462;&#36820;&#22238;&#30340;&#32467;&#26524; <font color="#660099">OrderInfoModel</font>&#160; <font color="#006666">data</font>&#160;= remoteOrderCR.getResultObject()
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        <font color="#006666">orderAmount</font>&#160;= data.getOrderAmount(); <b><font color="#006633">//orderAmount&#24212;&#20184;&#27454;&#37329;&#39069;&#12290;</font></b>
      </li>
      <li>
        <font color="#990099">lessPayAmount</font>&#160;= <font color="#006666">orderAmount</font>.setScale(2,BigDecimal.ROUND_HALF_UP);<font color="#990000">//&#22235;&#33293;&#20116;&#20837;&#21518;&#23567;&#20110;&#38646;&#21017;&#36864;&#20986;</font>
      </li>
      <li>
        if(<font color="#990099">lessPayAmount</font>.compareTo(BigDecimal.ZERO)&lt;=0 then <font color="#cc0000">needContinuePay</font>= false;
      </li>
      <li>
        data.getShopId(); <font color="#cc0000">shopid&lt;=0 &#36864;&#20986;</font>
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1474361133252" ID="ID_1751474471" MODIFIED="1475029831395" TEXT="java&#x4e4b;bigdecimal">
<node CREATED="1474361156255" ID="ID_1651592461" MODIFIED="1474361230239">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      BigDecimal.<font color="#660099">setScale()</font>&#26041;&#27861;&#29992;&#20110;&#26684;&#24335;&#21270;&#23567;&#25968;&#28857;
    </p>
    <ul>
      <li>
        setScale(<font color="#000099">1</font>)&#34920;&#31034;<font color="#000099">&#20445;&#30041;&#19968;&#20301;&#23567;&#25968;</font>&#65292;&#40664;&#35748;&#29992;&#22235;&#33293;&#20116;&#20837;&#26041;&#24335;
      </li>
      <li>
        setScale(1,BigDecimal.ROUND_DOWN)&#30452;&#25509;&#21024;&#38500;&#22810;&#20313;&#30340;&#23567;&#25968;&#20301;&#65292;&#22914;2.35&#20250;&#21464;&#25104;2.3
      </li>
      <li>
        setScale(1,BigDecimal.ROUND_UP)&#36827;&#20301;&#22788;&#29702;&#65292;2.35&#21464;&#25104;2.4
      </li>
      <li>
        setScale(1,BigDecimal.ROUND_HALF_UP)&#22235;&#33293;&#20116;&#20837;&#65292;2.35&#21464;&#25104;2.4
      </li>
      <li>
        setScaler(1,BigDecimal.ROUND_HALF_DOWN)&#22235;&#33293;&#20116;&#20837;&#65292;2.35&#21464;&#25104;2.3&#65292;&#22914;&#26524;&#26159;5&#21017;&#21521;&#19979;&#33293;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1474361990494" ID="ID_691112575" LINK="#ID_1289375909" MODIFIED="1476238233493">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;&#20877;&#27425;&#26681;&#25454;<font color="#006633">shopid</font>&#36208;<font color="#660099">dubbo</font>&#20174;<font color="#006666">&#38376;&#24215;&#20013;&#24515;</font>&#25552;&#21462;&#36820;&#29616;&#26041;&#26696;&#65292;&#22914;&#26524;<font color="#cc0000">&#25552;&#21462;&#24322;&#24120;&#21017;&#36864;&#20986;&#65281;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1476238272149" ID="ID_1720308229" MODIFIED="1476238279196" TEXT="&#x8fd4;&#x56de;&#x8282;&#x70b9;&#x800c;&#x5df2;"/>
</node>
<node CREATED="1474362382841" ID="ID_1607371615" MODIFIED="1476927653980">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;&#22914;&#26524;<font color="#006633">needContinuePay = true</font>&#65292;&#21017;&#25171;&#21253;<font color="#006633">orderPayModel&#30456;&#20851;&#24517;&#35201;&#21442;&#25968;</font><font color="#990099">&#20934;&#22791;&#36208;</font>&#31532;&#19977;&#26041;&#25903;&#20184;&#65292;<font color="#006600">&#21542;&#21017;&#65292;&#30452;&#25509;&#26174;&#31034;&#25903;&#20184;&#25104;&#21151; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0066cc">&#23454;&#38469;&#23601;&#26159;&#35201;&#20040;&#24050;&#25903;&#20184;&#65292;&#35201;&#20040;&#23601;&#26159;&#25903;&#20184;&#37329;&#39069;&#20026;0&#65292;&#21542;&#21017;&#37117;&#35201;&#32487;&#32493;&#36208;&#25903;&#20184;&#27969;&#31243; </font>
    </p>
    <p>
      
    </p>
    <p>
      &#30456;&#23545;&#20110;&#31532;&#19977;&#26041;&#25903;&#20184;&#65292;&#20197;&#21069;&#26377;&#33258;&#24049;&#30340;&#25903;&#20184;&#36884;&#24452;&#65311;<font color="#006666">&#26377;&#65292;&#23601;&#26159;&#20313;&#39069;&#26469;&#25903;&#20184;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474362796844" ID="ID_1940210464" MODIFIED="1474362999694">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#22914;&#26524;orderPayParam.getPayType() == OrderPayParam.NO_PAY_TYPE
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#000099">&#21017;&#36864;&#20986;</font></b>&#65292;&#24182;&#25552;&#31034;&#38656;&#35201;<font color="#006666">CLIENTPAY&#26041;&#24335;</font>&#22788;&#29702;orderPayModel&#25968;&#25454;&#23436;&#25104;&#25903;&#20184;&#65292;&#19981;&#26159;&#31532;&#19977;&#26041;&#21734;&#12290;<font color="#cc0000">&#36825;&#20010;&#24212;&#35813;&#30446;&#21069;&#19981;&#23384;&#22312;&#36825;&#31181;&#22788;&#29702;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1474363013851" ID="ID_1634933514" MODIFIED="1476239902232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;<b><font color="#990099">tradeExtService</font></b>.<b><font color="#000099">createMobileParam</font></b>(orderPayParam,data,lessPayAmount,<font color="#ff3333">mobileKey</font>)
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#33719;&#21462;&#31532;&#19977;&#26041;&#25903;&#20184;&#21442;&#25968;&#22833;&#36133;&#65292;&#21017;&#36864;&#20986; </font>
    </p>
    <p>
      
    </p>
    <p>
      &#25630;&#28165;&#26970;&#36825;&#20010;mobileKey&#30340;&#36755;&#20837;&#28857;&#65292;&#35813;&#20540;&#29992;&#20110;<font color="#660099">&#21019;&#24314;&#31614;&#21517;</font>
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1634933514" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1818610020" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1634933514" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1818610020" SOURCE="ID_1634933514" STARTARROW="None" STARTINCLINATION="0;0;"/>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1474363488015" ID="ID_1271390045" MODIFIED="1476174005012">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#26681;&#25454;(orderInfoModel.<font color="#cc0000">getPayLimitTime()</font>&#160;- currTime&#160;)/1000/60&#33719;&#21462;&#21333;&#20301;&#20026;&#20998;&#38047;&#30340;&#36807;&#26399;&#26102;&#38388;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474364611449" ID="ID_1140826665" LINK="2016/10/TradeVo.java" MODIFIED="1476668539263">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;new <b><font color="#006666">TradVo</font></b>&#160;
    </p>
    <p>
      
    </p>
    <p>
      tradeVo&#30340;tradeid&#37319;&#29992;&#30340;&#23601;&#26159;<font color="#990099"><b>orderId</b></font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474364649730" ID="ID_94556266" MODIFIED="1474364733062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35774;&#32622;&#21508;&#31181;&#24517;&#39035;&#21442;&#25968;
    </p>
    <p>
      
    </p>
    <p>
      &#20851;&#38190;&#30340;&#26159;<font color="#000099">&#26681;&#25454;paytype&#65292;&#35774;&#32622;paytype,openid,authcode&#31561;&#20851;&#38190;&#21442;&#25968;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1474364755648" ID="ID_1842444216" MODIFIED="1474365482686">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;String secret = <font color="#000099">createSecrect</font>(tradeVo,mobileKey);
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#23601;&#26159;&#26681;&#25454;&#25903;&#20184;&#23453;&#65292;&#24494;&#20449;&#36890;&#29992;&#30340;&#39564;&#31614;&#26041;&#24335;&#36827;&#34892;&#31614;&#21517;&#24182;&#36820;&#22238;&#35813;&#31614;&#21517;&#20540;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474365516866" ID="ID_1386556895" MODIFIED="1474426112874">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;&#35843;&#29992;<b><font color="#990099">mdpaygate&#39033;&#30446;</font></b>&#30340;tradeService.createMobileParams(tradeVo,secret);
    </p>
    <p>
      
    </p>
    <p>
      &#36820;&#22238;&#30456;&#20851;&#30340;<font color="#000099">&#31532;&#19977;&#26041;&#25903;&#20184;&#21442;&#25968;&#38598;&#21512;Map&lt;string,string&gt;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1474943021151" ID="ID_1784036961" MODIFIED="1474943136350">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#33719;&#21462;&#22522;&#20110;redis&#30340;&#20998;&#24067;&#38145;MD_PAY_GATE_createMobileParams_tradeId
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#33719;&#21462;&#20998;&#24067;&#38145;&#22833;&#36133;&#30452;&#25509;&#36864;&#20986;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1474943154152" ID="ID_709845415" MODIFIED="1476927717333">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#35843;&#29992;&#22522;&#20110;&#27169;&#26495;serviceTemplate.<b><font color="#0000cc">exInTransaction</font></b>
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1474943212199" ID="ID_289731078" MODIFIED="1476693174995" TEXT="&#x5b9e;&#x73b0;doAction&#x65b9;&#x6cd5;">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1474944030269" ID="ID_98790767" MODIFIED="1474944118274">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#20026;paraMap&#35774;&#32622;&#20851;&#38190;&#21442;&#25968;payType&#23545;&#24212;&#30340;partnerid,alipayid,privateRSAKey
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476671245122" FOLDED="true" ID="ID_1934980311" MODIFIED="1476693400364">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#26681;&#25454;tradeid(&#23454;&#38469;&#23601;&#26159;orderid&#65292;<font color="#0033cc">&#36825;&#37324;tradeid&#36739;&#20043;tradeno&#23569;&#20102;&#26368;&#21518;&#22235;&#20301;&#25968;</font>)&#65292;&#20174;md_pay_trade&#25552;&#21462;<font color="#006666">lastDomin&#35760;&#24405;(&#20134;&#21363;tradeid&#21487;&#23545;&#24212;&#22810;&#20010;tradeno,&#21407;&#22240;&#30475;&#21518;&#38754;&#65292;&#25552;&#21462;&#26368;&#21518;&#30340;&#19968;&#27425;)</font>&#65292;<font color="#ff3300">&#33509;&#20026;&#31354;</font>&#65292;&#21017;&#35843;&#29992;tradeDomainRepository.<font color="#990099"><b>createTradeDomain</b></font>(tradeVO)&#21019;&#24314;&#26032;&#35760;&#24405;,&#24182;&#29983;&#25104;&#20132;&#26131;&#21495;tradeno:
    </p>
    <p>
      tradeno&#32452;&#25104;&#20026;&#65306;z&#26085;&#26399;+&#39034;&#24207;&#20998;&#37197;&#30340;&#25972;&#25968;&#24207;&#21495;+0000&#65292;&#36215;&#22987;&#25968;&#20026;0&#65292;&#21363;z&#26085;&#26399;+&#39034;&#24207;&#20998;&#37197;&#25972;&#25968;&#24207;&#21495;&#30340;&#35746;&#21333;&#65292;&#26368;&#22810;&#21487;&#23581;&#35797;10000&#27425;&#65292;&#20294;&#31243;&#24207;&#37324;&#20889;&#27515;&#20026;1000&#27425;&#23601;&#20316;&#24223;&#20102;&#25913;&#35746;&#21333;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476672056020" ID="ID_290827936" MODIFIED="1476672243356">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#006600">&#33509;&#19981;&#20026;&#31354;</font>&#65292;&#21363;&#23384;&#22312;&#20132;&#26131;&#35760;&#24405;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476672723252" ID="ID_865066156" MODIFIED="1476672789893">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33509;&#35746;&#21333;&#29366;&#24577;&#20026;<font color="#006600">&#20132;&#26131;&#25104;&#21151;</font>&#25110;<font color="#ff3300">&#20851;&#38381;</font>&#65292;&#21017;<font color="#0033cc">&#30452;&#25509;&#20197;&#22833;&#36133;&#29366;&#24577;&#36864;&#20986;</font>&#65292;&#21578;&#30693;&#24050;&#32463;&#32467;&#26463;&#35813;&#20132;&#26131;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476672946720" ID="ID_258883582" MODIFIED="1476673013396" TEXT="&#x5426;&#x5219;">
<node CREATED="1476672867052" ID="ID_1626557597" MODIFIED="1476672965461">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#65292;tradeVo&#33509;&#26377;externToken&#65292;&#21017;&#22312;tradeDomain&#24050;&#23384;&#35760;&#24405;&#20013;&#36861;&#21152;externToken
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476672971493" ID="ID_1422594831" MODIFIED="1476672991144" TEXT="2&#x3001;&#x4e3a;tradeDomain&#x8bbe;&#x7f6e;payBank"/>
<node CREATED="1476673015549" FOLDED="true" ID="ID_1862400954" MODIFIED="1476691407202">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;&#33509;tradeVo&#20013;tradeNo<font color="#006600">&#19981;&#20026;&#31354;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1476673168671" FOLDED="true" ID="ID_951868515" MODIFIED="1476691384835">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33509;tradVo&#30340;tradeNo<font color="#ff3300">&#19981;&#31561;&#20110;</font>lastDomain&#30340;tradeNo
    </p>
  </body>
</html></richcontent>
<node CREATED="1476673500419" ID="ID_1581461684" MODIFIED="1476674330303">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23581;&#35797;&#20851;&#38381;lastDomain&#23545;&#24212;&#30340;&#20132;&#26131;&#35760;&#24405;&#65292;&#27880;&#24847;&#26159;&#35760;&#24405;&#65292;&#19981;&#26159;&#20132;&#26131;&#65281;
    </p>
    <p>
      <font color="#009999">boolClose = lastDomain.close(); </font>
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476674307368" ID="ID_369352062" MODIFIED="1476674600126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29992;tradeVo&#30340;tradeNo<font color="#006600">&#20877;&#27425;&#25552;&#21462;</font>tradeDomin&#65292;<font color="#ff3300">&#33509;&#19981;&#23384;&#22312;</font>&#65292;&#21017;<font color="#0033cc">&#21019;&#24314;&#26032;&#30340;&#20132;&#26131;&#35760;&#24405;</font>&#65292;&#24182;&#36820;&#22238;tradeDomin
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1476674413765" ID="ID_1865340884" MODIFIED="1476674560423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33509; tradeVo.tradeNo == lastDomin.tradeNo
    </p>
    <p>
      
    </p>
    <p>
      &#26356;&#26032;lastDomain&#30340;<font color="#0033cc">payType</font>&#20026;tradeVo.getPayType()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1476674504540" ID="ID_403896041" MODIFIED="1476674546133">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3.1&#12289;&#33509;tradeVo.tradeNo<font color="#ff3300">&#20026;&#31354;&#65281;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1476691253559" ID="ID_912905032" LINK="#ID_369352062" MODIFIED="1476691290196" TEXT="&#x5224;&#x65ad;&#x5176;&#x662f;&#x5426;&#x53ef;&#x7528;&#xff0c;&#x82e5;&#x4e0d;&#x53ef;&#x7528;&#xff0c;&#x5219;&#x5173;&#x95ed;&#x8ba2;&#x5355;&#xff0c;&#x521b;&#x5efa;&#x65b0;&#x7684;&#x4ea4;&#x6613;&#x8bb0;&#x5f55;"/>
<node CREATED="1476691394531" ID="ID_173675887" MODIFIED="1476693087881">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19981;&#21487;&#29992;&#26465;&#20214;&#20026;&#65306;
    </p>
  </body>
</html></richcontent>
<node CREATED="1476692257492" ID="ID_765264758" MODIFIED="1476692431144" TEXT="businessType&#x4e0e;tradeVo.businessType&#x4e0d;&#x7b26;"/>
<node CREATED="1476692433215" ID="ID_307419248" MODIFIED="1476692481562" TEXT="tradeMoney&#x4e0e;tradeVo.payMoney&#x4e0d;&#x7b26;"/>
<node CREATED="1476692496267" ID="ID_1684018336" MODIFIED="1476692545705" TEXT="payType&#x4e0d;&#x7b26;&#xff0c;&#x65f6;&#x95f4;&#x8fc7;&#x671f;&#xff0c;&#x4e0d;&#x662f;&#x65b0;&#x521b;&#x5efa;&#x72b6;&#x6001;&#xff0c;&#x90fd;&#x5c06;&#x89c6;&#x4e3a;&#x4e0d;&#x53ef;&#x7528;"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1476693177315" ID="ID_137567886" MODIFIED="1476693282774">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#12289;partnerId,alipayId,privateRSAKey&#26377;&#19968;&#20010;&#20026;&#31354;&#65292;&#21363;&#20197;&#22833;&#36133;&#29366;&#24577;&#36864;&#20986;&#22788;&#29702;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476693292766" ID="ID_87125214" MODIFIED="1476693373679">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#12289;&#35774;&#32622;tradeDomain.setSellerAccountName(alipayId)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;tradeDomain.setOpenId(tradeVo.getOpenId())
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1476675180967" ID="ID_1749462268" MODIFIED="1476693382285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      5&#12289;tradeDomain.getMobileResult
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1476777385928" ID="ID_642623755" MODIFIED="1476777530115">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26680;&#24515;&#23601;&#19968;&#21477;&#65306;String url = createMobileParam(clientIp,imei,<font color="#006600">partnerid</font>,<font color="#990099">sellerid</font>,<font color="#660066">privateRSAKey</font>)
    </p>
    <p>
      
    </p>
    <p>
      &#26500;&#36896;&#29992;&#20110;&#25163;&#26426;&#31471;&#35831;&#27714;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;url&#25110;&#32773;&#34920;&#21333;form&#20449;&#24687;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffff99" CREATED="1476777875382" ID="ID_1059146717" MODIFIED="1476779680512">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;TradePayManager <font color="#660066">tradePayManager</font>&#160;= getTradePayManager();
    </p>
    <p>
      
    </p>
    <p>
      &#37117;&#26159;&#38582;&#23646;&#20110;tradeDomain&#23545;&#35937;&#20869;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#006600">&#36825;&#37324;tradePayManager&#26377;N&#22810;&#20010;&#23454;&#29616;&#23545;&#24212;N&#22810;&#20010;&#21512;&#20316;&#25903;&#20184;&#31532;&#19977;&#26041;,</font><font color="#000099">&#26681;&#25454;paytype&#20174;&#23383;&#20856;&#37324;&#25552;&#21462;&#30456;&#24212;&#30340;tradepaymananger&#23454;&#20363;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1476779688228" ID="ID_399079718" MODIFIED="1476780726139">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;String requestUrl =&#160;<font color="#000099">tradePayManager</font>.<font color="#990099">createMobileParam</font>(...)&#21516;&#20110;&#36755;&#20837;&#21442;&#25968;&#21015;&#34920;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#21508;&#31867;&#20855;&#20307;&#23454;&#29616;&#65281;&#32780;&#23454;&#38469;&#20013;</font><font color="#006666">&#24456;&#22810;(&#19981;&#26159;&#20840;&#37096;,alipay&#23601;&#26159;&#26500;&#24314;url)</font><font color="#cc0000">&#24050;&#32463;&#23454;&#38469;</font><font color="#000099">&#35843;&#29992;&#20102;&#31532;&#19977;&#26041;&#25903;&#20184;&#25509;&#21475;&#23436;&#25104;&#20102;&#25903;&#20184;&#21834;</font><font color="#cc0000">&#65281; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#cc0000">&#32780;&#36820;&#22238;&#30340;&#19981;&#26159;&#20160;&#20040;&#29399;&#23617;url&#65292;&#32780;&#26159;&#21508;&#31867;</font><font color="#006600">xml,json&#31561;&#25903;&#20184;&#32467;&#26524;</font><font color="#cc0000">&#30340;&#25968;&#25454;&#26684;&#24335;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1476780538602" ID="ID_83680463" MODIFIED="1476780643095">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      6&#12289;&#30446;&#21069;&#30475;&#26469;<b><font color="#cc0000">&#27492;&#27493;&#39588;&#22810;&#20313;</font></b>&#65292;tradeDomainRepository.storageNewTradeDomain(tradeDomain) &#160;or&#160;&#160;tradeDomainRepository.storageUpdateTradeDomain(tradeDomain)
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1476927877043" ID="ID_1225351614" MODIFIED="1476928361516">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      7&#12289;&#26681;&#25454;&#19981;&#36890;&#30340;paytype&#65292;&#37319;&#21462;&#19981;&#21516;&#30340;&#26041;&#24335;&#22788;&#29702;&#36820;&#22238;url
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000">&#36825;&#37324;&#19981;&#20877;&#21015;&#20986;&#26469;&#20102;&#65292;&#26680;&#24515;&#30340;&#21518;&#32493;&#22788;&#29702;&#23601;&#22312;&#36825;&#65292;&#22914;&#26524;&#25903;&#20184;&#25104;&#21151;&#65292;&#21152;&#20837;&#38431;&#21015;&#24182;&#31561;&#24453;jobcenter&#21047;&#26032;&#35746;&#21333;&#29366;&#24577;&#30342;&#22312;&#27492;</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="yes"/>
<node CREATED="1476927929940" ID="ID_387548044" MODIFIED="1476927942786" TEXT="weixin_scanpay">
<node CREATED="1476928155435" ID="ID_1265466866" MODIFIED="1476928165742" TEXT="processWxScanPayResult"/>
</node>
<node CREATED="1476927944658" ID="ID_725639884" MODIFIED="1476927956360" TEXT="common_scanpay">
<node CREATED="1476928136657" ID="ID_1735258738" MODIFIED="1476928178441" TEXT="processCommonScanPayResult"/>
</node>
<node CREATED="1476927969555" ID="ID_797039644" MODIFIED="1476927981302" TEXT="weifutong_scan_pay">
<node CREATED="1476928118142" ID="ID_1548305359" MODIFIED="1476928134064" TEXT="processWeiFuTongScanPayResult"/>
</node>
</node>
<node CREATED="1476928013391" ID="ID_835590746" MODIFIED="1476928091188" TEXT="8&#x3001;&#x518d;&#x6b21;&#x7edf;&#x4e00;&#x5904;&#x7406;url&#x8fd4;&#x56de;&#x53c2;&#x6570;,String returndata = result.get(&quot;ur&quot;) then return callresult.sucess...."/>
<node CREATED="1474944144806" ID="ID_1182645934" MODIFIED="1474944407338">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#12289;&#26681;&#25454;trade_id&#20174;<b><font color="#0000cc">md_pay_trade</font></b>&#34920;&#25552;&#21462;&#23545;&#24212;&#35760;&#24405;&#24182;&#25353;pay_trade_id&#20027;&#38190;&#38477;&#24207;&#25490;&#24207;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1476348112185" ID="ID_785734793" LINK="2016/10/TradeServiceImpl.createMobileParams%5BcheckParams%5D.java" MODIFIED="1476348278802" TEXT="checkParam"/>
<node CREATED="1476348125349" ID="ID_566806444" LINK="2016/10/TradeServiceImpl.createMobileParams%5BdoAction%5D.java" MODIFIED="1476348213603" TEXT="doAction"/>
</node>
</node>
</node>
<node CREATED="1474365721529" ID="ID_1218791231" MODIFIED="1474365770619" TEXT="3&#x3001;&#x6839;&#x636e;&#x8fd4;&#x56de;&#x7684;Map&lt;String,String&gt;&#x6253;&#x5305;&#x8fdb;orderPayModel&#x540e;&#x8fd4;&#x56de;"/>
</node>
<node CREATED="1476238725883" ID="ID_1309531412" MODIFIED="1476238742292" TEXT="&#x6700;&#x7ec8;&#x8fd4;&#x56de;OrderPayModel"/>
</node>
</node>
</node>
<node CREATED="1476236684044" ID="ID_626171637" MODIFIED="1476236792433">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#336600">6&#12289;</font></b>getAdapterResultFromSuccess(shOrderCreateParam,<font color="#660099">bindOrderResult</font>,<font color="#336600">payOrderResult</font>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1476067932313" FOLDED="true" ID="ID_1029663343" MODIFIED="1481162798736" TEXT="&#x53c2;&#x6570;&#x5bf9;&#x8c61;">
<node CREATED="1476067921229" ID="ID_1544122475" MODIFIED="1481162794809" TEXT="shOrderCreateParam">
<node CREATED="1476067944680" ID="ID_344495042" MODIFIED="1476067953776">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;/* &#29992;&#25143;id&#65292;&#24517;&#22635; */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private long userId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String userName;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#38376;&#24215;id */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private long shopId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#28040;&#36153;&#37329;&#39069; */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private float consumeMoney;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#19981;&#21442;&#19982;&#36820;&#29616;&#37329;&#39069; */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private float outRebate;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#20195;&#37329;&#21048;id&#12290;&#22914;&#26524;&#26410;&#20351;&#29992;&#21017;&#20026;0 */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private long voucherId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#26159;&#21542;&#36866;&#29992;&#36820;&#29616;&#37329;&#39069; */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private boolean useRebate;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/*
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* &#25903;&#20184;&#26041;&#24335;&#65306; &quot;0&quot;&#65306;&#19981;&#20351;&#29992;&#31532;&#19977;&#26041;&#25903;&#20184;&#26041;&#24335; &quot;1&quot; &quot;&#25903;&#20184;&#23453;&#32593;&#39029;&#25903;&#20184;&quot; &quot;2&quot; &quot;&#25903;&#20184;&#23453;&#38065;&#21253;&#25903;&#20184;&quot; &quot;3&quot; &quot;&#25903;&#20184;&#23453;&#19968;&#38190;&#25903;&#20184;&quot; &quot;4&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* &quot;&#36130;&#20184;&#36890;&#32593;&#39029;&#25903;&#20184;&quot; &quot;6&quot; &quot;&#24494;&#20449;&#23458;&#25143;&#31471;&#25903;&#20184;&quot; &quot;7&quot; &quot;&#25903;&#20184;&#23453;&#26032;&#29256;&#25910;&#38134;&#21488;&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;private int payType;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* &#35746;&#21333;id&#12290;&#22914;&#26524;&#35813;&#21442;&#25968;&#20026;0 */
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String orderId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String pid;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String mid;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String mobilePhone;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String isWeChat;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String openId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private long operatorId;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String authCode;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;private String operatorName;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1473239392163" FOLDED="true" ID="ID_1614984069" MODIFIED="1484287082941" TEXT="&#x6389;&#x5355;&#x539f;&#x56e0;">
<node CREATED="1473642682149" ID="ID_359865984" MODIFIED="1475029831429" TEXT="&#x652f;&#x4ed8;&#x5b9d;">
<node CREATED="1473318673560" ID="ID_130624948" MODIFIED="1473318715281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      0907,Z1609075242
    </p>
    <p>
      &#25481;&#21333;&#65292;1&#28857;&#19979;&#30340;&#21333;&#65292;7&#28857;26&#25165;&#22238;&#35843;&#65292;&#23548;&#33268;&#25481;&#21333;
    </p>
    <p>
      &#25903;&#20184;&#23453;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1473239404606" ID="ID_294480010" MODIFIED="1473239429839" TEXT="0907&#xff0c;&#x652f;&#x4ed8;&#x5b9d;&#x6389;&#x5355;&#x90fd;&#x662f;&#x56e0;&#x4e3a;&#x6ca1;&#x6709;&#x6536;&#x5230;&#x56de;&#x8c03;&#x5bfc;&#x81f4;&#xff0c;&#x6b64;&#x79cd;&#x60c5;&#x51b5;&#x65e0;&#x6cd5;&#x63a7;&#x5236;"/>
<node CREATED="1473398313812" ID="ID_1819768831" MODIFIED="1473398399236">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      0908,Z160908137236&#65292;&#22238;&#35843;&#26102;&#38388;&#22826;&#26202;
    </p>
    <p>
      15:22&#19979;&#21333;&#65292;18&#65306;21&#22238;&#35843;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473642706972" ID="ID_301418756" MODIFIED="1475029831434" TEXT="&#x5fae;&#x4fe1;">
<node CREATED="1473397852344" ID="ID_1031782235" MODIFIED="1473398042788">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      0908&#65292;Z160908311412,&#30830;&#23450;&#35843;&#29992;
    </p>
    <p>
      com.shanhui.service.shop.ShopService.getShopAndNowRebateById(long)&#26410;&#36820;&#22238;
    </p>
    <p>
      
    </p>
    <p>
      &#38376;&#24215;id:8028258
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473660030276" ID="ID_421232651" MODIFIED="1484279222077" TEXT="other">
<node CREATED="1473660039127" FOLDED="true" ID="ID_1634373046" MODIFIED="1484287009954">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      redis&#25805;&#20316;&#33539;&#20363;
    </p>
    <p>
      
    </p>
    <p>
      set<font color="#0033cc">nx</font>&#31995;&#21015;&#65292;set if <font color="#0033cc">n</font>ot e<font color="#0033cc">x</font>ist
    </p>
  </body>
</html></richcontent>
<node CREATED="1473660048468" ID="ID_260339712" MODIFIED="1473663835365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.naxsu.redis;
    </p>
    <p>
      
    </p>
    <p>
      import static org.junit.Assert.*;
    </p>
    <p>
      
    </p>
    <p>
      import java.util.ArrayList;
    </p>
    <p>
      import java.util.List;
    </p>
    <p>
      
    </p>
    <p>
      import org.junit.Before;
    </p>
    <p>
      import org.junit.Test;
    </p>
    <p>
      
    </p>
    <p>
      import redis.clients.jedis.Jedis;
    </p>
    <p>
      import redis.clients.jedis.exceptions.JedisDataException;
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      &#160;* &#23545;String&#31867;&#22411;&#36827;&#34892;&#25805;&#20316;
    </p>
    <p>
      &#160;* &#20026;&#20102;&#20731;&#20813;&#19978;&#38754;&#30340;&#27979;&#35797;&#30340;&#32467;&#26524;&#24433;&#21709;&#21040;&#24403;&#21069;&#27979;&#35797;&#26041;&#27861;&#65292;&#27979;&#35797;&#20043;&#21069;&#20808;&#25226;&#25968;&#25454;&#24211;&#32473;&#28165;&#31354;
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      public class StringValuesCommandsTest{
    </p>
    <p>
      Jedis jedis = null;
    </p>
    <p>
      
    </p>
    <p>
      @Before
    </p>
    <p>
      public void before(){
    </p>
    <p>
      jedis = new Jedis(&quot;192.168.26.128&quot;);
    </p>
    <p>
      jedis.auth(&quot;123456&quot;);
    </p>
    <p>
      
    </p>
    <p>
      jedis.flushDB();
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Test
    </p>
    <p>
      public void flushDB() {
    </p>
    <p>
      jedis.flushDB();// &#28165;&#31354;redis
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void setAndGet() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#23545;key&#20026;foo&#36827;&#34892;&#36171;&#20540;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String status = jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#36820;&#22238;OK
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;OK&quot;, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#33719;&#21462;key&#20026;foo&#30340;&#20540;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String value = jedis.get(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#21462;&#20986;&#30340;&#20540;&#20026;bar,&#25152;&#20197;&#30456;&#31561;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#30001;&#20110;&#19981;&#23384;&#22312;&#21517;&#20026;bar&#30340;key,&#25152;&#20197;&#21462;&#20986;&#26469;&#30340;&#20540;&#20026;null
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(null, jedis.get(&quot;bar&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void getSet() {
    </p>
    <p>
      &#160;&#160;&#160;&#160; <font color="#006600">//&#23558;foo&#30340;&#20540;&#35774;&#20026;bar&#65292;&#24182;</font><font color="#ff3300">&#36820;&#22238;foo&#30340;&#26087;&#20540;</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String value = jedis.<font color="#0033cc">getSet</font>(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#26087;&#20540;&#20026;null
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(null, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.get(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void mget() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//mget:&#36820;&#22238;&#25152;&#26377;(&#19968;&#20010;&#25110;&#22810;&#20010;)&#32473;&#23450;key&#30340;&#20540;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;List&lt;String&gt; values = jedis.mget(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;List&lt;String&gt; expected = new ArrayList&lt;String&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(null);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(null);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(expected, values);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected = new ArrayList&lt;String&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(&quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(null);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;values = jedis.mget(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(expected, values);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;bar&quot;, &quot;foo&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected = new ArrayList&lt;String&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(&quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;expected.add(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;values = jedis.mget(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(expected, values);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void setnx() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//setnx&#65306;&#23558;key&#30340;&#20540;&#35774;&#20026;value&#65292;&#24403;&#19988;&#20165;&#24403;key&#19981;&#23384;&#22312;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long status = jedis.setnx(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(1, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;status = jedis.setnx(&quot;foo&quot;, &quot;bar2&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(0, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void setex() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#32473;foo&#35774;&#32622;&#29983;&#23384;&#26102;&#38388;&#35774;&#20026;20&#31186;,&#20540;&#20026;bar
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String status = jedis.setex(&quot;foo&quot;, 20, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;OK&quot;, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#36820;&#22238;foo&#30340;&#21097;&#20313;&#29983;&#23384;&#26102;&#38388;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long ttl = jedis.ttl(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertTrue(ttl &gt; 0 &amp;&amp; ttl &lt;= 20);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void mset() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//mset:&#21516;&#26102;&#35774;&#32622;&#19968;&#20010;&#25110;&#22810;&#20010;key-value&#23545;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String status = jedis.mset(&quot;foo&quot;, &quot;bar&quot;, &quot;bar&quot;, &quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;OK&quot;, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;foo&quot;, jedis.get(&quot;bar&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void msetnx() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//msetnx:&#21516;&#26102;&#35774;&#32622;&#19968;&#20010;&#25110;&#22810;&#20010;key-value&#23545;&#65292;&#24403;&#19988;&#20165;&#24403;key&#19981;&#23384;&#22312;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long status = jedis.msetnx(&quot;foo&quot;, &quot;bar&quot;, &quot;bar&quot;, &quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(1, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;foo&quot;, jedis.get(&quot;bar&quot;));
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;status = jedis.msetnx(&quot;foo&quot;, &quot;bar1&quot;, &quot;bar2&quot;, &quot;foo2&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(0, status);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;foo&quot;, jedis.get(&quot;bar&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test(expected = JedisDataException.class)
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incrWrongValue() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//foo&#30340;&#20540;&#26159;&#23383;&#31526;&#20018;&#31867;&#22411;&#65292;&#25191;&#34892;incr&#20989;&#25968;&#21363;&#25243;&#20986;&#24322;&#24120;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.incr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incr() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#22914;&#26524;foo&#19981;&#23384;&#22312;&#65292;&#20197;0&#20026;foo&#30340;&#21021;&#22987;&#20540;&#65292;&#28982;&#21518;&#25191;&#34892;INCR&#25805;&#20316;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.incr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(1, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.incr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(2, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test(expected = JedisDataException.class)
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incrByWrongValue() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//foo&#30340;&#20540;&#26159;&#23383;&#31526;&#20018;&#65292;&#32473;&#20182;&#22686;&#21152;2&#20928;&#25243;&#20986;&#24322;&#24120;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.incrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incrBy() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#22914;&#26524;foo&#19981;&#23384;&#22312;&#65292;&#20197;0&#20026;foo&#30340;&#21021;&#22987;&#20540;&#65292;&#28982;&#21518;&#25191;&#34892;INCRBY&#21629;&#20196;&#65292;&#22686;&#21152;2&#12290;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.incrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(2, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.incrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(4, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test(expected = JedisDataException.class)
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void decrWrongValue() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//foo&#30340;&#20540;&#20026;&#23383;&#31526;&#20018;&#65292;&#19981;&#33021;&#25805;&#20316;&#20943;&#19968;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.decr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void decr() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#22914;&#26524;foo&#19981;&#23384;&#22312;&#65292;&#20197;0&#20026;foo&#30340;&#21021;&#22987;&#20540;&#65292;&#28982;&#21518;&#25191;&#34892;DECR&#25805;&#20316;&#12290;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.decr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(-1, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.decr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(-2, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test(expected = JedisDataException.class)
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void decrByWrongValue() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//foo&#30340;&#20540;&#20026;&#23383;&#31526;&#20018;&#65292;&#19981;&#33021;&#25805;&#20316;&#20943;2
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.decrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void decrBy() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.decrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(-2, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.decrBy(&quot;foo&quot;, 2);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(-4, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void append() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//foo&#19981;&#23384;&#22312;&#65292;&#32473;foor&#30340;&#20540;&#35774;&#20026;bar&#65292;&#36820;&#22238;append&#21518;&#30340;&#20540;&#38271;&#24230;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.append(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(3, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;bar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#20877;&#27425;append,&#22312;&#20043;&#21069;&#30340;&#20540;&#20043;&#21518;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;value = jedis.append(&quot;foo&quot;, &quot;bar&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(6, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;barbar&quot;, jedis.get(&quot;foo&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void substr() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;s&quot;, &quot;This is a string&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#25130;&#23383;&#31526;&#20018;&#25805;&#20316;&#65292;&#27809;&#20160;&#20040;&#22909;&#35828;&#30340;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;This&quot;, jedis.substr(&quot;s&quot;, 0, 3));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;ing&quot;, jedis.substr(&quot;s&quot;, -3, -1));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;This is a string&quot;, jedis.substr(&quot;s&quot;, 0, -1));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot; string&quot;, jedis.substr(&quot;s&quot;, 9, 100000));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void strlen() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;s&quot;, &quot;This is a string&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(&quot;This is a string&quot;.length(), jedis.strlen(&quot;s&quot;).intValue());
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incrLargeNumbers() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.incr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(1, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(1L + Integer.MAX_VALUE, (long) jedis.incrBy(&quot;foo&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Integer.MAX_VALUE));
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;@Test(expected = JedisDataException.class)
    </p>
    <p>
      &#160;&#160;&#160;&#160;public void incrReallyLargeNumbers() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;jedis.set(&quot;foo&quot;, Long.toString(Long.MAX_VALUE));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long value = jedis.incr(&quot;foo&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;assertEquals(Long.MIN_VALUE, value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473664223198" ID="ID_1290270550" MODIFIED="1473664260009" TEXT="Java&#x65b9;&#x6cd5;&#x7684;final&#x53c2;&#x6570;&#xff0c;&#x5bf9;&#x4e8e;&#x5f15;&#x7528;&#x7c7b;&#x578b;&#xff0c;&#x5c31;&#x662f;&#x4e0d;&#x80fd;&#x518d;&#x5728;&#x65b9;&#x6cd5;&#x5185;&#x90e8;&#x91cd;&#x65b0;new&#x5b9e;&#x4f8b;"/>
<node CREATED="1474332218368" ID="ID_1928482105" LINK="2016/09/jedis-8-invoke-method.mht" MODIFIED="1474332358983" TEXT="jedis&#x7684;&#x516b;&#x79cd;&#x8c03;&#x7528;&#x65b9;&#x5f0f;"/>
</node>
<node CREATED="1473819319799" FOLDED="true" ID="ID_23633334" MODIFIED="1482364536229" TEXT="&#x538b;&#x6d4b;sql&#x8bed;&#x53e5;">
<node CREATED="1473819342506" ID="ID_1389751221" MODIFIED="1475030141821" TEXT="select ">
<node CREATED="1473819351428" ID="ID_1236876261" MODIFIED="1473819357409" TEXT="&#x7ebf;&#x4e0a;&#x7cfb;&#x7edf;">
<node CREATED="1473819475897" FOLDED="true" ID="ID_1912710726" MODIFIED="1475030144776" TEXT="1">
<node CREATED="1473819502868" ID="ID_865885868" MODIFIED="1473819520198">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      select order_id orderid, rebate_use_money isusedrate,pay_id paytype,pay_time timestamp,FROM_UNIXTIME(pay_time/1000,'%Y%m%d') date,ostype,&#160; FROM_UNIXTIME(pay_time/1000,'%H:%i:%s') opttime,order_status orderstatus,pay_status paystatus,refund_status refundstatus,&#160; bill_amount orderamount,jiesuan_amount+pay_fee receivedamount,is_check ischeck&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      from md_order_info&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      where&#160; pay_time&gt;=UNIX_TIMESTAMP(20160501)*1000
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and pay_time&lt;UNIX_TIMESTAMP(20160601)*1000&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and shop_id=@id
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and ((refund_status = -1 and pay_status = 2) or (refund_status=2 and pay_status=2) or (pay_status=2 and order_status=5))
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      order by pay_time desc;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473819524511" FOLDED="true" ID="ID_1719925529" MODIFIED="1475030145953" TEXT="2">
<node CREATED="1473819527574" ID="ID_1917529453" MODIFIED="1473819542464">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      select order_id orderid, rebate_use_money isusedrate,pay_id paytype,pay_time timestamp,FROM_UNIXTIME(pay_time/1000,'%Y%m%d') date,ostype,&#160; FROM_UNIXTIME(pay_time/1000,'%H:%i:%s') opttime,order_status orderstatus,pay_status paystatus,refund_status refundstatus,&#160; bill_amount orderamount,jiesuan_amount+pay_fee receivedamount,is_check ischeck&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      from md_order_info&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      where&#160; pay_time&gt;=UNIX_TIMESTAMP(20160501)*1000
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and pay_time&lt;UNIX_TIMESTAMP(20160601)*1000&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and shop_id=@id
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and ((refund_status = -1 and pay_status = 2) or (refund_status=2 and pay_status=2) or (pay_status=2 and order_status=5))&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and operator_id=@optid
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      order by pay_time desc;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1473819358434" ID="ID_907533097" MODIFIED="1473819363979" TEXT="&#x90e8;&#x5206;&#x4fee;&#x6539;">
<node CREATED="1473819550389" FOLDED="true" ID="ID_51958310" MODIFIED="1475030147544" TEXT="1">
<node CREATED="1473819553941" ID="ID_991768437" MODIFIED="1473819569544">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      select order_id orderid, rebate_use_money isusedrate,pay_id paytype,pay_time timestamp,FROM_UNIXTIME(pay_time/1000,'%Y%m%d') date,ostype,&#160; FROM_UNIXTIME(pay_time/1000,'%H:%i:%s') opttime,order_status orderstatus,pay_status paystatus,refund_status refundstatus,&#160; bill_amount orderamount,jiesuan_amount+pay_fee receivedamount,is_check ischeck&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      from md_order_info&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      where&#160; order_id like 'Z1605%' and shop_id=@id
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and ((refund_status = -1 and pay_status = 2) or (refund_status=2 and pay_status=2) or (pay_status=2 and order_status=5))
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      order by order_id&#160;desc;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473819573532" FOLDED="true" ID="ID_1737801288" MODIFIED="1475030148737" TEXT="2">
<node CREATED="1473819576519" ID="ID_1894217496" MODIFIED="1473819593430">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      select order_id orderid, rebate_use_money isusedrate,pay_id paytype,pay_time timestamp,FROM_UNIXTIME(pay_time/1000,'%Y%m%d') date,ostype,&#160; FROM_UNIXTIME(pay_time/1000,'%H:%i:%s') opttime,order_status orderstatus,pay_status paystatus,refund_status refundstatus,&#160; bill_amount orderamount,jiesuan_amount+pay_fee receivedamount,is_check ischeck&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      from md_order_info&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      where &#160;order_id like 'Z1605%' &#160;and shop_id=@id
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and ((refund_status = -1 and pay_status = 2) or (refund_status=2 and pay_status=2) or (pay_status=2 and order_status=5))&#160;
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      and operator_id=@optid
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      order by order_id&#160;desc;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1473819346722" ID="ID_1179696665" MODIFIED="1473819402598" TEXT="insert">
<node CREATED="1473819402600" FOLDED="true" ID="ID_407578353" MODIFIED="1475030137440" TEXT="&#x5199;&#x5165;md_order_info">
<node CREATED="1473819365991" ID="ID_1503855781" MODIFIED="1473819390881">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      insert into mdorder.md_order_info
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      (order_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      supplier_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      shop_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      shop_name,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      secret,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_channel,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_status,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      add_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      bind_limit_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      remark,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      user_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      mobile,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      mid,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      ostype,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      bind_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      bill_amount,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      surplus,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      rebate_use_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      money_paid,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_amount,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_off_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      no_rebate_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_status,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_limit_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_name,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_sync,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      trade_pay_account,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      trade_no,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      third_trade_no,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      confirm_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      refund_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      refund_status,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      is_refunded,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      schema_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      schema_name,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      contract_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      rebate_rate,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      settlement_rate,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      rebate_status,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_rebate_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_rebate_total_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      operator_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      operator_name,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      operator_mid,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_source,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_user_hide,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_shop_hide,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      last_update_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      route_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      extend_filed1,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      extend_filed2,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      extend_filed3,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      extend_filed4,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      extend_filed5,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      city_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      rebate_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      first_trade_rebate_money,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      is_check,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pay_fee,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      jiesuan_amount,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      out_order_id
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      )
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      values
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      ('Z16091399996',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      8009371,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      8015487,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '50&#23706;&#40092;&#33590;&#19987;&#21334;&#36830;&#38145;(&#29790;&#37329;&#19968;&#36335;&#24215;)',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '20181388',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      2,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      5,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473741576550,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473742476550,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-size: 11.0pt">
      <font face="Calibri">'</font><font face="Microsoft YaHei">&#21387;&#27979;&#19987;&#29992;</font><font face="Calibri">', </font>
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      106071300,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '2088902377800046',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      106,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473741576568,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.01,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.01,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      2,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473748776568,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      10,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-size: 11.0pt">
      <font face="Calibri">'</font><font face="Microsoft YaHei">&#25903;&#20184;&#23453;&#26381;&#21153;&#31383;&#25903;&#20184;</font><font face="Calibri">', </font>
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473741582543,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '280762115@qq.com',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      'Z160913999960000',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '2016091321001004040241469047',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      41431,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '%0',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      5041977,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.0000,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '106',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473741583887,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      20160913,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      2,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.00,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0.01,
    </p>
    <p lang="en-US" style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      NULL
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      );
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1473819425870" FOLDED="true" ID="ID_1258751046" MODIFIED="1475030139991" TEXT="&#x5199;&#x5165;md_order_action">
<node CREATED="1473819453885" ID="ID_965390397" MODIFIED="1473819461387">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: 0in; font-family: Calibri; font-size: 11.0pt">
      insert into mdorder.md_order_action
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      (id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      order_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      shop_id,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      action_user,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      action_place,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      action_note,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      system_note,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      log_time,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      action_from,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      old_info,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      new_info,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      action_type,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      ip,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      opt_mid,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      pid,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      route_time
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      )
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      values
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      (1473741576568132000,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      'Z16091399996',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      8015487,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '106071300',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '&#29992;&#25143;&#35746;&#21333;&#32465;&#23450;',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '&#29992;&#25143;&#35746;&#21333;&#32465;&#23450;',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1473741576568,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      1,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      'userId:Z16091399996,mobile:,mid:2088902377800046,ostype:106',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      0,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      '116.213.178.6',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      'Z16091399996',
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      NULL,
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      20160913
    </p>
    <p style="margin-top: 0in; margin-right: 0in; margin-bottom: 0in; margin-left: .375in; font-family: Calibri; font-size: 11.0pt">
      );
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1478159577813" ID="ID_371018964" MODIFIED="1482910804815" TEXT="&#x53c2;&#x4e0e;&#x9879;&#x76ee;">
<node CREATED="1478159589398" FOLDED="true" ID="ID_1332068764" MODIFIED="1484616756120" TEXT="&#x591a;&#x4e3b;&#x4f53;&#x9879;&#x76ee;">
<node CREATED="1478159625048" FOLDED="true" ID="ID_82831550" MODIFIED="1484616743095" TEXT="&#x63cf;&#x8ff0;">
<node CREATED="1478159634675" ID="ID_1980859081" MODIFIED="1478160038089">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25105;&#21482;&#21442;&#19982;&#22238;&#35843;&#37096;&#20998;&#65292;&#36825;&#37096;&#20998;&#22788;&#29702;&#23436;&#20840;&#21516;&#20110;<b><font color="#006666">&#24494;&#20449;&#25903;&#20184;&#22238;&#35843;</font></b>&#65292;&#22240;&#20026;&#22810;&#20027;&#20307;&#26412;&#36523;&#23601;&#26159;&#30452;&#25509;&#36208;&#30340;&#24494;&#20449;&#25903;&#20184;&#65292;&#25925;&#32780;&#25152;&#26377;&#22788;&#29702;&#36923;&#36753;&#23436;&#20840;&#19982;&#24494;&#20449;&#25903;&#20184;&#19968;&#26679;&#65292;&#25152;&#19981;&#21516;&#30340;&#23601;&#26159;<b><font color="#006600">&#24494;&#20449;&#20026;&#27599;&#20010;&#38376;&#24215;&#20998;&#37197;&#20102;&#19968;&#20010;subopenid&#65292;&#19968;&#20010;&#38376;&#24215;&#19987;&#29992;&#30340;key&#65292;&#36825;&#20010;key&#38656;&#35201;&#20174;&#27704;&#22909;&#30340;&#25509;&#21475;&#33719;&#21462;</font></b>&#65292;&#36820;&#22238;&#21442;&#25968;&#36824;&#35201;&#29992;&#35813;key&#20570;<b><font color="#cc0000">&#39564;&#31614;</font></b>&#65292;&#30830;&#20445;&#26159;&#26469;&#33258;&#24494;&#20449;&#30340;&#22238;&#35843;&#12290;
    </p>
    <p>
      &#25105;&#20462;&#25913;&#25110;&#26032;&#22686;&#37327;&#19977;&#37096;&#20998;
    </p>
    <ul>
      <li>
        webcontroller&#30340;multipaynotify&#31867;&#65292;&#29992;&#20110;&#25509;&#25910;&#25968;&#25454;
      </li>
      <li>
        com.wowo.mdpaygate.domain.outpay.multipay.multipayTradePayManager.java&#20013;&#20462;&#25913;&#39564;&#31614;&#37096;&#20998;
      </li>
      <li>
        &#25552;&#21462;&#38376;&#24215;key&#37096;&#20998;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1481852407256" ID="ID_1892582130" MODIFIED="1481852436332" TEXT="&#x5751;&#x4e86;&#xff0c;&#x6839;&#x672c;&#x7528;&#x4e0d;&#x5230;&#x6c38;&#x597d;&#x7684;&#x4efb;&#x4f55;&#x6570;&#x636e;&#xff0c;&#x4e0d;&#x5b58;&#x5728;&#x4e00;&#x4e2a;&#x95e8;&#x5e97;&#x4e00;&#x4e2a;key&#x7684;&#x8bf4;&#x6cd5;"/>
</node>
<node CREATED="1478160786339" FOLDED="true" ID="ID_1275657612" MODIFIED="1484616748879" TEXT="&#x6d41;&#x7a0b;">
<node CREATED="1478160803871" FOLDED="true" ID="ID_439117649" MODIFIED="1481797081672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24494;&#20449;&#22238;&#35843;&#32593;&#22336;&#26144;&#23556;&#65306;
    </p>
    <p>
      <font color="#006666">/multipayNotify </font>-&gt;
    </p>
    <p>
      &#160;&#160; <font color="#0000ff">multipayNotify</font>(request,response)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;-&gt;<font color="#0000ff">AbstractNotify.notify</font>(request,response)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1. &#23545;&#20110;&#24494;&#20449;&#65292;&#26159;&#20174;xml&#20013;&#25552;&#21462;&#20010;&#21442;&#25968;&#24182;&#36820;&#22238;&#30456;&#24212;map
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2.&#21462;&#20998;&#24067;&#38145;&#65292;&#25104;&#21151;&#21518;&#65292;&#25552;&#21462;requestUrl,&#22810;&#20986;&#36825;&#27493;&#20165;&#26159;&#35201;&#23545;<font color="#990099">&#21442;&#25968;&#20570;<b>utf-8</b>&#30340;</font><font color="#006600"><b>urlencode</b></font><font color="#990099">,&#21482;&#26159;&#24494;&#20449;</font><font color="#cc0000">&#31354;&#20540;</font><font color="#990099">&#20063;&#21442;&#21152;&#20102;&#39564;&#31614;...</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;3.&#35843;&#29992;mdpaygate&#30340;tradeService<font color="#0000ff">.<b>tradePayNotify</b></font>&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;4.&#22914;&#26524;&#22788;&#29702;&#22833;&#36133;&#65288;&#39564;&#31614;&#22833;&#36133;&#65292;&#31995;&#32479;&#22833;&#36133;&#65292;&#21017;&#35201;&#27714;&#24494;&#20449;&#37325;&#26032;&#22238;&#35843;);&#22914;&#26524;&#22788;&#29702;&#25104;&#21151;&#65292;&#19968;&#33324;<b><font color="#990099">addQueue</font></b>&#32479;&#19968;&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;5.&#26681;&#25454;&#26368;&#32456;&#22788;&#29702;&#32467;&#26524;&#35843;&#29992;multipayNotify&#23454;&#29616;&#30340;handleResult&#21578;&#30693;&#24494;&#20449;&#22238;&#35843;&#22788;&#29702;&#25104;&#21151;&#25110;&#32773;&#22833;&#36133;
    </p>
  </body>
</html></richcontent>
<node CREATED="1478161688685" FOLDED="true" ID="ID_1038806141" MODIFIED="1481797080345" TEXT="tradePayNotify">
<node CREATED="1478162105190" ID="ID_1761325085" MODIFIED="1481173957400" TEXT="&#x91c7;&#x7528;&#x4e3b;&#x7ad9;&#x901a;&#x7528;&#x6a21;&#x677f;&#x5904;&#x7406;exeInTransaction&#x6570;&#x636e;&#x5e93;&#x5904;&#x7406;">
<node CREATED="1478162149443" ID="ID_360429000" MODIFIED="1478223985698">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      doAction
    </p>
    <ul>
      <li>
        &#20174;tradeDomainRespository&#20013;&#26681;&#25454;paytype&#33719;&#21462;&#23545;&#24212;tradeDomain&#65292;&#36825;&#37324;tradeDomainRepository&#21253;&#21547;&#20102;&#19968;&#20010;&#38598;&#21512;&#65292;&#35813;&#38598;&#21512;&#26159;&#19968;&#20010;<b><font color="#990099">&lt;paytype,tradePayManager&gt;</font></b>&#65292;&#27599;&#31181;&#25903;&#20184;&#30446;&#21069;&#37117;&#23454;&#29616;&#20102;&#19968;&#20010;tradePayManager&#31867;&#65281;<font color="#333300">&#35813;&#38598;&#21512;&#36890;&#36807;spring bean&#26041;&#24335;&#28608;&#27963;&#24182;&#21152;&#36733;</font>
      </li>
      <li>
        &#25552;&#21462;tradeno,&#23545;&#20110;&#24494;&#20449;&#23601;&#26159;&#35831;&#27714;&#21442;&#25968;&#20013;&#25552;&#21462;out_trade_no&#21442;&#25968;&#20540;
      </li>
      <li>
        &#26681;&#25454;tradeno&#20174;&#25968;&#25454;&#24211;&#25552;&#21462;&#20132;&#26131;&#35760;&#24405;
      </li>
      <li>
        &#26681;&#25454;paytype&#33719;&#21462;&#30456;&#24212;&#30340;partnerid,publickey&#65292;&#36825;&#37096;&#20998;&#38656;&#35201;&#39069;&#22806;&#20462;&#25913;&#65281;
      </li>
      <li>
        &#35843;&#29992;&#21508;&#33258;&#30340;tradeDomain.payNotify&#36827;&#34892;&#21442;&#25968;&#30340;&#19994;&#21153;&#35299;&#26512;&#65292;&#27604;&#22914;&#39564;&#31614;&#26159;&#21542;&#27491;&#30830;&#65292;&#27604;&#22914;&#20132;&#26131;&#29366;&#24577;&#26159;&#20160;&#20040;&#31561;&#31561;&#65292;&#36825;&#37324;&#25105;&#38656;&#35201;&#20462;&#25913;<b><font color="#009999">multipayTradeManager</font></b>&#31867;&#30340;<b><font color="#0000ff">handleNotifyParam</font></b>&#26041;&#27861;&#65292;&#21442;&#29031;&#24494;&#20449;&#30340;&#26041;&#27861;&#65292;&#31616;&#21333;&#20462;&#25913;&#30456;&#24212;&#30340;&#21442;&#25968;&#25552;&#21462;&#21464;&#26356;&#65292;<font color="#660099">&#27604;&#22914;<b>sub_openid</b>&#26367;&#25442;openid,&#27604;&#22914;partnerid,appKey&#25918;&#22312;&#36825;&#25552;&#21462;(&#20174;<b>attach&#33410;&#28857;</b>&#25552;&#21462;<b>shopid</b>&#65292;&#28982;&#21518;&#36208;&#27704;&#22909;&#25509;&#21475;&#25552;&#21462;appKey&#36827;&#34892;&#39564;&#31614;)&#31561;&#31561;</font>&#12290;
      </li>
      <li>
        &#21518;&#32493;&#37117;&#32479;&#19968;&#19968;&#26679;&#30340;&#25968;&#25454;&#24211;&#25805;&#20316;&#26356;&#26032;&#20132;&#26131;&#35760;&#24405;tradeDomainRepository.storageUpdateTradeDomain(tradeDomain)
      </li>
      <li>
        &#36820;&#22238;&#19994;&#21153;&#35299;&#26512;&#22788;&#29702;&#32467;&#26524;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1478223597661" ID="ID_798555889" MODIFIED="1483760750514">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24494;&#20449;&#25903;&#20184;&#25991;&#26723;
    </p>
    <p>
      
    </p>
    <p>
      https://pay.weixin.qq.com
    </p>
    <p>
      <font color="#006600">&#26080;&#38656;&#30331;&#24405;</font>&#65292;&#28857;&#20987; <font color="#660066">&#26381;&#21153;&#21830;</font>&#65292;&#28857;&#20987; <font color="#660066">&#24320;&#21457;&#25991;&#26723;</font>&#65292;&#28857;&#20987; <font color="#660066">&#20844;&#20247;&#21495;&#25903;&#20184;/&#21047;&#21345;&#25903;&#20184;/&#25195;&#30721;&#25903;&#20184;/&#29616;&#37329;&#32418;&#21253;</font>&#160; , &#28982;&#21518; &#28857;&#20987; <font color="#660066">API&#21015;&#34920;</font>&#65292;&#20174;<b>&#23376;&#39033;</b>&#20013;&#36873;&#21462; &#25903;&#20184;&#32467;&#26524;&#36890;&#30693;&#31561;&#31561;
    </p>
  </body>
</html></richcontent>
<node CREATED="1478223609821" ID="ID_1626432383" LINK="https://pay.weixin.qq.com/wiki/doc/api/jsapi_sl.php?chapter=9_7" MODIFIED="1478223635257" TEXT="&#x56de;&#x8c03;&#x901a;&#x77e5;"/>
</node>
<node CREATED="1481852525860" ID="ID_990505189" MODIFIED="1481852534781" TEXT="dubbo xml&#x914d;&#x7f6e;">
<node CREATED="1481852538592" ID="ID_1927946038" MODIFIED="1481852545710" TEXT="&#x5ba2;&#x6237;&#x7aef;"/>
<node CREATED="1481852546678" ID="ID_659269209" MODIFIED="1481852549629" TEXT="&#x670d;&#x52a1;&#x7aef;"/>
</node>
</node>
<node CREATED="1481173686606" HGAP="13" ID="ID_1826920491" MODIFIED="1484616759738" VSHIFT="25">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#32447;&#31243;&#29616;&#22312;&#25903;&#20184;&#19994;&#21153;&#26597;&#35810;&#26381;&#21153;
    </p>
  </body>
</html></richcontent>
<node CREATED="1481177011914" FOLDED="true" ID="ID_621032951" MODIFIED="1484616771752" TEXT="linux&#x4f53;&#x7cfb;&#x4e0b;&#x7684;&#x670d;&#x52a1;&#x542f;&#x52a8;&#x811a;&#x672c;">
<node CREATED="1481177034280" ID="ID_1753536893" MODIFIED="1481177039222" TEXT="example">
<node CREATED="1481177060944" FOLDED="true" ID="ID_413988658" MODIFIED="1481191450817">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21551;&#21160;&#33050;&#26412;<b><font color="#9900ff">start.sh</font></b>
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481177188373" ID="ID_1604457155" MODIFIED="1481177516374">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <b>#! /bin/bash</b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;
    </p>
    <p>
      <b><font color="#009966">PATH</font>=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin &#160;</b>
    </p>
    <p>
      <b><font color="#9900ff">CARRIER_HOME</font>=/home/dist/carrier&#160; </b>
    </p>
    <p>
      <b>export <font color="#006666">JAVA_HOME</font>=/usr/jdk1.6&#160; </b>
    </p>
    <p>
      <b>export <font color="#009966">PATH</font>=&quot;$JAVA_HOME/bin:$PATH&quot;&#160; </b>
    </p>
    <p>
      <b><font color="#ff0000">java</font>&#160;<font color="#00cc33">-server</font>&#160;<font color="#9900ff">-cp</font>&#160; $CARRIER_HOME/site/master/rest/dependency/ </b>
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#00cc33">-jar</font>&#160; $CARRIER_HOME/site/master/rest/master-1.0.jar &amp;&#160; </b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481177086547" FOLDED="true" ID="ID_777565530" MODIFIED="1481248138297">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009966">service.sh</font></b>&#33050;&#26412;&#65292;&#29992;&#26469;&#24320;&#26426;&#21551;&#21160;<b><font color="#9900ff">start.sh</font></b>
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffffcc" COLOR="#000000" CREATED="1481177714303" ID="ID_988944064" MODIFIED="1481177947277">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # Short-Description: master&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      # Description: master rest service&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      ### END INIT INFO&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;
    </p>
    <p>
      <b><font color="#ff0000">./lib/lsb/init-functions</font></b><font color="#ff0000">&#160;</font>
    </p>
    <p>
      &#160;&#160;
    </p>
    <p>
      <b><font color="#006666">PATH</font></b>=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin&#160;
    </p>
    <p>
      <b><font color="#9900ff">CARRIER_HOME</font></b>=/home/dist/carrier&#160;
    </p>
    <p>
      &#160;
    </p>
    <p>
      case &quot;$1&quot; in&#160;
    </p>
    <p>
      &#160;&#160;&#160;start)&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0000cc">log_begin_msg</font></b>&#160;&quot;Starting master rest server&quot;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#cc33ff">/bin/bash</font></b>&#160;<b><font color="#9900ff">$CARRIER_HOME</font>/scripts/start.sh</b>&#160; &gt;/dev/null 2&gt;&amp;1&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0000cc">log_end_msg</font></b>&#160;0&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;;;&#160;
    </p>
    <p>
      &#160;&#160;&#160;stop)&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#009999">PID=`ps -ef | grep 'master-1.0.jar' | grep -v grep | awk '{print $2}'`&#160;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0000cc">log_begin_msg </font></b>&quot;Stopping master rest server&quot;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;if [ ! -z &quot;$PID&quot; ]; then&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">kill -15 $PID&#160;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;fi&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0000cc">log_end_msg</font></b>&#160;0&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;;;&#160;
    </p>
    <p>
      &#160;&#160;&#160;restart)&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;$0 stop&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;$0 start&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;;;&#160;
    </p>
    <p>
      &#160;&#160;&#160;*)&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0000cc">log_success_msg</font></b>&#160;&quot;Usage: service master_rest {start|stop|restart}&quot; &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;exit 1&#160;
    </p>
    <p>
      esac&#160;
    </p>
    <p>
      &#160;&#160;
    </p>
    <p>
      exit 0&#160;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1481181000293" ID="ID_1279974083" MODIFIED="1481188493412" TEXT="redhat&#x4f53;&#x7cfb;&#x4e0b;&#x7684;">
<node CREATED="1481181359881" ID="ID_1085627355" MODIFIED="1481248140879" TEXT="&#x94fe;&#x63a5;">
<node CREATED="1481181341127" FOLDED="true" ID="ID_495389106" MODIFIED="1481248153336">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000cc">&#36719;&#38142;&#25509;(&#31526;&#21495;&#38142;&#25509;,</font><font color="#00cc33">ln&#160;</font></b><font color="#00cc33">l</font><font color="#0000cc">i</font><font color="#00cc33">n</font><font color="#0000cc">k<b>&#32553;&#20889;&#21543;)</b></font>: <b><font color="#00cc33">ln -s </font></b>&#21019;&#24314;&#30340;&#38142;&#25509;(<b><font color="#00cc33">-s software?</font></b>)
    </p>
    <p>
      
    </p>
    <p>
      &#20363;&#22914;: <b>ln -s /bin/bash&#160; <font color="#006666">sh</font></b><font color="#006666">,</font>&#23601;&#21019;&#24314;&#20102;<b>&#36719;&#38142;&#25509; <font color="#006666">sh</font></b><font color="#006666">&#160;</font>
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481185439646" ID="ID_135016446" MODIFIED="1481185506908">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#21478;&#22806;&#19968;&#31181;&#36830;&#25509;&#31216;&#20043;&#20026;&#31526;&#21495;&#36830;&#25509;&#65288;Symbolic Link&#65289;&#65292;&#20063;&#21483;&#36719;&#36830;&#25509;&#12290;<b>&#36719;&#38142;&#25509;&#25991;&#20214;&#26377;</b></font><b><font color="#9900ff" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#31867;&#20284;&#20110;Windows&#30340;&#24555;&#25463;&#26041;&#24335;</font><font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#12290;&#23427;&#23454;&#38469;&#19978;&#26159;&#19968;&#20010;&#29305;&#27530;&#30340;&#25991;&#20214;</font></b><font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#12290;&#22312;</font><font color="#009966" face="Verdana, Arial, Helvetica, sans-serif" size="14px"><b>&#31526;&#21495;&#36830;&#25509;&#20013;&#65292;&#25991;&#20214;&#23454;&#38469;&#19978;&#26159;&#19968;&#20010;</b></font><b><font color="#9900ff" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#25991;&#26412;&#25991;&#20214;</font><font color="#009966" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#65292;&#20854;&#20013;&#21253;&#21547;&#30340;&#26377;&#21478;&#19968;&#25991;&#20214;&#30340;</font><font color="#9900ff" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#20301;&#32622;&#20449;&#24687;</font><font color="#009966" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#12290;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481181351016" FOLDED="true" ID="ID_1433482072" MODIFIED="1481248160080">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000cc">&#30828;&#38142;&#25509;</font></b>:<b><font color="#006666">ln</font>&#160;</b>&#21019;&#24314;&#30340;&#38142;&#25509;(<b><font color="#ff0000">&#19981;&#24102;</font><font color="#00cc33">-s</font>&#21442;&#25968;</b>&#30340;&#23601;&#26159;<b>&#30828;&#38142;&#25509;</b>)
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009999">&#19968;&#33324;&#35201;&#27714;&#24517;&#39035;&#26377;sudo,&#20134;&#21363;root&#26435;&#38480;&#25165;&#33021;&#35774;&#32622;</font></b>
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1481185309700" ID="ID_510323078" MODIFIED="1481185404356">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#30828;&#36830;&#25509;&#25351;&#36890;&#36807;&#32034;&#24341;&#33410;&#28857;&#26469;&#36827;&#34892;&#36830;&#25509;&#12290;&#22312;Linux&#30340;&#25991;&#20214;&#31995;&#32479;&#20013;&#65292;&#20445;&#23384;&#22312;&#30913;&#30424;&#20998;&#21306;&#20013;&#30340;&#25991;&#20214;&#19981;&#31649;&#26159;&#20160;&#20040;&#31867;&#22411;&#37117;&#32473;&#23427;&#20998;&#37197;&#19968;&#20010;&#32534;&#21495;&#65292;&#31216;&#20026;&#32034;&#24341;&#33410;&#28857;&#21495;(Inode Index)&#12290;&#22312;Linux&#20013;&#65292;&#22810;&#20010;&#25991;&#20214;&#21517;&#25351;&#21521;&#21516;&#19968;&#32034;&#24341;&#33410;&#28857;&#26159;&#23384;&#22312;&#30340;&#12290;&#19968;&#33324;&#36825;&#31181;&#36830;&#25509;&#23601;&#26159;&#30828;&#36830;&#25509;&#12290;<b>&#30828;&#36830;&#25509;&#30340;&#20316;&#29992;&#26159;&#20801;&#35768;&#19968;&#20010;&#25991;&#20214;&#25317;&#26377;&#22810;&#20010;&#26377;&#25928;&#36335;&#24452;&#21517;&#65292;&#36825;&#26679;&#29992;&#25143;&#23601;&#21487;&#20197;&#24314;&#31435;&#30828;&#36830;&#25509;&#21040;&#37325;&#35201;&#25991;&#20214;&#65292;</b></font><b><font color="#009966" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#20197;&#38450;&#27490;</font><font color="#ff0000" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#8220;&#35823;&#21024;&#8221;</font><font color="#009966" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#30340;&#21151;&#33021;</font><font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#12290;</font></b><font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">&#20854;&#21407;&#22240;&#22914;&#19978;&#25152;&#36848;&#65292;&#22240;&#20026;&#23545;&#24212;&#35813;&#30446;&#24405;&#30340;&#32034;&#24341;&#33410;&#28857;&#26377;&#19968;&#20010;&#20197;&#19978;&#30340;&#36830;&#25509;&#12290;&#21482;&#21024;&#38500;&#19968;&#20010;&#36830;&#25509;&#24182;&#19981;&#24433;&#21709;&#32034;&#24341;&#33410;&#28857;&#26412;&#36523;&#21644;&#20854;&#23427;&#30340;&#36830;&#25509;(</font><font color="#9900ff" face="Verdana, Arial, Helvetica, sans-serif" size="14px"><b>&#21482;&#26159;&#20943;&#23569;&#24341;&#29992;&#27425;&#25968;</b></font><font color="rgb(0, 0, 0)" face="Verdana, Arial, Helvetica, sans-serif" size="14px">)&#65292;&#21482;&#26377;&#24403;&#26368;&#21518;&#19968;&#20010;&#36830;&#25509;&#34987;&#21024;&#38500;&#21518;&#65292;&#25991;&#20214;&#30340;&#25968;&#25454;&#22359;&#21450;&#30446;&#24405;&#30340;&#36830;&#25509;&#25165;&#20250;&#34987;&#37322;&#25918;&#12290;&#20063;&#23601;&#26159;&#35828;&#65292;&#25991;&#20214;&#30495;&#27491;&#21024;&#38500;&#30340;&#26465;&#20214;&#26159;&#19982;&#20043;&#30456;&#20851;&#30340;&#25152;&#26377;&#30828;&#36830;&#25509;&#25991;&#20214;&#22343;&#34987;&#21024;&#38500;&#12290;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1481185868470" FOLDED="true" ID="ID_594575583" MODIFIED="1481248169553">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#9900ff">&#20030;&#20363;&#21152;&#28145;&#29702;&#35299;</font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481185883600" ID="ID_581854674" MODIFIED="1481186229423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 10px; margin-bottom: 10px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-indent: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: left; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#36890;&#36807;&#23454;&#39564;&#21152;&#28145;&#29702;&#35299;
    </p>
    <p style="margin-top: 10px; margin-bottom: 10px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-indent: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: left; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />
      [oracle@Linux]$ touch f1&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#&#21019;&#24314;&#19968;&#20010;<font color="#009999">&#27979;&#35797;&#25991;&#20214;f1</font><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ <b><font color="#0000cc">ln</font></b>&#160;f1 f2&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#&#21019;&#24314;f1&#30340;&#19968;&#20010;<font color="#0000cc">&#30828;&#36830;&#25509;&#25991;&#20214;f2</font><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ <b><font color="#00cc33">ln -s</font></b>&#160;f1 f3&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#&#21019;&#24314;f1&#30340;&#19968;&#20010;<font color="#9900ff">&#31526;&#21495;&#36830;&#25509;&#25991;&#20214;f3</font><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$<b><font color="#006666">&#160;ls -li&#160;&#160;&#160;&#160;&#160;</font></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;#<b>&#160;-i&#21442;&#25968;&#26174;&#31034;&#25991;&#20214;&#30340;inode&#33410;&#28857;&#20449;&#24687; </b>
    </p>
    <p style="margin-top: 10px; margin-bottom: 10px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-indent: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: left; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      <br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />
      total 0<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />9797648 -rw-r--r--&#160;&#160;2 oracle oinstall 0 Apr 21 08:11 f1<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />9797648 -rw-r--r--&#160;&#160;2 oracle oinstall 0 Apr 21 08:11 f2<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />9797649 lrwxrwxrwx&#160;&#160;1 oracle oinstall 2 Apr 21 08:11 f3 -&gt; f1
    </p>
    <p style="margin-top: 10px; margin-bottom: 10px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-indent: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: left; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#20174;&#19978;&#38754;&#30340;&#32467;&#26524;&#20013;&#21487;&#20197;&#30475;&#20986;&#65292;&#30828;&#36830;&#25509;&#25991;&#20214;f2&#19982;&#21407;&#25991;&#20214;f1&#30340;inode&#33410;&#28857;&#30456;&#21516;&#65292;&#22343;&#20026;9797648&#65292;&#28982;&#32780;&#31526;&#21495;&#36830;&#25509;&#25991;&#20214;&#30340;inode&#33410;&#28857;&#19981;&#21516;&#12290;
    </p>
    <p style="margin-top: 10px; margin-bottom: 10px; margin-right: 0; margin-left: 0; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-indent: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; text-align: left; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      [oracle@Linux]$ echo &quot;I am f1 file&quot; &gt;&gt;f1<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ cat f1<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />I am f1 file<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ cat f2<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />I am f1 file<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ cat f3<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />I am f1 file<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$<b><font color="#ff0000">&#160;rm -f f1</font></b><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ <font color="#0000cc">cat f2 (</font><font color="#9900ff"><b>&#23545;&#24212;&#30340;inode&#36824;&#22312;</b></font><font color="#0000cc">,&#30828;&#38142;&#25509;&#22043;,&#21482;&#26159;&#20943;&#23569;&#20102;&#24341;&#29992;&#27425;&#25968;)</font><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />I am f1 file<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />[oracle@Linux]$ <b><font color="#009966">cat f3</font></b><br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />cat: f3: No such file or directory
    </p>
  </body>
</html></richcontent>
<node CREATED="1481187310469" ID="ID_976726003" MODIFIED="1481187490242">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20174;ls li&#20013;&#21487;&#30475;&#21040;,&#20961;&#26159;<b><font color="#00cc33">&#24102; </font><font color="#0000cc">-&gt; </font><font color="#00cc33">&#37117;&#26159;&#36719;&#38142;&#25509;</font></b>,&#21542;&#21017;&#26159;<b><font color="#006666">&#30828;&#38142;&#25509;</font></b>,
    </p>
    <p>
      &#25152;&#20197;,&#30828;&#38142;&#25509;&#26377;&#20010;&#40635;&#28902;&#20043;&#22788;, &#20320;&#35201;<b><font color="#006666">&#35760;&#19979;inode&#20540;</font></b>,&#21542;&#21017;,&#20320;&#26080;&#27861;&#30830;&#35748;&#26159;&#21542;&#21024;&#24178;&#20928;&#20102;,&#32780;&#36719;&#38142;&#25509;&#21017;&#27809;&#36825;&#38382;&#39064;.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1481182737995" FOLDED="true" ID="ID_1087566627" MODIFIED="1481248172848">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      linux&#20013;&#30340;&#25991;&#20214;&#31995;&#32479;
    </p>
  </body>
</html></richcontent>
<node CREATED="1481182748384" ID="ID_1202755394" MODIFIED="1481183188283">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        linux&#25991;&#20214;&#31995;&#32479;&#22522;<font color="#000000">&#20110;</font><b><font color="#0000cc">inode&#25991;&#20214;&#31995;&#32479;</font></b>
      </li>
      <li>
        &#27599;&#20010;&#26032;&#24314;&#25991;&#20214;&#20998;&#37197;&#19968;&#20010;inode
      </li>
      <li>
        inode&#26159;&#19968;&#20010;&#25351;&#38024;,&#25351;&#21521;&#30913;&#30424;&#20855;&#20307;&#30340;&#29289;&#29702;&#20301;&#32622;,inode&#33410;&#28857;&#36824;&#20445;&#23384;&#25991;&#20214;&#23646;&#24615;&#20449;&#24687;
      </li>
      <li>
        &#31995;&#32479;<b><font color="#ff0000">&#36890;&#36807;inode&#23450;&#20301;&#25991;&#20214;,&#32780;&#19981;&#26159;&#25991;&#20214;&#21517;</font></b>
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1481181402896" FOLDED="true" ID="ID_1827680691" MODIFIED="1481190457508" TEXT="7&#x4e2a;&#x8fd0;&#x884c;&#x7ea7;&#x522b;">
<node CREATED="1481181410633" ID="ID_543987913" MODIFIED="1481183421440">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      0 &#20851;&#38381;(&#25110;&#20572;&#27490;)&#31995;&#32479;&#26381;&#21153;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_1101167383" MODIFIED="1481183576440">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1 <b><font color="#9900ff">&#21333;&#29992;&#25143;&#27169;&#24335;</font></b>,&#36890;&#24120;&#20026;s &#25110; S (single?)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_1468954290" MODIFIED="1481183466518">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#160; <i><b><font color="#ff0000">&#27809;&#26377;&#32852;&#32593;</font></b></i>&#30340;<b><font color="#009966">&#22810;&#29992;&#25143;</font></b>&#27169;&#24335;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_491543900" MODIFIED="1481190388014">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3 <font color="#00cc33"><b>&#32852;&#32593;</b></font>&#30340;<font color="#009966"><b>&#22810;&#29992;&#25143;</b></font>&#27169;&#24335; <b>(centos&#40664;&#35748;&#36816;&#34892;&#32423;&#21035;)</b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_730371302" MODIFIED="1481190444293">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4 &#36817;&#20046;&#31561;&#21516;&#20110;&#36816;&#34892;&#32423;&#21035;3,&#20294;&#21487;&#20197;user-defined&#37096;&#20998;&#21442;&#25968;&#21543;,&#26497;&#23569;&#29992;&#21040;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_147848608" MODIFIED="1481183561633">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      5 <b><font color="#00cc33">&#32852;&#32593;</font></b>&#19988;&#20351;&#29992;<b><font color="#0000cc">X windows&#31995;&#32479;</font></b>&#30340;<b><font color="#006666">&#22810;&#29992;&#25143;</font></b>&#27169;&#24335;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481181410633" ID="ID_1683852872" MODIFIED="1481183414680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      6 &#37325;&#21551;&#31995;&#32479;&#26381;&#21153;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481188493413" ID="ID_1195079326" MODIFIED="1481188516299" TEXT="&#x4ecd;&#x7136;&#x53ef;&#x7528;&#x7684;centos 6.X&#x7cfb;&#x5217;"/>
</node>
</node>
<node CREATED="1481253194083" FOLDED="true" ID="ID_691900959" MODIFIED="1486365671208" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x73b0;&#x6709;&#x67e5;&#x8be2;&#x4f53;&#x7cfb;&#x6574;&#x7406;">
<node CREATED="1481253214076" ID="ID_1370582259" MODIFIED="1481263323326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36807;<b><font color="#003333">JobCenter</font></b>&#25191;&#34892;<b><font color="#990000">NowpayscanpayQueryTask.run</font></b>&#26469;&#26597;&#35810;&#29616;&#22312;&#25903;&#20184;&#25509;&#21475;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481253355292" FOLDED="true" ID="ID_982731569" MODIFIED="1481273059829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#27969;&#31243;
    </p>
    <ul>
      <li>
        &#25968;&#25454;&#24211;&#25552;&#21462;&#24453;&#26597;&#35810;&#35746;&#21333;&#25968;&#25454;
      </li>
      <li>
        &#24490;&#29615;&#36941;&#21382;&#24102;&#26597;&#35810;&#35746;&#21333;

        <ul>
          <li>
            &#21462;redis&#38145;(&#27809;&#24517;&#35201;)
          </li>
          <li>
            &#35775;&#38382;&#25509;&#21475;&#33719;&#21462;&#26597;&#35810;&#32467;&#26524;
          </li>
          <li>
            &#22788;&#29702;&#36820;&#22238;&#26597;&#35810;&#32467;&#26500;
          </li>
        </ul>
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1481263334378" ID="ID_631885841" MODIFIED="1481263342252" TEXT="&#x63d0;&#x53d6;&#x5e26;&#x67e5;&#x8be2;&#x8ba2;&#x5355;&#x6570;&#x636e;">
<node CREATED="1481267313441" ID="ID_786545413" MODIFIED="1481267325465" TEXT="queryUserPayingOrders()">
<node CREATED="1481269506057" ID="ID_811467523" MODIFIED="1481269515758" TEXT="TradePayDO"/>
</node>
</node>
<node CREATED="1481263343754" ID="ID_1570061889" MODIFIED="1481263352378" TEXT="&#x5904;&#x7406;&#x8fd4;&#x56de;&#x67e5;&#x8be2;&#x7ed3;&#x679c;">
<node CREATED="1481267335438" ID="ID_1711465391" MODIFIED="1481271781316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      processNowpayscanpayResult
    </p>
    <p>
      
    </p>
    <p>
      mdpaygate.service<font color="#006600">.<b>impl.TradeServiceImpl</b></font>.<b><font color="#009999">processNowpayscanpayResult</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481269569291" ID="ID_500667715" MODIFIED="1481269943624" TEXT="tradeDomainRepository.storageUpdateTradeDomain"/>
<node CREATED="1481269991845" ID="ID_1713963508" MODIFIED="1481269997936" TEXT="addQueue"/>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481271781317" ID="ID_1917515358" MODIFIED="1481272074270">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009999">responseCode</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481271788071" ID="ID_790049909" MODIFIED="1481271796532" TEXT="A001">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481271798166" ID="ID_1124829313" MODIFIED="1481272054214">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009999">transStatus</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481271811972" ID="ID_767442063" MODIFIED="1481271815396" TEXT="A001"/>
<node CREATED="1481271991269" ID="ID_947257596" MODIFIED="1481272032420" TEXT="else if [A003,A004,A00I] ... &#x5565;&#x4e5f;&#x4e0d;&#x505a;&#x5f85;&#x4e0b;&#x6b21;&#x5904;&#x7406;"/>
<node CREATED="1481272111491" ID="ID_261472471" MODIFIED="1481272191914">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      else update&#160;<b><font color="#990000">trade/tradeinfo</font></b>&#20004;&#24352;&#34920;&#20851;&#38381;&#35746;&#21333;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1481271916142" ID="ID_1547756831" MODIFIED="1481271932540" TEXT="else ... &#x5565;&#x4e5f;&#x4e0d;&#x505a;&#x5f85;&#x4e0b;&#x6b21;&#x5904;&#x7406;"/>
</node>
</node>
</node>
<node CREATED="1481273035198" ID="ID_233161587" MODIFIED="1481273060825" TEXT="&#x6682;&#x65f6;&#x4e0d;&#x9700;&#x8981;&#x6574;&#x7406;&#xff0c;&#x53ea;&#x9700;&#x8981;&#x4fee;&#x6539;&#x8bbf;&#x95ee;&#x63a5;&#x53e3;&#x90e8;&#x5206;&#x3002;"/>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481272732339" ID="ID_1384988034" MODIFIED="1481275104911">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff3333">&#32771;&#34385;&#20462;&#25913;&#27969;&#31243;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481275113037" FOLDED="true" ID="ID_1867519380" MODIFIED="1482364403888" TEXT="&#x66fe;&#x7ecf;&#x60f3;&#x6cd5;">
<node CREATED="1481272743083" ID="ID_864111671" MODIFIED="1481273404025">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdpaygate&#22686;&#21152;&#19968;&#20010;&#39029;&#38754;&#35775;&#38382;&#20837;&#21475;&#65292;&#29992;&#20110;&#22788;&#29702;&#36820;&#22238;&#25968;&#25454;&#21363;&#21487;
    </p>
    <p>
      
    </p>
    <p>
      &#25289;&#20986;&#20998;&#25903;&#65292;&#21019;&#24314;&#20837;&#21475;&#39029;&#38754;&#21644;&#30456;&#24212;&#22788;&#29702;&#31867;&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481272769803" ID="ID_678581902" MODIFIED="1481272800046" TEXT="&#x5c01;&#x88c5;&#x670d;&#x52a1;&#x53ea;&#x662f;&#x6458;&#x51fa;&#x8bbf;&#x95ee;&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x63a5;&#x53e3;&#x90e8;&#x5206;">
<node CREATED="1481273290219" ID="ID_614205637" MODIFIED="1481273358105">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        &#24490;&#29615;&#25552;&#21462;&#24453;&#22788;&#29702;&#35746;&#21333;
      </li>
      <li>
        &#35775;&#38382;&#29616;&#22312;&#25903;&#20184;&#26597;&#35810;&#25509;&#21475;
      </li>
      <li>
        &#26681;&#25454;&#36820;&#22238;&#32467;&#26500;post&#21040;mdpaygate&#20837;&#21475;&#39029;&#38754;
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481275106378" FOLDED="true" ID="ID_902815972" MODIFIED="1486365671207">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#00cc00">&#26368;&#32456;&#29256;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481275135698" ID="ID_258627689" MODIFIED="1481275163617" TEXT="&#x7b80;&#x5355;&#x505a;&#x4e2a;jobcenter&#x9875;&#x9762;&#x6539;&#x5faa;&#x73af;&#x5904;&#x7406;&#x4e3a;&#x591a;&#x7ebf;&#x7a0b;&#x5373;&#x53ef;&#x3002;">
<node CREATED="1481855802286" FOLDED="true" ID="ID_365268443" MODIFIED="1482364446560" TEXT="&#x5b9e;&#x9645;&#x91c7;&#x7528;&#x4e86;HttpAsyncClients&#x5f02;&#x6b65;&#x5904;&#x7406;&#x4e86;">
<node CREATED="1481855834097" ID="ID_529517217" MODIFIED="1482364444696">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38656;&#35201;&#29992;&#21040;&#26368;&#26032;&#30340;jar&#21253;&#65292;maven pom&#37197;&#32622;&#22914;&#19979;
    </p>
    <p>
      
    </p>
    <p>
      &lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;groupId&gt;org.apache.httpcomponents&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;artifactId&gt;httpclient&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;version&gt;<b>4.5.2</b>&lt;/version&gt;
    </p>
    <p>
      &lt;/dependency&gt;
    </p>
    <p>
      &lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;groupId&gt;org.apache.httpcomponents&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;artifactId&gt;httpcore&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;version&gt;<b>4.4.1</b>&lt;/version&gt;
    </p>
    <p>
      &lt;/dependency&gt;
    </p>
    <p>
      &lt;dependency&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;groupId&gt;org.apache.httpcomponents&lt;/groupId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;artifactId&gt;httpasyncclient&lt;/artifactId&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;version&gt;<b>4.1.2</b>&lt;/version&gt;
    </p>
    <p>
      &lt;/dependency&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481856086623" FOLDED="true" ID="ID_1174072395" MODIFIED="1486365671205" TEXT="&#x6838;&#x5fc3;&#x4ee3;&#x7801;&#x6846;&#x67b6;">
<node CREATED="1481856096348" ID="ID_668021809" MODIFIED="1481856721526">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for( a : list){
    </p>
    <p>
      &#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;queryfromhttpasync
    </p>
    <p>
      &#160;&#160;...
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      public void queryfromhttpasync(){
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Integer waitTime = 30*1000; //30&#31186;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>final CountDownLatch <font color="#009999">latch</font>&#160; = new CountDownLatch(tradeNos.size());</b>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;RequestConfig reqConfig = RequestConfig.custom()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.setSocketTimeout(3*1000)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.setConnectTimeout(3*1000)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.build();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;CloseableHttpAsyncClient <b><font color="#cc00ff">httpClient</font></b>&#160; = HttpAsyncClients.custom()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.setDefaultRequestConfig(reqConfig)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.build();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#cc00ff">httpClient.start</font></b>(); //&#24517;&#39035;&#26377;
    </p>
    <p>
      
    </p>
    <p>
      &#160;<b><font color="#ff3366">HttpPost</font></b>&#160;<b><font color="#ff3366">post</font></b>&#160;= new HttpPost(nowPayUrl);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Map&lt;String,String&gt; params = new HashMap&lt;&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;funcode&quot;, &quot;MQ002&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;appId&quot;, NowpayScanPayConfig.getNowpayscanpayPartnerID());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;mhtCharset&quot;, NowpayScanPayConfig.charset);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;mhtOrderNo&quot;,tradeNo);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;final String signValue = signTool.getNowPaySignValue(params);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;mhtSignType&quot;,&quot;MD5&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;params.put(&quot;mhtSignature&quot;,signValue);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;String postData = signTool.createLinkString(params,signTool.getNowPayEncode(),false);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//testdata
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//String postData=&quot;{\&quot;positions\&quot;:3,\&quot;area\&quot;:[{\&quot;province_id\&quot;:\&quot;41\&quot;,\&quot;city_id\&quot;:\&quot;2\&quot;,\&quot;distinct_id\&quot;:\&quot;0\&quot;,\&quot;area_id\&quot;:\&quot;3\&quot;}],\&quot;category\&quot;:[{\&quot;category_id\&quot;:\&quot;1\&quot;,\&quot;subcategory_id\&quot;:\&quot;2\&quot;}]}&quot;;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#990099">StringEntity</font>&#160; <b><font color="#009933">entityParams</font></b>&#160;= new StringEntity(postData, <b><font color="#0000cc">ContentType.APPLICATION_FORM_URLENCODED</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//StringEntity entityParams = new StringEntity(postData, ContentType.APPLICATION_JSON);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#ff3366">&#160; <b>post</b></font><b><font color="#0000cc">.setEntity</font></b>(<b><font color="#009933">entityParams</font></b>);
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009933">//&#36825;&#26159;&#20851;&#38190;&#65292;&#39532;&#19978;&#36820;&#22238;&#24182;&#36890;&#36807;</font><font color="#cc0000">future</font><font color="#009933">&#31561;&#24453;&#32467;&#26524;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#cc00ff">httpClient</font><font color="#cc0000">.execute</font></b>(<b><font color="#ff3366">post</font></b>, new <b><font color="#990099">FutureCallback</font></b>&lt;org.apache.http.HttpResponse&gt;() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;@Override
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void completed(HttpResponse result) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;try{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (result.getStatusLine().getStatusCode() != org.apache.commons.httpclient.HttpStatus.SC_OK) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;procFailCount.getAndIncrement();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.error(&quot;query nowpay[&quot;+tradeNo+&quot;] failed:&quot; + result.getStatusLine().getStatusCode());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;throw new Exception(&quot;query nowpay[&quot;+tradeNo+&quot;] failed:&quot; + result.getStatusLine().toString());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;procOkCount.getAndIncrement();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (result != null &amp;&amp; result.getEntity() != null) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Map&lt;String, String&gt; resultParams = new HashMap&lt;&gt;();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String resultStr = EntityUtils.toString(result.getEntity(), NowpayScanPayConfig.charset);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.info(tradeNo+&quot;&#26597;&#35810;&#35831;&#27714;&#32467;&#26524;&#65306;&quot; + resultStr);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String[] arrParam = resultStr.split(&quot;&amp;&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for (int i = 0; i &lt; arrParam.length; i++) {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String[] field = arrParam[i].split(&quot;=&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (field.length &lt; 2) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;continue;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//urldecode
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String value = URLDecoder.decode(field[1],&#160;&#160;NowpayScanPayConfig.charset);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;resultParams.put(field[0], value);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#39564;&#31614;&#25918;&#21040;&#21518;&#32493;&#27493;&#39588;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;_queryResult.put(tradeNo,resultParams);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}catch(Exception innerErr){
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.error(&quot;query completed event proc failed[tradeNO:&quot;+tradeNo+&quot; ] ouccur error:&quot;+innerErr.getMessage()+&quot;\n&quot;+innerErr.getStackTrace());
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}finally {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;latch.countDown();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;@Override
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void failed(Exception ex) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;latch.countDown();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;procFailCount.getAndIncrement();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.info(&quot;tradeNo:&quot;+tradeNo+&quot;query failed:&quot;+ex.getMessage());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;@Override
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;public void cancelled() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;latch.countDown();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;procFailCount.getAndIncrement();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;logger.info(&quot;tradeNo:&quot;+tradeNo+&quot;query cancelled!&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;});
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      //&#36890;&#36807;latch&#31561;&#24453;&#25152;&#26377;&#24322;&#27493;&#35775;&#38382;&#36820;&#22238;&#65292;&#35745;&#25968;&#20026;0 &#25110;&#32773;&#36229;&#26102;&#36820;&#22238;
    </p>
    <p>
      <b><font color="#009999">latch.await</font>(waitTime, TimeUnit.MILLISECONDS);</b>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#cc00ff">httpClient</font></b>.close();
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1481857056085" ID="ID_1263279435" MODIFIED="1481857152654">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23454;&#38469;&#26159;&#22914;&#26524;&#26377;&#20004;&#20010;cpu&#65292;nio&#20250;&#22312;&#20004;&#20010;cpu[nio dispatcher]&#19978;&#24322;&#27493;&#19981;&#26029;&#21457;&#20986;&#35831;&#27714;&#65292;&#28982;&#21518;&#24322;&#27493;&#31561;&#24453;&#32467;&#26524;&#65292;&#27599;&#20010;&#24322;&#27493;&#35831;&#27714;&#37117;&#26159;&#19968;&#20010;&#25346;&#36215;&#31561;&#24453;&#32447;&#31243;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481856752916" FOLDED="true" ID="ID_366229507" MODIFIED="1482364500062" TEXT="&#x6d41;&#x7a0b;">
<node CREATED="1481856767204" ID="ID_688797560" MODIFIED="1481856936282">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      beanxml : mdpaygate-task-impl-bean.xml&#20013;&#37197;&#32622;&#22914;&#19979;&#33410;&#28857;
    </p>
    <p>
      &#160;beanid : <font color="#0000cc">nowpayAsyncQueryStatusTask</font>&#23601;&#26159;jobcenter&#30340;&#25191;&#34892;&#25509;&#21475;&#20837;&#21475;
    </p>
    <p>
      &#160;&lt;bean id=&quot;<b><font color="#0000cc">nowpayAsyncQueryStatusTask</font></b>&quot; class=<font color="#009933">&quot;<b>com.wowo.mdpaygate.service.task.NowpayQueryPayStatusTask</b></font>&quot; scope=&quot;prototype&quot;/&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481856028444" ID="ID_1865764031" MODIFIED="1481856063919">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdpaygate&#22914;&#26524;&#20986;&#29616;&#25214;&#19981;&#21040;&#26576;&#20010;&#21253;&#30340;&#32418;&#26631;&#25552;&#31034;
    </p>
    <p>
      
    </p>
    <p>
      &#30452;&#25509;&#28857;&#20987;&#30456;&#20851;pom&#25991;&#20214;&#36827;&#34892;reimport&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481855213260" ID="ID_1684373317" MODIFIED="1481855241438" TEXT="&#x5df2;&#x7ecf;&#x90e8;&#x7f72;&#x5e73;&#x884c;&#x73af;&#x5883;&#xff01;10.9.210.131 yanfa/yanfa">
<node CREATED="1481855244018" ID="ID_804470042" MODIFIED="1481855284300" TEXT="&#x4e0b;&#x5468;&#x4f8b;&#x68c0;"/>
</node>
<node CREATED="1482130683212" FOLDED="true" ID="ID_100245400" MODIFIED="1482364418022" TEXT="&#x6d4b;&#x8bd5; ">
<node CREATED="1482130689334" ID="ID_262470514" MODIFIED="1482141050627" TEXT="c &#x626b; b &#x3010;&#x652f;&#x4ed8;&#x7801;&#x3011;&#xff0c;&#x76f4;&#x63a5;&#x901a;&#x77e5;&#x5237;&#x5e93;&#x4e86;"/>
<node CREATED="1482130699007" ID="ID_949014235" MODIFIED="1482141066178" TEXT="b &#x626b; c &#x3010;&#x6388;&#x6743;&#x7801;&#x3011;&#x624d;&#x80fd;&#x8d70;&#x5230;&#x67e5;&#x8be2;&#x63a5;&#x53e3;&#xff0c;&#x9700;&#x8981;&#x989d;&#x5916;&#x8d70;&#x67e5;&#x8be2;&#x63a5;&#x53e3;&#x67e5;&#x8be2;&#x652f;&#x4ed8;&#x72b6;&#x6001;"/>
</node>
<node CREATED="1482216126363" ID="ID_570522761" MODIFIED="1482216159133" TEXT="&#x5df2;&#x7ecf;&#x6b63;&#x5f0f;&#x4e0a;&#x7ebf;&#xff0c;&#x4eca;&#x5929;&#x9ad8;&#x5cf0;&#x671f;&#x7d2f;&#x8ba1;&#x8fbe;&#x5230;205&#x6761;&#xff0c;3341ms&#x5904;&#x7406;&#x5b8c;&#x6210;"/>
<node CREATED="1482216161903" ID="ID_1228836764" MODIFIED="1482216198741" TEXT="&#x4ee5;&#x540e;&#x7528;history&#xff0c;&#x62f7;&#x8d1d;&#x5728;shift+insert&#x7c98;&#x5e16;&#x65b9;&#x5f0f;&#x4fee;&#x6539;"/>
<node CREATED="1482216202132" ID="ID_765450500" MODIFIED="1482216232746">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      grep + <b><font color="#ff3333">-E</font></b>&#25165;&#25903;&#25345;&#27491;&#21017;&#26597;&#35810;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1482730813089" FOLDED="true" ID="ID_922275831" MODIFIED="1490771210664" TEXT="12.16 -- 12.30">
<node CREATED="1482884818086" FOLDED="true" ID="ID_1946912449" MODIFIED="1483926823402" TEXT="MobileWap">
<node CREATED="1482731543370" ID="ID_345354080" MODIFIED="1483408119481">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19994;&#21153;&#31867;&#22411;
    </p>
  </body>
</html></richcontent>
<node CREATED="1482746648474" FOLDED="true" ID="ID_918817010" MODIFIED="1483926822337" TEXT="&#x652f;&#x4ed8;&#x65b9;&#x5f0f;">
<node CREATED="1482731558274" ID="ID_1514409167" MODIFIED="1482824229829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#cc00cc" size="5"><b>c &#25195; b</b></font>&#65292;&#30452;&#25509;&#23458;&#25143;&#31471;&#20184;&#27454;&#65292;&#29992;&#25143;&#29992;&#25163;&#26426; <font color="#ff0000">&#36890;&#36807; &#25105;&#20204;&#25552;&#20379;&#30340;wap&#39029;&#38754;&#160;&#25195; &#21830;&#23478; &#38376;&#24215; &#29289;&#26009; &#20108;&#32500;&#30721; &#25903;&#20184;&#65311;</font>&#65292;<b><font color="#006666">&#36825;&#20010;&#21482;&#33021;&#31561;&#24453;&#21512;&#20316;&#26041;&#65288;&#24494;&#20449;&#25110;&#32773;&#25903;&#20184;&#23453;&#65289;&#22238;&#35843;&#25105;&#20204;&#30340;Java&#24037;&#31243;mdpaygate&#32593;&#22336;&#65292;&#27492;&#26102;&#65292;&#26080;&#38656;&#36890;&#36807;&#25105;&#20204;.net wap&#32593;&#31449;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482813323565" ID="ID_1904352656" MODIFIED="1482813404998">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#39033;&#24196;&#36127;&#36131;&#30340;<b><font color="#0000ff">b&#31471;&#32593;&#31449;</font></b><font color="#cc00cc">&#29983;&#25104;&#21830;&#23478;<b>&#29289;&#26009;&#20108;&#32500;&#30721;</b></font>
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1482813412498" ID="ID_556111128" MODIFIED="1482824963372">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29992;&#25143;&#36890;&#36807;&#24494;&#20449;/&#25903;&#20184;&#23453;&#65292;&#25195;&#35813;&#20108;&#32500;&#30721;&#65288;rqController-&gt;PhonePayController-&gt;PrepareOrder&#65289;&#29983;&#25104;&#35746;&#21333;&#39029;&#38754;&#65292;&#36755;&#20837;&#37329;&#39069;&#21518;&#65292;&#28857;&#25552;&#20132;&#23436;&#25104;&#25903;&#20184;(<b><font color="#ff0000">&#36208;&#30340;&#21738;&#20010;payController</font></b>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1482731568442" ID="ID_1857347140" MODIFIED="1482801517103">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#6600cc" size="5"><b>b &#25195; c </b></font>[&#36739;&#22810;] &#21830;&#23478; &#25195; &#29992;&#25143;&#25480;&#26435;&#30721; &#24182;&#22635;&#20889;&#37329;&#39069;&#25903;&#20184; &#31561;&#24453;&#29992;&#25143;&#25903;&#20184;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#25293;&#25293;&#23567;&#30418;
      </li>
      <li>
        &#22909;&#36866;&#21475;
      </li>
      <li>
        &#24494;&#32654;
      </li>
    </ul>
    <p>
      &#30446;&#21069;&#30456;&#23545;&#20110; c&#25195;b &#27604;&#20363;&#20026; 7:3&#24038;&#21491;&#65292;&#20063;&#23601;&#26159;b&#25195;c&#25480;&#26435;&#30721;&#23621;&#22810;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000"><b>&#27880;&#24847;&#65306;&#27492;&#26102;&#21512;&#20316;&#26041;&#65288;&#25293;&#25293;&#23567;&#30418;&#65292;&#22909;&#36866;&#21475;&#31561;&#65289;</b></font><b><font color="#006600">&#25195;&#30721;&#25250;&#20250;&#22312;&#36719;&#20214;&#20013;&#35774;&#32622;</font><font color="#006666">&#25105;&#20204;&#25552;&#20379;&#30340;.net wap&#32593;&#22336;</font><font color="#ff0000">&#65292;&#27492;&#21518;&#65292;&#33719;&#21462;&#29992;&#25143;&#25480;&#26435;&#30721;&#21518;&#35843;&#29992;&#35813;wap&#32593;&#22336;&#36827;&#34892;&#21518;&#32493;&#25903;&#20184;&#25805;&#20316;&#12290;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482824981179" ID="ID_1549380387" MODIFIED="1482824990901" TEXT="&#x5fae;&#x7f8e;">
<node CREATED="1482825012981" ID="ID_1982437640" MODIFIED="1482825039686" TEXT="Pay/MicroPayController"/>
</node>
<node CREATED="1482824992521" ID="ID_520242289" MODIFIED="1482824999614" TEXT="&#x62cd;&#x62cd;&#x5c0f;&#x76d2;">
<node CREATED="1482825042468" ID="ID_738048317" MODIFIED="1482825055485" TEXT="Pay/CommonScanPayController"/>
</node>
<node CREATED="1482825001193" ID="ID_1326196548" MODIFIED="1482825005900" TEXT="&#x597d;&#x9002;&#x53e3;">
<node CREATED="1482825058651" ID="ID_835464805" MODIFIED="1482825068236" TEXT="Pay/CommonScanPayController"/>
</node>
</node>
</node>
<node CREATED="1482746731001" ID="ID_729202423" MODIFIED="1482746734172" TEXT="&#x6e20;&#x9053;">
<node CREATED="1482746735846" ID="ID_333570886" MODIFIED="1482746739362" TEXT="&#x5fae;&#x4fe1;"/>
<node CREATED="1482746740517" ID="ID_780745941" MODIFIED="1482746743413" TEXT="&#x652f;&#x4ed8;&#x5b9d;"/>
</node>
</node>
<node CREATED="1482746751492" ID="ID_163682658" MODIFIED="1483425255123">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20837;&#21475;&#39033;&#30446; MobileWap&#65292;&#22522;&#20110;c#
    </p>
  </body>
</html></richcontent>
<node CREATED="1482746764887" FOLDED="true" ID="ID_1348364254" MODIFIED="1483427873942" TEXT="&#x91c7;&#x7528;&#x65e9;&#x671f;&#x738b;&#x6d2a;&#x6c5f;AspNet MVC&#x4fee;&#x6539;&#x7248;&#x672c;">
<node CREATED="1482746805041" ID="ID_1447070994" MODIFIED="1482746907531">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2016.12.26&#65306;&#20174;git&#20013;&#25552;&#21462;&#28304;&#30721;&#65292;&#26412;&#22320;&#36816;&#34892;&#22312;Global.asax&#20837;&#21475;&#22788;&#25253;&#38169;&#65292;&#23454;&#38469;&#26159;&#30001;&#20110;&#32534;&#35793;bin&#30446;&#24405;&#35774;&#32622;&#21040;&#20102;&#19978;&#19968;&#23618;[../bin/]&#23548;&#33268;&#65292;&#20462;&#25913;&#22238;[bin/]&#21363;&#21487;&#22312;&#26412;&#22320;&#36816;&#34892;&#24182;&#35843;&#35797;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1482796765431" ID="ID_351126586" MODIFIED="1482796792326" TEXT="Global.asax">
<node CREATED="1482796793835" ID="ID_1541863689" MODIFIED="1482796823929" TEXT="MvcApplication">
<node CREATED="1482796837690" ID="ID_1529331408" MODIFIED="1482811186067">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Application_Start
    </p>
  </body>
</html></richcontent>
<node CREATED="1482796805362" ID="ID_1416573602" MODIFIED="1482796893690" TEXT="RegisterGlobalFilters"/>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1482796826075" ID="ID_1125050613" MODIFIED="1482818424238" TEXT="RegisterRoutes">
<node CREATED="1482799160148" ID="ID_1000643570" MODIFIED="1482799164485" TEXT="routes.IgnoreRoute(&quot;{resource}.axd/{*pathInfo}&quot;);"/>
<node CREATED="1482799530789" ID="ID_1084071987" MODIFIED="1482811306442">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29289;&#26009;&#30721;
    </p>
    <p>
      
    </p>
    <p>
      &#25105;&#29702;&#35299;&#23601;&#26159;<b><font color="#006600">&#25480;&#26435;&#30721;</font></b>&#21862;&#65292;&#20294;&#35980;&#20284;&#19981;&#26159;&#65292;&#23601;&#26159;&#32465;&#23450;&#38376;&#24215;&#30340;&#29289;&#26009;&#30721;&#12290;
    </p>
    <p>
      <b><font color="#ff0000">&#38169;&#20102;&#65292;&#24443;&#24213;&#25630;&#38169;&#20102;&#65292;</font>&#36825;&#26159;&#20856;&#22411;&#30340;<font color="#cc00cc">c &#25195; b</font>&#65292;<font color="#006666">&#25195;&#30340;&#23601;&#26159;&#38376;&#24215;&#30340;&#29289;&#26009;&#30721;&#65292;&#28982;&#21518;&#23637;&#31034;&#35746;&#21333;&#30028;&#38754;&#65292;&#29992;&#25143;&#36755;&#20837;&#37329;&#39069;&#65292;&#25552;&#20132;&#23436;&#25104;&#25903;&#20184;</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#28041;&#21450;&#25903;&#20184;&#30340;&#24212;&#35813;&#23601;&#26159;&#36825;&#20010;&#20102;&#65292;&#20379;&#21512;&#20316;&#26041;&#35843;&#29992;
    </p>
  </body>
</html></richcontent>
<node CREATED="1482799179914" ID="ID_625770852" MODIFIED="1482810309976">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#29289;&#26009;&#30721;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;routes.MapRoute(
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;rq&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;<b><font color="#0000ff">rq</font>/<font color="#ff3300">{code}</font></b>&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;new { controller = &quot;<font color="#0000ff">rq</font>&quot;, action = &quot;<b><font color="#00cccc">Index</font></b>&quot;, code = UrlParameter.Optional }
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;);
    </p>
  </body>
</html></richcontent>
<node CREATED="1482797608757" ID="ID_1678088508" MODIFIED="1482800062028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wowo.Mobile.Wap.<b><font color="#6600cc">Controllers</font></b>.SHrcode.<b><font color="#0000ff">rq</font></b>Controller
    </p>
  </body>
</html></richcontent>
<node CREATED="1482810312867" ID="ID_640122398" MODIFIED="1482810410387">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36807;&#29289;&#26009;&#30721;&#65292;&#20174;redis&#25552;&#21462; a_&#38376;&#24215;id_&#36820;&#29616;id&#32452;&#25104;&#30340;&#20540;&#65292;&#35843;&#29992;phonepaycontroller&#30340;prepareorder&#26469;&#29983;&#25104;&#35746;&#21333;&#23637;&#31034;&#39029;&#38754;&#65311;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1482800217966" ID="ID_1467777553" MODIFIED="1482803459335">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wowo.Mobile.Wap.Controllers.Pay.<b><font color="#6600cc">PhonePayController</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482804126650" ID="ID_303000875" MODIFIED="1482804174532" TEXT="&#x7136;&#x540e;&#x901a;&#x8fc7;&#x8fd4;&#x73b0;&#x7ec4;&#x4ef6;wowotuan.MobileServer.CashBack.dll&#x8c03;&#x7528;Java&#x5de5;&#x7a0b;&#x7f51;&#x5740;&#x5b8c;&#x6210;&#x540e;&#x7eed;&#x652f;&#x4ed8;"/>
</node>
</node>
</node>
<node CREATED="1482796866051" ID="ID_200335942" MODIFIED="1482796871710" TEXT="InitConfig"/>
<node CREATED="1482797695498" FOLDED="true" ID="ID_1034415880" MODIFIED="1482818422794" TEXT="&#x5173;&#x952e;&#x70b9;">
<node CREATED="1482797704539" ID="ID_1100757105" MODIFIED="1482797728335" TEXT="routes.MapRoute"/>
<node CREATED="1482797813962" ID="ID_909803653" MODIFIED="1482797829719" TEXT="ControllerBase">
<node CREATED="1482797833815" ID="ID_792107565" MODIFIED="1482797837862" TEXT="ActionResult"/>
<node CREATED="1482797847771" ID="ID_1495043628" MODIFIED="1482797858438" TEXT="RedirectToAction"/>
</node>
<node CREATED="1482805517026" ID="ID_1715130322" MODIFIED="1482805527739" TEXT="Controller-Model-View">
<node CREATED="1482805529425" ID="ID_1353381911" MODIFIED="1482805564027" TEXT="route.MapRoute&#x627e;&#x5230;&#x76f8;&#x5e94;&#x7684;controller"/>
<node CREATED="1482805568994" ID="ID_1912830298" MODIFIED="1482805595708" TEXT="controller&#x5904;&#x7406;&#x5b8c;&#x6210;&#x540e;&#xff0c;&#x901a;&#x8fc7;View&#x5c55;&#x793a;&#x6570;&#x636e;model">
<node CREATED="1482805600826" FOLDED="true" ID="ID_1793437376" MODIFIED="1482805652940" TEXT="&#x4ee3;&#x7801;&#x5904;&#x7406;">
<node CREATED="1482805643561" ID="ID_75678997" MODIFIED="1482805648631">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/Views-PhonePay-SHCreateOrder2.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1482805618952" FOLDED="true" ID="ID_111839543" MODIFIED="1482805641485" TEXT="&#x6587;&#x4ef6;&#x7ed3;&#x6784;">
<node CREATED="1482805626424" ID="ID_1564524512" MODIFIED="1482805637413">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/Views-PhonePay-SHCreateOrder.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1482821145718" ID="ID_1341800863" MODIFIED="1482822626543">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Pay/MicroPayController [&#24494;&#32654;] or Pay/CommonScanPayController[&#22909;&#36866;&#21475;&#65292;&#25293;&#25293;&#23567;&#30418;]
    </p>
    <p>
      
    </p>
    <p>
      &#37117;&#26159;<b><font color="#0000ff">&#36890;&#36807;[HttpPost]&#23646;&#24615;&#26631;&#27880;&#26367;&#20195;route&#27880;&#20876;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1482825564309" ID="ID_363682667" MODIFIED="1482825580086" TEXT="&#x6d4b;&#x8bd5;&#x73af;&#x5883;&#x4f4d;&#x7f6e;"/>
</node>
</node>
<node CREATED="1482890688343" ID="ID_1162915557" MODIFIED="1483926751754" TEXT="&#x6574;&#x4f53;">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1482890695015" ID="ID_37998936" MODIFIED="1482979501406">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        MobileWap&#26159;&#25152;&#26377;&#25903;&#20184;&#30340;&#20837;&#21475;&#65292;&#19981;&#21487;&#33021;&#36339;&#36807;&#65292;&#20854;&#24517;&#35843;frontserver(&#36890;&#36807;.net&#30340;wowotuan.MobileServer.CashBack&#39033;&#30446;&#23436;&#25104;&#65289;
      </li>
      <li>
        frontserver&#26159;&#35843;&#24230;&#20013;&#24515;&#65292;
      </li>
      <li>
        frontserver&#38656;&#35201;&#31532;&#19977;&#26041;&#25903;&#20184;&#21017;&#35843;paygate&#65292;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#26680;&#24515;&#31867;<b><font color="#ff3333">TradeServiceImpl</font></b>&#12290;
      </li>
      <li>
        frontserver&#21019;&#24314;&#35746;&#21333;&#23436;&#25104;&#35746;&#21333;&#20313;&#39069;&#25903;&#20184;&#35843;tradecenter
      </li>
      <li>
        frontserver&#25552;&#21462;&#29992;&#25143;&#65292;&#38376;&#24215;&#31561;&#35843;&#38376;&#24215;&#20013;&#24515;&#25110;&#29992;&#25143;&#20013;&#24515;&#31561;
      </li>
      <li>
        frontserver&#36127;&#36131;&#23558;&#32467;&#26524;&#36820;&#22238;MobileWap
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1482897441866" FOLDED="true" ID="ID_1067108807" MODIFIED="1483608098234" TEXT="&#x5fae;&#x4fe1;&#x6587;&#x6863;&#x4f4d;&#x7f6e;">
<node CREATED="1482897456033" ID="ID_401911411" MODIFIED="1482897471670">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/weixin_c_b.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1482891737726" ID="ID_554905031" MODIFIED="1482915855793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20027;&#20307;&#20108;&#26399;paygate&#20462;&#25913;&#20869;&#23481;&#25972;&#29702;&#65292;&#20837;&#21475;&#26159;&#26469;&#33258;mdfrontserver - payorder or wftpayorder&#30340;&#31532;&#19977;&#26041;(&#24494;&#20449;&#65292;&#25903;&#20184;&#23453;&#65292;&#29616;&#22312;&#25903;&#20184;....)&#25903;&#20184;&#35843;&#29992;
    </p>
    <p>
      
    </p>
    <p>
      &#31532;&#19968;&#26399;&#20570;&#30340;&#26159; <b><font color="#009999">c &#25195; b</font></b>&#160; &#29992;&#25143;&#25195;<b><font color="#006633">&#21830;&#23478;&#29289;&#26009;&#30721;&#65288;&#30452;&#25509;&#35843;&#29992;&#31532;&#19977;&#26041;&#25903;&#20184;&#25509;&#21475;&#23436;&#25104;&#25903;&#20184;&#65289;</font></b>
    </p>
    <p>
      &#31532;&#20108;&#26399;&#20570;&#30340;&#26159; <b><font color="#009999">b &#25195; c</font></b>&#160;&#160;&#21830;&#23478;&#25195;<b><font color="#006633">&#29992;&#25143;&#25480;&#26435;&#30721;&#65288;scanquery,&#21363;&#24517;&#39035;&#36890;&#36807;&#26597;&#35810;&#31532;&#19977;&#26041;&#25509;&#21475;&#25165;&#33021;&#33719;&#21462;&#25903;&#20184;&#32467;&#26524;&#65289; </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#990099">&#22810;&#20027;&#20307;&#19982;&#24494;&#20449;&#25903;&#20184;&#65292;&#24494;&#20449;&#25195;&#30721;&#25903;&#20184;&#30340;&#21306;&#21035;&#26377;&#20197;&#19979;</font><font color="#ff0000">&#19977;&#28857;</font><font color="#990099">&#65306; </font></b>
    </p>
    <ul>
      <li>
        <b><font color="#990099">&#25552;&#20132;&#25903;&#20184;&#26102;&#65292;&#22810;&#20027;&#20307;&#22810;&#25552;&#20132;&#20004;&#20010;&#21442;&#25968;&#65306;sub_app_id,sub_mch_id,&#19981;&#26159;&#22810;&#25552;&#20132;&#32780;&#26159;&#26367;&#25442;&#65311;&#160;&#24212;&#35813;&#26159;&#22810;&#25552;&#20132;&#65292;&#21542;&#21017;&#21644;app_id,mch_id&#27809;&#20219;&#20309;&#20851;&#31995;&#20102;&#160;&#65292;&#30830;&#23450;&#20102;&#26159;&#8220;&#22810;&#20256;&#20004;&#20010;&#21442;&#25968;&#8221;&#36825;&#20004;&#20010;&#21442;&#25968;&#30001;&#20837;&#21475;MobileWap&#36127;&#36131;&#20256;&#20837;&#65292;mdpaygate&#26080;&#39035;&#20851;&#24515;&#65292;&#21482;&#38656;&#35201;&#22312;multipay&#30456;&#20851;&#31867;&#22411;&#20013;&#25552;&#21462;&#36825;&#20004;&#20010;&#21442;&#25968;&#24182;&#20132;&#32473;&#24494;&#20449;&#21363;&#21487;&#12290;</font></b>
      </li>
      <li>
        <b><font color="#990099">&#36820;&#22238;&#22788;&#29702;&#26102;&#65292;&#22810;&#20027;&#20307;&#29992;sub_open_id&#32465;&#23450;&#25105;&#20204;&#30340;&#36134;&#25143;&#65292;&#32780;&#24494;&#20449;&#29992;open_id </font></b>
      </li>
      <li>
        <b><font color="#990099">&#22810;&#20027;&#20307;&#25903;&#20184;&#26102;&#65292;&#21830;&#23478;&#19981;&#20877;&#32463;&#36807;&#25105;&#20204;&#30340;&#36130;&#21153;&#36134;&#38754;&#65292;&#30452;&#25509;&#25171;&#36134;&#21040;&#21830;&#23478;&#65292;&#25105;&#20204;&#21482;&#26159;&#36208;&#20010;&#27969;&#37327;&#32780;&#24050;&#12290;</font></b>
      </li>
    </ul>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_554905031" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_963014308" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_554905031" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_963014308" SOURCE="ID_554905031" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1482891779170" ID="ID_951899813" MODIFIED="1482892704397">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdpaygate - <b><font color="#009999">service.impl </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#0000cc">&#65288;&#30001;frontserver&#35843;&#29992;&#65289;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482892249306" FOLDED="true" ID="ID_594721567" MODIFIED="1482978859481">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009999">TradeServiceImpl</font></b>.<b><font color="#0000cc">createMobileParams </font></b>
    </p>
    <p>
      
    </p>
    <p>
      serviceTemplate.<b><font color="#009999">exeInTransaction</font></b>&#65288;&#36825;&#37324;&#23454;&#38469;&#21033;&#29992;&#20102;<b><font color="#990000">spring.tx</font></b>&#30340;&#20107;&#21153;&#31649;&#29702;&#26426;&#21046;&#65289;
    </p>
  </body>
</html></richcontent>
<node CREATED="1482892712042" ID="ID_1717721261" MODIFIED="1482894326718">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      doAction&#20013;&#22686;&#21152; payType == <b><font color="#00cccc">PayTypeEnum</font></b>.<b><font color="#990000">MULTIPAY_WEIXIN_SCANPAY</font></b>&#26465;&#20214;
    </p>
    <p>
      
    </p>
    <p>
      &#22312;PayTypeEnum&#20013;&#22686;&#21152;MULTIPAY_SCANPAY_WEIXIN&#30456;&#20851;&#26522;&#20030;
    </p>
    <p>
      
    </p>
    <p>
      tradeDomain.<b><font color="#006633">getMobileResult -&gt; mdpaygate.domain.TradeDomain.</font><font color="#0000cc">createMobileParam -&gt; </font><font color="#ff0000">tradeManager</font><font color="#0000cc">.createMobileParam </font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#37324;tradeManager&#34893;&#29983;&#21508;&#31867;&#36890;&#36947;&#30340;&#23454;&#29616;&#31867;&#65292;&#27604;&#22914;multipayscanpayweixintrademanager
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1482895075883" ID="ID_1392808522" MODIFIED="1482895202310">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#27010;&#36848;
    </p>
    <p>
      
    </p>
    <p>
      &#38024;&#23545;&#27491;&#24120;&#25903;&#20184;&#65292;&#36755;&#20837;&#23494;&#30721;&#25903;&#20184;&#37117;&#24517;&#39035;&#26377;&#32479;&#19968;&#30340;processWeiXin...&#30340;&#21518;&#32493;&#22788;&#29702;&#65292;&#22240;&#20026;&#22810;&#20027;&#20307;&#23601;&#26159;&#24494;&#20449;&#25903;&#20184;&#65292;&#25152;&#20197;&#30452;&#25509;&#22797;&#21046;&#24494;&#20449;scanpay&#26041;&#38754;&#20195;&#30721;&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1482913276301" FOLDED="true" ID="ID_1749583489" MODIFIED="1482978838376" TEXT="mdpaygate-&gt;domain-&gt;resources-&gt;mdpaygate-domain-bean.xml&#x4e2d;&#x6dfb;&#x52a0;">
<node CREATED="1482913321135" ID="ID_1303699180" MODIFIED="1482913335752">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&lt;bean id=&quot;multipayScanWeiXinConfig&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; class=&quot;com.wowo.mdpaygate.domain.outpay.multipayscan.TencentUtils.Configure&quot;&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;property name=&quot;Appid&quot; value=&quot;${multipaywx.scanpay.app.id}&quot;/&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;property name=&quot;Key&quot; value=&quot;${multipaywx.scanpay.app.key}&quot; /&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;property name=&quot;CertLocalPath&quot; value=&quot;${multipaywx.scanpay.cert.file.name}&quot;/&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&lt;property name=&quot;Mch_id&quot; value=&quot;${multipaywx.scanpay.partner.id}&quot;/&gt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&lt;/bean&gt;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1482978810746" FOLDED="true" ID="ID_120820812" MODIFIED="1483408312561" TEXT="TradeDomainRepository">
<node CREATED="1482978829740" ID="ID_1304663482" MODIFIED="1482978834623" TEXT="TradeDomain"/>
<node CREATED="1482978868536" ID="ID_753401601" MODIFIED="1482980512638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33258;&#36523;&#26377;&#20004;&#20010;&#37325;&#35201;&#38598;&#21512;
    </p>
    <p>
      
    </p>
    <p>
      &#37117;&#26469;&#33258;mdpaygate-domain-bean.xml&#20013;
    </p>
  </body>
</html></richcontent>
<node CREATED="1482978881130" ID="ID_1570549003" MODIFIED="1482979291492">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0033ff">@Resource</font></b>
    </p>
    <p>
      &#160;private Map&lt;PayTypeEnum, Trade<b><font color="#660066">Pay</font></b>Manager&gt; tradePayManagerMap;
    </p>
    <p>
      
    </p>
    <p>
      @Resource : combine @Autowire + @Qualifier
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1482978963604" ID="ID_906413404" MODIFIED="1482978994079">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0033ff">&#160;@Resource</font></b>
    </p>
    <p>
      &#160;private Map&lt;PayTypeEnum, Trade<b><font color="#009999">Query</font></b>Manager&gt; tradeQueryManagerMap;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1482981654499" ID="ID_1931725141" MODIFIED="1482999178318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c &#25195; b&#30340;&#20855;&#20307;&#27969;&#31243;&#65292;b &#25195; c &#30340;&#20855;&#20307;&#27969;&#31243;
    </p>
    <p>
      
    </p>
    <p>
      <b>&#24517;&#39035;&#25630;&#28165;&#26970;!</b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1482982159905" ID="ID_1938353595" MODIFIED="1482999171312">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c &#25195; b &#22312;&#31532;&#19977;&#26041;&#24179;&#21488;&#19979;&#21333;&#65292;&#36820;&#22238;&#25163;&#26426;&#31471;&#65292;&#25163;&#26426;&#31471;&#22312;&#23436;&#25104;&#25903;&#20184;&#65292;&#25105;&#20204;&#31561;&#24453;&#31532;&#19977;&#26041;&#24179;&#21488;&#30340;&#22238;&#35843;&#65292;&#22312;&#22238;&#35843;&#22788;&#29702;&#36807;&#31243;&#20013;&#65292;&#23436;&#25104;&#32465;&#23450;&#29992;&#25143;&#65292;&#21047;&#26032;&#25903;&#20184;&#29366;&#24577;&#65292;&#23436;&#25104;&#20132;&#26131;&#12290;
    </p>
    <p>
      &#36825;&#37324;&#26377;addQueue,PayEventHandler&#31561;&#31995;&#21015;&#22788;&#29702;&#27969;&#31243;&#65288;addQueeu/EventHanlder&#26426;&#21046;&#25630;&#28165;&#26970;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1482982190226" ID="ID_1386008657" MODIFIED="1482982347843">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b &#25195; c &#22312;&#31532;&#19977;&#26041;&#24179;&#21488;&#25903;&#20184;&#65292;&#30452;&#25509;&#33719;&#21462;&#20102;&#32467;&#26524;&#65292;&#25105;&#20204;&#38656;&#35201;&#33258;&#34892;&#32465;&#23450;&#29992;&#25143;&#65292;&#21047;&#26032;&#25903;&#20184;&#29366;&#24577;&#65292;&#23436;&#25104;&#20132;&#26131;&#12290;&#36825;&#37324;&#19981;&#28041;&#21450;&#22238;&#35843;&#20102;&#65292;&#20294;&#20250;&#28041;&#21450;&#35746;&#21333;&#29366;&#24577;&#26597;&#35810;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1483063260758" ID="ID_536517211" MODIFIED="1490771204042" POSITION="left" TEXT="mdpaygate">
<node CREATED="1483063266938" FOLDED="true" ID="ID_531407904" MODIFIED="1490771207052" TEXT="uml">
<node BACKGROUND_COLOR="#ccccff" CREATED="1483064177395" FOLDED="true" ID="ID_623071369" MODIFIED="1489023787087">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009933">QueueConsumeTask</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483084855411" ID="ID_1329752554" MODIFIED="1483090509951">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25972;&#20010;EventManagerImpl&#30340;<b><font color="#ff3333">addEvent&#21482;&#34987;addEventSync&#20869;&#26576;&#20010;&#26465;&#20214;&#20998;&#25903;&#20869;&#35843;&#29992;</font></b>&#65292;&#32780;<b><font color="#ff3333">addEventSync</font><font color="#009933">&#20063;&#21482;&#34987;QueueConsumeTask</font></b>&#35843;&#29992;
    </p>
    <p>
      
    </p>
    <p>
      <b><u><font color="#990000">&#32780;addEvent&#26377;&#20010;&#33268;&#21629;&#32570;&#38519;&#65292;&#19968;&#26086;</font><font color="#6666ff">ERROR/ALARM</font><font color="#990000">&#30340;Event&#23548;&#33268;addEvent&#24322;&#27493;&#22788;&#29702;&#24182;&#19988;&#35813;&#24322;&#27493;&#22788;&#29702;</font><font color="#ff3333">future.get&#36820;&#22238;null&#65288;&#26680;&#26597;&#20102;ErrorHandler,AlarmHandler&#28304;&#30721;&#65292;&#27809;&#26426;&#20250;&#36820;&#22238;null&#65289;</font><font color="#990000">&#23558;&#23548;&#33268;&#25972;&#20010;addEvent&#32447;&#31243;&#27515;&#25481;&#65281;&#21482;&#26159;&#30446;&#21069;&#24182;&#27809;&#26377;null&#26469;&#35302;&#21457; </font></u></b>
    </p>
    <p>
      
    </p>
    <p>
      &#25105;&#20204;&#19981;&#20851;&#24515;&#27599;&#27425;addEventSync&#30340;&#22788;&#29702;&#32467;&#26524;&#30340;.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483063271496" FOLDED="true" ID="ID_1627063103" MODIFIED="1489023756806" TEXT="QueueDomain">
<node CREATED="1483063281501" ID="ID_1601765985" MODIFIED="1483063288734">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/mdpaygate-QueueDomain.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483066296302" FOLDED="true" ID="ID_847289206" MODIFIED="1489023776879" TEXT="QueueServiceImpl">
<node CREATED="1483066306723" ID="ID_1611293412" MODIFIED="1483066311789">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/mdpaygate-QueueServiceImpl.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" COLOR="#000000" CREATED="1483082594434" FOLDED="true" ID="ID_1434905087" MODIFIED="1486619983591">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      EventManagerImpl
    </p>
    <p>
      
    </p>
    <p>
      &#30446;&#21069;&#20165;&#20379;QueueConsumeTask&#20351;&#29992;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#20837;&#21475;&#28857;&#24456;&#22810;&#65292;&#30456;&#24212;&#30340;EventHandler&#20986;&#21475;&#28857;&#20063;&#26377;&#20960;&#20010;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483082601460" ID="ID_1551842561" MODIFIED="1483082607481">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/mdpaygate-EventManagerImplImpl.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483083260065" FOLDED="true" ID="ID_1758652570" MODIFIED="1486619997286" TEXT="Callable/Runable/future">
<node CREATED="1483083285500" ID="ID_35188064" MODIFIED="1483083350459" TEXT="Callable &#x7c7b;&#x4f3c; Runable&#xff0c;&#x5b9e;&#x73b0;&#x65b9;&#x6cd5;call &#x4e0d;&#x8fc7;&#x5176;&#x5fc5;&#x5e26;&#x8fd4;&#x56de;&#x503c;"/>
<node CREATED="1483083316750" ID="ID_40502405" MODIFIED="1483083330675" TEXT="Runable &#x5b9e;&#x73b0;&#x65b9;&#x6cd5;run&#xff0c;&#x4e0d;&#x80fd;&#x6709;&#x8fd4;&#x56de;&#x503c;"/>
<node CREATED="1483083352379" ID="ID_759028660" MODIFIED="1483083587450" TEXT="future&#xff0c;&#x5f02;&#x6b65;&#x5904;&#x7406;&#xff0c;&#x662f;&#x5bf9;Callable or Runable&#x518d;&#x5c01;&#x88c5;&#xff0c;&#x4e0d;&#x50cf;Callable,Runable&#x90fd;&#x662f;&#x540c;&#x6b65;&#x8fd4;&#x56de;&#x7ed3;&#x679c;"/>
</node>
<node CREATED="1483089489163" ID="ID_251197316" MODIFIED="1483089498437" TEXT="PayEventHandle">
<node CREATED="1483089532279" ID="ID_607301440" MODIFIED="1483089634837" TEXT="&#x8bbf;&#x95ee; mdfrontserver &#x7684; paycallback.do&#x7136;&#x540e;&#x518d;&#x5237;queue&#x8868;"/>
</node>
<node CREATED="1483091578431" ID="ID_206400336" MODIFIED="1483091586116" TEXT="&#x65f6;&#x5e8f;&#x56fe;"/>
</node>
</node>
</node>
<node CREATED="1485055598106" FOLDED="true" ID="ID_1811737455" MODIFIED="1490772000123" POSITION="right" TEXT="&#x7334;&#x5e74;&#x5f52;&#x6863;">
<node CREATED="1482730873217" FOLDED="true" ID="ID_1637028870" MODIFIED="1490771997529" TEXT="2017">
<node CREATED="1483758930701" FOLDED="true" ID="ID_1355869886" MODIFIED="1490771996681" TEXT="&#x5e74;&#x524d;(1.25&#x53f7;&#x524d;&#xff09;">
<node CREATED="1483408342334" FOLDED="true" ID="ID_378928963" MODIFIED="1487639724046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24635;&#20307;&#27969;&#31243;&#25551;&#36848;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483408390268" FOLDED="true" ID="ID_1569529435" MODIFIED="1487639722966">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c &#25195; b
    </p>
    <p>
      
    </p>
    <p>
      &#29992;&#25143;<b><font color="#3366ff">&#25195;</font></b>&#21830;&#23478;&#25552;&#20379;&#30340;<b><font color="#3366ff">&#29289;&#26009;&#30721;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483408840403" ID="ID_597187017" MODIFIED="1483608246624" TEXT="&#x8bf4;&#x660e;">
<node CREATED="1483415327854" ID="ID_1715116367" MODIFIED="1483421532805" TEXT="&#x4f7f;&#x7528;&#x6b65;&#x9aa4;">
<node CREATED="1483415344250" ID="ID_1167791642" MODIFIED="1483421534713">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        &#31389;&#31389;&#33829;&#38144;&#23458;&#25143;&#31471;&#28857;&#20987;&#8220;&#38376;&#24215;&#8221;&#33756;&#21333;&#36873;&#39033;
      </li>
      <li>
        &#20877;&#28857;&#20987;&#8220;&#26597;&#30475;&#20108;&#32500;&#30721;&#8221;&#33719;&#21462;&#38376;&#24215;&#20108;&#32500;&#30721;&#20379;&#29992;&#25143;&#25195;&#25551;
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1483415502341" FOLDED="true" ID="ID_785225303" MODIFIED="1483608116212" TEXT="&#x754c;&#x9762;&#x4e00;&#xff0c;&#x67e5;&#x770b;&#x4e8c;&#x7ef4;&#x7801;&#x5165;&#x53e3;">
<node CREATED="1483415542652" ID="ID_1180171282" MODIFIED="1483415548841">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/sh_pay/rcode_forshop.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483415527956" FOLDED="true" ID="ID_713600562" MODIFIED="1483608118836" TEXT="&#x754c;&#x9762;&#x4e8c;&#xff0c;&#x83b7;&#x53d6;&#x7684;&#x5177;&#x4f53;&#x4e8c;&#x7ef4;&#x7801;">
<node CREATED="1483415554735" ID="ID_749289878" MODIFIED="1483415558111">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/sh_pay/rcode_forshop_1.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483415564263" ID="ID_379957061" MODIFIED="1483415594288" TEXT="&#x4e8c;&#x7ef4;&#x7801;&#x7684;&#x751f;&#x6210;&#x662f;&#x91c7;&#x7528;&#x98de;&#x98de;&#x7684;winform&#x5c0f;&#x5de5;&#x5177;&#x6279;&#x91cf;&#x751f;&#x6210;&#x7684;"/>
</node>
</node>
<node CREATED="1483495368943" FOLDED="true" ID="ID_1211451339" MODIFIED="1483921305447" TEXT="&#x9e4f;&#x98de;&#x53e3;&#x8ff0;">
<node BACKGROUND_COLOR="#ffff99" CREATED="1483495376168" ID="ID_694611625" MODIFIED="1483495780197">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25152;&#25195;&#29289;&#26009;&#30721;&#33258;&#24102;shopid,money,&#25805;&#20316;&#21592;id,&#25805;&#20316;&#21592;&#21517;&#31216;&#31561;&#65292;&#25105;&#20204;&#20808;&#19977;&#27493;authov2&#20174;&#24494;&#20449;&#21462;&#21040;openid&#65292;&#28982;&#21518;&#22312;mobilewap&#35843;&#29992;&#24426;&#24426;&#32452;&#20214;&#25552;&#21462;&#32465;&#23450;&#23545;&#24212;&#30340;userid,&#28982;&#21518;&#65292;&#36208;frontserver&#19979;&#21333;&#65292;&#36208;paygate&#36208;&#29616;&#22312;&#25903;&#20184;&#30340;&#25903;&#20184;&#35831;&#27714;&#21442;&#25968;&#65292;&#28982;&#21518;&#65292;&#36820;&#22238;&#23458;&#25143;&#31471;&#65292;<font color="#009999">&#36890;&#36807;js&#35843;&#29992;&#24494;&#20449;&#20869;&#37096;&#20307;&#31995;&#23436;&#25104;&#25903;&#20184;&#65281;&#65292;&#24494;&#20449;&#20250;&#26681;&#25454;&#25105;&#20204;&#25552;&#20379;&#30340;&#32593;&#22336;&#65292;&#22238;&#35843;&#36890;&#30693;&#25903;&#20184;&#32467;&#26524;</font>&#65292;&#25110;&#32773;&#25105;&#20204;&#23450;&#26399;&#36718;&#35810;&#30456;&#24212;&#25903;&#20184;&#25509;&#21475;&#33719;&#21462;&#25903;&#20184;&#32467;&#26524;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#28040;&#24687;&#27169;&#26495;&#20063;&#26159;&#24494;&#20449;&#19968;&#25972;&#22871;&#20869;&#37096;&#36890;&#30693;&#20107;&#20214;&#20307;&#31995;&#65292;&#27604;&#22914;&#20851;&#27880;&#20107;&#20214;&#31561;&#65292;&#20986;&#21457;&#30456;&#24212;&#26102;&#38388;&#65292;&#21487;&#20197;&#36890;&#36807;&#27169;&#26495;&#35774;&#32622;&#65292;&#24494;&#20449;&#24110;&#21161;&#25105;&#20204;&#32473;&#29992;&#25143;&#21457;&#36865;&#30456;&#24212;&#36890;&#30693;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#24494;&#20449;&#25216;&#26415;&#25509;&#21475;&#32593;&#22336;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#330099">http://mp.weixin.qq.com/wiki/home/index.html</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1483608246629" FOLDED="true" ID="ID_1811661994" LINK="http://mp.weixin.qq.com/wiki/home/index.html" MODIFIED="1486364929552">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24494;&#20449;&#20844;&#20247;&#24179;&#21488;[&#20134;&#21363;<b><font color="#00cc99">&#20844;&#20247;&#21495;</font></b>]
    </p>
    <p>
      
    </p>
    <p>
      http://mp.weixin.qq.com/wiki/home/index.html
    </p>
  </body>
</html></richcontent>
<node CREATED="1483608290277" ID="ID_728187343" MODIFIED="1483608349108">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#cc00cc"><i>&#27599;&#20010;</i>&#29992;&#25143;</font></b>&#160;&#38024;&#23545; <b><font color="#00cc99"><i>&#27599;&#20010;</i>&#160; &#20844;&#20247;&#21495; </font></b>&#20250; &#20135;&#29983; &#19968;&#20010;<b><font color="#009900">&#23433;&#20840; &#30340; OpenID</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483608707606" ID="ID_1332204510" MODIFIED="1483608751655">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#00cc99" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#20844;&#20247;&#21495;</b></font><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#26159;&#20197;&#24494;&#20449;&#29992;&#25143;&#30340;</font><font color="#ff9933" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#19968;&#20010;&#32852;&#31995;&#20154;&#24418;&#24335;</b></font><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#23384;&#22312;&#30340;&#65292;</font><font color="#cc00cc" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#28040;&#24687;&#20250;&#35805;</b></font><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#26159;&#20844;&#20247;&#21495;&#19982;&#29992;&#25143;</font><font color="#00cc99" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#20132;&#20114;&#30340;&#22522;&#30784;</b></font><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#12290;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483608783769" ID="ID_1642508080" MODIFIED="1483608791286" TEXT="&#x6d88;&#x606f;&#x79cd;&#x7c7b;">
<node CREATED="1483608793330" ID="ID_725758221" MODIFIED="1483608968838">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#cc00cc">&#32676;&#21457;&#28040;&#24687;</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#20844;&#20247;&#21495;&#21487;&#20197;&#20197;&#19968;&#23450;&#39057;&#27425;&#65288;<b><font color="#009900">&#35746;&#38405;&#21495;</font></b>&#20026;<u><b><font color="#ff6666">&#27599;&#22825;1&#27425;</font></b></u>&#65292;<b><font color="#009900">&#26381;&#21153;&#21495;</font></b>&#20026;<u><b><font color="#ff6666">&#27599;&#26376;4&#27425;</font></b></u>&#65289;&#65292;&#21521;&#29992;&#25143;<b><font color="#cc00cc">&#32676;&#21457;</font></b>&#28040;&#24687;&#65292;&#21253;&#25324;&#25991;&#23383;&#28040;&#24687;&#12289;&#22270;&#25991;&#28040;&#24687;&#12289;&#22270;&#29255;&#12289;&#35270;&#39057;&#12289;&#35821;&#38899;&#31561;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483608800462" ID="ID_997831738" MODIFIED="1483608808656" TEXT="&#x88ab;&#x52a8;&#x56de;&#x590d;&#x6d88;&#x606f;"/>
<node CREATED="1483608809583" ID="ID_1324886647" MODIFIED="1483608814623" TEXT="&#x5ba2;&#x670d;&#x6d88;&#x606f;"/>
<node CREATED="1483608815426" ID="ID_1684610556" MODIFIED="1483608820087" TEXT="&#x6a21;&#x677f;&#x6d88;&#x606f;"/>
</node>
</node>
</node>
<node CREATED="1483608387118" ID="ID_455279516" MODIFIED="1483608483147">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#22914;&#26524;&#38656;&#35201;&#22312;&#22810;&#20844;&#20247;&#21495;&#12289;&#31227;&#21160;&#24212;&#29992;&#20043;&#38388;&#20570;&#29992;&#25143;&#20849;&#36890;&#65292;&#21017;&#38656;&#21069;&#24448;&#24494;&#20449;&#24320;&#25918;&#24179;&#21488;&#65292;&#23558;</font><font color="#cc00cc" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#36825;&#20123;&#20844;&#20247;&#21495;&#21644;&#24212;&#29992;&#32465;&#23450;&#21040;&#19968;&#20010;</b></font><b><font color="#ff6666" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#24320;&#25918;&#24179;&#21488;</font><font color="#ff6600" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#36134;&#21495;</font><font color="#cc00cc" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#19979;</font></b><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#65292;&#32465;&#23450;&#21518;&#65292;&#19968;&#20010;&#29992;&#25143;&#34429;&#28982;&#23545;&#22810;&#20010;&#20844;&#20247;&#21495;&#21644;&#24212;&#29992;&#26377;&#22810;&#20010;&#19981;&#21516;&#30340;OpenID&#65292;&#20294;&#20182;&#23545;&#25152;&#26377;&#36825;&#20123;</font><font color="#009900" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px"><b>&#21516;&#19968;</b></font><b><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#24320;&#25918;&#24179;&#21488;&#36134;&#21495;&#19979;&#30340;</font><font color="#009900" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#20844;&#20247;&#21495;</font><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#21644;&#24212;&#29992;&#65292;&#21482;&#26377;&#19968;&#20010;</font><font color="#cc00cc" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">UnionID</font></b><font color="rgb(51, 51, 51)" face="Microsoft Yahei, &#x5b8b;&#x4f53;, Tahoma, Arial" size="14px">&#65292;&#21487;&#20197;&#22312;&#29992;&#25143;&#31649;&#29702;-&#33719;&#21462;&#29992;&#25143;&#22522;&#26412;&#20449;&#24687;&#65288;UnionID&#26426;&#21046;&#65289;&#25991;&#26723;&#20102;&#35299;&#35814;&#24773;&#12290;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1483408399702" FOLDED="true" ID="ID_1043542837" MODIFIED="1484881020915">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b &#25195; c
    </p>
    <p>
      
    </p>
    <p>
      &#21830;&#23478;<b><font color="#3366ff">&#25195;</font></b>&#29992;&#25143;&#25552;&#20379;&#30340;<b><font color="#3366ff">&#25480;&#26435;&#30721;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483408848775" ID="ID_1179904598" MODIFIED="1483921245196" TEXT="&#x8bf4;&#x660e;">
<node CREATED="1483410385148" FOLDED="true" ID="ID_974379980" MODIFIED="1483754138181" TEXT="&#x4f7f;&#x7528;&#x6b65;&#x9aa4;">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1483410395885" ID="ID_342904935" MODIFIED="1483410610149">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        &#31389;&#31389;&#33829;&#38144;&#23458;&#25143;&#31471;&#28857;&#20987;&#8220;&#25910;&#27454;&#8221;&#33756;&#21333;
      </li>
      <li>
        &#36755;&#20837;&#35201;&#25910;&#21462;&#30340;&#37329;&#39069;&#65292;&#20379;&#29992;&#25143;&#30475;
      </li>
      <li>
        &#28857;&#20987;&#8220;&#30830;&#35748;&#25910;&#27454;&#8221;&#65292;&#35843;&#21462;&#25668;&#20687;&#22836;&#25195;&#25551;&#29992;&#25143;&#30340;<b><font color="#009933">&#25480;&#26435;&#30721;</font></b>
      </li>
      <li>
        &#65288;&#27492;&#38388; &#35843;&#29992;bizhttpserver &#21327;&#35758;<b><font color="#3366ff">createb2corder</font></b>&#23436;&#25104;&#25910;&#27454;&#65289;
      </li>
      <li>
        &#23436;&#25104;&#25910;&#27454;&#65281;
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1483408845504" FOLDED="true" ID="ID_1378902507" MODIFIED="1483608018611">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22270;&#31034;&#30028;&#38754;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483415271208" ID="ID_881143101" MODIFIED="1483415300735">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/sh_pay/b_scan_c.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1483423013420" ID="ID_571636556" MODIFIED="1483925909295" TEXT="&#x56fe;&#x793a;&#x8bf4;&#x660e;">
<node CREATED="1483427900255" ID="ID_760276171" MODIFIED="1483427933035">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/b-scan-c-forpay.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1483414666754" FOLDED="true" ID="ID_1464441245" MODIFIED="1484183865808" TEXT="b&#x7aef;&#x5ba2;&#x6237;&#x7aef; -- &#x7a9d;&#x7a9d;&#x8425;&#x9500;">
<node CREATED="1483415082975" ID="ID_948793248" MODIFIED="1483415087821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/sh_pay/b_client.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1483756764007" ID="ID_407673493" MODIFIED="1483757189485" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x6587;&#x6863;&#x6f84;&#x6e05;">
<node CREATED="1483756775186" ID="ID_1818204610" MODIFIED="1483757165341" TEXT="&#x591a;&#x7801;&#x5408;&#x4e00;&#x805a;&#x5408;&#x652f;&#x4ed8;&#x662f; c &#x626b; b"/>
<node CREATED="1483756791940" ID="ID_564959920" MODIFIED="1483757170479" TEXT="&#x88ab;&#x626b; &#x652f;&#x4ed8;&#x662f;  b &#x626b; c"/>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1483752794643" FOLDED="true" ID="ID_1945805906" MODIFIED="1487639717704">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff3333">&#20844;&#20247;&#21495;&#37197;&#32622;&#20999;&#25442;&#25972;&#29702;</font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1483752815995" ID="ID_361750404" MODIFIED="1483947145223" TEXT="&#x652f;&#x4ed8;&#x4e09;&#x4e2a;&#x53c2;&#x6570;">
<node CREATED="1483752822438" ID="ID_613081678" MODIFIED="1483752827187" TEXT="partnerid">
<node CREATED="1483752981993" ID="ID_202108820" MODIFIED="1483757254418">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29616;&#22312;&#25903;&#20184;&#37324;&#23545;&#24212;&#20026;<b><font color="#990099">appId</font></b>&#33410;&#28857;
    </p>
    <p>
      
    </p>
    <p>
      &#21830;&#25143;<b><font color="#ff3333">&#24212;&#29992;</font></b>&#21807;&#19968;&#26631;&#35782;&#65292;&#20134;&#21363;&#19968;&#20010;&#21830;&#25143;&#21487;&#20197;&#26377;&#22810;&#20010;&#24212;&#29992;&#65292;&#27599;&#20010;&#24212;&#29992;&#20998;&#37197;&#19968;&#20010;id
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483752828167" ID="ID_626144723" MODIFIED="1483752834356" TEXT="&#x516c;&#x4f17;&#x53f7;id">
<node CREATED="1483752843510" ID="ID_1400727175" MODIFIED="1483753311407">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#660066">&#19968;&#30452;&#20108;&#20041;&#20026;alipayId, sellerid</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483753091587" ID="ID_1667386692" MODIFIED="1483757238291">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23545;&#24212;&#29616;&#22312;&#25903;&#20184;<b><font color="#990099">mhtSubAppId</font></b>&#33410;&#28857;
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#20010;&#26159;&#21830;&#25143;&#22312;&#26368;&#32456;&#25903;&#20184;&#31471;&#65292;&#27604;&#22914;&#24494;&#20449;&#25110;&#32773;&#25903;&#20184;&#23453;&#30340;appId&#65292;&#20134;&#21363;&#25152;&#35859;&#24494;&#20449;&#30340;&#20844;&#20247;&#21495;&#65292;&#25903;&#20184;&#23453;&#30340;&#26381;&#21153;&#31383;&#65292;&#38065;&#23601;&#26159;&#25171;&#20837;&#35813;&#21442;&#25968;&#32465;&#23450;&#30340;&#38134;&#34892;&#21345;&#20013;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1483752835270" ID="ID_477209396" MODIFIED="1483752840210" TEXT="&#x7b7e;&#x540d;key"/>
</node>
<node CREATED="1483754326670" FOLDED="true" ID="ID_796642624" MODIFIED="1486364919128" TEXT="&#x6b64;&#x6b21;&#x6539;&#x52a8;&#x7275;&#x626f;&#x7684;&#x51e0;&#x4e2a;&#x5173;&#x952e;&#x70b9;">
<node CREATED="1483754349644" ID="ID_1192838046" MODIFIED="1483754389756" TEXT="&#x9488;&#x5bf9;&#x591a;&#x4e2a;&#x516c;&#x4f17;&#x53f7;&#xff0c;&#x7528;&#x6237;&#x7684;&#x53c2;&#x6570;&#x5fc5;&#x987b;&#x91c7;&#x7528;unionid"/>
<node CREATED="1483754391473" ID="ID_1723941261" MODIFIED="1483754431484" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x6d41;&#x7a0b;&#x4e2d;&#x9700;&#x8981;&#x63d0;&#x4f9b;&#x53c2;&#x6570;&#xff0c;&#x8fd9;&#x90e8;&#x5206;&#x6211;&#x8981;&#x91cd;&#x6784;&#x6574;&#x4e2a;&#x652f;&#x4ed8;&#x6d41;&#x7a0b;&#x5305;&#x62ec;&#x9000;&#x6b3e;"/>
</node>
<node CREATED="1483758659221" ID="ID_1301649163" MODIFIED="1483758823251">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29616;&#22312;&#25903;&#20184;&#25509;&#21475;&#25991;&#26723;&#21644;&#20132;&#26131;&#32452;&#25903;&#20184;&#27969;&#31243;&#20877;&#25972;&#29702;
    </p>
    <p>
      
    </p>
    <p>
      on 2017.01.07
    </p>
  </body>
</html></richcontent>
<node CREATED="1483758688052" ID="ID_1804484947" MODIFIED="1483758742925" TEXT="&#x591a;&#x7801;&#x5408;&#x4e00;&#x805a;&#x5408;&#x652f;&#x4ed8;(c &#x626b; b,&#x7528;&#x6237;&#x626b;&#x6bcf;&#x4e2a;&#x95e8;&#x5e97;&#x7684;&#x7269;&#x6599;&#x7801;)">
<node CREATED="1483760305870" ID="ID_329136941" LINK="https://pay.weixin.qq.com/wiki/doc/api/jsapi_sl.php?chapter=7_1" MODIFIED="1483760906864">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wowo.Mobile.Wap.WebSite
    </p>
    <p>
      &#160;&#160;-&gt;Views -&gt;Weixin -&gt;PhonePay-&gt;SHCreateOrder.cshtml
    </p>
    <p>
      
    </p>
    <p>
      &#35813;&#22788;&#36127;&#36131;ajax&#35843;&#29992;&#29616;&#22312;&#25903;&#20184;&#39029;&#38754;&#22312;<b><font color="#006633">b&#31471;&#23458;&#25143;&#31471;&#20869;</font></b>&#23436;&#25104;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483758744979" ID="ID_1425540829" MODIFIED="1483758804959" TEXT="&#x88ab;&#x626b;&#x652f;&#x4ed8;(b &#x626b; c&#xff0c;&#x5546;&#x5bb6;&#x626b;&#x7801;&#x67aa;or b&#x7aef;&#x5ba2;&#x6237;&#x7aef; &#x626b; &#x7528;&#x6237;&#x6388;&#x6743;&#x7801;&#x5b8c;&#x6210;&#x652f;&#x4ed8;)"/>
</node>
</node>
<node BACKGROUND_COLOR="#99ff99" CREATED="1483761050994" FOLDED="true" ID="ID_1481594119" LINK="https://pay.weixin.qq.com/wiki/doc/api/jsapi_sl.php?chapter=7_1" MODIFIED="1487639708030">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24494;&#20449;&#20844;&#20247;&#21495;&#25903;&#20184;
    </p>
    <p>
      
    </p>
    <p>
      <b>&#25152;&#35859; <font color="#006633">c &#25195; b</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483768231668" FOLDED="true" ID="ID_907999595" MODIFIED="1487639706270" TEXT="&#x51e0;&#x4e2a;&#x524d;&#x7f6e;&#x8bf4;&#x660e;">
<node CREATED="1483768242880" FOLDED="true" ID="ID_559503576" MODIFIED="1484183774048">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21830;&#25143;&#24517;&#39035;&#26377;&#30456;&#24212;&#30340;&#20379;<b><font color="#006633">&#24494;&#20449;&#20869;&#32622;&#27983;&#35272;&#22120;</font></b>&#35775;&#38382;&#30340;<b><font color="#3300ff">H5</font></b>&#39029;&#38754;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483769430799" ID="ID_1156377264" MODIFIED="1483769440937">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_01.jpg" />
  </body>
</html></richcontent>
</node>
<node CREATED="1483769656813" ID="ID_1224702159" MODIFIED="1483769681168">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#37324;&#20063;&#21487;&#20197;&#29992;<b><font color="#3300ff">&#20108;&#32500;&#30721;</font></b>&#26469;&#25195;&#19968;&#25195;&#23436;&#25104;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483768260416" ID="ID_1050503423" MODIFIED="1483768359783">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24494;&#20449;&#36890;&#36807;<b><font color="#006633">&#20869;&#32622;&#27983;&#35272;&#22120;</font>&#20013;&#30340;<font color="#ff6600">&#25903;&#20184;&#25511;&#20214;</font></b>&#26469;&#23436;&#25104;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483768380593" ID="ID_1236385171" MODIFIED="1484183762300">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25903;&#20184;&#25104;&#21151;&#21518;&#65292;<b><font color="#006633">&#24494;&#20449;&#20869;&#32622;&#27983;&#35272;&#22120;</font></b>&#20250;&#35843;&#29992;&#21830;&#25143;&#30340;H5&#39029;&#38754;<b><font color="#ff6600">&#36890;&#30693;&#25903;&#20184;&#25104;&#21151;</font></b>&#65292;&#21830;&#25143;<b><font color="#3300ff">&#23637;&#31034;&#32473;&#29992;&#25143;&#25903;&#20184;&#25104;&#21151;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483768533155" FOLDED="true" ID="ID_1083672079" LINK="#ID_1982907582" MODIFIED="1486542257778">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25903;&#20184;&#25104;&#21151;&#30340;&#19977;&#20010;&#21518;&#32493;&#22788;&#29702;&#27493;&#39588;
    </p>
    <p>
      
    </p>
    <p>
      &#20132;&#20114;&#32454;&#33410;&#21442;&#32771;&#26102;&#24207;&#22270;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483768566351" FOLDED="true" ID="ID_1259205762" MODIFIED="1483772182149">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      step 1
    </p>
    <p>
      &#24494;&#20449;&#25903;&#20184;&#25104;&#21151;&#20250;&#36890;&#30693;&#21830;&#25143;&#21518;&#21488;&#65292;&#21516;&#26102;&#23637;&#31034;&#32473;&#29992;&#25143;&#25903;&#20184;&#25104;&#21151;&#39029;&#38754;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#3300ff">&#36825;&#37096;&#20998;&#26174;&#31034;&#30340;&#39029;&#38754;</font><font color="#006633">&#30001;&#24494;&#20449;</font><font color="#3300ff">&#36127;&#36131;&#29983;&#25104;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1483769452849" ID="ID_1409422110" MODIFIED="1483769456975">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_02.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483768598915" FOLDED="true" ID="ID_111944706" MODIFIED="1483773144638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      step 2
    </p>
    <p>
      
    </p>
    <p>
      &#24494;&#20449;&#36820;&#22238;&#21830;&#25143;&#39029;&#38754;&#65292;&#35813;&#39029;&#38754;&#30001;&#21830;&#25143;&#33258;&#23450;&#20041;&#29983;&#25104;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483769461691" ID="ID_798710921" MODIFIED="1483769465424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_03.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483769233006" FOLDED="true" ID="ID_955018840" MODIFIED="1483769475797">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      step 3 &#65292;&#35813;&#27493;&#39588;<b><font color="#3300ff">&#21487;&#36873;</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#21830;&#25143;&#20844;&#20247;&#21495;&#22312;&#33719;&#21462;&#25903;&#20184;&#25104;&#21151;&#36890;&#30693;&#21518;&#65292;<b><font color="#3300ff">&#19979;&#21457;&#28040;&#24687;</font></b>&#25552;&#31034;&#25903;&#20184;&#25104;&#21151;&#31561;&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483769469363" ID="ID_1122468872" MODIFIED="1483769472847">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_04.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1483769741528" FOLDED="true" ID="ID_620300033" MODIFIED="1486542318946" TEXT="&#x4ea4;&#x4e92;&#x7ec6;&#x8282;">
<node CREATED="1483769786959" ID="ID_1927116495" MODIFIED="1483771834892">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20197;&#19979;&#26159;&#25903;&#20184;&#22330;&#26223;&#30340;&#20132;&#20114;&#32454;&#33410;&#65292;&#35831;&#35748;&#30495;&#38405;&#35835;&#65292;&#35774;&#35745;&#21830;&#25143;&#39029;&#38754;&#30340;&#36923;&#36753;&#65306;
    </p>
    <p>
      
    </p>
    <p>
      &#65288;1&#65289;&#29992;&#25143;&#25171;&#24320;&#21830;&#25143;&#32593;&#39029;&#36873;&#36141;&#21830;&#21697;&#65292;&#21457;&#36215;&#25903;&#20184;&#65292;&#22312;&#32593;&#39029;<b>&#36890;&#36807;JavaScript&#35843;&#29992;<font color="#3300ff">getBrandWCPayRequest</font>&#25509;&#21475;&#65292;&#21457;&#36215;<font color="#006633">&#24494;&#20449;&#25903;&#20184;</font>&#35831;&#27714;</b>&#65292;&#29992;&#25143;&#36827;&#20837;&#25903;&#20184;&#27969;&#31243;&#12290;
    </p>
    <p>
      &#65288;2&#65289;&#29992;&#25143;&#25104;&#21151;&#25903;&#20184;<b><font color="#9900cc">&#28857;&#20987;</font><font color="#006633"><u><i>&#23436;&#25104;&#25353;&#38062;</i></u></font></b>&#21518;&#65292;&#21830;&#25143;&#30340;<b>&#21069;&#31471;&#20250;&#25910;&#21040;JavaScript&#30340;<font color="#3300ff"><i><u>&#36820;&#22238;&#20540;</u></i></font></b>&#12290;&#21830;&#25143;&#21487;&#30452;&#25509;&#36339;&#36716;&#21040;&#25903;&#20184;&#25104;&#21151;&#30340;&#38745;&#24577;&#39029;&#38754;&#36827;&#34892;&#23637;&#31034;&#12290;
    </p>
    <p>
      &#65288;3&#65289;&#21830;&#25143;&#21518;&#21488;&#25910;&#21040;&#26469;&#33258;&#24494;&#20449;&#24320;&#25918;&#24179;&#21488;&#30340;&#25903;&#20184;&#25104;&#21151;&#22238;&#35843;&#36890;&#30693;&#65292;&#26631;&#24535;&#35813;&#31508;&#35746;&#21333;&#25903;&#20184;&#25104;&#21151;&#12290;
    </p>
    <p>
      &#27880;&#65306;<b>&#65288;2&#65289;&#21644;&#65288;3&#65289;&#30340;&#35302;&#21457;&#19981;&#20445;&#35777;&#36981;&#24490;&#20005;&#26684;&#30340;&#26102;&#24207;</b>&#12290;JS API&#36820;&#22238;&#20540;&#20316;&#20026;&#35302;&#21457;&#21830;&#25143;&#32593;&#39029;&#36339;&#36716;&#30340;&#26631;&#24535;&#65292;&#20294;<b>&#21830;&#25143;&#21518;&#21488;&#24212;&#35813;&#21482;&#22312;&#25910;&#21040;&#24494;<font color="#ff6600">&#20449;&#21518;&#21488;&#30340;&#25903;&#20184;&#25104;&#21151;&#22238;&#35843;&#36890;&#30693;</font>&#21518;&#65292;&#25165;&#20570;<font color="#006633">&#30495;&#27491;&#30340;&#25903;&#20184;&#25104;&#21151;&#30340;&#22788;&#29702;</font></b>&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccff99" CREATED="1483771982115" FOLDED="true" ID="ID_1982907582" MODIFIED="1487639668293" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1483771996107" ID="ID_1930090108" MODIFIED="1483772002058">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_05.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ff99ff" CREATED="1483774487367" FOLDED="true" ID="ID_1687614169" MODIFIED="1483779280474" TEXT="&#x516c;&#x4f17;&#x53f7;&#x8bbe;&#x7f6e;&#x754c;&#x9762;&#x8bf4;&#x660e;">
<icon BUILTIN="yes"/>
<node CREATED="1483774504035" ID="ID_1981974081" MODIFIED="1483774511424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_06.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1483775132173" FOLDED="true" ID="ID_843136363" MODIFIED="1487639680638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      H5&#35843;&#29992;&#25903;&#20184;API &#25972;&#29702;
    </p>
    <p>
      
    </p>
    <p>
      &#26631;&#20934; c &#25195; b &#27969;&#31243;&#65281;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1483775183067" ID="ID_1778614048" MODIFIED="1483775271125">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#65292;&#37319;&#29992;<b><font color="#ff0000">&#21482;&#26377;</font><font color="#009933">&#24494;&#20449;&#20869;&#32622;&#27983;&#35272;&#22120;</font><font color="#006666">&#25165;&#25903;&#25345;</font></b>&#30340;<b><font color="#3300ff">WeixinJSBridge</font></b>&#23545;&#35937;&#23436;&#25104;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483776027180" FOLDED="true" ID="ID_1592005320" MODIFIED="1484183752968">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#65292;&#23448;&#26041;JS &#29992;&#20363;
    </p>
    <p>
      
    </p>
    <p>
      &#36820;&#22238;&#32467;&#26524;<b><font color="#006666">&#22266;&#23450;&#20026;&#19977;&#20010;</font></b>&#65292;&#26681;&#25454;&#19981;&#21516;&#32467;&#26524;&#37319;&#29992;&#19981;&#21516;&#22788;&#29702;&#21363;&#21487;
    </p>
    <ul>
      <li>
        <font color="rgb(34, 34, 34)" face="Helvetica Neue, Hiragino Sans GB, Microsoft YaHei, &#x9ed1;&#x4f53;, Arial, sans-serif" size="14px">get_brand_wcpay_request&#65306;ok&#160;&#160;&#25903;&#20184;&#25104;&#21151;</font>
      </li>
      <li>
        <font color="rgb(34, 34, 34)" face="Helvetica Neue, Hiragino Sans GB, Microsoft YaHei, &#x9ed1;&#x4f53;, Arial, sans-serif" size="14px">get_brand_wcpay_request&#65306;cancel&#160;&#160;&#25903;&#20184;&#21462;&#28040;</font>
      </li>
      <li>
        <font color="rgb(34, 34, 34)" face="Helvetica Neue, Hiragino Sans GB, Microsoft YaHei, &#x9ed1;&#x4f53;, Arial, sans-serif" size="14px">get_brand_wcpay_request&#65306;fail &#25903;&#20184;&#22833;&#36133;</font>
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1483776041135" ID="ID_959405205" MODIFIED="1483776045140">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/wx_gzh_07.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483776196892" FOLDED="true" ID="ID_1500100488" MODIFIED="1484616493712">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3, &#38378;&#24800;&#33258;&#24049;&#30340;&#20351;&#29992;
    </p>
    <p>
      
    </p>
    <p>
      Wowo.Mobile.Wap.WebSite
    </p>
    <p>
      &#160;&#160;-&gt;Views -&gt;Weixin -&gt;PhonePay-&gt;SHCreateOrder.cshtml
    </p>
  </body>
</html></richcontent>
<node CREATED="1483777916351" ID="ID_1348163593" LINK="2017/01/SHCreateOrder.cshtml" MODIFIED="1483777934585" TEXT="&#x6e90;&#x7801;"/>
<node CREATED="1483777958979" ID="ID_1333813712" MODIFIED="1483777964191" TEXT="&#x5165;&#x53e3;&#x70b9;">
<node CREATED="1483777965635" ID="ID_401253754" MODIFIED="1483777994812">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;<b><font color="#3300ff">window.onload</font></b>&#160;= function (){<b><font color="#009999">...</font></b>}
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1483779066392" ID="ID_864450168" MODIFIED="1483779560263">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38378;&#24800;&#160;&#160;c &#25195; b&#30340;&#27969;&#31243;
    </p>
    <p>
      
    </p>
    <p>
      &#20174;&#20108;&#32500;&#30721;&#30340;&#22320;&#22336;&#24320;&#22987;&#38416;&#36848;&#65281;
    </p>
    <p>
      Wowo.Mobile.Wap.Controllers.Pay.PhonePayController -&gt; <b><font color="#3300ff">PrepareOrder </font></b>
    </p>
    <p>
      &#35813;&#26041;&#27861;&#26377;&#20004;&#20010;<b><font color="#ff0000">&#21069;&#32622;Filter</font></b>&#36827;&#34892;&#26657;&#39564;&#65292;<b><font color="#3300ff">SHUserIsLogin</font></b>,<b><font color="#009999">OAuthV2</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483782717382" ID="ID_1867047305" MODIFIED="1483782995567">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29992;&#25143;&#35775;&#38382;<b><font color="#006666">&#20844;&#20247;&#21495;&#30340;&#21830;&#25143;&#32593;&#39029;</font></b>&#26102;&#65292;&#21830;&#25143;&#36890;&#36807;<b><font color="#3300ff">&#24494;&#20449;&#32593;&#39029;&#30340;&#25480;&#26435;&#26426;&#21046;</font></b>&#25552;&#21462;&#29992;&#25143;&#20449;&#24687;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483783196694" ID="ID_770014915" MODIFIED="1483784276561">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38378;&#24800;&#38376;&#24215;&#20108;&#32500;&#30721;
    </p>
    <p>
      
    </p>
    <p>
      &#30446;&#21069;&#37319;&#29992;<b><font color="#3300ff">&#26032;&#30721;</font></b>&#26684;&#24335;&#65306;http://i.55tuan.com/<b><font color="#ff0000">rq</font></b>/es210.....&#65292;&#36825;&#20010;&#26159;&#25351;&#32473;&#21830;&#25143;&#25910;&#38134;&#21488;&#19978;&#36148;&#30340;&#20108;&#32500;&#30721;&#65292;&#29992;&#20110;&#32473;&#29992;&#25143;&#36827;&#34892;c &#25195; b
    </p>
    <p>
      
    </p>
    <p>
      es210...&#20026;&#21152;&#23494;&#21518;&#30340;&#20018;&#65292;&#21040;&#21518;&#21488;&#35299;&#23494;&#21518;&#21487;&#20174;redis&#37324;&#25552;&#21462;&#32465;&#23450;&#22909;&#30340;shopid&#21644;&#25910;&#38134;&#21592;id...,&#25454;&#35828;&#38144;&#21806;&#32972;&#30528;&#20108;&#32500;&#30721;&#30452;&#25509;&#21435;&#35848;&#65292;&#29616;&#22330;&#21487;&#20197;&#21160;&#24577;&#23436;&#25104;&#38376;&#24215;&#32465;&#23450;&#65292;&#26356;&#28789;&#27963;&#12290;<font color="#ff0000">&#19981;&#25026; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000">&#28548;&#28165;&#20102;&#65281; </font>
    </p>
    <p>
      &#27969;&#31243;&#26159;&#65306;&#21830;&#25143;&#20808;&#36890;&#36807;&#23457;&#25209;&#65292;&#28982;&#21518;&#38144;&#21806;&#25343;&#30528;<b><font color="#009999">&#20108;&#32500;&#30721;&#21435;&#25910;&#38134;&#21488;&#19978;&#19968;&#20010;&#20010;&#36148;&#19978;&#65292;&#19968;&#20010;&#20010;&#29992;b&#31471;&#30340;&#32465;&#23450;&#25910;&#27454;&#30721;&#21151;&#33021;&#23436;&#25104;&#23545;&#25910;&#38134;&#21488;&#20108;&#32500;&#30721;&#30340;&#32465;&#23450;</font></b>&#65292;&#27492;&#21518;&#29992;&#25143;&#23601;&#33021;&#36890;&#36807;&#25195;&#25551;&#25910;&#38134;&#21488;&#20108;&#32500;&#30721;&#26469;&#23436;&#25104;c &#25195; b&#30340;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1483922532945" FOLDED="true" ID="ID_1212735913" MODIFIED="1490602484532" TEXT="1.9">
<node CREATED="1483922540396" ID="ID_1768484656" MODIFIED="1483922598153">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38378;&#24800;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        b &#25195; c &#30340;java&#20837;&#21475;&#26159;wftCreate
      </li>
      <li>
        c &#25195; b&#30340;java&#20837;&#21475;&#26159;Create
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483923037718" FOLDED="true" ID="ID_969690643" MODIFIED="1490771994721" TEXT="&#x5e74;&#x524d;14&#x5929;">
<node CREATED="1483923067819" FOLDED="true" ID="ID_1541416572" MODIFIED="1490602480664" TEXT="&#x7b2c;1&#x5929;">
<node CREATED="1483923083368" FOLDED="true" ID="ID_1241534879" MODIFIED="1486367453667" TEXT="&#x6700;&#x540e;&#x4e00;&#x6b21;&#x68b3;&#x7406;Java&#x4ee3;&#x7801;&#x6d41;&#x7a0b;">
<node CREATED="1483923114011" ID="ID_1138219680" MODIFIED="1483954720757">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c &#25195; b &#21830;&#23478;&#29289;&#26009;&#30721;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483923834872" FOLDED="true" ID="ID_1978650757" MODIFIED="1483954722535" TEXT="wap&#x5165;&#x53e3;">
<node CREATED="1483924773381" FOLDED="true" ID="ID_96293249" LINK="#ID_1982907582" MODIFIED="1483925860455">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      PhonePayControllers.PrepareOrder
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <b><font color="#009933">SH_preCreateOrder</font></b>&#20808;&#33719;&#21462;&#21508;&#31867;&#39044;&#22791;&#21442;&#25968;
      </li>
      <li>
        &#25104;&#21151;&#21518;&#65292;&#23637;&#31034;&#24453;&#25903;&#20184;&#39029;&#38754;WebSite.Views.weixin.PhonePay.<b><font color="#660099">SHCreateOrder.cshtml</font></b>
      </li>
      <li>
        &#35813;&#39029;&#38754;&#26368;&#32456;&#25552;&#20132;&#21040;SHPay/Pay&#23545;&#24212;&#30340;<b><font color="#009933">SHPayControl.Pay</font></b>&#26041;&#27861;(&#20869;&#37096;&#35843;&#29992;<b><font color="#009933">SH_CreatOrder</font></b>)&#23436;&#25104;&#38378;&#24800;&#25903;&#20184;&#21442;&#25968;&#25171;&#21253;&#24182;&#19979;&#21333;
      </li>
      <li>
        JS&#35843;&#29992;&#38378;&#24800;&#25903;&#20184;&#21442;&#25968;&#21457;&#36215;&#24182;&#23436;&#25104;&#25903;&#20184;&#65281;&#26159;<b><font color="#660099">SHCreateOrder.cshtml</font></b>&#39029;&#38754;&#30340;<b><font color="#ff33ff">showWeixinPay</font></b>&#26041;&#27861;&#26469;&#23436;&#25104;&#25903;&#20184;
      </li>
      <li>
        &#25903;&#20184;&#25104;&#21151;&#30340;<b><font color="#660099">PhonePayController.PaySuccess</font></b>&#26041;&#27861;&#20250;&#35843;&#29992;&#21518;&#21488;&#30340;<b><font color="#000099">CashBackAgent.</font><font color="#009933">getOrderDetail</font></b>&#26469;&#20174;&#25968;&#25454;&#24211;&#25552;&#21462;&#25903;&#20184;&#25104;&#21151;&#30340;&#20449;&#24687;&#12290;
      </li>
    </ul>
    <p>
      &#23436;&#20840;&#21563;&#21512;H5&#35843;&#29992;&#25509;&#21475;API&#22788;&#29702;&#27169;&#24335;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483923842373" ID="ID_1534334667" MODIFIED="1483924398004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Wowo.Mobile.Controllers.Pay.SHPayControl
    </p>
    <p>
      &#25195;&#29289;&#26009;&#30721;&#21518;&#35843;&#29992;&#36825;&#20004;&#20010;&#26041;&#27861;&#20043;&#19968;&#65292;&#30001;JS&#35843;&#36215;
    </p>
    <ul>
      <li>
        <font color="#660099">Pay&#26041;&#27861; </font>
      </li>
      <li>
        <font color="#660099">AliPay&#26041;&#27861;</font>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1483923128831" FOLDED="true" ID="ID_758656140" LINK="#ID_1857347140" MODIFIED="1484183714880" TEXT="b &#x626b; c">
<node CREATED="1483923178505" ID="ID_1114780527" MODIFIED="1483926874510">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      shorder/wftcreate.do
    </p>
    <p>
      
    </p>
    <p>
      &#23601;&#25104;&#27604;&#36739;&#31616;&#21333;&#65292;&#25105;&#20204;&#30340;&#31532;&#19977;&#26041;&#25903;&#20184;&#25509;&#21475;&#30452;&#25509;&#25903;&#20184;&#25104;&#21151;
    </p>
    <p>
      &#24182;&#36820;&#22238;&#32473;xml&#32473;&#21512;&#20316;&#26041;&#25110;&#25105;&#20204;&#33258;&#24049;&#30340;b&#31471;&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483933043970" FOLDED="true" ID="ID_528371119" MODIFIED="1484808517722" TEXT="&#x8865;&#x5145;&#x5f53;&#x65f6;&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x4e0a;&#x7ebf;&#x4e0d;&#x80fd;&#x56de;&#x6eda;&#x95ee;&#x9898;">
<node CREATED="1483933073709" ID="ID_1078618443" MODIFIED="1483933276888">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24403;&#26102;&#20043;&#25152;&#20197;&#19981;&#33021;&#22238;&#28378;&#26159;&#22240;&#20026;&#22238;&#28378;&#26399;&#38388;&#20250;&#20135;&#29983;&#19968;&#25209;&#21333;&#23376;&#23548;&#33268;&#26080;&#27861;&#36864;&#27454;&#65288;&#22914;&#26524;&#23384;&#22312;&#65281;&#65289;&#65292;&#20854;&#23454;&#26159;&#21487;&#20197;&#20860;&#23481;&#30340;&#65292;&#21482;&#35201;newwap&#25903;&#25345;&#20860;&#23481;&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1483935357184" FOLDED="true" ID="ID_151718450" MODIFIED="1486367453665">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#6666ff">&#29616;&#22312;&#25903;&#20184;&#19982;&#22810;&#20027;&#20307;&#24182;&#23384;&#38416;&#36848;</font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node BACKGROUND_COLOR="#ccccff" CREATED="1483935396897" ID="ID_404386862" MODIFIED="1483936159667">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#21069;&#22312;newwap&#31471;&#30340;<b><font color="#000099">c &#25195; b</font></b>&#26159;&#22312;views-&gt;weixin-&gt;SHCreateOrder.cshtml&#20013;&#20889;&#22312;&#20195;&#30721;&#37324;<b><font color="#009933">paytype=15</font></b>
    </p>
    <p>
      &#32780;&#22914;&#26524;&#38376;&#24215;&#30340;<b><font color="#ff33ff">isDirect==1(&#20174;&#27704;&#22909;&#38376;&#24215;&#20013;&#24515;&#26597;&#35810;&#21040;&#35813;&#21830;&#25143;&#20026;&#22810;&#20027;&#20307;&#30452;&#36830;&#25903;&#20184;)</font></b>&#26102;&#65292;<b><font color="#009933">payType==19</font></b>&#65292;&#21363;&#30452;&#25509;&#36208;&#24494;&#20449;&#36890;&#36947;&#25903;&#20184;&#65292;&#19982;&#29616;&#22312;&#25903;&#20184;&#26080;&#20851;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#32780;newwap&#31471;&#30340;<b><font color="#000099">b &#25195; c</font></b>&#26159;&#22266;&#23450;&#36208;&#20102;<b><font color="#009933">paytype=17(&#24494;&#20449;&#65289;/paytype=18(&#25903;&#20184;&#23453;&#65289;&#65292;</font><font color="#009999">&#20063;&#23601;&#26159;&#35828;newwap&#35201;&#20174;&#38376;&#24215;&#20013;&#25552;&#21462;&#21040;&#26159;&#21542;&#30452;&#36830;&#25903;&#20184;&#38376;&#24215;&#65292;&#28982;&#21518;&#21152;&#20837;&#26032;&#30340;paytype=16&#20043;&#31867;&#26041;&#24335;&#26469;&#22788;&#29702;b&#25195;c&#65292;&#20063;&#23601;&#26159;&#25152;&#35859;&#30340;&#22810;&#20027;&#20307;&#20108;&#26399;&#12290; </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff33ff">&#37027;&#20040;&#22810;&#20844;&#20247;&#21495;&#30340;&#20462;&#25913;&#20063;&#26159;&#22522;&#20110;&#21516;&#26679;&#24605;&#36335;&#65292;&#26681;&#25454;&#38376;&#24215;&#20449;&#24687;&#65292;&#20256;&#20837;&#26032;&#30340;paytype&#26469;&#25351;&#26126;&#26159;&#21542;&#21478;&#22806;&#19968;&#20010;&#20844;&#20247;&#21495;&#36827;&#34892;&#25903;&#20184;&#65288;&#36208;&#29616;&#22312;&#25903;&#20184;&#36890;&#36947;</font></b>&#65289;
    </p>
    <p>
      
    </p>
    <p>
      &#25152;&#26377;paytype&#22312;mdfrontserver-ext&#19979;&#30340;TradeExtService&#30340;creatMobileParams&#26041;&#27861;&#19979;&#36827;&#34892;&#36890;&#36947;&#36716;&#25442;&#65281;
    </p>
    <p>
      &#21363;&#22312;&#27492;&#35774;&#32622;&#36890;&#36947;&#30340;&#30495;&#27491;<b><font color="#006633">paytype,privatekey,appid</font></b>&#31561;&#25903;&#20184;&#21442;&#25968;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1483944359534" FOLDED="true" ID="ID_1610001362" MODIFIED="1484808522268" TEXT="deviceSrc">
<node CREATED="1483944368370" ID="ID_81254319" MODIFIED="1483944377382" TEXT="103 &#x5fae;&#x4fe1;&#x516c;&#x4f17;&#x53f7;"/>
<node CREATED="1483944378829" ID="ID_580885499" MODIFIED="1483944391228" TEXT="107 &#x652f;&#x4ed8;&#x5b9d;&#x670d;&#x52a1;&#x7a97;"/>
<node CREATED="1483944392466" ID="ID_954669605" MODIFIED="1483944414958" TEXT="104 &#x552f;&#x7f8e;"/>
<node CREATED="1483944455871" ID="ID_497880998" MODIFIED="1483944470274" TEXT="201 &#x597d;&#x9002;&#x53e3;"/>
</node>
</node>
<node CREATED="1483948038126" FOLDED="true" ID="ID_614119989" MODIFIED="1486364713318" TEXT="&#x591a;&#x516c;&#x4f17;&#x53f7;&#x8bbe;&#x8ba1;">
<node CREATED="1483948384106" ID="ID_872896244" MODIFIED="1483948636728" TEXT="newwap&#x7aef;&#x6d89;&#x53ca;&#x6839;&#x636e;&#x4e0d;&#x540c;&#x516c;&#x4f17;&#x53f7;&#x63d0;&#x53d6;&#x4e0d;&#x540c;&#x7684;openid&#xff0c;&#x5e76;&#x8981;&#x7f13;&#x5b58;&#x8ba4;&#x8bc1;Token"/>
<node CREATED="1483948046972" ID="ID_1877155693" MODIFIED="1483948063204" TEXT="mdpaygate&#x7684;&#x4ea4;&#x6613;&#x4e09;&#x53c2;&#x6570;&#x4ece;&#x95e8;&#x5e97;&#x5bf9;&#x8c61;&#x91cc;&#x63d0;&#x53d6;"/>
<node CREATED="1483948070898" ID="ID_1374515065" MODIFIED="1483948089661" TEXT="fontserver&#x6839;&#x636e;&#x95e8;&#x5e97;id&#x63d0;&#x53d6;&#x95e8;&#x5e97;&#x5bf9;&#x8c61;"/>
<node CREATED="1483948090860" ID="ID_127173594" MODIFIED="1483948126973" TEXT="&#x516c;&#x4f17;&#x53f7;&#x4e09;&#x53c2;&#x6570;&#x4fdd;&#x5b58;&#x4e8e;&#x5355;&#x72ec;&#x8868;&#xff0c;&#x5e76;&#x5efa;&#x7acb;&#x4e0e;&#x95e8;&#x5e97;&#x7684;&#x5173;&#x8054;">
<node CREATED="1483948654418" ID="ID_982504166" MODIFIED="1483948662765" TEXT="&#x8fd9;&#x90e8;&#x5206;&#x662f;&#x95e8;&#x5e97;&#x4e2d;&#x5fc3;&#x7684;&#x6d3b;"/>
</node>
<node CREATED="1483948615754" ID="ID_699445572" MODIFIED="1483948631197" TEXT="&#x5fae;&#x4fe1;&#x8ba4;&#x8bc1;Token&#x4e8b;&#x5b9c;&#x672c;&#x5468;&#x6574;&#x7406;&#x4e00;&#x6b21;"/>
<node COLOR="#ff3366" CREATED="1484808586855" ID="ID_806139778" MODIFIED="1484808621031" TEXT="20170119&#x589e;&#x52a0;&#x4e00;&#x6761;&#xff0c;&#x9700;&#x8981;newwap&#x4f20;&#x5165;paytype">
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
</node>
</node>
<node CREATED="1483954144226" FOLDED="true" ID="ID_926537852" MODIFIED="1486367437587">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;mdpaygate&#25289;&#20998;&#25903;&#24320;&#22987;&#20102;&#32534;&#30721;&#65292;&#23601;&#26159;&#29031;&#25220;&#65292;&#20294;&#20063;&#24456;&#24515;&#28902;
    </p>
    <p>
      &#26126;&#22825;&#23436;&#25104;c &#25195;&#160;&#160;b&#30340;&#32534;&#30721;&#65292;&#20462;&#25913;&#24517;&#39035;&#35880;&#24910;&#65292;&#23588;&#20854;&#26159;&#20174;appid,partnerid,md5key&#30340;&#33719;&#21462;&#35201;&#32771;&#34385;&#20180;&#32454;
    </p>
  </body>
</html></richcontent>
<node CREATED="1483955776906" ID="ID_1694493998" MODIFIED="1483956485361">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20462;&#25913;&#20851;&#38190;&#28857;
    </p>
    <p>
      
    </p>
    <p>
      &#23545;&#20110;c &#25195; b &#23458;&#25143;&#31471;&#32593;&#39029;&#25903;&#20184;
    </p>
    <p>
      paytype&#24517;&#39035;&#26377;&#20010;&#29305;&#35774;&#20540;&#65292;&#24517;&#39035;&#22312;newwap&#31471;&#35774;&#22909;&#65292;&#27604;&#22914;16&#65292;&#36825;&#26679;&#25105;&#25165;&#33021;&#22312;frontserver&#31471;&#36716;&#25442;&#20026;&#29305;&#23450;&#30340;paytype&#20915;&#23450;&#36208;branchtonowpay&#20998;&#25903;
    </p>
    <p>
      
    </p>
    <p>
      &#23545;&#20110;b &#25195; c &#30340;&#31532;&#19977;&#26041;&#26381;&#21153;&#31471;&#25903;&#20184;
    </p>
    <p>
      newwap&#20256;&#36807;&#26469;&#30340;paytype &#22266;&#23450;&#20026;17(&#24494;&#20449;&#65289;/18(&#25903;&#20184;&#23453;&#65289;&#65292;&#22312;fontserver&#36716;&#20026;&#29305;&#23450;&#30340;paytype&#65292;&#36208;branchtonowpayscan - alipay or weixin!
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#9900ff">&#26080;&#35770;c &#25195; b&#25110;&#32773;b&#25195;c&#65292;&#20854;&#23454;&#65292;&#37117;&#38656;&#35201;</font><font color="#009933">&#38376;&#24215;id&#26469;&#20915;&#23450;</font><font color="#9900ff">&#36208;branchtonowpay or branchtonowpayscan&#30340;&#21738;&#20010;appid,parnterid,privatekey&#65292;&#36825;&#37096;&#20998;&#35201;&#22312;frontserver&#31471;&#20462;&#25913;&#23436;&#25104;&#65281; </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#006666">&#25152;&#20197;&#26126;&#22825;&#30340;&#37325;&#28857;&#24212;&#35813;&#22312;frontserver&#30340;</font><font color="#9900ff">tradeServiceImpl.createMobileParams&#21644;ext.TradeExtService.createMobileParams&#30340;&#20462;&#25913;&#65281;</font><font color="#006666">&#28982;&#21518;&#25165;&#26159;mdpaygate</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484010585870" FOLDED="true" ID="ID_802535103" MODIFIED="1490602472361" TEXT="&#x7b2c;2&#x5929;">
<node CREATED="1484010599981" ID="ID_580808796" MODIFIED="1484101491979">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;mdfrontserver&#30340;<b><font color="#009966">OrderPayParam</font></b>&#20013;&#22686;&#21152;&#22810;&#20844;&#20247;&#21495;&#37197;&#32622;&#21442;&#25968;&#23646;&#24615;
    </p>
    <p>
      &#22686;&#21152;&#23646;&#24615;&#65306;branchPartnerId,branchAppId,branchSignKey
    </p>
    <p>
      &#38656;&#35201;newwap&#20256;&#20837;paytype&#65306;610&#65288;&#29616;&#22312;&#25903;&#20184;c&#25195;b&#65289;&#65292;810(&#29616;&#22312;&#25903;&#20184;&#24494;&#20449;&#36890;&#36947;b&#25195;c)
    </p>
    <p>
      
    </p>
    <p>
      &#22312;<b><font color="#009966">OrderFsServiceAdapter.createShOrder()</font></b>&#20013;&#65292;&#22686;&#21152;&#26681;&#25454;shopId&#20174;&#38376;&#24215;&#20013;&#24515;&#38376;&#24215;&#23545;&#35937;&#65292;&#22312;&#38376;&#24215;&#23545;&#35937;&#25552;&#21462;&#20844;&#20247;&#21495;&#37197;&#32622;&#21151;&#33021;
    </p>
    <p>
      &#36825;&#20165;&#20165;&#26159;c -&gt; b&#30340;&#20462;&#25913;&#65292;&#36824;&#26377;b -&gt; c
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484013877883" FOLDED="true" ID="ID_1210262644" MODIFIED="1484611139830">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22686;&#21152;&#25903;&#20184;&#37197;&#32622;&#21442;&#25968;&#34920;&#65292;&#22312;mdorder&#24211;&#37324;&#22686;&#21152;<b><font color="#009966">md_paygate_conf</font></b>&#34920;
    </p>
    <p>
      
    </p>
    <p>
      id &#20027;&#38190;
    </p>
    <p>
      conftype,1-&#24494;&#20449;&#65292;2-&#25903;&#20184;&#23453;
    </p>
    <p>
      signkey,&#21152;&#31614;key not null
    </p>
    <p>
      partnerid,&#21487;&#20026;not null
    </p>
    <p>
      appid,not null,&#24494;&#20449;&#20844;&#20247;&#21495;&#25110;&#32773;&#28120;&#23453;&#36134;&#21495;
    </p>
    <p>
      createtime, not null
    </p>
    <p>
      updatetime null
    </p>
  </body>
</html></richcontent>
<node CREATED="1484023565785" ID="ID_1624558052" MODIFIED="1484610879627" TEXT="&#x9003;&#x79bb;">
<node CREATED="1484020138078" ID="ID_1425217063" MODIFIED="1484020158026" TEXT="&#x4e0b;&#x5348;&#x4e0d;&#x662f;&#x5e72;&#x6d3b;&#xff0c;&#x662f;&#x7f57;&#x5217;&#x81ea;&#x5df1;&#x7684;&#x5145;&#x7535;&#x6e05;&#x5355;&#xff01;"/>
<node CREATED="1484019317349" FOLDED="true" ID="ID_1262195764" MODIFIED="1484611137088">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;&#24515;&#24773;&#24322;&#24120;&#31967;&#31957;&#65292;&#24180;&#20551;&#34987;&#30733;&#21040;&#36824;&#27424;&#20844;&#21496;3&#22825;&#20551;&#65292;&#20170;&#24180;5&#65292;6&#26376;&#20221;&#38388;&#24517;&#39035;&#36208;&#20102;&#65292;&#36825;&#23478;&#20844;&#21496;&#24178;&#22810;&#20037;&#22810;&#21162;&#21147;&#37117;&#27809;&#29992;&#65281;&#26399;&#38388;&#23581;&#35797;&#21435;&#32769;&#26472;&#37027;&#65292;&#21542;&#21017;&#65292;&#25105;&#33258;&#24049;&#36208;&#65281;&#20294;&#24517;&#39035;&#25745;&#21040;&#24180;&#24213;&#25226;&#25569;&#24615;&#26356;&#22823;&#20123;&#65292;&#24037;&#20316;&#19981;&#29992;&#31215;&#26497;&#20102;&#65292;&#23545;&#20184;&#30528;&#65292;&#24635;&#20043;&#65292;&#32943;&#23450;&#35201;&#36208;&#26159;&#21069;&#25552;&#30340;&#35805;&#65292;&#37027;&#20040;&#23601;&#26159;&#32771;&#34385;&#22914;&#20309;&#25226;&#25569;&#29616;&#26377;&#36164;&#28304;&#20805;&#30005;&#26159;&#27491;&#32463;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#26149;&#33410;&#21069;&#65292;&#23601;&#26159;&#25630;&#23450;&#20132;&#26131;&#32452;&#30340;&#20960;&#20010;&#30772;&#39033;&#30446;&#23601;&#34892;&#65292;&#26149;&#33410;&#21518;&#19968;&#24459;&#26159;&#33258;&#24049;&#20805;&#30005;&#26102;&#38388;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#22909;&#20102;&#65292;&#19981;&#22810;&#24819;&#20102;&#65292;6&#26376;&#24320;&#22987;&#25214;&#24037;&#20316;&#65292;&#27492;&#21069;&#39044;&#30041;&#33258;&#24049;4&#20010;&#26376;&#26102;&#38388;&#65292;&#31934;&#24515;&#20934;&#22791;Java&#30340;&#38754;&#35797;&#65292;&#23601;&#26159;&#37325;&#26500;&#25903;&#20184;&#32452;&#25972;&#20010;&#20132;&#26131;&#27969;&#31243;&#65292;&#20174;H5&#39029;&#38754;&#31471;&#24320;&#22987;&#65292;&#20840;&#38754;&#23454;&#29616;&#23436;&#25972;&#26694;&#26550;&#65292;&#25903;&#25345;&#33258;&#21160;&#21270;&#27979;&#35797;&#21644;&#24615;&#33021;&#30417;&#25511;&#21450;&#27979;&#35797;&#65292;&#23601;&#26159;&#36825;&#26679;&#65292;6&#26376;&#20221;&#21069;&#23436;&#25104;&#65292;&#28982;&#21518;6&#26376;&#24320;&#22987;&#20889;&#31616;&#21382;&#65292;&#24320;&#21551;&#30127;&#29378;&#38754;&#35797;&#27169;&#24335;&#21363;&#21487;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#36716;&#25442;&#24605;&#36335;&#65292;&#31215;&#26497;&#20934;&#22791;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff6666">&#20174;&#20170;&#22825;&#36215;&#24443;&#24213;&#38381;&#22068;&#65292;&#20160;&#20040;&#22403;&#22334;&#20107;&#37117;&#20808;&#24525;&#30528;&#65292;&#24180;&#20551;&#20063;&#22909;&#65292;&#38477;&#34218;&#20063;&#22909;&#65292;&#20570;&#22909;&#26368;&#22351;&#25171;&#31639;&#65292;&#21453;&#27491;&#20063;&#23601;&#24525;&#22235;&#20010;&#22810;&#26376;&#32780;&#24050;</font>&#65292;&#33509;&#32769;&#26472;&#24110;&#24537;&#65292;&#26080;&#35770;&#20160;&#20040;&#26465;&#20214;&#21017;&#24517;&#39035;&#21435;&#65292;&#21542;&#21017;&#23601;&#26159;&#32781;&#21035;&#20154;&#20102;&#65292;&#21435;&#20102;&#21017;&#25913;&#27491;&#20197;&#24448;&#30340;&#24037;&#20316;&#24577;&#24230;&#65292;&#35813;&#21152;&#29677;&#21152;&#29677;&#65292;&#26202;&#19978;&#20063;&#22909;&#22909;&#20805;&#30005;&#65292;&#27605;&#31455;&#32473;&#32769;&#26472;&#34920;&#29616;&#36824;&#33021;&#21152;&#34218;&#30340;&#65292;&#28982;&#21518;&#23601;&#26159;&#22914;&#26524;&#27809;&#26426;&#20250;&#65292;&#23601;&#22312;&#20845;&#26376;&#20221;&#24320;&#22987;&#25214;&#26032;&#24037;&#20316;&#65292;&#27492;&#21069;2&#65292;3&#65292;4&#65292;5&#22235;&#20010;&#26376;&#24517;&#39035;&#31934;&#24515;&#20934;&#22791;&#12290;&#36825;&#26399;&#38388;&#21482;&#35748;&#30495;&#20570;&#19968;&#20214;&#20107;&#65292;&#36824;&#26159;<b><font color="#009966">&#24443;&#24443;&#24213;&#24213;&#36890;&#36807;&#31616;&#21333;&#37325;&#26500;&#20998;&#26512;&#20027;&#31449;&#39033;&#30446;&#65288;&#19988;&#20165;&#38480;&#25903;&#20184;&#32452;&#19977;&#20010;&#39033;&#30446;&#21644;jobcenter&#65289;&#65292;&#26469;&#23398;&#20064;&#19968;&#27425;Java</font></b>&#65292;&#28982;&#21518;&#65292;&#22312;&#20845;&#26376;&#20221;&#24320;&#22987;&#20877;&#36827;&#34892;Go&#20043;&#31867;&#30340;&#23398;&#20064;&#65281;&#21153;&#24517;&#26377;&#25152;&#21462;&#33293;&#65292;&#25165;&#33021;&#30830;&#20445;&#20845;&#26376;&#24320;&#22987;&#30340;&#24212;&#32856;&#39034;&#21033;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#006633">&#19968;&#26376;&#20221;&#21097;&#19979;&#30340;20&#20010;&#24037;&#20316;&#26085;&#65292;&#20840;&#21147;&#23436;&#25104;multipay_v2/v1&#21644;branchtonowpay&#22810;&#20844;&#20247;&#21495;&#30340;&#20462;&#25913;&#65292;&#21644;&#25972;&#29702;&#65292;&#21253;&#25324;&#20462;&#25913;&#28857;&#35760;&#24405;&#20197;&#21450;&#22914;&#20309;&#27979;&#35797;&#65292;&#20197;&#21450;&#24120;&#35268;&#21644;&#24179;&#34892;&#29615;&#22659;&#25645;&#24314;&#30340;&#27493;&#39588;&#35760;&#24405;&#65292;&#28982;&#21518;&#24037;&#20316;&#26085;&#26202;&#19978;&#65292;&#20840;&#21147;&#20998;&#26512;&#30456;&#20851;&#20027;&#31449;&#39033;&#30446;&#30340;web&#37197;&#32622;&#65292;&#21363;&#22914;&#20309;&#25645;&#24314;&#32593;&#31449;&#65292;&#22914;&#20309;&#37197;&#32622;&#26085;&#24535;&#21644;redis&#31561;</font></b>&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484025044811" ID="ID_160212567" MODIFIED="1484202904600" TEXT="&#x652f;&#x4ed8;&#x4ea4;&#x6613;&#x4e2d;&#x5fc3;">
<node CREATED="1484025062294" ID="ID_1378058593" MODIFIED="1484025105605" TEXT="H5&#x524d;&#x7aef;"/>
<node CREATED="1484025108303" ID="ID_1630269065" MODIFIED="1484025113653" TEXT="Java&#x540e;&#x7aef;"/>
<node CREATED="1484025219360" FOLDED="true" ID="ID_1139154864" MODIFIED="1484183688546" TEXT="&#x6574;&#x7406;&#x77e5;&#x8bc6;&#x70b9;">
<node CREATED="1484033216516" ID="ID_1513881532" MODIFIED="1484033238645" TEXT="&#x642d;&#x5efa;spring mvc&#x5f00;&#x53d1;&#x4f53;&#x7cfb;">
<node CREATED="1484033241611" ID="ID_1754226388" MODIFIED="1484037368733" TEXT="&#x53c2;&#x8003;&#x4e3b;&#x7ad9;&#x5b8c;&#x5168;&#x6a21;&#x4eff;">
<node CREATED="1484037370208" ID="ID_109453896" MODIFIED="1484037374788" TEXT="&#x6570;&#x636e;&#x5e93;&#x914d;&#x7f6e;"/>
<node CREATED="1484037375743" ID="ID_154759749" MODIFIED="1484037378780" TEXT="&#x65e5;&#x5fd7;&#x914d;&#x7f6e;"/>
<node CREATED="1484037379751" ID="ID_1369772395" MODIFIED="1484037384659" TEXT="redis&#x914d;&#x7f6e;"/>
<node CREATED="1484037385731" ID="ID_1596089872" MODIFIED="1484037393251" TEXT="maven&#x914d;&#x7f6e;"/>
<node CREATED="1484037394258" ID="ID_1223124447" MODIFIED="1484037401372" TEXT="spring mvc&#x914d;&#x7f6e;"/>
</node>
</node>
<node CREATED="1484025228454" ID="ID_1747479427" MODIFIED="1484025267258">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tomcat,resin,apache&#30340;&#23433;&#35013;&#37096;&#32626;&#21644;&#26412;&#22320;/&#36828;&#31243;&#32852;&#35843;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484027619215" ID="ID_1805918470" MODIFIED="1484027642696" TEXT="&#x4e0b;&#x8f7d;tomcat,resin&#x7248;"/>
</node>
<node CREATED="1484025442410" ID="ID_159228130" MODIFIED="1484027589587" TEXT="&#x81ea;&#x52a8;&#x5316;&#x6d4b;&#x8bd5;&#xff0c;maven+nexus&#xff0c;loadrunner/jmeter"/>
<node CREATED="1484025270427" ID="ID_1760926161" MODIFIED="1484026584180" TEXT="spring mvc&#x7684;&#x65b9;&#x65b9;&#x9762;&#x9762;&#xff0c;&#x5305;&#x62ec;H5&#x524d;&#x7aef;&#x6846;&#x67b6;&#x7684;&#x9009;&#x62e9;&#xff01;">
<node CREATED="1484025979444" ID="ID_1164460777" LINK="http://getbootstrap.com/" MODIFIED="1484026018224" TEXT="bootstrap">
<node CREATED="1484026301522" ID="ID_1633490110" LINK="https://github.com/twbs/bootstrap/" MODIFIED="1484026325149" TEXT="github&#x7f51;&#x5740;"/>
</node>
<node CREATED="1484026524069" ID="ID_774171823" LINK="http://foundation.zurb.com/" MODIFIED="1484026544900" TEXT="Foundation">
<node CREATED="1484026563288" ID="ID_1343723434" LINK="https://github.com/zurb/foundation-sites" MODIFIED="1484026577381" TEXT="github&#x7f51;&#x5740;"/>
</node>
<node CREATED="1484026585832" ID="ID_1902931877" LINK="http://purecss.io/" MODIFIED="1484026609746" TEXT="Pure">
<node CREATED="1484026611979" ID="ID_1239273579" LINK="https://github.com/yahoo/pure/" MODIFIED="1484026632952" TEXT="github&#x7f51;&#x5740;"/>
</node>
<node CREATED="1484026496588" FOLDED="true" ID="ID_1903258156" MODIFIED="1484032782378" TEXT="&#x96f6;&#x661f;">
<node CREATED="1484026448087" ID="ID_1869359379" LINK="http://amazeui.org/" MODIFIED="1484026462486" TEXT="Amaze UI"/>
<node CREATED="1484026357719" ID="ID_1030090908" LINK="http://www.auicss.com/" MODIFIED="1484026374447" TEXT="AUI">
<node CREATED="1484026392769" ID="ID_1494359977" LINK="https://github.com/liulangnan/aui" MODIFIED="1484026411486" TEXT="github&#x7f51;&#x5740;&#xff0c;&#x56fd;&#x5185;&#x4eba;&#xff1f;"/>
</node>
</node>
</node>
<node CREATED="1484025317683" ID="ID_1049148895" MODIFIED="1484025350164" TEXT="redis,memcache,elasticsearch,mysql&#x7684;&#x5e94;&#x7528;&#x518d;&#x6574;&#x7406;">
<node CREATED="1484025351973" ID="ID_1766386322" MODIFIED="1484025385529">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23545;&#20110;mysql : mybaits,hibernate,c3p0
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484025412605" ID="ID_558850458" MODIFIED="1484025439677" TEXT="java&#x57fa;&#x7840;, &#x5e76;&#x53d1;&#xff0c;jvm"/>
<node CREATED="1484025458935" ID="ID_1999333748" MODIFIED="1484025473502" TEXT="gitlab + jenkins,&#x76ee;&#x524d;&#x53ef;&#x80fd;&#x6ca1;&#x6709;&#x7cbe;&#x529b;&#x53bb;&#x641e;&#xff01;"/>
</node>
</node>
<node BACKGROUND_COLOR="#ff99ff" CREATED="1484038587371" ID="ID_1359307151" MODIFIED="1484610886295" TEXT="&#x7ee7;&#x7eed;&#x660e;&#x786e;">
<icon BUILTIN="messagebox_warning"/>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1484202914430" ID="ID_445336612" MODIFIED="1484203856671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37492;&#20110;&#21069;&#26399;&#34920;&#29616;&#31967;&#31957;&#65292;&#25216;&#26415;&#22823;&#22836;&#20301;&#32622;&#34987;&#25104;&#21018;&#21644;&#32993;&#27491;&#21344;&#20102;&#65292;&#37027;&#20040;&#65292;&#25105;<b><font color="#009966">2017&#24180;&#20845;&#26376;&#20221;</font></b>&#24320;&#22987;&#24517;&#39035;&#33258;&#24049;&#25214;&#24037;&#20316;&#65281;&#21069;&#25552;&#26159;&#32769;&#26472;&#24182;&#19981;&#24110;&#24537;&#65281;&#37027;&#20040;&#65292;&#25105;&#33258;&#24049;&#24517;&#39035;&#35851;&#27714;&#24635;&#30417;&#20197;&#19978;&#32844;&#20301;&#65292;&#33258;&#24049;&#20855;&#22791;&#24555;&#36895;&#24314;&#31449;&#33021;&#21147;&#26159;&#21069;&#25552;&#65281;&#26041;&#24335;&#26041;&#27861;&#23601;&#26159;&#37325;&#26500;Jobcenter&#21644;&#37325;&#26500;&#25903;&#20184;&#32452;&#39033;&#30446;&#65292;&#24182;&#37117;&#30041;&#26377;&#28165;&#26224;&#30340;&#27969;&#31243;&#26550;&#26500;&#22270;&#65281;<b><font color="#ff3333">&#28165;&#26970;&#19968;&#28857;&#65292;&#20844;&#21496;&#22909;&#22351;&#37117;&#19981;&#20250;&#24102;&#20320;&#29609;&#20102;&#65292;&#20320;&#23601;&#26159;&#19968;&#20010;&#24443;&#24443;&#24213;&#24213;&#30340;&#25171;&#24037;&#20180;&#65292;&#24517;&#39035;&#35201;&#36208;&#65281;&#25152;&#20197;&#26368;&#36831;&#19981;&#36229;&#36807;2018&#24180;&#20845;&#26376;&#20221;</font></b>&#12290;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <font color="#009966">&#20803;&#26376;&#20221;&#65292;&#23436;&#25104;&#22810;&#20844;&#20247;&#21495;&#32534;&#30721;&#21644;&#33258;&#27979;&#65292;&#24182;&#30041;&#19979;&#22810;&#20844;&#20247;&#21495;&#21644;&#22810;&#20027;&#20307;&#30340;&#27969;&#31243;&#22270;&#65281; </font>
      </li>
      <li>
        <font color="#009966">&#20108;&#26376;&#20221;&#65292;&#32467;&#21512;&#24494;&#20449;&#20844;&#20247;&#21495;&#23448;&#26041;&#25991;&#26723;&#65292;&#20844;&#21496;&#19994;&#21153;&#65292;&#25903;&#20184;&#23453;&#26381;&#21153;&#31383;&#23448;&#26041;&#25991;&#26723;&#21644;&#20844;&#21496;&#25903;&#20184;&#32452;&#65292;AOF&#32452;&#65292;SWP&#32452;&#27169;&#22359;&#26803;&#29702;&#35814;&#23613;&#30340;&#27969;&#31243;&#22270;&#21644;&#26550;&#26500;&#22270;&#65292;&#21516;&#26102;&#20840;&#21147;&#37197;&#21512;&#32993;&#27491;&#20132;&#26131;&#32452;&#24320;&#21457;&#24037;&#20316;&#21363;&#21487;&#12290; </font>
      </li>
      <li>
        <font color="#009966">&#19977;&#26376;&#20221;&#65292;&#22235;&#26376;&#20221;&#65292;&#37325;&#26500; &#20132;&#26131;/AOF/SWP </font>
      </li>
      <li>
        <font color="#009966">&#20116;&#26376;&#20221;&#65292;&#24320;&#22987;JobCenter&#25972;&#29702;&#24182;&#37325;&#26500;&#65288;&#22522;&#20110;&#27492;&#26102;&#24050;&#20855;&#22791;&#30456;&#24403;&#30340;&#24555;&#36895;&#24314;&#31449;&#24320;&#21457;&#33021;&#21147;&#65281;&#65289;</font>
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      &#20840;&#38754;&#25215;&#35748;&#27492;&#21069;&#36807;&#20110;&#25032;&#24608;&#65281;&#20174;&#20170;&#22825;&#24320;&#22987;&#65292;&#27599;&#22825;&#21040;&#28857;&#19979;&#29677;&#65292;&#20294;&#19981;&#32829;&#35823;&#24037;&#20316;&#65281;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <font color="#00cccc">&#20803;&#26376;&#20221;&#65292;&#20013;&#21320;&#21644;&#26202;&#19978;&#26102;&#38388;&#22266;&#23450;&#30475;Java&#31243;&#24207;&#21592;&#33258;&#25105;&#20462;&#28860;&#65292;&#20105;&#21462;&#30475;&#23436;&#65281; </font>
      </li>
      <li>
        <font color="#00cccc">&#26149;&#33410;&#26399;&#38388;&#65292;&#22686;&#21152;&#30475;html+css3&#24182;&#23454;&#36341;&#65281;&#12304;SpringMVC+&#19968;&#20010;&#21069;&#31471;&#26694;&#26550;&#12305;&#30340;&#24320;&#21457;&#29615;&#22659;&#24555;&#36895;&#25645;&#24314;&#65288;&#25903;&#25345;mybatis,redis,memcache,&#24322;&#27493;&#35775;&#38382;&#22806;&#37096;&#25509;&#21475;&#65292;aop&#30417;&#25511;&#26085;&#24535;&#24615;&#33021;&#20116;&#37096;&#20998;&#65281;&#65289;</font>
      </li>
    </ul>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1484610896657" ID="ID_1169042274" MODIFIED="1484611082899">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <font color="#00cc66">&#26149;&#33410;&#21069;&#65292;&#32487;&#32493;&#26803;&#29702;&#20132;&#26131;&#32452;&#30340;&#19994;&#21153;&#32447;&#65292;&#30475;java&#33258;&#25105;&#20462;&#20859;&#19968;&#20070;&#65292;&#26202;&#19978;&#21017;&#30475;tomcat&#25991;&#26723; </font>
      </li>
      <li>
        <font color="#00cc66">&#26149;&#33410;&#20551;&#26399;&#38388;&#65292;tomcat+springMVC+&#21069;&#31471;&#26694;&#26550;+redis+memcache+mysql&#30340;&#19968;&#25972;&#22871;&#24320;&#21457;&#26694;&#26550;&#25972;&#29702;&#21644;&#26803;&#29702;&#21363;&#21487;&#12290;</font>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484542059937" FOLDED="true" ID="ID_1154549400" MODIFIED="1484610884855" TEXT="&#x8ffd;&#x52a0;">
<node CREATED="1484542069782" ID="ID_511619978" MODIFIED="1484542193734">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20174;&#20170;&#22825;&#36215;&#65292;&#22362;&#20915;&#25302;&#20102;&#65292;MD&#65292;&#22909;&#22788;&#23601;&#37027;&#20004;&#20154;&#30340;&#65292;&#19982;&#25105;&#20204;&#26080;&#20851;&#65292;&#37027;&#23601;&#22909;&#22909;&#21033;&#29992;&#36825;&#27573;&#26102;&#38388;&#65292;&#24930;&#24930;&#25972;&#29702;&#65292;&#27963;&#26159;&#25353;&#19977;&#20493;&#26102;&#38388;&#26469;&#23601;&#26159;&#20102;&#65292;&#24180;&#21069;&#19981;&#20986;&#36864;&#27454;&#37096;&#20998;&#20102;&#65281;&#26803;&#29702;&#28165;&#26970;&#21363;&#21487;&#65292;&#20854;&#20313;&#37096;&#20998;&#20063;&#32454;&#32454;&#20877;&#36807;&#19968;&#19979;&#21363;&#21487;&#12290;&#20170;&#26202;&#21046;&#23450;&#22909;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484023606399" ID="ID_1539580890" MODIFIED="1484023850305">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20174;&#26126;&#22825;&#24320;&#22987;&#65292;&#19978;&#21320;&#19981;&#24178;&#27963;&#65292;&#20805;&#30005;&#65292;&#19979;&#21320;&#24037;&#20316;&#65292;&#20170;&#22825;&#19979;&#21320;&#19981;&#24178;&#27963;&#20102;&#65292;&#37325;&#28857;&#25419;&#28165;&#26970;2&#65292;3&#65292;4&#65292;5&#22235;&#20010;&#26376;&#30340;&#23433;&#25490;&#65281;&#65292;&#20197;&#21450;&#19968;&#26376;&#20221;&#36824;&#21097;&#20960;&#20010;&#24037;&#20316;&#26085;&#30340;&#23433;&#25490;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484032810469" FOLDED="true" ID="ID_1774386749" MODIFIED="1484808774219">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38376;&#24215;&#20013;&#24515;&#25552;&#21462;&#30340;&#21482;&#26159;&#37197;&#32622;id,&#37197;&#32622;&#31867;&#22411;&#65292;
    </p>
    <p>
      &#25105;&#20250;&#26681;&#25454;&#37197;&#32622;&#31867;&#22411;&#65292;&#20915;&#23450;&#20351;&#29992;&#21738;&#20010;&#37197;&#32622;id,
    </p>
    <p>
      &#28982;&#21518;&#26681;&#25454;&#37197;&#32622;id&#65292;&#20174;redis&#37324;&#25552;&#21462;&#20855;&#20307;&#30340;&#19977;&#20010;&#25903;&#20184;&#21442;&#25968;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#24405;&#20837;&#37197;&#32622;&#21442;&#25968;&#26102;&#65292;&#20250;&#21516;&#26102;&#22312;redis&#37324;&#23384;&#19968;&#20221;&#65292;&#36825;&#20010;&#23384;&#30340;&#21160;&#20316;&#26159;&#20889;&#20010;&#33050;&#26412;&#23567;&#24037;&#20855;&#65292;&#22312;&#26381;&#21153;&#31471;&#25191;&#34892;&#21363;&#21487;&#65311;&#36824;&#26159;&#25552;&#20379;&#30028;&#38754;&#65292;<b><font color="#009966">&#36890;&#36807;mdtask&#25110;jobcenter&#33258;&#21160;&#24405;&#20837;&#21363;&#21487;</font></b>
    </p>
  </body>
</html></richcontent>
<node COLOR="#ff0000" CREATED="1484808731657" ID="ID_1215154762" MODIFIED="1484808772466" TEXT="20170119,&#x5df2;&#x5b9e;&#x73b0;&#x901a;&#x8fc7;jobcenter&#x6765;&#x5237;&#x65b0;&#x4e86;">
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
</node>
</node>
</node>
<node CREATED="1484099839802" ID="ID_1438041820" MODIFIED="1490771986395" TEXT="&#x7b2c;3&#x5929;">
<node CREATED="1484099849042" FOLDED="true" ID="ID_932389473" MODIFIED="1486436160704">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30005;&#35805;&#27807;&#36890;&#65292;&#26126;&#22825;&#19978;&#21320;&#25165;&#33021;&#25552;&#36710;&#65292;&#20170;&#22825;&#35797;&#22270;&#25353;&#29031;&#32593;&#19978;&#30340;&#26041;&#27861;&#30772;&#35299;resin pro&#29256;&#65292;&#28982;&#21017;&#65292;&#19981;&#30693;&#36947;&#24590;&#20040;&#23558;&#21453;&#32534;&#35793;&#30340;&#25991;&#20214;&#20462;&#25913;&#21518;&#37325;&#26032;&#32534;&#35793;&#25104;jar&#21253;&#65292;<b><font color="#009966">&#26242;&#26102;&#20316;&#32610;&#65292;&#19981;&#32829;&#35823;&#26102;&#38388;</font></b>&#65292;&#35760;&#24405;&#19979;&#30772;&#35299;&#26041;&#24335;&#21363;&#21487;&#65292;&#22914;&#19979;&#65306;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484100013315" ID="ID_685217202" LINK="https://www.strongd.net/?p=1163" MODIFIED="1484202857895" TEXT="resin pro&#x7f51;&#x4e0a;&#x63d0;&#x5230;&#x7684;&#x7834;&#x89e3;&#x65b9;&#x6cd5;&#xff0c;&#x4f46;&#x8fd8;&#x6ca1;&#x5b9e;&#x8df5;&#x6210;&#x529f;">
<node CREATED="1484100050023" ID="ID_1169273209" MODIFIED="1484100058408">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      how to crack resin 4.0.2x resin 4.0.3x.
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#24037;&#20855;:jd&#160;http://java.decompiler.free.fr/
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#21033;&#29992;jd&#25171;&#24320;resin 4.0.xx&#30446;&#24405;&#19979;&#30340;lib/pro.jar
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#23558;&#28304;&#20195;&#30721;&#21478;&#23384;&#20986;&#26469;&#12290;&#20877;&#29992;eclipse&#25171;&#24320;com\caucho\license\ProLicenseStore.java
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#25226;
    </p>
    <blockquote style="margin-top: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(238,; background-position: 238, 238); background-image: null; background-repeat: repeat; background-attachment: scroll">
      <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px">
        /* */ private int _professionalCount ;<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />/* */ private int _personalCount;
      </p>
    </blockquote>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#25913;&#20026;
    </p>
    <blockquote style="margin-top: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; font-size: 13px; vertical-align: baseline; color: rgb(85, 85, 85); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(238,; background-position: 238, 238); background-image: null; background-repeat: repeat; background-attachment: scroll">
      <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px">
        /* */ private int _professionalCount =1000;<br style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px" />/* */ private int _personalCount = 1000;
      </p>
    </blockquote>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#37325;&#26032;&#32534;&#35793;&#25104;class&#25991;&#20214;&#65292;&#29992;winrar&#25171;&#24320;resin 4.0.xx&#30446;&#24405;&#19979;&#30340;lib/pro.jar&#65292;&#25226;&#29983;&#25104;&#30340;class&#25991;&#20214;&#25302;&#36827;&#23545;&#24212;&#30340;&#30446;&#24405;&#21363;&#21487;&#12290;
    </p>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 18px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Arial, Helvetica, sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255)">
      &#20165;&#20379;&#23398;&#20064;&#20351;&#29992;&#65292;&#35831;&#22312;&#19979;&#36733;&#21518;24&#26102;&#38388;&#20869;&#21024;&#38500;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484100115582" ID="ID_1694397776" MODIFIED="1490771986419" TEXT="&#x591a;&#x516c;&#x4f17;&#x53f7;">
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484122922204" ID="ID_1483570071" MODIFIED="1484123137422">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21457;&#29616;&#22312;mdfrontserver-&gt;domain-&gt;<font color="#6600cc"><b>OrderPayDomain.java</b></font>&#30340;<b><font color="#009966">PayOrder/wftPayOrder</font></b>&#26041;&#27861;&#20013;&#37117;&#26377;&#35843;&#29992;
    </p>
    <p>
      orderCreateExtService.<b><font color="#0099ff">GetShopByIdWithRebateNow</font></b>(shopId)&#65292;&#30452;&#25509;&#20174;&#36825;&#21462;&#25903;&#20184;&#21442;&#25968;&#35774;&#32622;&#21040;orderPayParam
    </p>
  </body>
</html></richcontent>
<node CREATED="1484125833203" ID="ID_663397603" MODIFIED="1484125995102">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#009966"><b>mdpaygate</b></font>&#30340;<b><font color="#0099ff">PayTypeEnum</font></b>&#24517;&#39035;&#21644;<b><font color="#009966">fontserver</font></b>&#30340;<b><font color="#0099ff">FSFSOrderConstants</font></b>&#23436;&#20840;&#19968;&#33268;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484128352958" ID="ID_1684157331" MODIFIED="1484129795190">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">frontserver</font></b>&#30340;<b><font color="#009966">PayOrder/wftPayOrder</font></b>&#37117;&#22312;&#31532;&#19977;&#26041;&#25903;&#20184;&#19979;&#65292;&#36716;&#21040;&#20102;frontserver&#30340;TradeExtService.<b><font color="#0099ff">createMobileParam</font></b>,&#22312;&#35813;&#26041;&#27861;&#20013;&#23558;&#37325;&#35201;&#30340;<b><font color="#ff6600">orderPayParam</font></b>&#36716;&#21464;&#20026;<b><font color="#6600cc">TradeVo</font></b>&#21442;&#25968;&#65292;&#65288;&#23588;&#20854;&#27880;&#24847;&#35813;&#23545;&#35937;&#21152;&#23646;&#24615;&#26159;&#21542;&#24433;&#21709;&#21040;&#20102;&#25968;&#25454;&#24211;&#25805;&#20316;&#65292;&#25105;&#23545;<font color="#6600cc">tradevo</font>&#36861;&#21152;&#20102;<font color="#0099ff">branchpartenerid,branchappid,branchsignkey</font>&#20197;&#21518;&#35774;&#35745;&#23558;model&#23618;&#30340;&#19982;dao&#23618;&#30340;&#20998;&#24320;&#65281;&#65289;
    </p>
    <p>
      
    </p>
    <p>
      &#36716;&#21040;&#20102;<b><font color="#ff0000">mdpaygate</font></b>&#24037;&#31243;&#30340;TradeServiceImpl.<b><font color="#0099ff">createMobileParam</font></b>.
    </p>
    <p>
      
    </p>
    <p>
      &#36827;&#32780;&#36716;&#20837;<b><font color="#ff0000">mdpaygate</font></b>&#20851;&#38190;&#30340;<b><font color="#9999ff">TradeDomain.createMobileParam</font></b>&#26041;&#27861;&#65292;&#35813;&#26041;&#27861;&#20851;&#38190;&#30340;&#20851;&#38190;&#26159;<b><font color="#ff66ff">getTradePayManager()</font></b>&#65292;&#35813;&#20869;&#37096;&#36890;&#36807;spring &#27880;&#20837;&#20102;&#26681;&#25454;paytype&#25214;&#21040;&#30456;&#24212;&#30340;TradePayManager&#22788;&#29702;&#31867;
    </p>
    <p>
      <b><font color="#009933">mdpaygate-domain-bean.xml</font></b>&#25991;&#20214;&#37197;&#32622;&#26159;<b><font color="#9900ff">&#20998;&#25903;&#22788;&#29702;</font></b>&#30340;<b><font color="#9900ff">&#20851;&#38190;&#20837;&#21475;&#28857;</font></b>&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484100134636" FOLDED="true" ID="ID_1708821029" MODIFIED="1484808821866">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20027;&#20307; v1(c-&gt;b)/v2(b-&gt;c)
    </p>
  </body>
</html></richcontent>
<node CREATED="1484114663075" ID="ID_441516173" MODIFIED="1484115556984">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36935;&#21040;&#20010;&#38382;&#39064;&#65292;&#30446;&#21069;&#39564;&#35777;&#23384;&#22312;&#20110;c -&gt; b&#65292; b -&gt; c&#21487;&#33021;&#20063;&#23384;&#22312;&#65292;<b><font color="#009966">&#37027;&#23601;&#26159;&#25903;&#20184;&#26102;&#65292;&#38500;&#20102;&#25105;&#20204;&#23376;&#21830;&#25143;&#35201;&#25552;&#20379;&#33258;&#24049;&#30340;appid(&#36825;&#20010;&#19982;&#25105;&#20204;&#30340;appid&lt;&#36825;&#20010;&#23601;&#26159;&#20844;&#20247;&#21495;&#65292;&#29992;&#26469;&#25910;&#27454;&#30340;&gt;&#26080;&#20851;&#65292;&#21482;&#26159;swp&#20026;&#27599;&#20010;&#38376;&#24215;&#24405;&#20837;&#20102;&#20182;&#20204;&#33258;&#24049;&#30340;appid&#65292;&#27880;&#24847;&#22810;&#20027;&#20307;&#25152;&#26377;&#30340;&#36134;&#37117;&#30452;&#25509;&#25171;&#20837;&#21830;&#25143;&#36134;&#25143;&#37324;&#65289;&#65292;</font><font color="#ff0000">&#25105;&#20204;&#20570;&#38169;&#30340;&#26159;&#65306;&#29992;</font><font color="#ff6600">&#25105;&#20204;&#30340;</font><font color="#ff0000">appid&#21435;&#25552;&#21462;&#25152;&#35859;&#30340;sub_openid&#65288;&#36825;&#20010;&#23454;&#38469;&#26159;&#29992;&#25143;&#20851;&#27880;&#25105;&#20204;&#30340;&#65292;&#24403;&#28982;&#19981;&#21487;&#34892;&#65289;</font><font color="#009966">&#65292;&#25105;&#20204;&#24212;&#35813;&#26159;&#29992;&#21830;&#25143;&#30340;appid&#21435;&#25552;&#21462;&#29992;&#25143;&#20851;&#27880;&#21830;&#25143;&#30340;sub_openid&#65292;&#25165;&#33021;&#23436;&#25104;&#25903;&#20184;</font></b>&#65292;&#37027;&#20040;&#38382;&#39064;&#26469;&#20102;&#65292;&#20570;&#22810;&#20027;&#20307;&#30340;&#24847;&#20041;&#26159;&#20026;&#20102;&#20851;&#27880;&#25105;&#20204;&#30340;openid&#65311;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484129807830" ID="ID_808978" MODIFIED="1484129846789" TEXT="&#x660e;&#x5929;&#x5b8c;&#x6210;&#x591a;&#x516c;&#x4f17;&#x53f7;&#x7f16;&#x7801;&#xff0c;&#x63d0;&#x8f66;&#xff0c;&#x7ee7;&#x7eed;&#x5b8c;&#x6210;mdtask&#x5237;&#x914d;&#x7f6e;&#x8fdb;redis"/>
</node>
<node CREATED="1484180119350" FOLDED="true" ID="ID_759857022" MODIFIED="1490602457361" TEXT="&#x7b2c;4&#x5929;">
<node CREATED="1484200535171" ID="ID_618018197" MODIFIED="1484200621101">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19978;&#21320;11&#28857;&#23558;&#36710;&#21462;&#22238;&#20102;&#65292;&#24180;&#21069;&#23601;&#36208;&#36335;&#19978;&#29677;&#20102;&#65292;&#38500;&#38750;&#22825;&#27668;&#19981;&#22909;&#65292;&#21608;&#20845;&#65292;&#21644;&#26368;&#21518;&#19968;&#22825;&#21487;&#32771;&#34385;&#24320;&#36710;&#19978;&#29677;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484182363519" ID="ID_549649012" MODIFIED="1484182385026" TEXT="&#x6ca1;&#x90a3;&#x4e48;&#x5feb;&#x80fd;&#x5b8c;&#x6210;&#x4e86;&#xff01;&#x5e74;&#x524d;&#x6539;&#x5b8c;&#x5c31;&#x4e0d;&#x9519;&#x4e86;"/>
<node CREATED="1484182036472" ID="ID_1374441545" MODIFIED="1484182067117" TEXT="&#x67e5;&#x8be2;&#x9000;&#x6b3e;&#x8fd9;&#x5757;&#x6539;&#x52a8;&#x8f83;&#x591a;&#xff0c;&#x9700;&#x8981;&#x4ed4;&#x7ec6;&#x4e86;&#xff0c;&#x5fc5;&#x987b;&#x517c;&#x5bb9;&#x73b0;&#x5728;&#x652f;&#x4ed8;"/>
<node CREATED="1484182338102" ID="ID_1421747967" MODIFIED="1484182345268" TEXT="&#x73b0;&#x5728;&#x652f;&#x4ed8;">
<node CREATED="1484182347030" ID="ID_131346529" MODIFIED="1484182351787" TEXT="&#x9000;&#x6b3e;&#x6d41;&#x7a0b;">
<node CREATED="1484185263177" ID="ID_480317138" MODIFIED="1484185872688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25454;&#26216;&#36745;&#35828;&#26159;&#20174;tadecenter&#21457;&#36215;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484182352860" ID="ID_1989570293" MODIFIED="1484182361580" TEXT="&#x67e5;&#x8be2;&#x8ba2;&#x5355;&#x72b6;&#x6001;&#x6d41;&#x7a0b;"/>
</node>
</node>
<node CREATED="1484274387373" FOLDED="true" ID="ID_1760700166" MODIFIED="1490602430912" TEXT="&#x7b2c;5&#x5929;">
<node CREATED="1484274402804" ID="ID_1484844998" MODIFIED="1484274823745">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32993;&#27491;&#24378;&#25512;&#30340;&#22810;&#20027;&#20307;&#19978;&#32447;&#20170;&#22825;&#22833;&#36133;&#65292;&#26681;&#26412;&#21407;&#22240;&#24050;&#25214;&#21040;&#65292;&#36824;&#26159;&#40527;&#36828;&#30340;&#22353;&#65292;&#27809;&#26377;&#21028;&#26029;getIs_Direct()&#20026;null&#65292;&#23548;&#33268;&#19979;&#21333;&#20840;&#37096;&#22833;&#36133;&#65292;&#21478;&#22806;&#65292;<b><font color="#6666ff">&#25490;&#26597;&#24605;&#36335;&#22914;&#19979;&#65306;&#23558;6:13&#21040;6:50&#30340;&#35746;&#21333;&#38543;&#20415;&#25235;&#19968;&#20010;&#65292;&#29992;&#35746;&#21333;&#21495;&#36319;&#36394;&#65292;&#25214;&#21040;&#30456;&#20851;&#24322;&#24120;&#65292;&#32479;&#35745;&#24322;&#24120;&#25968;&#37327;&#21644;&#26368;&#21518;&#20986;&#29616;&#26102;&#38388;&#21363;&#21487;&#21028;&#26126;&#26681;&#26412;&#21407;&#22240;</font></b>&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484303606005" ID="ID_1091391833" MODIFIED="1484303655006">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26126;&#22825;&#32487;&#32493;&#65292;&#30446;&#21069;&#36827;&#24230;&#24456;&#24930;&#65292;&#35201;&#21152;&#24555;&#20102;&#65292;&#26126;&#22825;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#20170;&#22825;&#25490;&#26597;&#19978;&#32447;&#22833;&#36133;&#21407;&#22240;&#65292;&#19979;&#21320;&#39134;&#39134;&#38382;&#39064;&#32829;&#35823;&#24456;&#20037;&#65292;&#20808;&#36825;&#26679;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484355666643" FOLDED="true" ID="ID_277088133" MODIFIED="1490602420824" TEXT="&#x7b2c;6&#x5929;">
<node CREATED="1484355680116" ID="ID_337028562" MODIFIED="1484355728101">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24517;&#39035;github.io&#21033;&#29992;&#36215;&#26469;&#65292;&#21487;&#20197;&#20570;&#30340;&#24456;&#37239;&#65292;&#29992;&#20110;&#25972;&#29702;&#33258;&#24049;&#30340;&#24635;&#32467;&#24182;&#21644;freemind&#32467;&#21512;&#36215;&#26469;&#26356;&#22909;&#65281;
    </p>
    <p>
      &#36824;&#26377;&#23601;&#26159;javadoc&#29992;&#36215;&#26469;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484356689739" ID="ID_1282928128" MODIFIED="1484356706684" TEXT="&#x660e;&#x5929;&#x5728;&#x5bb6;&#x7528;mac&#x7422;&#x78e8;&#x51fa;github.io&#x6a21;&#x677f;"/>
<node CREATED="1484388945422" ID="ID_402853705" MODIFIED="1484389011594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff6633">&#36864;&#27454;&#27809;&#20570;&#65292;&#21608;&#19968;&#26089;&#19978;&#26469;&#20570;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484388976547" ID="ID_338726510" MODIFIED="1484389025691">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff6633">&#26597;&#35810;&#36824;&#26377;&#37096;&#20998;&#24453;&#28548;&#28165;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484529460516" FOLDED="true" ID="ID_1679525461" MODIFIED="1490602417424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31532;7&#22825;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484529470576" ID="ID_1019998555" MODIFIED="1484529492939" TEXT="&#x5b8c;&#x6210;&#x652f;&#x4ed8;&#x914d;&#x7f6e;&#x6570;&#x636e;&#x5e93;&#x64cd;&#x4f5c;&#x90e8;&#x5206;&#x7684;&#x903b;&#x8f91;"/>
<node CREATED="1484531614246" ID="ID_749885940" MODIFIED="1484531894263" TEXT="&#x5b9a;&#x65f6;&#x66f4;&#x65b0;&#x591a;&#x516c;&#x4f17;&#x53f7;&#x914d;&#x7f6e;&#x4fe1;&#x606f;&#x5b8c;&#x6210;"/>
<node CREATED="1484542240883" ID="ID_638249856" MODIFIED="1484556322021" TEXT="&#x68b3;&#x7406;&#x9000;&#x6b3e;&#x90e8;&#x5206;&#x6d41;&#x7a0b;&#x5b8c;&#x6210;&#xff0c;&#x660e;&#x5929;&#x8ffd;&#x52a0;&#x9000;&#x6b3e;&#x90e8;&#x5206;&#x4fee;&#x6539;"/>
<node CREATED="1484560028201" ID="ID_206520105" MODIFIED="1484560098464">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25972;&#20010;&#22810;&#20844;&#20247;&#21495;&#32534;&#30721;&#21021;&#27493;&#23436;&#25104;&#65292;&#28982;&#21017;&#26377;&#24456;&#22810;&#22823;&#22353;&#31561;&#24453;
    </p>
    <p>
      &#32852;&#35843;&#26102;&#21457;&#29616;&#21644;&#23436;&#21892;&#65281;&#26126;&#22825;&#36890;&#30424;&#22312;&#26803;&#29702;&#19968;&#27425;&#65292;&#24180;&#21518;&#32454;&#32454;&#32852;&#35843;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484610866944" FOLDED="true" ID="ID_69895482" MODIFIED="1490602412960" TEXT="&#x7b2c;8&#x5929;">
<node CREATED="1484611176228" ID="ID_244711856" MODIFIED="1484611201582" TEXT="&#x51c6;&#x5907;&#x516c;&#x53f8;&#x8054;&#x8c03;&#x73af;&#x5883;&#xff0c;&#x5305;&#x62ec;jobcenter,idcenter,notifyserver&#x7684;&#x6574;&#x7406;"/>
<node CREATED="1484647114152" ID="ID_1949807450" MODIFIED="1484647259016">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;&#25240;&#33150;&#19968;&#22825;&#30340;pickPayArgTask&#65292;
    </p>
    <p>
      &#30693;&#36947;&#22914;&#20309;&#33258;&#24049;&#37096;&#32626;&#65292;&#22914;&#20309;&#37197;jobcenter
    </p>
    <p>
      &#29616;&#22312;&#21345;&#22312;&#20102;mybatis&#37197;&#32622;&#36825;&#22359;&#65292;&#26126;&#22825;&#32487;&#32493;&#65281;
    </p>
    <p>
      &#30456;&#20851;&#30340;redis&#24050;&#32463;&#37197;&#32622;&#22909;&#20102;
    </p>
    <p>
      &#30693;&#36947;&#20102;paygate&#39033;&#30446;&#30340;notify&#26159;&#36890;&#36807;paynotify&#31867;&#20102;&#23454;&#29616;&#30417;&#21548;job/notify.do&#25509;&#21475;&#32473;jobcenter
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1484700445803" FOLDED="true" ID="ID_1426885388" MODIFIED="1490602403773" TEXT="&#x7b2c;9&#x5929;">
<node CREATED="1484700455471" ID="ID_146599916" MODIFIED="1484709409126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26126;&#30830;&#20102;&#26152;&#22825;&#20026;&#21861;&#21345;&#22312;mybatis&#20102;&#65292;&#36825;&#21644;wowo&#20307;&#31995;&#26377;&#20851;&#65292;&#20854;&#24517;&#39035;&#22312;<b><font color="#009999">serviceTemplate&#37324;&#30340;execOnMaster /execOnSlave/...&#20013;&#35774;&#23450;&#30340;&#65292;&#25152;&#20197;&#20320;&#33073;&#31163;&#36825;&#20010;&#20307;&#31995;&#20351;&#29992;&#32943;&#23450;&#27809;&#26377;&#21046;&#23450;DataSourceType</font></b>&#65292;&#25152;&#20197;&#23601;&#25253;&#38169;&#21949;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484709437170" ID="ID_1696285224" MODIFIED="1484807026201">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19979;&#21320;&#26803;&#29702;&#22810;&#20844;&#20247;&#21495;&#30340;&#32534;&#30721;&#65292;&#20248;&#21270;&#19968;&#19979;&#65292;&#26126;&#22825;&#32771;&#34385;&#33258;&#27979;
    </p>
    <p>
      
    </p>
    <p>
      &#28982;&#21017;&#25972;&#29702;createorder&#26102;&#38388;&#36229;&#38271;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484807031110" FOLDED="true" ID="ID_444132121" MODIFIED="1490602399891" TEXT="&#x7b2c;10&#x5929;">
<node CREATED="1484807064704" ID="ID_1330944861" MODIFIED="1484809024247">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;&#23436;&#25104;&#20102;&#19979;&#21333;&#20837;&#24211;&#30340;&#26102;&#24207;&#22270;&#65292;&#24530;&#32047;
    </p>
    <p>
      &#19981;&#20877;&#25972;&#29702;&#20102;&#65292;&#26102;&#24207;&#22270;&#21040;&#27492;&#20026;&#27490;&#65292;&#20170;&#22825;&#21861;&#20063;&#19981;&#24178;&#20102;&#65292;
    </p>
    <p>
      &#19979;&#21608;&#19968;&#20877;&#31616;&#21333;&#22238;&#39038;&#19968;&#19979;&#65292;&#22810;&#20844;&#20247;&#21495;&#30340;&#32534;&#30721;&#24182;&#35774;&#35745;&#22909;&#24180;&#21518;&#26469;&#27979;&#35797;&#30340;&#35745;&#21010;&#27493;&#39588;&#21363;&#21487;&#12290;
    </p>
    <p>
      &#20170;&#22825;&#19979;&#21320;&#32771;&#34385;&#22909;&#25152;&#26377;&#30340;5&#26465;&#19994;&#21153;&#20808;&#30340;&#33258;&#27979;&#21644;&#25490;&#26597;&#27969;&#31243;&#24182;&#35760;&#24405;&#36827;freemind
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484902392152" FOLDED="true" ID="ID_1757282854" MODIFIED="1490602393329" TEXT="&#x7b2c;11&#x5929;">
<node CREATED="1484902402368" ID="ID_107290102" MODIFIED="1484902612569">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24443;&#24213;&#25630;&#28165;&#26970;&#27979;&#35797;&#32852;&#35843;&#30340;&#20837;&#21475;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        c -&gt; b &#26159;&#36890;&#36807;&#29992;&#21830;&#25143;&#21518;&#21488;H5&#39033;&#30446;&#29983;&#25104;&#20108;&#32500;&#30721;&#26469;&#36890;&#36807;&#25163;&#26426;&#24494;&#20449;&#25110;&#25903;&#20184;&#23453;&#25195;&#30721;&#23436;&#25104;&#25903;&#20184;&#27979;&#35797;&#12290;
      </li>
      <li>
        b -&gt; c&#26159;&#36890;&#36807;b&#31471;&#65292;&#25110;&#20854;&#20182;&#31532;&#19977;&#26041;&#35774;&#22791;(&#27604;&#22914;&#65306;&#25195;&#30721;&#26538;)&#26469;&#25195;&#24494;&#20449;&#25110;&#32773;&#25903;&#20184;&#23453;&#29992;&#25143;&#30340;&#25480;&#26435;&#30721;&#26469;&#23436;&#25104;&#25903;&#20184;&#27979;&#35797;&#12290;
      </li>
      <li>
        &#24180;&#21069;&#19977;&#22825;&#65292;&#24320;&#22987;&#33258;&#27979;&#65281;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1485051435139" FOLDED="true" ID="ID_1981264368" MODIFIED="1490602390400" TEXT="&#x7b2c;12&#x5929;">
<node CREATED="1485051449262" ID="ID_1883012914" MODIFIED="1485077242916">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#20799;&#24320;&#24515;&#20123;&#65292;&#20667;&#36924;&#29609;&#24847;&#20241;&#20551;&#20102;&#65292;&#24180;&#21069;&#26368;&#21518;&#19977;&#22825;&#29677;&#65292;&#26126;&#22825;&#20013;&#21320;&#36865;&#20462;&#65292;&#19979;&#21320;&#19981;&#30528;&#24613;&#22238;&#26469;&#65292;&#27809;&#20160;&#20040;&#20107;&#65292;&#26368;&#21518;&#19968;&#22825;&#24178;&#28857;&#27963;&#65292;&#20170;&#22825;&#37117;&#19981;&#22826;&#24819;&#24178;&#20102;&#65292;&#23601;&#26159;&#36825;&#26679;&#65292;&#36824;&#26159;&#25972;&#29702;&#25972;&#29702;&#27979;&#35797;&#20107;&#23452;&#21363;&#21487;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#23433;&#35013;&#20102;&#27979;&#35797;&#29256;&#30340;b&#31471;&#21040;iphone&#65292;&#21516;&#26102;&#27979;&#35797;&#20102;c-&gt;b&#30340;&#27969;&#31243;&#65292;&#26597;&#20102;63 applog/newwap/&#26085;&#24535;&#21644;mdpaygate&#26085;&#24535;&#65292;&#30830;&#35748;&#30446;&#21069;&#22810;&#20027;&#20307;&#36824;&#26377;&#24456;&#22823;&#38382;&#39064;&#65306;&#22810;&#20027;&#20307;&#38376;&#24215;&#36208;&#20102;&#29616;&#22312;&#25903;&#20184;&#36890;&#36947;...
    </p>
    <p>
      
    </p>
    <p>
      &#26126;&#22825;&#37325;&#28857;&#26803;&#29702;&#19968;&#19979;newwap&#22788;&#29702;&#27969;&#31243;&#65292;&#30475;&#24515;&#24773;&#20102;&#65292;&#23454;&#22312;&#19981;&#34892;&#21482;&#20877;&#26803;&#29702;&#19968;&#27425;&#33258;&#24049;&#30340;&#20132;&#26131;&#20013;&#24515;&#27969;&#31243;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1485136026414" FOLDED="true" ID="ID_558862222" MODIFIED="1490602387664" TEXT="&#x7b2c;13&#x5929;">
<node CREATED="1485136040628" ID="ID_1552952952" MODIFIED="1485136084220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;&#37325;&#28857;&#26159;&#23433;&#25490;&#20462;&#36710;&#20107;&#23452;&#65292;&#36825;&#20004;&#22825;&#27809;&#27963;&#65292;&#32771;&#34385;&#19968;&#19979;&#38271;&#36828;&#20107;&#23452;&#23433;&#25490;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484382092303" FOLDED="true" ID="ID_794483350" MODIFIED="1487639626262" TEXT="&#x652f;&#x4ed8;&#x901a;&#x9053;&#x5171;5&#x4e2a;&#x6a21;&#x5757;">
<node CREATED="1484382156872" ID="ID_570083611" LINK="#ID_478833607" MODIFIED="1484555865962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#65292;c -&gt; b &#31532;&#19977;&#26041;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484382195782" ID="ID_748615085" LINK="#ID_303217953" MODIFIED="1484555886116" TEXT="3, c-&gt;b &#x7b2c;&#x4e09;&#x65b9;&#x652f;&#x4ed8;&#x901a;&#x77e5;"/>
</node>
<node CREATED="1484382181673" ID="ID_1306114754" LINK="#ID_1375547211" MODIFIED="1485054947541">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2&#65292;b -&gt; c &#31532;&#19977;&#26041;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484382211092" ID="ID_464491260" MODIFIED="1484555793350">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      4&#65292; b-&gt;c &#30340;&#31532;&#19977;&#26041;&#25903;&#20184;&#32467;&#26524;&#26597;&#35810;
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#20010;&#27809;&#26377;&#26102;&#24207;&#22270;&#65292;&#24456;&#31616;&#21333;&#65292;&#36890;&#36807;jobcenter&#23450;&#26102;&#26597;&#35810;&#31532;&#19977;&#26041;&#25509;&#21475;&#32780;&#24050;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484382228091" FOLDED="true" ID="ID_1781741312" LINK="#ID_1216773640" MODIFIED="1487639625382" TEXT="5&#xff0c;&#x9000;&#x6b3e;">
<node CREATED="1484382238500" ID="ID_540831875" MODIFIED="1484382257209" TEXT="&#x5fae;&#x4fe1;&#x652f;&#x4ed8;&#xff0c;&#x6dd8;&#x5b9d;&#x652f;&#x4ed8;&#xff0c;&#x76f4;&#x8fde;&#x90e8;&#x5206;&#xff0c;&#x6ca1;&#x6709;&#x9000;&#x6b3e;"/>
</node>
<node CREATED="1484382311291" ID="ID_1739758754" MODIFIED="1484382368729" TEXT="&#x4f59;&#x989d;&#x652f;&#x4ed8;&#xff0c;&#x76f4;&#x8fde;&#xff08;&#x5fae;&#x4fe1;&#xff0c;&#x652f;&#x4ed8;&#xff09;&#x652f;&#x4ed8;"/>
<node CREATED="1484618355537" ID="ID_22007199" MODIFIED="1486364955590" TEXT="&#x8ffd;&#x52a0;&#x4e00;&#x4e2a;&#x81ea;&#x52a8;&#x8865;&#x5355;">
<node CREATED="1484618378590" ID="ID_1113434649" MODIFIED="1484618423178">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20063;&#23601;&#26159;&#35828;&#65292;&#23558;&#25152;&#26377;&#38750;&#25903;&#20184;&#25104;&#21151;&#30340;&#21333;&#23376;&#22266;&#23450;&#37117;&#25552;&#20986;&#26469;&#36208;&#29616;&#22312;&#25903;&#20184;&#25509;&#21475;&#20877;&#26597;&#35810;&#19968;&#27425;&#65292;&#21047;&#26032;&#30456;&#24212;&#29366;&#24577;&#31561;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484808968323" FOLDED="true" ID="ID_924485207" MODIFIED="1487639638310" TEXT="&#x81ea;&#x6d4b;&#x8ba1;&#x5212;">
<node CREATED="1484812831152" FOLDED="true" ID="ID_395361957" MODIFIED="1486541118642" TEXT="&#x524d;&#x7f6e;&#xff1a;&#x51c6;&#x5907;&#x6d4b;&#x8bd5;&#x6570;&#x636e;">
<node CREATED="1484813760148" FOLDED="true" ID="ID_61093402" MODIFIED="1486541117114" TEXT="&#x73af;&#x5883;">
<node CREATED="1484812865491" ID="ID_645038832" MODIFIED="1484813663098">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009933">&#32852;&#35843;&#29615;&#22659;</font></b>&#65306;&#30446;&#21069;&#20132;&#26131;&#32452;Java&#22235;&#20010;&#39033;&#30446;&#20840;&#37096;&#37096;&#32626;&#22312;<b><font color="#6666ff">10.8.210.166</font></b>&#19978;&#65292;&#24212;&#35813;&#39033;&#30446;&#37117;&#22312;<b><font color="#6666ff">/data/application</font></b>&#30446;&#24405;&#19979;&#65292;&#30456;&#20851;logs&#22312;&#21508;&#33258;&#30340;&#39033;&#30446;&#30446;&#24405;&#19979;&#65292;&#27604;&#22914;<b><font color="#6666ff">/data/application/</font><font color="#009933">mdpaygate</font></b>/<b><font color="#ff6666">logs</font></b>&#30446;&#24405;
    </p>
    <p>
      &#31471;&#21475;&#21015;&#34920;
    </p>
    <ul>
      <li>
        mdfrontserver:9000
      </li>
      <li>
        mdpaygate:9040
      </li>
      <li>
        mdtradecenter:9022
      </li>
      <li>
        mdtask:9060
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      &#25152;&#36830;&#25968;&#25454;&#24211;&#20026;189
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484813770170" FOLDED="true" ID="ID_1152098245" MODIFIED="1486541114962" TEXT="&#x6570;&#x636e;">
<node CREATED="1484813782052" ID="ID_908262200" MODIFIED="1484813788162" TEXT="c -&gt; b"/>
<node CREATED="1484813790075" ID="ID_66818648" MODIFIED="1484813794874" TEXT="b -&gt; c"/>
<node CREATED="1484813821017" ID="ID_1900711668" MODIFIED="1484813844492" TEXT="c-&gt;b - notify receiver "/>
<node CREATED="1484813845891" ID="ID_1428988883" MODIFIED="1484813860186" TEXT="b -&gt; c - task query">
<node CREATED="1484813866984" ID="ID_833897125" MODIFIED="1484813877898" TEXT="&#x9700;&#x8981;&#x914d;&#x7f6e;jobcenter"/>
</node>
<node CREATED="1484813879887" ID="ID_1909041398" MODIFIED="1484813887979" TEXT="refund "/>
<node CREATED="1484813889089" ID="ID_334593156" MODIFIED="1484813909062" TEXT="&#x81ea;&#x52a8;&#x8865;&#x5355; "/>
</node>
</node>
<node CREATED="1484812358037" ID="ID_1637658858" MODIFIED="1484812457197" TEXT="&#x7b2c;&#x4e00;&#x6b65;&#xff1a;&#x5c06;mdfrontservrer,mdpaygate&#x9879;&#x76ee;&#x7684;multi-mhtsubappid-on-nowpay&#x5206;&#x652f;&#x63a8;&#x4e0a;&#x670d;&#x52a1;&#x5668;&#x5e76;&#x7528;jenkins&#x90e8;&#x7f72;&#x5230;&#x8054;&#x8c03;&#x670d;&#x52a1;&#x5668;"/>
<node CREATED="1484809659597" FOLDED="true" ID="ID_137463961" MODIFIED="1487639632279">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31532;&#20108;&#27493;&#65306;&#21442;&#25968;&#37197;&#32622;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484809705771" ID="ID_834292682" MODIFIED="1484809735601" TEXT="&#x8fdb;&#x5165;189&#x5e93;&#x7684;mdorder -&gt; md_paygate_conf&#x5e93;&#x914d;&#x7f6e;&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x6d4b;&#x8bd5;&#x53c2;&#x6570;"/>
<node CREATED="1484809751912" FOLDED="true" ID="ID_1548682370" MODIFIED="1484810602576">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36807;idcenter&#36827;&#20837;jobcenter&#65292;&#26597;&#30475;pickPayArgsTask&#26159;&#21542;&#27491;&#24120;&#65292;&#20854;&#21517;&#31216;&#25628;&#32034;&#8220;&#37197;&#32622;&#8221;,&#30446;&#21069;&#37197;&#30340;&#26159;&#27599;6&#20998;&#38047;&#19968;&#25191;&#34892;&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484810524638" ID="ID_594207066" MODIFIED="1484810564127" TEXT="&#x4e5f;&#x53ef;&#x8fdb;&#x5165;mdpaygate&#x8054;&#x8c03;&#x73af;&#x5883;&#x7684;/data/application/mdpaygate/logs/queue&#x76ee;&#x5f55;&#x67e5;task.log,PickPayArgTask"/>
</node>
</node>
<node CREATED="1484809675147" FOLDED="true" ID="ID_1874517692" MODIFIED="1487639634494">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31532;&#19977;&#27493;&#65306;&#25903;&#20184;&#27969;&#31243;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484809039698" ID="ID_1687554097" MODIFIED="1484810627248" TEXT="c -&gt; b">
<node CREATED="1484809084511" ID="ID_197957416" MODIFIED="1484809093507" TEXT="c -&gt; b notify recevier"/>
</node>
<node CREATED="1484809030940" ID="ID_208705954" MODIFIED="1484810629470" TEXT="b -&gt; c">
<node CREATED="1484809095063" ID="ID_1407291317" MODIFIED="1484809102074" TEXT="b -&gt; c task query"/>
</node>
<node CREATED="1484809046377" ID="ID_599965347" MODIFIED="1484810631000" TEXT="refund">
<node CREATED="1484810661078" ID="ID_536773398" MODIFIED="1484810702851">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36208;hessisan&#25509;&#21475;&#24517;&#39035;&#29992;&#23458;&#25143;&#31471;&#25165;&#33021;&#27979;&#35797;
    </p>
    <p>
      &#27169;&#25311;&#19968;&#20010;&#27979;&#35797;&#25509;&#21475;&#20986;&#26469;&#26356;&#22909;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484809050749" ID="ID_1953010506" MODIFIED="1484809080003" TEXT="&#x81ea;&#x52a8;&#x8865;&#x5355;"/>
</node>
<node CREATED="1484820159010" ID="ID_1830825481" MODIFIED="1484820191533" TEXT="&#x660e;&#x5929;&#x7f16;&#x5199;&#x7b80;&#x5355;&#x4e0b;&#x5355;&#x81ea;&#x6d4b;&#x5de5;&#x5177;&#xff0c;&#x5f85;&#x540e;&#x7eed;&#x6301;&#x7eed;&#x5b8c;&#x5584;&#xff0c;&#x6bd4;&#x5982;&#x52a0;&#x5165;&#x4e8c;&#x7ef4;&#x7801;&#x626b;&#x56fe;"/>
</node>
<node BACKGROUND_COLOR="#ffff99" COLOR="#ff3300" CREATED="1484881032209" FOLDED="true" ID="ID_408237940" MODIFIED="1488881923126" TEXT="&#x91cd;&#x70b9;&#x63d0;&#x9192;">
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1484881070244" ID="ID_102890330" MODIFIED="1484881738638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#21069;&#25152;&#26377; b&#31471;&#20837;&#21475;&#20063;&#22909;&#65292;&#31532;&#19977;&#26041;&#20837;&#21475;&#20063;&#22909;&#65292;<b><font color="#009999">&#32479;&#32479;&#37117;&#26159;&#32463;&#36807;newwap(WapMobile)&#36807;&#26469;&#24182;&#36890;&#36807;cashbackagent.dll&#26469;&#35775;&#38382;frontserver</font></b>,&#21482;&#26377;&#36864;&#27454;&#26597;&#35810;&#31561;&#65292;&#25165;&#36890;&#36807;hessisson&#36208;tradecenter&#31561;&#31561;&#21543;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#37325;&#28857;&#26159;&#30475;<b><font color="#660066">mobileWap</font></b>&#39033;&#30446;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484882117856" ID="ID_696415609" MODIFIED="1484882233990">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29616;&#22312;b&#31471;&#20063;&#22909;&#65292;&#31532;&#19977;&#26041;(&#25105;&#33258;&#24049;&#20889;&#36807;&#19968;&#20010;&#20174;&#26410;&#21551;&#29992;&#30340;&#25554;&#20214;)&#20837;&#21475;&#20063;&#22909;&#37117;&#26159;&#32463;&#36807;&#25195;&#20108;&#32500;&#30721;&#23436;&#25104;&#25903;&#20184;&#65292;&#25152;&#20197;&#32479;&#19968;&#20108;&#32500;&#30721;&#30340;&#20837;&#21475;&#26159;
    </p>
    <p>
      http://i.55tuan.me/<b><font color="#00cccc">shrcode</font></b>/index?pid=8003&amp;t=rcode&amp;v=...
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484102602447" FOLDED="true" ID="ID_1573726263" MODIFIED="1488881915007" TEXT="&#x4ea4;&#x6613;&#x4e2d;&#x5fc3;&#x516c;&#x53f8;&#x73af;&#x5883;">
<node CREATED="1484102618417" FOLDED="true" ID="ID_1037343553" MODIFIED="1487556994572" TEXT="&#x5e73;&#x884c;&#x73af;&#x5883;">
<node CREATED="1484116887039" ID="ID_1640290103" MODIFIED="1484116975574">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36830;&#25509;&#30340;&#25968;&#25454;&#24211;&#26159;<b><font color="#009999">10.8.210.47</font></b>
    </p>
    <p>
      
    </p>
    <p>
      mdpaygate&#37096;&#32626;&#22312;<b><font color="#009966">10.9.210.131</font></b>.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484102624187" ID="ID_886637617" MODIFIED="1484102632898" TEXT="&#x5e38;&#x89c4;&#x73af;&#x5883;"/>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1484103802050" FOLDED="true" ID="ID_1109663949" MODIFIED="1487639785926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24320;&#21457;&#32852;&#35843;&#29615;&#22659;
    </p>
    <p>
      
    </p>
    <p>
      &#26377;&#26126;&#30830;&#30340;&#32852;&#35843;&#27979;&#35797;&#20837;&#21475;&#32593;&#22336;&#35828;&#21517;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
<node CREATED="1484103815549" ID="ID_580379090" MODIFIED="1484120146236">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      resin&#26159;ssh root@<b><font color="#009966">10.8.210.166</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#35813;&#26426;&#22120;&#26426;&#22120;&#19978;&#37096;&#32626;&#20102;&#20132;&#26131;&#20013;&#24515;&#25152;&#26377;&#30340;Java&#24037;&#31243;,&#37319;&#29992;openjdk1.7.0_60
    </p>
    <p>
      &#36890;&#36807;<b><font color="#009999">ps -ef|grep resin</font></b>&#26597;&#25214;&#21040;&#23433;&#35013;&#21551;&#21160;&#30446;&#24405;
    </p>
    <p>
      
    </p>
    <p>
      mdtradecenter&#36830;&#25509;&#30340;&#26159;<b><font color="#009999">10.8.210.189</font></b>&#30340;&#24211;&#65288;root/123456 or deployment/123456&#65289;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <b><font color="#009966">mdtradecenter,mdtask</font></b>&#37117;&#26159;&#36830;&#25509;&#30340;<b><font color="#009966">mdorder</font></b>&#24211;
      </li>
      <li>
        <b><font color="#009966">mdpaygate</font></b>&#65292;&#36830;&#25509;&#30340;&#26159;<b><font color="#009966">mdpay</font></b>&#24211;
      </li>
      <li>
        <b><font color="#009966">mdfrontserver</font></b>&#19981;&#36830;&#25509;&#20219;&#20309;&#25968;&#25454;&#24211;
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      &#20854;&#20313;&#31995;&#32479;&#28041;&#21450;&#25968;&#25454;&#24211;&#65292;<b><font color="#009966">sh_wowostore</font></b>,<font color="#009966"><b>swp</b></font>&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#37325;&#35201;&#30340;&#26159;mdorder&#24211;&#65292;mdpay&#24211;&#26159;&#20010;&#19979;&#21333;&#36807;&#31243;&#20013;&#30340;&#36807;&#28193;&#24211;&#65281;,&#20026;&#20102;&#39033;&#24196;b&#31471;&#30340;&#32479;&#35745;mdtask&#39069;&#22806;&#25191;&#34892;&#20102;&#24456;&#22810;&#20219;&#21153;&#65292;&#26597;&#35810;&#21363;&#21487;&#12290;&#25152;&#20197;&#65292;&#25152;&#26377;&#20132;&#26131;&#20013;&#24515;&#30340;&#19982;&#25968;&#25454;&#24211;&#30340;&#20132;&#20114;&#21482;&#38656;&#35201;&#30475;mdtradecenter/mdtask,&#21644;&#31245;&#24102;&#30475;&#30475;mdpaygate&#21363;&#21487;&#65292;<b><font color="#009966">&#37325;&#28857;&#26159;mdtradecenter/mdtask</font></b>
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#9966ff" CREATED="1484894574461" FOLDED="true" ID="ID_817726316" MODIFIED="1487639774950">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c -&gt; b &#38376;&#24215;&#20108;&#32500;&#30721;&#29983;&#25104;&#32593;&#22336;
    </p>
    <p>
      
    </p>
    <p>
      &#20146;&#27979;&#21487;&#29992;&#32852;&#35843;&#32593;&#22336;&#65288;&#23454;&#38469;&#23601;&#26159;10.9.60.63&#65292;<font color="#009900">&#21482;&#26159;&#25104;&#21151;&#29983;&#25104;&#20102;&#29289;&#26009;&#30721;</font>&#65292;&#20294;&#19981;&#30693;&#36339;&#36716;&#32593;&#22336;&#26159;&#21542;&#21487;&#29992;...&#20854;&#23454;&#24212;&#35813;&#29992;&#36339;&#36716;&#32593;&#22336;&#20570;pc&#31471;&#27979;&#35797;&#25165;&#21487;&#34892;&#65292;&#20294;&#19981;&#33021;&#36305;&#36890;&#27969;&#31243;&#65292;&#25152;&#20197;&#36824;&#26159;&#24212;&#35813;&#32771;&#34385;&#29992;&#35774;&#32622;&#20102;dns&#30340;&#25163;&#26426;&#36827;&#34892;&#27979;&#35797;,<font color="#ff3333">&#35828;&#20102;&#26080;&#25968;&#36941;&#20102;&#65292;&#26234;&#21830;&#22570;&#24551;&#65292;&#32852;&#35843;&#29615;&#22659;&#65292;&#26159;&#24494;&#20449;&#25110;&#32773;&#25903;&#20184;&#23453;&#30452;&#25509;&#25195;&#30721;&#27979;&#35797;&#65292;&#21482;&#35201;&#20445;&#35777;&#22238;&#35843;&#22320;&#22336;&#26159;&#33021;&#22312;&#22806;&#32593;&#35775;&#38382;&#21040;&#23601;&#33021;&#27979;&#35797;&#65292;&#32780;&#32852;&#35843;&#29615;&#22659;&#37197;&#30340;&#26159;123.127.220.118:9040&#26159;&#33021;&#34987;&#22806;&#32593;&#35775;&#38382;&#21040;&#30340;&#65292;&#25152;&#20197;&#20934;&#22791;&#21512;&#36866;&#30340;&#25968;&#25454;&#29983;&#25104;&#20102;&#21512;&#36866;&#30340;&#20108;&#32500;&#30721;&#23601;&#33021;&#30452;&#25509;&#27979;&#35797;&#20102;</font>&#65292;&#32780;b-&gt;c&#23601;&#26356;&#31616;&#21333;&#20102;&#65292;<font color="#3300cc">&#30452;&#25509;&#21487;&#29992;&#25105;&#20204;&#30340;b&#31471;&#25195;&#24494;&#20449;&#25480;&#26435;&#30721;&#23601;&#27979;&#35797;&#23436;&#25104;&#20102;&#65292;&#36864;&#27454;&#21017;&#21478;&#35828;&#21543;</font>)
    </p>
    <p>
      http://devwap.wowotuan.com/CreateQCode/Create?shopid=1&amp;cashierid=1&amp;cashierName=tony
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484896749706" ID="ID_1628363178" MODIFIED="1484903208793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      http://cgwap.wowotuan.com/<b><font color="#ff00cc">CreateQCode/Create</font></b>?<b><font color="#009999">shopId</font></b>=8000482&amp;<b><font color="#009999">cashierId</font></b>=14061&amp;<b><font color="#009999">cashierName</font></b>=anduo
    </p>
    <p>
      
    </p>
    <p>
      63&#32852;&#35843;&#29615;&#22659;&#26159;&#65306;<b><font color="#009933">http://shwap.55tuan.com/CreateQCode/Create[</font><font color="#6666ff">&#20854;&#29983;&#25104;&#30340;&#20108;&#32500;&#30721;&#32593;&#22336;http://ltsh.wowotuan.com/SHrcode/index?&#24517;&#39035;&#21487;&#34987;&#22806;&#32593;&#35775;&#38382;&#21040;</font><font color="#009933">]</font></b>
    </p>
    <p>
      
    </p>
    <p>
      B&#31471;&#30340;H5&#31449;&#28857;&#30340;&#32593;&#22336;&#23545;&#24212;&#39033;&#30446;&#26159;<b><font color="#009999">SH.Merchant.AppServer.UI.Web.CreateQCodeController.cs&#65292;&#26368;&#32456;&#29983;&#25104;&#30340;&#20108;&#32500;&#30721;&#32593;&#22336;&#26159;&#36827;&#20837;</font><font color="#3333ff">Wowo.Mobile.Wap.Controller.SHRcode.</font><font color="#009999">&#30340;&#22788;&#29702;&#32593;&#22336;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node COLOR="#009999" CREATED="1484894606178" FOLDED="true" ID="ID_1204679186" MODIFIED="1485052958033">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b-&gt;c &#21019;&#24314;&#35746;&#21333;
    </p>
    <p>
      
    </p>
    <p>
      &#26126;&#30830;&#32593;&#22336;&#65292;&#21364;&#21482;&#33021;&#29992;b&#31471;&#25195;&#25480;&#26435;&#30721;&#27979;&#35797;...&#38656;&#35201;&#30456;&#24212;&#30340;&#32852;&#35843;&#27979;&#35797;&#23458;&#25143;&#31471;&#12290;
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;" SIZE="15"/>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484895680344" ID="ID_1263067393" MODIFIED="1484903080417">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30830;&#23450;&#26159;<b><font color="#009999">create</font><font color="#ff00cc">b2c</font><font color="#009999">order</font></b>&#21327;&#35758;&#65292;&#23545;&#24212;&#32852;&#35843;&#29615;&#22659;&#32593;&#22336;
    </p>
    <p>
      
    </p>
    <p>
      http://<b><font color="#009999">ltsh.wowotuan.com</font></b>/<b><font color="#ff00cc">CommonScanPay</font></b>/<b><font color="#ff00cc">CreateOrder </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#00cc66">63&#32852;&#35843;&#29615;&#22659;&#26159;&#65306;</font><font color="#009933">http://ltsh.wowotuan.com/CommanScanPay/CreateOrder</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#23545;&#24212;&#39033;&#30446;&#26159;<b><font color="#009999">Wowo.Mobile.Wap.Controllers.Pay.CommonScanPayController.cs</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484895023883" ID="ID_1962524658" MODIFIED="1484899946137">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      newwap&#32593;&#31449;&#20837;&#21475;&#22312;<b><font color="#009999">10.9.60.63</font>,</b>
    </p>
    <p>
      iis&#37324;&#23545;&#24212;&#30340;<b><font color="#009999">ltsh.wowotuan.com</font></b>:80/&#23545;&#24212;&#29289;&#29702;&#36335;&#24452;&#20026;<b><font color="#009999">d:\55tuanWeb\NewWap </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009999">lt - &#32852;&#35843; </font></b>
    </p>
    <p>
      <b><font color="#009999">cg -&#160;&#160;&#24120;&#35268;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484902633945" ID="ID_1385087672" MODIFIED="1486365009570" TEXT="&#x5570;&#x55e6;&#x591a;&#x4e00;&#x6b21;">
<node CREATED="1484902402368" ID="ID_112793079" MODIFIED="1484902735549">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24443;&#24213;&#25630;&#28165;&#26970;&#27979;&#35797;&#32852;&#35843;&#30340;&#20837;&#21475;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        c -&gt; b &#26159;&#36890;&#36807;&#29992;<b><font color="#9933ff">&#21830;&#25143;&#21518;&#21488;H5&#39033;&#30446;</font></b>&#29983;&#25104;&#20108;&#32500;&#30721;&#26469;&#36890;&#36807;&#25163;&#26426;&#24494;&#20449;&#25110;&#25903;&#20184;&#23453;&#25195;&#30721;<b><font color="#00cc66">&#25195;&#35813;&#20108;&#32500;&#30721;</font></b>&#26469;&#23436;&#25104;&#25903;&#20184;&#27979;&#35797;&#12290;
      </li>
      <li>
        b -&gt; c&#26159;<b><font color="#9933ff">&#36890;&#36807;b&#31471;&#65292;&#25110;&#20854;&#20182;&#31532;&#19977;&#26041;&#35774;&#22791;(&#27604;&#22914;&#65306;&#25195;&#30721;&#26538;)</font></b>&#26469;&#25195;&#24494;&#20449;&#25110;&#32773;&#25903;&#20184;&#23453;&#29992;&#25143;&#30340;<b><font color="#00cc66">&#25480;&#26435;&#30721;</font></b>&#26469;&#23436;&#25104;&#25903;&#20184;&#27979;&#35797;&#12290;
      </li>
      <li>
        &#24180;&#21069;&#19977;&#22825;&#65292;&#24320;&#22987;&#33258;&#27979;&#65281;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484117096230" ID="ID_1801877089" LINK="http://10.8.210.208:8088/" MODIFIED="1484118500415">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20844;&#21496;jenkins&#65292;&#36127;&#36131;&#25152;&#26377;&#29615;&#22659;&#33258;&#21160;&#37096;&#32626;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009966">http://10.8.210.208:8088/ </font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#36890;&#36807;jenkins&#30340;console&#26085;&#24535;&#21487;&#26597;&#30475;&#21040;&#37096;&#32626;&#30340;&#26426;&#22120;&#65292;&#20174;&#32780;&#20102;&#35299;&#21508;&#20010;&#29615;&#22659;&#30340;&#20301;&#32622;
    </p>
    <p>
      <b><font color="#009966">&#31561;&#32852;&#35843;&#24320;&#21457;&#33258;&#27979;&#23436;&#25104;&#22810;&#20844;&#20247;&#21495;&#20877;&#25972;&#29702;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484615315503" FOLDED="true" ID="ID_1896544403" MODIFIED="1487639789918" TEXT="&#x516c;&#x53f8;&#x73af;&#x5883;">
<node CREATED="1484615325691" ID="ID_1781186563" MODIFIED="1484616091218">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009933">http://idcenter.55tuan.me/idcenter/home </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009999">&#24517;&#39035;&#26159;&#36825;&#20010;&#32593;&#22336;&#25165;&#34892;&#65292;&#35201;&#25340;&#20840;&#20102;&#65292;&#20174;idcenter&#36827;&#20837;&#20854;&#20182;&#20013;&#24515;&#21363;&#21487;</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#36134;&#21495; manager &#23494;&#30721; manager
    </p>
    <p>
      
    </p>
    <p>
      [&#27491;&#24335;&#29615;&#22659;]
    </p>
    <p>
      116.213.176.50 idcenter.wowotuan.com
    </p>
    <p>
      116.213.178.222 notifyconsole.wowotuan.com
    </p>
    <p>
      116.213.178.199&#160;&#160;dubbo.wowotuan.com
    </p>
    <p>
      116.213.178.192 jobcenter.wowotuan.com
    </p>
    <p>
      116.213.176.18 secret.wowotuan.com
    </p>
    <p>
      116.213.178.221&#160;&#160;configcenter.wowotuan.com
    </p>
    <p>
      116.213.176.51 brushweb.wowotuan.com
    </p>
    <p>
      116.213.178.76 logstashnew.wowotuan.com
    </p>
    <p>
      116.213.176.49 recsys.wowotuan.com
    </p>
    <p>
      116.213.176.18 graphite.wowotuan.com
    </p>
    <p>
      116.213.176.51 discache.wowotuan.com
    </p>
    <p>
      
    </p>
    <p>
      [&#20844;&#21496;&#24320;&#21457;&#29615;&#22659;]
    </p>
    <p>
      10.8.210.223 idcenter.55tuan.me
    </p>
    <p>
      10.8.210.207 jobcenter.55tuan.me
    </p>
    <p>
      10.9.210.216 notifyserver-gateway.55tuan.me
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484621408584" FOLDED="true" ID="ID_1871739080" MODIFIED="1487639755750" TEXT="&#x516c;&#x53f8;&#x73af;&#x5883;jenkins&#x81ea;&#x52a8;&#x90e8;&#x7f72;&#x8bb0;&#x5f55;">
<node CREATED="1484621423728" ID="ID_1631339036" MODIFIED="1484621949424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      1&#12289;&#36827;&#20837;<b>https://10.9.210.155</b>&#160;&#36827;&#20837;gitlab&#65292;&#29992;wangdalin/W.l.....1&#30331;&#24405;
    </p>
    <p>
      2&#12289;&#25214;&#21040;mdpaygate&#39033;&#30446;&#65292;&#22312;&#27983;&#35272;&#22120;&#22320;&#22336;&#26639;&#30475;&#21040;&#38142;&#25509;&#22320;&#22336;
    </p>
    <p>
      https://10.9.210.155/java/mdpaygate/commits/<b><font color="#009933">feature/multi-mhtsubappid-on-nowpay</font></b>
    </p>
    <p>
      &#25335;&#36125;&#39068;&#33394;&#26631;&#35782;&#37096;&#20998;
    </p>
    <p>
      3&#12289;&#36827;&#20837;<b>http://10.8.210.208:8088/ </b>&#160;&#36827;&#20837;&#160; jenkins&#29615;&#22659;&#65292;&#29992;yanfa/yanfa&#30331;&#24405;&#65292;&#25214;&#21040;<b><font color="#009999">&#32852;&#35843;&#29615;&#22659;</font></b>&#65288;&#36825;&#37324;&#20195;&#34920;&#35201;&#37096;&#32626;&#30340;&#26381;&#21153;&#22120;&#65289;&#65292;&#22312;&#35813;&#26381;&#21153;&#22120;&#21015;&#34920;&#39033;&#20013;&#25214;&#21040;<b><font color="#009999">Java_Liantiao_mdpaygate</font></b>&#39033;&#65292;&#28857;&#20987;&#36827;&#21435;<b><font color="#009933">&#37197;&#32622;</font></b>&#30028;&#38754;&#65292;&#22312;&#37197;&#32622;&#31649;&#29702;&#30028;&#38754;&#30340;&#28304;&#30721;&#31649;&#29702;&#20013;&#30340;Git&#39033;&#30340;<b><font color="#009999">Brand Specifier</font></b>&#20013;&#36755;&#20837;<b><font color="#009933">feature/multi-mhtsubappid-on-nowpay</font></b>&#20445;&#23384;&#21363;&#21487;&#65292;&#33258;&#21160;&#37096;&#32626;&#23601;&#20250;&#23558;&#35813;&#20998;&#25903;&#36827;&#34892;&#32534;&#35793;&#24182;&#33258;&#21160;&#37096;&#32626;&#21040;&#35813;&#26381;&#21153;&#22120;&#19978;&#24182;&#37325;&#21551;resin
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484622552600" ID="ID_1857411237" LINK="2017/01/build.sh%20-%20jenkins-autodeploy-script.txt" MODIFIED="1484622661508">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20844;&#21496;&#33258;&#21160;&#37096;&#32626;&#33050;&#26412;&#21442;&#32771;&#65292;&#35831;&#25335;&#36125;&#20986;&#26469;&#29992;vim&#31561;&#26597;&#30475;
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#27573;&#33050;&#26412;&#26159;&#30331;&#20837;jenkins&#25152;&#22312;&#26381;&#21153;&#22120;&#19978;&#25335;&#36125;&#26469;&#30340;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1485065180297" ID="ID_1966712454" MODIFIED="1485065417866">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver jenkins&#33258;&#21160;&#37096;&#32626;&#22833;&#36133;&#65292;&#26597;&#26126;&#21407;&#22240;&#26159;&#20854;&#20381;&#36182;&#30340;mdpaygate-model.jar&#22312;&#20844;&#21496;&#31169;&#24211;&#37324;&#36824;&#26159;&#26087;&#30340;&#65292;&#30001;&#20110;mvn install&#21482;&#26159;&#23433;&#35013;&#21040;&#20102;&#26412;&#22320;&#31169;&#24211;&#65292;&#24182;&#27809;&#26377;&#23433;&#35013;&#21040;&#20844;&#21496;&#31169;&#24211;&#65292;&#37027;&#26679;&#38656;&#35201;&#29992;mvn deploy&#26469;&#23436;&#25104;&#65292;&#30446;&#21069;&#20570;&#27861;&#26159;&#33258;&#24049;&#30331;&#24405;&#20844;&#21496;&#31169;&#24211;,&#27604;&#22914;&#65306;
    </p>
    <p>
      <b><font color="#009966">http://10.9.210.121:8081/nexus/,&#36134;&#21495;&#23494;&#30721; admin/123qwe,&#28982;&#21518;&#25214;&#21040;3rd party&#24211;&#65292;&#29992;Artifact Upload&#26041;&#24335;&#19978;&#20256;&#21040;&#20844;&#21496;&#31169;&#24211;&#21518;</font></b>&#65292;&#25165;&#33021;&#20877;&#27425;&#21033;&#29992;jenkins&#39034;&#21033;&#33258;&#21160;&#37096;&#32626;&#23436;&#25104;mdfrontserver&#30340;&#32534;&#35793;&#21644;&#37096;&#32626;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1484623570367" FOLDED="true" ID="ID_420680217" MODIFIED="1487639794462" TEXT="jobcenter&#x90e8;&#x7f72;">
<node CREATED="1484623599094" ID="ID_243193233" MODIFIED="1486445834258">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36827;&#20837;http://idcenter.55tuan.me/idcenter/home
    </p>
    <p>
      
    </p>
    <p>
      manger/manger&#30331;&#20837;&#65292;&#36716;&#20837;jobcenter&#36827;&#34892;&#37197;&#32622;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484633254139" ID="ID_260944280" MODIFIED="1484633383693">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26597;&#35810;&#21040;&#37197;&#32622;&#30340;jobcenter&#27809;&#36215;&#20316;&#29992;&#65292;
    </p>
    <p>
      &#29992;<b><font color="#00cc33">ps -ef|grep mdpaygate</font></b>&#26597;&#35810;&#21040;&#23433;&#35013;&#30446;&#24405;
    </p>
    <p>
      &#25171;&#24320;log&#30446;&#24405;&#30340;jvm-log&#65292;&#30475;&#21040;&#30417;&#21548;&#31471;&#21475;&#20026;<b><font color="#00cc33">9040</font></b>
    </p>
    <p>
      &#22312;&#20462;&#25913;jobcenter&#32593;&#22336;&#20026;http://10.8.210.166:<b><font color="#00cc33">9040</font></b>/job/notify.do
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484707300646" ID="ID_1891864699" MODIFIED="1484707470826">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24037;&#20316;&#31508;&#35760;&#26412;&#26412;&#26426;&#36827;&#20837;&#30340;jobcenter&#19982;mdpaygate&#26381;&#21153;&#22120;&#35201;&#36890;&#30693;&#25191;&#34892;&#29366;&#24577;&#30340;jobcenter&#19981;&#26159;&#19968;&#21488;&#26381;&#21153;&#22120;&#65292;&#36890;&#36807;<b><font color="#cc00ff">ngix&#20195;&#29702;&#37197;&#32622;</font></b>&#65292;&#35753;mdpaygate&#22495;&#21517;&#25351;&#21521;&#30340;jobcenter&#36339;&#22238;&#21040;&#31508;&#35760;&#26412;&#23545;&#24212;&#30340;jobcenter&#19978;&#21363;&#21487;&#65292;&#30830;&#20445;&#33021;&#22312;&#31508;&#35760;&#26412;&#19978;&#30475;&#21040;&#27491;&#30830;&#30340;&#20219;&#21153;&#36890;&#30693;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484704895836" ID="ID_465941139" MODIFIED="1484709346636">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      redis&#30340;&#31616;&#21333;&#21629;&#20196;&#34892;&#27979;&#35797;
    </p>
    <p>
      &#23601;&#26159;<b><font color="#cc00ff">telnet</font></b>&#160;<b><font color="#009966">redis-tradem.shanhui.me 17701</font></b>&#21518;&#36755;&#20837;
    </p>
    <p>
      <b><font color="#cc00ff">hmget 'shbnpayarg-2' 'signkey' 'pid' 'appid'</font></b>&#24471;&#21040;&#39564;&#35777;&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484709041559" FOLDED="true" ID="ID_1122526381" MODIFIED="1488870281322" TEXT="&#x65e5;&#x5fd7;&#x627e;&#x56de;">
<node BACKGROUND_COLOR="#ccccff" CREATED="1484709051086" ID="ID_449303745" MODIFIED="1484709313545">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;pickPayArgTask&#20013;&#30340;&#26085;&#24535;&#65292;&#20197;&#20026;&#24182;&#26410;&#25351;&#23450;logger&#65292;&#19968;&#24459;&#23384;&#20837;common-default.log&#30340;appender&#20013;&#65292;&#20294;&#23601;&#26159;&#25214;&#19981;&#21040;&#37027;&#20004;&#34892;&#26085;&#24535;&#65292;&#21518;&#26469;&#65292;&#21457;&#29616;&#26377;&#22914;&#19979;&#19968;&#20010;logger&#37197;&#32622;
    </p>
    <p>
      &lt;logger name=&quot;<b><font color="#669900">com.wowo.mdpaygate.service.task</font></b>&quot; additivity=&quot;false&quot;&gt;
    </p>
    <p>
      &#160;&#160;&#160;&lt;level&#160;&#160;value=&quot;INFO&quot;/&gt;
    </p>
    <p>
      &#160;&#160;&#160;&lt;appender-ref ref=&quot;<b><font color="#cc00ff">QUEUE</font></b>-TASK-APPENDER&quot;/&gt;
    </p>
    <p>
      &lt;/logger&gt;
    </p>
    <p>
      &#21363;&#35813;<b><font color="#669900">&#21629;&#21517;&#31354;&#38388;&#19979;&#30340;&#25152;&#26377;&#31867;</font></b>&#30340;logger&#26085;&#24535;&#37117;&#22312;<b><font color="#cc00ff">queue&#30446;&#24405;</font></b>&#20013;&#30340;&#26085;&#24535;&#37324;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484182831610" FOLDED="true" ID="ID_93460076" MODIFIED="1489022911184">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#9933ff">&#22810;&#20844;&#20247;&#21495;&#37096;&#20998;&#20462;&#25913;&#28857;&#35760;&#24405; </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#009900">&#20197;&#21450;&#21508;&#25903;&#20184;&#31867;&#22411;&#30340;&#26102;&#24207;&#22270;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1484182851996" FOLDED="true" ID="ID_588303253" MODIFIED="1489022906286" TEXT="&#x9000;&#x6b3e;">
<node CREATED="1484201146454" ID="ID_115078618" MODIFIED="1484201151161" TEXT="mdpaygate">
<node CREATED="1484182858553" ID="ID_1961232388" MODIFIED="1484201346654">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#00cccc">BaseRefundModel</font></b>&#31867;&#22686;&#21152;Long&#22411;&#23646;&#24615;<b><font color="#009966">shopId</font></b>&#65292;&#40664;&#35748;&#20540;0L
    </p>
    <p>
      &#20462;&#25913;<b><font color="#00cccc">BaseRefundModel</font></b>&#30340;<b><font color="#009966">toRefundModel()</font></b>&#26041;&#27861;&#65292;&#20026;shopId&#36171;&#20540;
    </p>
    <p>
      
    </p>
    <p>
      &#35201;&#29992;shopId&#36890;&#36807;<b><font color="#009966">&#38376;&#24215;&#20013;&#24515;</font></b>&#25552;&#21462;&#21152;&#31614;&#23494;&#38053;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484184002812" ID="ID_820681397" MODIFIED="1484184362205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;c &#25195; b &#20462;&#25913;<b><font color="#00cccc">BranchToNowPayTradeQueryManager.java&#30340;</font><font color="#009966">queryRefund</font><font color="#00cccc">&#26041;&#27861;</font></b>&#65292;&#23558;<b><font color="#9900cc">signkey</font></b>&#21644;<b><font color="#9900cc">partnerid</font></b>&#37319;&#29992;&#21442;&#25968;&#20256;&#20837;&#30340;&#65292;&#38656;&#35201;<b><font color="#ff3333">&#26684;&#22806;&#27880;&#24847;&#36825;&#20004;&#20010;&#21442;&#25968;&#30340;&#36171;&#20540;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484202204880" ID="ID_721079952" MODIFIED="1484202340239">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#27454;&#27969;&#31243;&#65292;&#19968;&#33324;&#37117;&#30001;b&#31471;&#21457;&#36215;&#65292;&#36208;tradecenter&#30340;service/impl/refundrequest -&gt; mdpaygate.refund&#25509;&#21475;&#36827;&#34892;&#21518;&#32493;&#22788;&#29702;&#12290;<b>&#26412;&#21608;&#32467;&#26463;&#22810;&#20844;&#20247;&#21495;&#32534;&#30721;</b>&#65292;<b>&#19979;&#21608;&#35201;&#27714;&#25972;&#29702;&#27969;&#31243;&#22270;</b>&#65288;&#35201;&#27714;&#26216;&#36745;&#21327;&#21161;&#65289;&#24182;&#33258;&#27979;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1484204738186" FOLDED="true" ID="ID_478833607" LINK="#ID_1982907582" MODIFIED="1488881898629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#27969;&#31243;&#22270; c-&gt;b &#22810;&#20844;&#20247;&#21495;&#29616;&#22312;&#25903;&#20184;&#27969;&#31243;&#22270;
    </p>
    <p>
      
    </p>
    <p>
      &#32467;&#21512;&#23448;&#26041;&#26102;&#35768;&#22270;&#29702;&#35299;&#23436;&#25972;&#27969;&#31243;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484208561198" HGAP="66" ID="ID_1746394512" MODIFIED="1488876273665" VSHIFT="100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/branch-to-nowpay-c-scan-b.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1484212253194" FOLDED="true" ID="ID_1375547211" MODIFIED="1489022897510" TEXT="&#x6d41;&#x7a0b;&#x56fe; b-&gt;c&#x591a;&#x516c;&#x4f17;&#x53f7;&#x73b0;&#x5728;&#x652f;&#x4ed8;&#x6d41;&#x7a0b;&#x56fe;">
<node CREATED="1484212274380" ID="ID_692197291" MODIFIED="1484212280291">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/branch-to-nowpay-b-scan-c.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484293520222" FOLDED="true" ID="ID_303217953" MODIFIED="1489022883095">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c-&gt;b&#30340;&#25509;&#25910;&#25903;&#20184;&#25104;&#21151;&#36890;&#30693;&#30340;&#36923;&#36753;&#20462;&#25913;
    </p>
    <p>
      mdpaygate -&gt; TradeServiceImpl.tradePayNotify().doAction()&#20013;&#25552;&#21462;&#25903;&#20184;&#21442;&#25968;&#65288;&#38656;&#35201;&#26681;&#25454;tradedomain&#33021;&#25552;&#21462;&#21040;shopid)
    </p>
    <p>
      
    </p>
    <p>
      &#20020;&#26102;&#24110;&#39134;&#39134;&#35299;&#20915;&#38382;&#39064;&#65292;&#20063;&#27809;&#35299;&#20915;&#65292;&#22909;&#20687;&#26159;&#32534;&#30721;&#23548;&#33268;&#36335;&#24452;&#25214;&#19981;&#21040;&#12290;&#12290;&#12290;&#20197;&#21518;&#32479;&#19968;&#29992;utf-8
    </p>
  </body>
</html></richcontent>
<node CREATED="1484366206989" ID="ID_358954484" MODIFIED="1484366217733">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/branch-to-nowpay-c-scan-b-notify-proc.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484388555443" ID="ID_1640229510" MODIFIED="1484388998629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      TradeServiceImpl.processNowPayscanpayResult&#24453;&#28548;&#28165;<font color="#ff6633">notifyurl+addqueue&#20107;&#23452;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484389247012" FOLDED="true" ID="ID_443404298" MODIFIED="1488881906141">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff6633">&#36864;&#27454;&#27969;&#31243;&#24453;&#28548;&#28165;&#20837;&#21475;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1484538112526" ID="ID_1428722123" MODIFIED="1484538220716">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#27454;&#20837;&#21475;&#26469;&#33258;csharp b&#31471;&#30340;&#35843;&#29992;&#65292;&#36335;&#24452;&#20026;
    </p>
    <p>
      http://10.8.210.166:9022/<b><font color="#00cccc">hessian/refundCreateService4hessian </font></b>
    </p>
    <p>
      &#36825;&#26159;mdtradecenter&#25509;&#21475;
    </p>
  </body>
</html></richcontent>
<node CREATED="1484555653392" FOLDED="true" ID="ID_1216773640" MODIFIED="1488870261402" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<node CREATED="1484555662536" ID="ID_2630683" MODIFIED="1484555684506">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/branch-to-nowpay-refund.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1487130219146" ID="ID_1410442864" MODIFIED="1487153151374">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26368;&#32456;&#35843;&#29992;mdpaygate&#30340;payRefund&#23436;&#25104;&#36864;&#27454;&#65292;&#36825;&#37324;&#30340;businessType&#22266;&#23450;&#20026;&#20540;40&#65292;&#20250;&#22312;frontserver &#21644;mdpaygate&#38388;&#20316;&#31616;&#21333;&#39564;&#31614;&#65292;&#39564;&#31614;&#20869;&#23481;&#20165;&#20026;tradeno&#65292;&#19988;refundmoney&gt;0
    </p>
    <p>
      
    </p>
    <p>
      &#20174;&#25968;&#25454;&#24211;&#25552;&#21462;&#20132;&#26131;&#35760;&#24405;&#65292;&#24182;&#30830;&#20445;&#26159;&#25903;&#20184;&#25104;&#21151;&#29366;&#24577;&#65292;&#20134;&#21363;&#20026;3&#65292;&#36825;&#20010;&#24456;&#20851;&#38190;&#65281;&#12290;
    </p>
    <p>
      applyID&#30001;csharp&#30340;b&#31471;&#23458;&#25143;&#31471;&#20256;&#20837;&#65292;&#25105;&#29702;&#35299;&#36825;&#26159;&#26631;&#35782;&#21830;&#23478;&#23458;&#25143;&#31471;&#30340;&#65292;&#19982;&#36864;&#27454;&#31532;&#19977;&#26041;&#25509;&#21475;&#26080;&#20851;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      [mdpay&#24211;&#26159;&#20010;&#36807;&#24230;&#24211;&#65281;&#20854;&#20013;&#30340;&#25152;&#26377;&#34920;&#37117;&#26159;&#36807;&#24230;&#24615;&#36136;&#30340;&#65292;&#36890;&#36807;&#20013;&#36716;&#34920;md_pay_queue&#26368;&#32456;&#20197;mdorder&#24211;&#20026;&#26368;&#32456;&#30041;&#24213;&#20351;&#29992;&#30340;]
    </p>
    <p>
      
    </p>
    <p>
      &#37117;&#31526;&#21512;&#65292;&#21017;&#65306;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#6600cc">dorefund</font></b>!&#65292;&#20250;&#22312;mdpay&#24211;&#20013;&#30340;md_refund&#34920;&#20013;&#21019;&#24314;&#36864;&#27454;&#35760;&#24405;
    </p>
    <p>
      
    </p>
    <p>
      &#35813;&#26041;&#27861;&#20013;&#21253;&#21547;&#20102;&#25152;&#26377;&#30340;&#36864;&#27454;&#36923;&#36753;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#30452;&#25509;&#36864;&#27454;&#26159;&#20889;&#23436;&#30340;&#65292;&#32780;&#37027;&#20010;&#36864;&#27454;&#20219;&#21153;&#21017;&#26159;&#26377;&#26102;&#36864;&#27454;&#20250;&#24310;&#36831;&#65292;&#27492;&#26102;&#38656;&#35201;&#25913;&#20219;&#21153;&#21435;&#26597;&#35810;&#36864;&#27454;&#29366;&#24577;&#24182;&#26356;&#26032;&#30456;&#24212;&#19994;&#21153;&#65292;&#38656;&#35201;&#36890;&#36807;md_queue&#65292;&#26126;&#22825;&#32487;&#32493;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484719319331" FOLDED="true" ID="ID_1473835237" MODIFIED="1488881908455">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20132;&#26131;&#26803;&#29702;&#35760;&#24405;&#25991;&#26412;&#25551;&#36848;&#29256;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccccff" CREATED="1484719345994" ID="ID_1291250435" MODIFIED="1487648689302" TEXT="c -&gt; b">
<node CREATED="1484719457074" FOLDED="true" ID="ID_1371311283" MODIFIED="1488870179042" TEXT="pay flow">
<node CREATED="1484719856926" FOLDED="true" ID="ID_18776074" MODIFIED="1486542285594">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        mdfrontserver-web/controller/<b><font color="#00cc33">trade</font></b>/ShOrderController

        <ol>
          <li style="text-align: left">
            &#160;<b><font color="#00cccc">shPreOrderCreateService</font></b>.preCreateOrder
          </li>
          <li style="text-align: left">
            &#160;<b><font color="#660099">shOrderServiceAdapter</font></b>.createShOrder
          </li>
        </ol>
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1484720709586" FOLDED="true" ID="ID_1512370775" MODIFIED="1486542284466" TEXT="ShOrderCreateServiceImpl.preCreateOrder">
<node CREATED="1484720782986" ID="ID_396983561" MODIFIED="1484721664778">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30001;&#21016;&#32479;&#21018;&#20174;&#31389;&#31389;&#36716;&#38378;&#24800;&#26102;&#32534;&#20889;&#65292;&#23601;&#20570;&#20004;&#20214;&#20107;
    </p>
    <ol>
      <li>
        &#26681;&#25454;&#20256;&#36807;&#26469;&#30340;<b><font color="#00cc33">userid</font></b>&#25552;&#21462;&#29992;&#25143;&#36820;&#29616;&#20313;&#39069;&#20449;&#24687;[<b><font color="#009999">rebateExtService</font></b>.<b><font color="#cc00cc">findUserRebateByUserId</font></b>]&#65292;&#21253;&#25324;&#22914;&#19979;&#19977;&#28857;

        <ol>
          <li>
            &#26159;&#21542;&#21487;&#29992;&#36820;&#29616;&#20313;&#39069;
          </li>
          <li>
            &#21487;&#36820;&#29616;&#30340;&#20313;&#39069;&#26159;&#22810;&#23569;
          </li>
          <li>
            &#20923;&#32467;&#21407;&#22240;&#65288;&#21363;&#36820;&#29616;&#20313;&#39069;&#19981;&#21487;&#29992;&#65289;
          </li>
        </ol>
      </li>
      <li>
        &#26681;&#25454;&#20256;&#36807;&#26469;&#30340;<b><font color="#00cc33">shopid</font></b>&#33719;&#21462;&#38376;&#24215;&#36820;&#29616;&#26041;&#26696;&#20449;&#24687;[<b><font color="#009999">orderCreateExtService</font></b>.<b><font color="#cc00cc">getShopScheme</font></b>]
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484721739859" FOLDED="true" ID="ID_116581062" MODIFIED="1486542282410" TEXT="shOrderServiceAdapter.createShOrder">
<node CREATED="1484723813073" ID="ID_408672451" MODIFIED="1486364790824" TEXT="&#x7ebf;&#x4e0a;&#x65e5;&#x5fd7;">
<node CREATED="1484723824148" ID="ID_236933232" MODIFIED="1484724220516">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      request param:ShOrderCreateParam{<b><font color="#00cccc">userId</font></b>=100365331, <b><font color="#00cccc">userName</font></b>='<b><font color="#cc00cc">wx_oqhvowymdo_8vomth0_1bdu8nzhy</font></b>', <b><font color="#00cccc">shopId</font></b>=<b><font color="#cc00cc">8015049</font></b>, consumeMoney=3.0, outRebate=0.0, voucherId=0, useRebate=false, <b><font color="#00cccc">payType</font></b>=15, <b><font color="#00cccc">orderId</font></b>='', pid='1.2003', mid='null', mobilePhone='', isWeChat='1', <b><font color="#00cccc">openId</font></b>='<b><font color="#cc00cc">oQhVOwYMDo_8VOmth0_1bDu8nzHY</font></b>', <b><font color="#00cccc">operatorId</font></b>=<b><font color="#cc00cc">40508</font></b>, authCode='null', operatorName='', <b><font color="#00cccc">isDirect</font></b>=0, multiPayAppId='null', multiPayMchId='null', multiPayKey='null', multiPaySubAppId='null', multiPaySubMchId='null'}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484724523510" FOLDED="true" ID="ID_945165463" MODIFIED="1486542280834" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<node CREATED="1484735011081" ID="ID_865380204" MODIFIED="1484735017677">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/c%20&#x626b;%20b%20&#x4e0b;&#x5355;&#x8be6;&#x7ec6;&#x65f6;&#x5e8f;&#x56fe;.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1484719468600" ID="ID_1858273898" MODIFIED="1484719478308" TEXT="notify flow"/>
</node>
<node CREATED="1484719381706" ID="ID_232654261" MODIFIED="1486437032130" TEXT="b -&gt; c">
<node CREATED="1484719480118" ID="ID_257891230" MODIFIED="1484719484371" TEXT="pay flow"/>
<node CREATED="1484719485633" ID="ID_1716716359" MODIFIED="1484719491275" TEXT="task query flow"/>
</node>
<node CREATED="1484719393735" ID="ID_868987733" MODIFIED="1487648694836" TEXT="refund">
<node CREATED="1484719494224" ID="ID_1831534832" MODIFIED="1484719499491" TEXT="task refund flow"/>
</node>
</node>
<node CREATED="1484726546734" ID="ID_423402428" MODIFIED="1484726553406" TEXT="&#x6280;&#x672f;&#x70b9;">
<node CREATED="1484726555752" ID="ID_704228270" MODIFIED="1484726572707" TEXT="RedisSentinelPool"/>
</node>
</node>
</node>
<node CREATED="1484812159759" ID="ID_981811101" MODIFIED="1486619800586" TEXT="&#x77e5;&#x8bc6;&#x70b9;">
<node CREATED="1484812173037" ID="ID_1351551828" MODIFIED="1484812176051" TEXT="Spring">
<node CREATED="1484812178900" FOLDED="true" ID="ID_349448695" MODIFIED="1488858804093" TEXT="@ModelAttribute">
<node CREATED="1484812192600" ID="ID_546124286" MODIFIED="1484812201861">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/01/Java-Spring-ModelAttribute.jpg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484903231985" FOLDED="true" ID="ID_1989729581" MODIFIED="1486365556800" TEXT="csharp &#x4e8c;&#x7ef4;&#x7801;">
<node CREATED="1484903240681" ID="ID_1031909282" LINK="2017/01/c%23%20libs/CreateQCodeController.cs" MODIFIED="1485052754589">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c#&#31034;&#20363;&#28304;&#30721;&#65292;&#30456;&#24212;&#31532;&#19977;&#26041;&#32452;&#20214;<b><font color="#9933ff">ThougtWorks.QRCode.Codec</font></b>&#19982;&#28304;&#30721;&#22312;&#30456;&#21516;&#30446;&#24405;
    </p>
    <p>
      
    </p>
    <p>
      &#21360;&#35937;&#31508;&#35760;&#37324;&#23384;&#20102;&#19968;&#20221;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1484727338332" ID="ID_343097466" LINK="https://www.tutorialspoint.com/compile_java8_online.php" MODIFIED="1488870124036">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      coderunner:
    </p>
    <p>
      https://www.tutorialspoint.com/compile_java8_online.php
    </p>
  </body>
</html></richcontent>
<node CREATED="1484727367666" FOLDED="true" ID="ID_757414393" MODIFIED="1488875685039" TEXT="&#x968f;&#x673a;&#x6570;paycode">
<node CREATED="1484727403813" ID="ID_1398583291" MODIFIED="1484727420505">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import java.util.HashSet;
    </p>
    <p>
      import java.util.Random;
    </p>
    <p>
      import java.util.Set;
    </p>
    <p>
      public class HelloWorld{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;public static void main(String []args){
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Hello World&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Set&lt;Integer&gt; loadSet = new HashSet&lt;&gt;();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Random rand = new Random();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while(loadSet.size()&lt;10){
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;loadSet.add(rand.nextInt(10));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;for(Integer i:loadSet)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(i);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1484794622692" FOLDED="true" ID="ID_1041002205" MODIFIED="1488870172482" TEXT="&#x8ba2;&#x5355;&#x652f;&#x4ed8;&#x65f6;&#x95f4;">
<node CREATED="1484794630408" ID="ID_1631836765" MODIFIED="1484794966569">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      import java.text.DateFormat;
    </p>
    <p>
      import java.text.ParseException;
    </p>
    <p>
      import java.text.SimpleDateFormat;
    </p>
    <p>
      import java.util.Calendar;
    </p>
    <p>
      import java.util.Date;
    </p>
    <p>
      import java.util.Locale;
    </p>
    <p>
      
    </p>
    <p>
      public class HelloWorld{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;public static void main(String []args){
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Hello World&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;long current =System.currentTimeMillis();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(getRouteTime(current));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;public static int getRouteTime(long timeInMillis){
    </p>
    <p>
      &#160;&#160;&#160;&#160; Calendar calendar = Calendar.getInstance();
    </p>
    <p>
      &#160;&#160;&#160;&#160; calendar.setTimeInMillis(timeInMillis);
    </p>
    <p>
      &#160;&#160;&#160;&#160; int year = calendar.get(Calendar.YEAR);
    </p>
    <p>
      &#160;&#160;&#160;&#160; int month = calendar.get(Calendar.MONTH) + 1;
    </p>
    <p>
      &#160;&#160;&#160;&#160; int day = calendar.get(Calendar.DAY_OF_MONTH);
    </p>
    <p>
      &#160;&#160;&#160;&#160; return year*10000 + month*100 + day;
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1484794783004" ID="ID_1024000300" MODIFIED="1484794796325" TEXT="long current =System.currentTimeMillis() "/>
<node CREATED="1484795178060" ID="ID_1062831960" MODIFIED="1484795202971" TEXT="Calendar.MONTH&#x662f;&#x679a;&#x4e3e;&#xff0c;&#x4ece;0&#x5f00;&#x59cb;&#xff0c;&#x6545;&#x800c;&#x52a0;1"/>
</node>
<node CREATED="1486533126088" FOLDED="true" ID="ID_633749776" MODIFIED="1488870146690">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23545;&#20110;&#29992;. or |&#20998;&#21106;&#30340;&#23383;&#31526;&#65292;&#29992;split&#35201;&#27880;&#24847;&#65292;&#36825;&#20004;&#20010;&#23383;&#31526;&#20026;&#27491;&#21017;&#29305;&#27530;&#23383;&#31526;
    </p>
  </body>
</html></richcontent>
<node CREATED="1486533163438" ID="ID_78316755" MODIFIED="1486533170553">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public class HelloWorld{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;public static void main(String []args){
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Hello World&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String[] k = &quot;a|bef|c&quot;.split(&quot;\\|&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(k[1]);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1486707312538" FOLDED="true" ID="ID_1239998633" MODIFIED="1488870163097" TEXT="&#x6d4b;&#x8bd5;indexOf">
<node CREATED="1486707321618" ID="ID_2544807" MODIFIED="1486707328133">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public class HelloWorld{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;public static void main(String []args){
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;Hello World&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;String value =&quot;{\&quot;errcode\&quot;:44002,\&quot;errmsg\&quot;:\&quot;empty post data hint: [wQL50963vr22]\&quot;}&quot;;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(value.indexOf(&quot;errcode&quot;));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1485067108221" FOLDED="true" ID="ID_124980548" MODIFIED="1488858807670" TEXT="&#x591a;&#x516c;&#x4f17;&#x53f7;&#x81ea;&#x6d4b; &#x6d4b;&#x8bd5;&#x6570;&#x636e;">
<node CREATED="1485067125884" FOLDED="true" ID="ID_533709992" MODIFIED="1486709981871" TEXT="c -&gt; b shopid?casherid?cashername?">
<node CREATED="1485072014651" FOLDED="true" ID="ID_995224267" MODIFIED="1486365095600" TEXT="http://devwap.wowotuan.com/CreateQCode/Create?shopid=8005669&amp;cashierid=23272&amp;cashierName=wxz01">
<node BACKGROUND_COLOR="#ffcccc" CREATED="1485076723548" ID="ID_836752749" MODIFIED="1485077088835">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#26159;189&#30340;&#22810;&#20027;&#20307;&#38376;&#24215;&#65292; c-&gt;b&#27979;&#35797;&#65292;&#31532;&#19968;&#27425;&#35843;frontserver&#27491;&#30830;&#36820;&#22238;&#20102;&#38376;&#24215;&#26159;isDirect=1&#65292;&#19988;&#30456;&#20851;&#30340;subSupplierId,subAppid&#37117;&#36820;&#22238;&#20102;&#65292;&#20294;&#20013;&#38388;&#29615;&#33410;&#21518;&#65292;&#31532;&#20108;&#27425;&#35843;&#29992;frontserver &#19979;&#21333;&#26102;&#65292;paytype=15&#20102;&#65292;&#36208;&#20102;&#29616;&#22312;&#25903;&#20184;&#36890;&#36947;&#32780;&#23384;&#20837;md_order_info&#37324;&#30340;&#20063;pay_id&#21464;&#25104;&#20102;b&#25195;c&#30340;17...&#65292;&#24847;&#21619;&#30528;&#22810;&#20027;&#20307;&#36890;&#36947;&#26681;&#26412;&#27809;&#26377;&#36208;&#21040;&#65292;&#21478;&#22806;&#65292;&#22810;&#20844;&#20247;&#21495;&#36890;&#36947;paytype&#24517;&#39035;&#22312;newwap&#20013;&#35774;&#32622;&#20998;&#25903;&#65292;&#25152;&#20197;&#65292;&#22810;&#20844;&#20247;&#21495;&#30340;&#27979;&#35797;&#36824;&#19981;&#25104;&#31435;&#65292;&#33267;&#23569;newwap&#36825;&#36793;&#36824;&#26377;&#38382;&#39064;&#65292;&#30830;&#20445;paytype&#35774;&#32622;&#27491;&#30830;&#65292;&#30830;&#31435;&#22914;&#20309;&#35774;&#32622;&#36923;&#36753;&#65292;&#26159;&#20860;&#23481;&#29616;&#22312;&#25903;&#20184;&#65292;&#36824;&#26159;&#30452;&#25509;hardcode&#22312;newwap&#37324;&#26032;&#30340;paytype
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1485067142431" FOLDED="true" ID="ID_1586351130" MODIFIED="1486709979646" TEXT="b -&gt; c &#x9700;&#x8981;&#x8054;&#x8c03;&#x73af;&#x5883;b&#x7aef; &#x53ea;&#x80fd;android&#x7248;&#xff1f;">
<node CREATED="1485068397074" ID="ID_265518520" MODIFIED="1485069013495">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35753;&#19990;&#36745;&#24110;&#30528;&#23433;&#35013;&#20102;&#19968;&#20010;&#24320;&#21457;&#29256;&#30340;b&#31471;&#65292;&#20877;&#22312;189&#30340;wowostore&#24211;&#30340;<b><font color="#cc0099">bee_login_info</font></b>&#34920;&#25353;id&#20498;&#24207;&#25490;&#21462;&#19968;&#20010;loginname[<b><font color="#009966">real_id</font><font color="#ff9933">&#20026;shopid[&#24403;real_id=shopid&#19988;type=0&#65292;&#37027;&#20010;id&#25165;&#26159;&#25910;&#38134;&#21592;&#30340;id&#65292;&#36825;&#26679;&#26080;&#38656;&#20877;&#26597;sh_shop&#34920;&#65292;&#26597;&#20063;&#26159;&#39564;&#35777;&#19968;&#19979;</font></b>],<b><font color="#009966">loginname</font></b>&#20026; cashiername],pwd&#21363;&#21487;&#30331;&#24405;&#21830;&#23478;&#21518;&#21488;&#12290;&#30331;&#24405;&#21830;&#23478;&#21518;&#21488;&#21518;&#65292;&#20877;&#26681;&#25454;&#38376;&#24215;&#21517;&#31216;&#25628;&#32034;189&#24211;<b><font color="#cc0099">sh_shop</font></b>&#33719;&#21462;<b><font color="#009966">shopid</font></b>&#65292;&#36825;&#26679;&#25903;&#20184;&#27979;&#35797;&#30340;&#19977;&#20010;&#20851;&#38190;&#21442;&#25968;&#20840;&#37096;&#21462;&#21040;&#65292;cashierid,shopid,cashiername
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1485055629220" ID="ID_1546341522" MODIFIED="1490689621412" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      2017&#24180;
    </p>
  </body>
</html></richcontent>
<node CREATED="1486346242943" FOLDED="true" ID="ID_1978367943" MODIFIED="1490602370537" TEXT="&#x4e8c;&#x6708;">
<node CREATED="1486346252536" FOLDED="true" ID="ID_534907974" MODIFIED="1490602366944" TEXT="6&#x53f7;">
<node CREATED="1486346261133" ID="ID_1967755078" MODIFIED="1486351170203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#21333;bug&#25490;&#26597;
    </p>
  </body>
</html></richcontent>
<node CREATED="1486347072316" ID="ID_1921029516" MODIFIED="1486347821130">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21407;&#22240;&#25214;&#21040;&#65306;&#26368;&#21518;&#19968;&#27493;&#20889;&#20837;md_order_refund&#34920;&#26102;&#65292;refund_opt&#23383;&#27573;&#22826;&#30701;(16)&#23548;&#33268;&#24322;&#24120;&#65292;&#24182;&#22238;&#28378;&#65292;&#20294;mdpaygate&#31532;&#19977;&#26041;&#36864;&#27454;&#26080;&#27861;&#22238;&#28378;&#12290;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1921029516" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1448575850" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1921029516" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1448575850" SOURCE="ID_1921029516" STARTARROW="None" STARTINCLINATION="0;0;"/>
</node>
</node>
<node CREATED="1486376087892" ID="ID_1829784375" MODIFIED="1486376112385" TEXT="&#x660e;&#x5929;&#x8ba1;&#x5212;&#x8054;&#x8c03;&#x591a;&#x516c;&#x4f17;&#x53f7;"/>
</node>
<node CREATED="1486445677007" FOLDED="true" ID="ID_5512492" MODIFIED="1490602368969" TEXT="7&#x53f7;">
<node CREATED="1486445691651" ID="ID_1001683521" MODIFIED="1486445772154">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32852;&#35843;&#29615;&#22659;189&#24211;mdorder&#37197;&#32622;md_order_conf&#65292;&#40664;&#35748;id=6&#30340;key,pid&#37319;&#29992;mdpaygate&#39033;&#30446;&#20013;&#29616;&#22312;&#25903;&#20184;&#30340;liantiao profile&#20013;&#30340;&#20540;&#36827;&#34892;&#37197;&#32622;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486451217853" ID="ID_1292497020" MODIFIED="1486459370071">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;c-&gt;b&#65292;&#32570;&#23569;&#22312;TradeDomainRepository.createTradeDomain&#20013;&#37197;&#32622;&#22238;&#35843;&#22320;&#22336;branch...notifyurl
    </p>
    <p>
      
    </p>
    <p>
      c-&gt;b&#35843;&#36890;&#65281;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1292497020" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_68695604" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1292497020" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_68695604" SOURCE="ID_1292497020" STARTARROW="None" STARTINCLINATION="0;0;"/>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1486517298575" FOLDED="true" ID="ID_391680211" MODIFIED="1488858670390" TEXT="8&#x53f7;">
<node CREATED="1486517309233" ID="ID_979199120" MODIFIED="1486520023663">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26152;&#22825;c-&gt;b&#30340;&#22238;&#35843;&#36890;&#30693;&#22788;&#29702;&#20854;&#23454;&#26159;&#22833;&#36133;&#30340;&#65292;&#26089;&#19978;&#20462;&#27491;&#20102;&#37096;&#20998;&#36923;&#36753;&#65292;&#20170;&#22825;&#24212;&#35813;&#32487;&#32493;&#27979;&#19968;&#27425;
    </p>
    <p>
      
    </p>
    <p>
      &#24517;&#39035;&#26597;&#21040;md_order_info&#30456;&#24212;&#35746;&#21333;&#30340;<font color="#006600">pay_status=2&#19988;order_status=5(&#32465;&#23450;&#29992;&#25143;&#25104;&#21151;)</font>&#25165;&#31639;&#25104;&#21151;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486519506543" ID="ID_1846859441" MODIFIED="1487732753314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;
    </p>
    <p>
      c -&gt;b&#20108;&#32500;&#30721;&#27979;&#35797;&#22270;&#65292;&#21487;&#29992;&#24494;&#20449;&#30452;&#25509;&#25195;&#30721;&#27979;&#35797;
    </p>
  </body>
</html></richcontent>
<node CREATED="1486519541954" ID="ID_247414303" MODIFIED="1487226699301" TEXT="&#x9ed8;&#x8ba4;6">
<node CREATED="1486519572399" ID="ID_1210796539" MODIFIED="1486519585691">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;ctob&#x6d4b;&#x8bd5;&#x7528;&#x4e8c;&#x7ef4;&#x7801;&#x56fe;/63&#x591a;&#x8d26;&#x53f7;&#x9ed8;&#x8ba4;&#x914d;&#x7f6e;8000482.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1486519567022" ID="ID_109955729" MODIFIED="1487226697708" TEXT="&#x9ed8;&#x8ba4;1">
<node CREATED="1486519588634" ID="ID_950177361" MODIFIED="1486519594085">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;ctob&#x6d4b;&#x8bd5;&#x7528;&#x4e8c;&#x7ef4;&#x7801;&#x56fe;/63&#x591a;&#x8d26;&#x53f7;&#x914d;&#x7f6e;408648.png" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1486534890361" ID="ID_787599468" MODIFIED="1486537387354">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c-&gt;b&#20462;&#25913;&#20102;&#33509;&#24178;&#22788;&#25165;&#35843;&#36890;&#65281;
    </p>
    <ul>
      <li>
        mdpaygate\domain\utils\<b><font color="#009999">PublicConfig.java</font></b>&#20013;&#22686;&#21152;&#20102;&#22810;&#20844;&#20247;&#21495;&#19987;&#38376;&#30340;<b><font color="#006600">&#22238;&#35843;&#22320;&#22336;</font></b>
      </li>
      <li>
        mdpaygate\domain\repository\<b><font color="#009999">TradeDomainRepository.java</font></b>&#20013;&#22686;&#21152;&#20102;&#35774;&#32622;c&#25195;b&#30340;&#22238;&#35843;&#22320;&#22336;&#21040;tradedomain&#65281;
      </li>
      <li>
        mdpaygate\service\impl\<b><font color="#009999">TradeServiceImpl.java</font></b>&#20462;&#25913;&#20102;&#20174;tradedomain<b><font color="#009999">DB</font></b>&#20013;&#25552;&#21462;shopid
      </li>
      <li>
        mdpaygate\service\impl\<b><font color="#009999">TradeServiceImpl.java</font></b>&#20462;&#25913;&#36861;&#21152;<font color="#006600">shopcenterservice</font>&#23454;&#20363;&#21270;
      </li>
      <li>
        mdpaygate\event\handle\<b><font color="#009999">PayEventHandle.java</font></b>&#20013;&#36861;&#21152;<font color="#0000cc">paymenttype,paymentdesc</font>&#20004;&#20010;&#21442;&#25968;&#30340;&#35774;&#32622;
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486537434043" ID="ID_1737590813" LINK="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;btoc&#x6d4b;&#x8bd5;&#x5de5;&#x5177;/ForLT/Debug/CommonSDKRun.exe" MODIFIED="1487898374787" TEXT="&#x591a;&#x516c;&#x4f17;&#x53f7;b-&gt;c&#x6d4b;&#x8bd5;&#x5de5;&#x5177;"/>
<node CREATED="1486537948960" ID="ID_143840997" MODIFIED="1486539713393">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37197;&#32622;&#22810;&#20844;&#20247;&#21495;&#26597;&#35810;&#25903;&#20184;&#32467;&#26524;&#20316;&#19994;&#65292;&#24050;&#23436;&#25104;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486547819780" ID="ID_285688168" MODIFIED="1486547920871">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b&#25195;c&#21644;c&#25195;b&#29992;&#30340;&#26159;&#19981;&#21516;&#30340;partnerid
    </p>
    <ul>
      <li>
        &#21363;&#19981;&#21516;&#19994;&#21153;&#19981;&#21516;&#30340;partnerid&#65292;&#36825;&#19968;&#22359;&#35201;&#20462;&#25913;&#65281;
      </li>
      <li>
        &#28041;&#21450;&#21047;&#37197;&#32622;&#19994;&#21153;&#65292;&#28041;&#21450;&#37197;&#32622;&#25968;&#25454;&#24211;&#21152;&#23383;&#27573;partnerid_b_c
      </li>
      <li>
        &#28041;&#21450;&#20462;&#25913;&#30456;&#20851;&#20195;&#30721;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1486548015116" ID="ID_1505827083" MODIFIED="1486548309351">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      b-&gt;c&#65292;&#35843;&#35797;&#36807;&#31243;&#20013;&#21457;&#29616;&#38656;&#35201;&#36739;&#22823;&#35843;&#25972;
    </p>
    <ul>
      <li>
        mdfrontserver\domain\OrderPayDomain.java&#65292;&#20462;&#22797;return &#20301;&#32622;&#19981;&#23545;&#30340;bug
      </li>
      <li>
        mdpaygate&#65292;&#20462;&#22797;branchtonowpayquerypaystatustask&#26410;&#23454;&#20363;&#21270;&#30340;bug
      </li>
      <li>
        mdpaygate&#30340;tradevo&#36861;&#21152;toString&#26085;&#24535;&#20449;&#24687;
      </li>
      <li>
        mdpaygate\service\impl\TradeServiceImpl.java&#65292;&#20013;&#36861;&#21152;&#26080;&#38656;&#21028;&#26029;&#36229;&#26102;&#30340;&#25903;&#20184;&#31867;&#22411;&#65292;&#20063;&#23601;&#26159;&#22810;&#20844;&#20247;&#21495;b&#25195;c
      </li>
      <li>
        b&#25195;c&#30340;&#22788;&#29702;&#23545;&#35937;&#21152;&#20837;&#23383;&#20856;&#20013;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1486605352707" FOLDED="true" ID="ID_523259066" MODIFIED="1488867210827" TEXT="9&#x53f7;">
<node CREATED="1486605365035" ID="ID_1388348165" MODIFIED="1486605499554">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21327;&#26597;&#35746;&#21333;&#65292;&#30830;&#23450;&#23545;&#26041;&#26381;&#21153;&#22120;&#24537;&#65292;&#36820;&#22238;null&#65292;&#23548;&#33268;&#23545;&#26041;&#37027;&#26597;&#19981;&#21040;&#35746;&#21333;&#65292;&#25105;&#20204;&#36825;&#36793;&#26080;&#27861;&#27491;&#24120;&#19979;&#21333;&#12290;
    </p>
    <p>
      &#37319;&#29992;&#24605;&#36335;&#65292;&#30001;&#20110;&#24322;&#27493;&#26597;&#35810;&#26085;&#24535;&#24222;&#22823;&#65292;&#22914;&#26524;&#37117;&#38598;&#20013;&#22312;&#19968;&#21488;&#26381;&#21153;&#22120;&#20250;&#23548;&#33268;&#26080;&#27861;&#30475;&#21040;&#19979;&#21333;&#26085;&#24535;&#65292;&#27492;&#26102;&#65292;&#38656;&#35201;&#25968;&#25454;&#24211;&#25214;&#21040;&#19979;&#21333;&#26102;&#38388;&#65292;&#21033;&#29992;&#27491;&#21017;&#31934;&#30830;&#26597;&#21040;&#19979;&#21333;&#26085;&#24535;
    </p>
    <p>
      find .|grep&#160;&#160;default.log.20170208|xargs cat|grep <b><font color="#0099cc">-E&#160; &quot;2017-02-08 19:36:.*?Z170208516483&quot;</font></b>&#160;-C 6&#160;&#160;&#160;--color=auto
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486619591041" ID="ID_1534470072" MODIFIED="1486619671289" TEXT="&#x540c;&#x6837;&#x7b80;&#x5355;&#x4fee;&#x6539;PayEventHandle.java&#x7684;&#x679a;&#x4e3e;&#x6761;&#x4ef6;&#xff0c;b&#x626b;c&#x670d;&#x52a1;&#x7aef;&#x901a;&#x8fc7;&#xff0c;&#x4f46;wap&#x7aef;&#x672a;&#x901a;&#x8fc7;"/>
<node CREATED="1486622834988" FOLDED="true" ID="ID_42208994" MODIFIED="1486636108241">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#27454;&#65292;&#33258;&#21160;&#34917;&#21333;&#65292;&#26597;&#35810;&#37117;&#36824;&#27809;&#27979;&#65292;&#20808;&#24320;&#25630;unionid&#30340;&#20107;&#65311;
    </p>
    <p>
      &#20808;&#25214;&#21040;&#20462;&#25913;&#28857;&#65292;&#28982;&#21518;&#26803;&#29702;&#27969;&#31243;&#65292;&#28982;&#21518;&#32487;&#32493;&#32852;&#35843;&#27979;&#35797;&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1486625410584" ID="ID_287322154" MODIFIED="1486631144856">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20165;&#38480;&#20110;b&#25195;c&#29615;&#33410;&#65292;&#22240;&#20026;&#27492;&#26102;&#36824;&#26410;&#21019;&#24314;&#29992;&#25143;&#65292;&#26159;&#20808;&#25903;&#20184;&#25104;&#21151;&#21518;&#65292;&#22312;&#21518;&#32493;&#22788;&#29702;&#29615;&#33410;&#20013;&#27880;&#20876;&#26032;&#29992;&#25143;&#65292;&#27492;&#26102;&#35201;&#29992;&#21040;unionid&#26469;&#27880;&#20876;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#22312;mdpaygate&#20013;&#25628;<b><font color="#0066ff">tryGetRegLoginBYOpenIdInfo</font></b>&#65292;&#21363;&#21487;&#30693;&#36947;
    </p>
    <p>
      
    </p>
    <p>
      &#28155;&#21152;&#23436;&#25104;unionid&#36923;&#36753;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000">&#39069;&#22806;&#25552;&#37266;&#65292;&#38656;&#35201;&#37197;&#32622;&#25552;&#21462;unionid url&#37197;&#32622;&#21040;&#65292;&#30456;&#20851;mdpaygate&#26381;&#21153;&#22120;&#33021;&#25214;&#21040;&#30456;&#24212;&#22495;&#21517;&#25165;&#21487;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486636083844" ID="ID_1385283276" MODIFIED="1486636107273" TEXT="&#x6682;&#x65f6;b-&gt;c&#x53c8;&#x4e0d;&#x901a;&#x4e86;&#xff0c;&#x6240;&#x8c13;dubbo&#x4e0d;&#x901a;&#xff0c;&#x660e;&#x5929;&#x7ee7;&#x7eed;"/>
</node>
</node>
<node CREATED="1486706301895" FOLDED="true" ID="ID_1465197740" MODIFIED="1489134548159" TEXT="10&#x53f7;">
<node CREATED="1486706326551" ID="ID_976232392" MODIFIED="1486720193027">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c-&gt;b&#65292;&#31532;&#20108;&#20010;&#38376;&#24215;&#19968;&#30452;&#19981;&#36890;
    </p>
    <p>
      b-&gt;c&#65292;&#20462;&#25913;&#20102;&#33719;&#21462;unionid&#36923;&#36753;&#65292;&#20294;&#30446;&#21069;&#19981;&#36890;
    </p>
    <p>
      &#19978;&#21320;&#20462;&#22797;&#32534;&#35793;&#38169;&#35823;&#36873;&#39033;
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#20004;&#20010;&#38382;&#39064;&#37117;&#27809;&#35299;&#20915;&#65292;&#20294;&#32534;&#30721;&#23436;&#25104;&#65292;asynctask&#26159;&#27491;&#24120;&#36816;&#20316;&#30340;&#65292;&#19979;&#21608;&#19977;&#22238;&#26469;&#65292;&#25630;&#23450;&#36864;&#27454;&#31561;&#27979;&#35797;&#21363;&#21487;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      unionid&#35843;&#36890;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486720129171" ID="ID_917560797" MODIFIED="1486720174939">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#ff0000">&#36864;&#27454;&#30340;&#31867;&#20570;&#20102;&#65292;&#20294;task job&#31867;&#27809;&#20570;&#65292;&#30456;&#24212;&#30340;jobcenter&#26410;&#37197;&#65292;&#19979;&#21608;&#19977;&#35299;&#20915;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486720249919" ID="ID_526164939" MODIFIED="1486720326532">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#29992;b&#31471;&#24320;&#21457;&#32852;&#35843;&#29615;&#22659;&#65292;&#29992;&#36134;&#21495;<b><font color="#0000ff">18613864479/123456</font></b>&#30331;&#24405;&#21363;&#21487;&#27979;&#35797;&#40664;&#35748;&#38376;&#24215;&#30340;&#36864;&#27454;(b-&gt;c/c-&gt;b)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487120013778" FOLDED="true" ID="ID_503318129" MODIFIED="1487641135403" TEXT="15&#x53f7;">
<node CREATED="1487120025126" ID="ID_849952531" MODIFIED="1487120037032" TEXT="&#x9000;&#x6b3e;&#x90e8;&#x5206;&#x7684;task&#x7f16;&#x7801;"/>
<node CREATED="1487141964070" ID="ID_1322410227" MODIFIED="1487142017246">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21327;&#26597;&#24179;&#34892;&#29615;&#22659;&#65292;redis&#20869;&#23384;&#19981;&#22815;&#65292;&#24352;&#39134;&#36890;&#36807;&#31471;&#21475;&#26597;&#21040;&#21482;&#20998;&#37197;&#20102;50&#20806;&#20869;&#23384;&#65292;&#30446;&#21069;&#25913;&#20026;500&#20806;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487154569678" ID="ID_1197792474" MODIFIED="1487154581452" TEXT="&#x660e;&#x5929;&#x5b8c;&#x6210;&#x9000;&#x6b3e;&#x67e5;&#x8be2;&#x548c;&#x81ea;&#x6d4b;"/>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1487213817695" ID="ID_1056410042" MODIFIED="1489550349588" TEXT="16&#x53f7;">
<node CREATED="1487213829353" ID="ID_897955836" MODIFIED="1487216467224">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36864;&#27454;&#26597;&#35810;&#65292;&#36864;&#27454;&#36890;&#30693;&#37117;&#24050;&#23436;&#25104;&#65292;&#24453;&#19979;&#21320;&#23553;&#35013;&#21040;&#36864;&#27454;&#20219;&#21153;&#24182;&#37096;&#32626;&#21040;jobcenter&#20013;
    </p>
    <p>
      
    </p>
    <p>
      &#36864;&#27454;&#36890;&#30693;&#23454;&#38469;&#26159;&#36890;&#36807;addQueue&#26469;&#23436;&#25104;&#12290;
    </p>
    <p>
      &#36890;&#36807;mdtradecenter.55tuan.me:9022/refundCallback.do&#26469;&#36890;&#30693;&#21047;&#24211;&#30340;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487226044112" ID="ID_75595169" MODIFIED="1487226060533" TEXT="&#x7f16;&#x7801;&#x5b8c;&#x6210;&#xff0c;&#x5f85;&#x6d4b;&#x8bd5;&#x8054;&#x8c03;"/>
<node CREATED="1487227476281" ID="ID_785649885" MODIFIED="1487227504589">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      FROM_UNIXTIME(add_time/1000,'%Y-%m-%d %T')
    </p>
    <p>
      &#36716;&#25442;&#25968;&#25454;&#24211;&#26102;&#38388;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ccccff" CREATED="1487302487680" FOLDED="true" ID="ID_1090779194" MODIFIED="1489546332275" TEXT="17&#x53f7;">
<node CREATED="1487303040770" ID="ID_1724635969" MODIFIED="1487303084479" TEXT="&#x6d4b;&#x8bd5;c-&gt;b/b-&gt;c&#x90fd;&#x5df2;&#x7ecf;&#x901a;&#x8fc7;&#xff0c;&#x6570;&#x636e;&#x5e93;&#x72b6;&#x6001;&#x4e5f;&#x5bf9;&#xff0c;&#x5f85;&#x6d4b;&#x9000;&#x6b3e;"/>
<node CREATED="1487302498905" ID="ID_788426385" MODIFIED="1487302562584">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      #&#26597;&#38376;&#24215;&#36134;&#21495;&#30340;&#29992;&#25143;&#21517;&#23494;&#30721;<br />selecT&#160;*&#160;from&#160;wowostore.bee_login_info&#160;b&#160;where&#160;b.real_id=8000482&#160;and&#160;b.type=0;<br /><br />#&#26597;&#21830;&#25143;&#36134;&#21495;&#30340;&#29992;&#25143;&#21517;&#23494;&#30721;<br />selecT&#160;*&#160;from&#160;wowostore.bee_login_info&#160;b&#160;where&#160;b.real_id=8000482&#160;and&#160;b.type=3;<br />
    </div>
    <p>
      
    </p>
    <p>
      &#26597;&#35810;&#38376;&#24215;&#23545;&#24212;&#30340;b&#31471;&#36134;&#21495;&#23494;&#30721;&#65292;8000482&#38376;&#24215;&#23545;&#24212;&#30340;&#26159;anduo1/123456
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487302834710" ID="ID_1721746578" MODIFIED="1487302981285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#21069;&#30331;&#24405;b&#31471;&#27979;&#35797;&#36864;&#27454;&#19981;&#30021;&#36890;,&#22240;&#20026;b&#31471;&#30028;&#38754;&#19981;&#26174;&#31034;&#24403;&#22825;&#35746;&#21333;...&#24453;b&#31471;&#35299;&#20915;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487303856173" ID="ID_109183807" MODIFIED="1487303917725">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;&#26032;&#22686;&#27169;&#22359;
    </p>
    <p>
      
    </p>
    <p>
      &#19977;&#20010;jobcenter&#65292;mdfrontserver/mdpaygate&#20004;&#20010;&#21069;&#31471;&#24212;&#29992;&#65292;&#20351;&#29992;&#20102;10771&#30340;redis
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487313902812" ID="ID_25748579" MODIFIED="1487313925824">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      select shop_name,shop_id,order_id,<font color="#6666ff">FROM_UNIXTIME(add_time/1000,'%Y-%m-%d %T') as addtime</font>,order_status,pay_status from md_order_info order by order_id desc limit 100
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1487321280889" ID="ID_1545312740" MODIFIED="1487321407676">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26356;&#21512;&#36866;&#30340;&#21305;&#37197;&#26597;&#35810;
    </p>
    <p>
      find . -regex &quot;.*\(\.log\)$&quot;|xargs cat|grep Z1702171004|sort -k 2|grep Z1702171004 --color=auto
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487322575405" ID="ID_797921663" MODIFIED="1487322645133">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20934;&#22791;&#30452;&#25509;&#19978;&#24120;&#35268;&#29615;&#22659;(&#20134;&#21363;&#27979;&#35797;&#29615;&#22659;&#65292;&#23545;&#24212;<b>jenkins&#37324;&#30340;<font color="#6666ff">&#24120;&#35268;JAVA</font></b>)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487552505405" FOLDED="true" ID="ID_913379437" MODIFIED="1488440242392" TEXT="20&#x53f7;">
<node CREATED="1487552524938" ID="ID_1461319852" MODIFIED="1487552548386" TEXT="&#x51c6;&#x5907;&#x5728;&#x5e38;&#x89c4;&#x73af;&#x5883;&#x6d4b;&#x8bd5;&#x9000;&#x6b3e;"/>
<node CREATED="1487554176215" ID="ID_669998585" MODIFIED="1487554212596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20844;&#21496;jenkins&#65292;&#31649;&#29702;&#21592;&#36134;&#21495;&#23494;&#30721; zhangfei/passwd123
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487554766924" FOLDED="true" ID="ID_764099303" MODIFIED="1488440241192">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24120;&#35268;&#27979;&#35797;&#29615;&#22659;&#37096;&#32626;
    </p>
    <p>
      
    </p>
    <p>
      &#19968;&#33324;&#37117;&#37319;&#29992; ssh&#160;&#160;root@.....&#30331;&#24405;&#65292;&#23494;&#30721;wowonetwork
    </p>
  </body>
</html></richcontent>
<node CREATED="1487554777965" ID="ID_1331767945" MODIFIED="1487556264637" TEXT="mdfrontserver">
<node CREATED="1487555582791" ID="ID_1655102294" MODIFIED="1487555636332" TEXT="jenkins&#x4fee;&#x6539;&#x5e38;&#x89c4;JAVA&#x7684;mdpaygate&#x7684;&#x7f16;&#x8bd1;&#x5206;&#x652f;&#x4e3a;:feature/multi-msh..."/>
<node CREATED="1487555655200" ID="ID_1895057648" MODIFIED="1487555673035" TEXT="&#x5bf9;&#x5e94;&#x670d;&#x52a1;&#x5668;&#x4e3a;10.8.210.118"/>
</node>
<node CREATED="1487554784638" ID="ID_812330835" MODIFIED="1487556266259" TEXT="mdpaygate">
<node CREATED="1487555478420" ID="ID_1734603517" MODIFIED="1487555575798">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20462;&#25913;&#20102;profile/env.properties.test&#25991;&#20214;&#65292;&#22686;&#21152;
    </p>
    <p>
      #&#26032;&#28155;&#21152;&#32993;&#27491;&#21462;unionid&#22320;&#22336;
    </p>
    <p>
      getweixinuionidurl=http://<b><font color="#0033ff">cgsh</font></b>.wowotuan.com/weixin/GetUnionidsByOpenids4BC?cmd=wowo123
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487555582791" ID="ID_1671468341" MODIFIED="1487555636332" TEXT="jenkins&#x4fee;&#x6539;&#x5e38;&#x89c4;JAVA&#x7684;mdpaygate&#x7684;&#x7f16;&#x8bd1;&#x5206;&#x652f;&#x4e3a;:feature/multi-msh..."/>
<node CREATED="1487555678852" ID="ID_1016861747" MODIFIED="1487555703347" TEXT="&#x5bf9;&#x5e94;&#x670d;&#x52a1;&#x5668;&#x4e3a;10.9.28.109"/>
</node>
<node CREATED="1487554789800" ID="ID_390186370" MODIFIED="1487554797794" TEXT="jobcenter&#x914d;&#x7f6e;">
<node CREATED="1487556319905" ID="ID_996043691" MODIFIED="1487556742408">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19977;&#20010;mdpaygate&#30340;jobcenter
    </p>
    <p>
      
    </p>
    <p>
      http://....:<b><font color="#0033ff">9040</font></b>/job/notify.do
    </p>
  </body>
</html></richcontent>
<node CREATED="1487556335154" ID="ID_210873272" MODIFIED="1487556562686">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;&#36864;&#27454;&#36890;&#30693;: branchtonowpayRefundTask
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487556349213" ID="ID_463919377" MODIFIED="1487556529606">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495;&#26597;&#35810;&#29616;&#22312;&#25903;&#20184;&#25509;&#21475;: branchtonowpayAsyncQueryStatusTask
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487556381164" ID="ID_1637270340" MODIFIED="1487556440575">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23450;&#26102;&#26356;&#26032;&#22810;&#20844;&#20247;&#21495;&#37197;&#32622;&#20449;&#24687;: pickPayArgTask
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1487554800898" ID="ID_1697930008" MODIFIED="1487557085991">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25968;&#25454;&#24211;&#24314;&#34920;
    </p>
    <p>
      
    </p>
    <p>
      &#29992;&#30340;&#25968;&#25454;&#24211;&#26381;&#21153;&#22120;&#26159;: 10.8.210.34&#160;&#160;deployment/123456
    </p>
  </body>
</html></richcontent>
<node CREATED="1487557627860" ID="ID_1619238395" MODIFIED="1487557685999" TEXT="&#x5c06;189&#x5e93;&#x7684;md_paygate_conf&#x8868;&#x5bfc;&#x51fa;dump/&#x5bfc;&#x5165;dump&#x6a21;&#x5f0f;&#x5bfc;&#x5165;&#x5230;34&#x7684;mdorder&#x5e93;&#x91cc;"/>
<node CREATED="1487561680063" ID="ID_1292833882" MODIFIED="1487561746459" TEXT="&#x5c06;189&#x5e93;wowostore&#x7684;sh_shop_payconfig&#x8868;&#x5bfc;&#x51fa;dump/&#x5bfc;&#x5165;dump&#x5bfc;&#x5165;&#x5230;34&#x7684;wowostore&#x5e93;&#x91cc;"/>
</node>
<node CREATED="1487562516009" ID="ID_1417516283" MODIFIED="1487562534917" TEXT="shshopcenter2 &#x90e8;&#x7f72;">
<node CREATED="1487570505352" ID="ID_90262225" MODIFIED="1487570546797" TEXT="jenkins&#x4fee;&#x6539;&#x5e38;&#x89c4;JAVA&#x7684;shopcenter2&#x5206;&#x652f;&#x4e3a;&#xff1a;dev_multiNumber"/>
<node CREATED="1487570552176" ID="ID_959075475" MODIFIED="1487570567133" TEXT="&#x5bf9;&#x5e94;&#x670d;&#x52a1;&#x5668;&#x4e3a;10.9.28.198"/>
</node>
<node CREATED="1487573304415" ID="ID_84732758" MODIFIED="1487573341167" TEXT="&#x5f85;&#x80e1;&#x6b63;&#x7684;newwap&#x66f4;&#x65b0;&#xff0c;&#x6d4b;&#x8bd5;&#x8d26;&#x53f7;&#x914d;&#x7f6e;&#x66f4;&#x65b0;">
<node CREATED="1487573343453" ID="ID_1075965333" MODIFIED="1487573352304" TEXT="&#x65b0;&#x7684;newwap&#x7f51;&#x5740;"/>
<node CREATED="1487573353959" ID="ID_915615614" MODIFIED="1487573362574" TEXT="&#x65b0;&#x7684;&#x591a;&#x516c;&#x4f17;&#x53f7;&#x4e8c;&#x7ef4;&#x7801;"/>
<node CREATED="1487573363698" ID="ID_1869465339" MODIFIED="1487573377982" TEXT="&#x65b0;&#x7684;b-&gt;c&#x6d4b;&#x8bd5;&#x5de5;&#x5177;"/>
<node CREATED="1487573379968" ID="ID_85540725" MODIFIED="1487573391702" TEXT="&#x65b0;&#x7684;&#x6d4b;&#x8bd5;&#x8d26;&#x53f7;&#x4e09;&#x4e2a;"/>
<node CREATED="1487573392645" ID="ID_1201923587" MODIFIED="1487573465654">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37325;&#28857;&#26159;&#36864;&#27454;&#65292;&#20170;&#22825;&#31245;&#21518;&#25419;&#19968;&#19979;&#27969;&#31243;
    </p>
    <p>
      &#21644;&#26410;&#26469;&#35268;&#21010;&#65292;&#20170;&#22825;&#19979;&#21320;&#27809;&#26377;&#20855;&#20307;&#24037;&#20316;&#20107;&#23452;&#20102;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1487635534967" FOLDED="true" ID="ID_924768754" MODIFIED="1488440237025" TEXT="21&#x53f7;">
<node CREATED="1487635543451" ID="ID_1959807118" MODIFIED="1487635560915" TEXT="&#x4e89;&#x53d6;&#x5f00;&#x59cb;&#x76f8;&#x5173;&#x6d4b;&#x8bd5;&#xff0c;&#x5c24;&#x5176;&#x662f;&#x9000;&#x6b3e;&#x6d4b;&#x8bd5;&#xff01;"/>
<node CREATED="1487641278387" ID="ID_755643024" MODIFIED="1487643507793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      shopcenter2&#30001;&#26044;&#22810;&#35370;&#21839;&#20102;&#19968;&#20491;mdorder&#24235;
    </p>
    <p>
      &#25152;&#20197;&#24517;&#38920;&#22312;resin.xml&#35023;&#37197;&#32622;&#30456;&#25033;&#30340;jndi&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487646370878" ID="ID_1674845370" MODIFIED="1487646412483" TEXT="&#x76ee;&#x524d;&#x5e38;&#x89c4;&#x73af;&#x5883;&#xff0c;&#x652f;&#x4ed8;&#x6b63;&#x5e38;&#x4f46;&#x5728;b&#x7aef;&#x770b;&#x4e0d;&#x5230;&#xff0c;queryOrderFavorableList"/>
<node CREATED="1487658605286" ID="ID_1167342643" MODIFIED="1487658643416" TEXT="&#x63d0;&#x8f66;&#xff0c;&#x591a;&#x4f59;&#x7684;&#x4fdd;&#x517b;&#xff0c;&#x61d2;&#x5f97;&#x770b;&#x7684;&#x6bdb;&#x75c5;&#x5bfc;&#x81f4;&#x7684;&#x5212;&#x75d5;&#x8ba9;&#x6211;&#x591a;&#x4ed8;&#x51fa;1400&#x591a;&#xff0c;&#x6d3b;&#x8be5;&#xff01;"/>
<node CREATED="1487658647947" ID="ID_128738944" MODIFIED="1487667228931">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#20960;&#22825;&#31354;&#38386;&#30340;&#35805;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#26803;&#29702;&#28165;&#26970;mdorder/mdpay&#20004;&#20010;&#24211;&#38388;&#30340;queue&#26725;&#26753;&#22788;&#29702;&#36923;&#36753;&#37096;&#20998;
      </li>
      <li>
        &#20197;&#21450;notifyserver&#22312;&#27969;&#31243;&#20013;&#30340;&#22788;&#29702;&#20219;&#21153;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1487668398853" ID="ID_262340664" MODIFIED="1487670403203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      notifyserver&#37325;&#21551;&#21518;&#65292;&#32852;&#35843;&#65292;&#24120;&#35268;&#27979;&#35797;&#65292;&#24179;&#34892;&#29615;&#22659;&#30340;b&#31471;&#37117;&#33021;&#27491;&#24120;&#26174;&#31034;&#20102;
    </p>
    <p>
      &#26126;&#22825;&#32487;&#32493;&#36864;&#27454;&#65292;&#22312;&#32852;&#35843;&#29615;&#22659;&#20808;&#27979;&#35797;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487722744092" FOLDED="true" ID="ID_449397764" MODIFIED="1488440234808" TEXT="22&#x53f7;">
<node CREATED="1487727119425" ID="ID_475203378" MODIFIED="1487729340753">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32852;&#35843;&#29615;&#22659;&#27979;&#35797;&#36864;&#27454;&#20840;&#37096;&#36890;&#36807;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#38376;&#24215;&#20026;shop_id
    </p>
    <p>
      &#21830;&#25143;&#20026;supplier_id
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487735162102" ID="ID_923970830" MODIFIED="1487735190302" TEXT="&#x8054;&#x8c03;&#x73af;&#x5883;&#x7684;&#x652f;&#x4ed8;&#x5b9d;c&#x626b;b&#x6d4b;&#x8bd5;&#x4e0d;&#x901a;&#x8fc7;&#xff0c;&#x63d0;&#x53d6;aliuserid&#x5931;&#x8d25;"/>
<node CREATED="1487735192336" ID="ID_1714623105" MODIFIED="1487735223895" TEXT="&#x4e0b;&#x5348;&#x8003;&#x8651;&#x5e38;&#x89c4;&#x6d4b;&#x8bd5;&#x73af;&#x5883;&#x6d4b;&#x8bd5;&#xff0c;&#x5305;&#x62ec;&#x5f00;&#x59cb;&#x6574;&#x7406;prod&#x6b63;&#x5f0f;&#x73af;&#x5883;&#x7684;&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#x4fee;&#x6539;"/>
</node>
<node CREATED="1487812356737" FOLDED="true" ID="ID_200417156" MODIFIED="1488443806448" TEXT="23&#x53f7;">
<node CREATED="1487812379180" ID="ID_101094017" MODIFIED="1488440245217">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24120;&#35268;&#29615;&#22659;ctob&#20108;&#32500;&#30721;
    </p>
    <p>
      
    </p>
    <p>
      &#25903;&#20184;&#36890;&#36942;
    </p>
    <p>
      &#36864;&#27454;&#26410;&#36890;&#36942;&#65306;&#35980;&#20284;&#29616;&#22312;&#25903;&#20184;&#38480;&#21046;&#20102;,&#29992;&#20102;&#21830;&#25143;&#36134;&#25143;&#65288;&#19981;&#26159;&#38376;&#24215;&#36134;&#25143;&#65289;&#27979;&#35797;&#65292;&#20173;&#28982;&#36820;&#22238;&#26159;&#28192;&#36947;&#26080;&#27861;&#35782;&#21035;&#65292;&#19979;&#29677;&#21069;&#35299;&#20915;&#20102;
    </p>
  </body>
</html></richcontent>
<node CREATED="1487818318663" ID="ID_1363676142" MODIFIED="1487818366028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <img src="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;&#x5e38;&#x89c4;&#x73af;&#x5883;ctob&#x4e8c;&#x7ef4;&#x7801;/8005817.png" />
      
    </p>
    <p>
      8005817
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487818327951" ID="ID_523598460" MODIFIED="1487818355829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <img src="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;&#x5e38;&#x89c4;&#x73af;&#x5883;ctob&#x4e8c;&#x7ef4;&#x7801;/8005869.png" />
      
    </p>
    <p>
      8005869
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487813400029" FOLDED="true" ID="ID_1716147189" LINK="2017/02/&#x591a;&#x516c;&#x4f17;&#x53f7;btoc&#x6d4b;&#x8bd5;&#x5de5;&#x5177;/ForCG/Debug/CommonSDKRun.exe" MODIFIED="1488443373762">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24120;&#35268;&#29615;&#22659;btoc&#24037;&#20855;
    </p>
    <p>
      
    </p>
    <p>
      &#25903;&#20184;&#25104;&#21151;&#65292;&#20294;&#21462;unionid&#24453;&#35299;&#20915;
    </p>
  </body>
</html></richcontent>
<node CREATED="1487832574477" ID="ID_668052749" MODIFIED="1487836142026">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#21069;&#25552;&#21462;unionid&#26377;&#38382;&#39064;&#65292;&#21518;&#32493;&#36824;&#35201;&#27979;&#29992;unionid&#32465;&#23450;&#35746;&#21333;
    </p>
    <p>
      
    </p>
    <p>
      &#21021;&#26399;&#26159;cgsh.wowotuan.com ping&#19981;&#36890;&#65292;&#21407;&#22240;&#19981;&#26126;&#65292;&#35980;&#20284;dns&#30340;&#38382;&#39064;
    </p>
    <p>
      &#21518;&#26469;dns&#36890;&#20102;&#65292;&#21017;&#36820;&#22238;41001&#30340;&#38169;&#35823;&#65292;&#24453;&#32993;&#27491;&#35299;&#20915;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487844830097" ID="ID_543305328" MODIFIED="1487844848967" TEXT="&#x4e0b;&#x73ed;&#x524d;&#x89e3;&#x51b3;&#x4e86;&#xff0c;&#x8c8c;&#x4f3c;&#x9519;&#x8bef;&#x7684;&#x8bbe;&#x7f6e;&#x4e86;&#x5b57;&#x6bb5;"/>
</node>
<node CREATED="1487820700470" ID="ID_886888859" MODIFIED="1487836176549" TEXT="&#x89e3;&#x51b3;&#x4e00;&#x5904;&#x5904;&#x7406;unionid&#x7684;bug"/>
<node CREATED="1487836217031" ID="ID_1052476389" MODIFIED="1487836233845" TEXT="&#x9762;&#x8bd5;2&#x4eba;&#xff0c;&#x90fd;&#x4e0d;&#x884c;"/>
</node>
<node CREATED="1487898475692" FOLDED="true" ID="ID_1905468183" MODIFIED="1488442898823" TEXT="24&#x53f7;">
<node CREATED="1487899005008" ID="ID_1138562475" MODIFIED="1487900243041">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22810;&#20844;&#20247;&#21495; java &#20132;&#26131;&#20013;&#24515; &#19978;&#32447;&#20869;&#23481;
    </p>
  </body>
</html></richcontent>
<node CREATED="1487899026047" ID="ID_907727768" MODIFIED="1487899226857" TEXT="mdfrontserver,mdpaygate&#x7684;war&#x5305;">
<node CREATED="1487899042338" ID="ID_550431138" MODIFIED="1487899061349" TEXT="&#x91cd;&#x70b9;&#x662f;prod&#x7684;profile&#x6587;&#x4ef6;&#x914d;&#x7f6e;&#x8981;&#x6b63;&#x786e;&#xff01;">
<node CREATED="1487899096471" ID="ID_1421299591" MODIFIED="1487899122429" TEXT="mdpaygate&#xff0c;&#x589e;&#x52a0;&#x4e86;getweixinunionidurl&#x914d;&#x7f6e;"/>
</node>
<node CREATED="1487899227950" ID="ID_145779720" MODIFIED="1487899245140" TEXT="mdfrontserver&#x914d;&#x7f6e;&#x6587;&#x4ef6;&#x65e0;&#x9700;&#x4fee;&#x6539;"/>
</node>
<node CREATED="1487899248041" ID="ID_1808235392" MODIFIED="1487899257968" TEXT="shopcenter2&#x7684;war&#x5305;">
<node CREATED="1487899261436" ID="ID_1365158484" MODIFIED="1487900147635">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      profile&#25991;&#20214;&#37197;&#32622;&#22686;&#21152;mdorder&#40664;&#35748;&#25968;&#25454;&#28304;&#65292;dataSourceMdOrder.jndi.master/slave_1
    </p>
    <p>
      
    </p>
    <p>
      &#38656;&#35201;&#22312;shopcenter2&#25152;&#22312;<b><font color="#cc00cc">resin.xml</font></b>&#20013;&#22686;&#21152;&#30456;&#24212;&#30340;<b><font color="#0033ff">jndi&#37197;&#32622;</font></b>&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487899445300" ID="ID_1339006789" MODIFIED="1487899482776">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20197;&#19978;&#19977;&#20010;&#39033;&#30446;&#21512;&#24182;&#21040;master&#24182;&#26412;&#22320;&#32534;&#35793;&#36890;&#36807;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487899782428" ID="ID_941251563" MODIFIED="1487899891609">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25968;&#25454;&#24211;mdorder&#22686;&#21152;md_paygate_conf&#34920;&#21644;sh_wowostore&#22686;&#21152;sh_shop_payconfig&#34920;
    </p>
    <p>
      
    </p>
    <p>
      &#36825;&#20004;&#24352;&#34920;&#37117;&#38656;&#20107;&#20808;&#20889;&#20837;&#21512;&#36866;&#30340;&#21021;&#22987;&#21270;&#25968;&#25454;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487900255173" ID="ID_799092456" MODIFIED="1487900349671">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20808;&#26399;&#19978;&#32447;&#21518;&#65292;&#30830;&#20445;&#29616;&#26377;&#25903;&#20184;&#20307;&#31995;&#27491;&#24120;&#65292;&#20877;&#32771;&#34385;&#21518;&#32493;&#19978;newwap&#37096;&#20998;
    </p>
    <p>
      
    </p>
    <p>
      &#27979;&#35797;&#21253;&#25324;&#28120;&#23453;/&#24494;&#20449;&#30340;c-&gt;b/b-&gt;c&#25903;&#20184;&#21644;&#30456;&#24212;&#36864;&#27454;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488153303832" FOLDED="true" ID="ID_1352612222" MODIFIED="1489134555583" TEXT="27&#x53f7;">
<node CREATED="1488164300776" ID="ID_1695625530" MODIFIED="1488164405121">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#32771;&#34385;&#20860;&#39038;&#36864;&#27454;&#26102;&#65292;&#38376;&#24215;&#19982;&#26368;&#21021;&#30340;&#25903;&#20184;&#37197;&#32622;&#24050;&#21464;&#26356;
    </p>
    <p>
      
    </p>
    <p>
      &#21518;&#32493;&#35201;&#20462;&#25913;&#20026;&#35746;&#21333;&#21644;&#25903;&#20184;&#37197;&#32622;&#23545;&#24212;&#20197;&#21033;&#20110;&#27491;&#30830;&#36864;&#27454;&#19981;&#21463;&#38376;&#24215;&#26356;&#25913;&#23545;&#24212;&#37197;&#32622;&#30340;&#25913;&#21160;
    </p>
    <p>
      
    </p>
    <p>
      &#26412;&#21608;&#35201;&#32771;&#34385;&#20195;&#37329;&#21048;&#21151;&#33021;&#65292;&#23436;&#20840;&#37325;&#26032;&#20570;&#65281;&#65292;&#20170;&#22825;&#20102;&#35299;&#19968;&#19979;mdtradecenter&#31867;&#65292;&#20027;&#35201;&#32467;&#31639;&#37096;&#20998;&#37325;&#28857;&#30475;&#21543;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488188585481" ID="ID_291577501" MODIFIED="1488188645242">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_order_info&#30340;payid&#23383;&#27573;&#20026;tinyint(3)&#65292;&#26368;&#22823;&#20540;&#20026;127&#65292;&#25152;&#20197;&#65292;610.810&#26080;&#27861;&#20889;&#20837;
    </p>
    <p>
      
    </p>
    <p>
      &#20195;&#30721;&#23618;&#25913;&#21160;&#22909;&#20102;&#65292;&#36991;&#20813;&#21047;&#24211;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488245202519" FOLDED="true" ID="ID_641048770" MODIFIED="1488533578670" TEXT="28&#x53f7;">
<node CREATED="1488245213781" ID="ID_701965697" MODIFIED="1488245267861">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30001;&#20110;mdpaygate&#30913;&#30424;&#28385;&#20102;&#65292;&#23548;&#33268;&#33258;&#21160;&#26500;&#24314;&#37096;&#32626;&#22833;&#36133;&#65292;&#36827;&#32780;&#23548;&#33268;&#27979;&#35797;&#19981;&#36890;&#36807;&#65292;&#24352;&#39134;&#28165;&#29702;&#30913;&#30424;&#37325;&#21551;&#21518;&#65292;&#24674;&#22797;&#27491;&#24120;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488247008632" ID="ID_49640180" MODIFIED="1488263267167">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20934;&#22791;&#21512;&#24182;mdfrontserver/mdpaygate&#30340;&#22810;&#20844;&#20247;&#21495;&#20998;&#25903;&#21040;master
    </p>
    <p>
      
    </p>
    <p>
      &#21512;&#24182;&#23436;&#25104;&#24182;&#24050;&#21457;&#37038;&#20214;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1488263290363" ID="ID_77840387" MODIFIED="1490862219221" TEXT="&#x4e09;&#x6708;">
<node CREATED="1488327375444" FOLDED="true" ID="ID_1181696664" MODIFIED="1490862211829" TEXT="1&#x53f7;">
<node CREATED="1488330317164" ID="ID_1944445185" MODIFIED="1488330338013" TEXT="&#x8865;&#x5355;&#xff0c;&#x9488;&#x5bf9;c-&gt;b&#xff0c;&#x9700;&#x8981;&#x719f;&#x6089;&#x8fd9;&#x6a21;&#x5757;">
<node CREATED="1488337111170" ID="ID_1511460283" MODIFIED="1488337141041" TEXT="budan,&#x4ec5;&#x4ec5;&#x662f;&#x90ae;&#x4ef6;&#x901a;&#x77e5;"/>
<node CREATED="1488337143621" ID="ID_787040259" MODIFIED="1488337159231" TEXT="autoBudan&#xff0c;&#x4f1a;&#x81ea;&#x52a8;&#x5237;&#x4e86;&#x6570;&#x636e;&#x5e93;">
<node CREATED="1488348630155" ID="ID_1431389377" MODIFIED="1488418020881" TEXT="&#x5237;&#x5e93;&#x5185;&#x5bb9;">
<node CREATED="1488337809677" ID="ID_300482094" MODIFIED="1488337834931">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_pay_trade&#34920;
    </p>
    <p>
      
    </p>
    <p>
      status =8 ,
    </p>
    <p>
      notify_status=0
    </p>
  </body>
</html></richcontent>
<node CREATED="1488339818458" ID="ID_565842096" MODIFIED="1488339917991">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      status&#30446;&#21069;&#27604;&#25968;&#25454;&#24211;&#35774;&#35745;&#26102;&#22810;&#20102;&#29366;&#24577;&#20540;<font color="#3333ff">&#160; 8 -- &#31561;&#24453;&#29992;&#25143;&#25903;&#20184;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1488350418444" ID="ID_141525982" MODIFIED="1488353957933">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20165;&#20165;&#38480;&#20110;b -&gt;c &#65292;&#36890;&#36807;&#26597;&#35810;&#29366;&#24577;&#20316;&#19994;&#26469;&#36890;&#36807;&#36827;&#34892;&#23436;&#25972;&#30340;&#19994;&#21153;&#22788;&#29702;&#27969;&#31243;&#26469;&#23436;&#25104;&#34917;&#21333;&#65281;
    </p>
    <p>
      &#23545;&#20110;c -&gt; b&#21017;&#26242;&#26102;&#19981;&#25903;&#25345;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488340210342" ID="ID_29464226" MODIFIED="1488340237679" TEXT="refund_status&#x76ee;&#x524d;&#x6bd4;&#x6570;&#x636e;&#x5e93;&#x8bbe;&#x8ba1;&#x65f6;&#x591a;&#x4e86;&#x72b6;&#x6001;&#x503c;">
<node CREATED="1488340289771" ID="ID_320688068" MODIFIED="1488340305847" TEXT="2 -- &#x9000;&#x6b3e;&#x5931;&#x8d25;"/>
<node CREATED="1488340307727" ID="ID_303779066" MODIFIED="1488340321406" TEXT="3 -- &#x9000;&#x6b3e;&#x6210;&#x529f;"/>
<node CREATED="1488340330129" ID="ID_1887271061" MODIFIED="1488340345182" TEXT="4 -- &#x9000;&#x6b3e;&#x4e2d;"/>
</node>
</node>
<node CREATED="1488337837750" ID="ID_1781873915" MODIFIED="1488337920941">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_order_info
    </p>
    <p>
      add_time = unix_timestamp()*1000
    </p>
    <p>
      bind_limit_time = unix_timestamp()*1000 + 15*60*1000
    </p>
    <p>
      order_status=5/update for order_status=3
    </p>
  </body>
</html></richcontent>
<node CREATED="1488349271132" ID="ID_410026717" MODIFIED="1488349379158" TEXT="order_status=3,&#x672a;&#x652f;&#x4ed8;&#x5df2;&#x8fc7;&#x671f;"/>
<node CREATED="1488349398745" ID="ID_355748275" MODIFIED="1488351607496">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      order_status=5,&#24050;&#32465;&#23450;&#29992;&#25143;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1488338476727" ID="ID_1385646847" MODIFIED="1488338629894">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      md_order_info
    </p>
    <p>
      
    </p>
    <p>
      jiesuan_amount &#65292;&#24212;&#35813;&#23601;&#26159;&#24212;&#20184;&#37329;&#39069;&#65311;
    </p>
    <p>
      order_amount&#65292;&#24212;&#20184;&#37329;&#39069;&#65292;&#21047;&#20026;0&#30340;&#21407;&#22240;&#24453;&#26597;
    </p>
    <p>
      bill_amount&#65292;&#35746;&#21333;&#24635;&#37329;&#39069;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488353999849" ID="ID_499724191" MODIFIED="1488354025235" TEXT="&#x660e;&#x5929;&#x5b8c;&#x6210;&#x591a;&#x516c;&#x4f17;&#x53f7;&#x7684;b-&gt;c&#x7684;&#x81ea;&#x52a8;&#x8865;&#x5355;"/>
</node>
<node CREATED="1488354040118" ID="ID_275764798" MODIFIED="1488354058531" TEXT="&#x4fee;&#x6539;&#x5728;&#x7ebf;shopcenter2&#x7684;resin.xml&#xff0c;&#x9700;&#x8981;&#x786e;&#x8ba4;&#x6743;&#x9650;"/>
<node CREATED="1488354779315" ID="ID_1907117112" MODIFIED="1488354788059" TEXT="&#x914d;&#x7f6e;&#x6b63;&#x5f0f;&#x73af;&#x5883;&#x7684;jobcenter"/>
</node>
<node CREATED="1488418027477" FOLDED="true" ID="ID_263846925" MODIFIED="1490581010064" TEXT="2&#x53f7;">
<node CREATED="1488418034941" ID="ID_455196766" MODIFIED="1488439099232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33258;&#21160;&#34917;&#21333;&#37096;&#20998;&#23436;&#25104;&#23545;&#22810;&#20844;&#20247;&#21495;&#30340;&#25903;&#25345;
    </p>
    <p>
      
    </p>
    <p>
      &#20462;&#25913;&#23436;&#25104;&#65292;&#24453;&#31616;&#21333;&#27979;&#35797;&#65292;&#20572;&#20102;b-&gt;c&#30340;&#25903;&#20184;&#29366;&#24577;&#26597;&#35810;&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488440837920" ID="ID_307195428" MODIFIED="1488443937062">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37197;&#32622;&#34917;&#21333;jobcenter&#21040;&#32852;&#35843;&#29615;&#22659;
    </p>
    <p>
      
    </p>
    <p>
      &#20294;&#32852;&#35843;&#29615;&#22659;&#30340;newwap&#24050;&#32463;&#19981;&#27491;&#24120;&#20102;
    </p>
    <p>
      
    </p>
    <p>
      &#25913;&#22312;&#24120;&#35268;&#29615;&#22659;&#37096;&#32626;&#34917;&#21333;jobcenter
    </p>
    <p>
      
    </p>
    <p>
      <font color="#3333ff">&#30001;&#20110;&#34917;&#21333;&#21482;&#34917;&#20004;&#20010;&#21322;&#23567;&#26102;&#21069;&#30340;&#65292;&#25925;&#19981;&#33021;&#39532;&#19978;&#30475;&#21040;&#65292;&#32780;&#26597;&#35810;&#20219;&#21153;&#21482;&#22788;&#29702;&#20108;&#21313;&#20998;&#38047;&#20043;&#21069;&#30340;&#65292;&#20108;&#21313;&#20998;&#38047;&#21518;&#21487;&#37325;&#26032;&#25171;&#24320;&#26597;&#35810;&#20219;&#21153;&#65292;&#32780;&#34917;&#21333;&#32467;&#26524;&#26126;&#22825;&#19978;&#21320;&#21487;&#30475;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488502730539" FOLDED="true" ID="ID_75770165" MODIFIED="1490690052163" TEXT="3&#x53f7;">
<node CREATED="1488502735858" ID="ID_1185184021" MODIFIED="1488533288460">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#34917;&#21333;&#24050;&#32463;&#23436;&#25104;&#65292;&#21487;&#19978;&#32447;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#20462;&#27491;unionid&#36229;&#26102;&#21462;&#19981;&#21040;&#25913;&#29992;openid&#32780;&#19981;&#26159;tradeid
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488510128121" ID="ID_171585703" MODIFIED="1488510140821" TEXT="&#x4ee3;&#x91d1;&#x5238;&#x68b3;&#x7406;"/>
<node CREATED="1488504954954" ID="ID_345391471" MODIFIED="1488533348917">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19979;&#21608;&#38024;&#23545;&#34917;&#21333;&#65292;&#36864;&#27454;&#65292;&#24517;&#39035;&#37319;&#29992;md_order_info&#34920;&#20013;&#26576;&#20010;&#25193;&#23637;&#23383;&#27573;&#26469;&#22788;&#29702;&#65288;&#35813;&#23383;&#27573;&#20445;&#23384;&#20102;&#23545;&#24212;&#30340;payarg id&#20449;&#24687;&#65292;&#29992;&#20110;&#25552;&#21462;&#19979;&#21333;&#26102;&#30340;&#25903;&#20184;&#21442;&#25968;&#65289;
    </p>
    <p>
      
    </p>
    <p>
      &#20195;&#37329;&#21048;&#27969;&#31243;&#26803;&#29702;&#12290;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node BACKGROUND_COLOR="#ffffcc" COLOR="#ff3300" CREATED="1488522608842" ID="ID_1373509289" MODIFIED="1488870587499">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver&#30340;paycallback&#22788;&#29702;&#20013;&#65292;&#23569;&#20102;&#36153;&#29575;&#30340;&#32467;&#31639;&#65281;&#20020;&#26102;&#21152;&#20837;61&#65292;81
    </p>
    <p>
      
    </p>
    <p>
      &#38656;&#35201;&#39069;&#22806;&#21047;&#22238;&#65292;&#25688;&#19968;&#21488;&#19978;&#19968;&#21488;&#26041;&#24335;&#26356;&#26032;&#19978;&#32447;&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1488525194710" ID="ID_449060484" MODIFIED="1488870590615">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      pay_fee&#65292;jiesuanAmount&#20855;&#20307;&#35745;&#31639;&#22312;<b><font color="#3333ff">mdtradecenter-&gt;domain-&gt;trade-&gt;OrderPaySucessDomain.fillOrderInfoDO()</font></b>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#3333ff">newMoneyPaid.multiply(payRate).divde(new BigDecimal(10000).setScale(2,BigDecimal.ROUND_HALF_UP));</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1488530619829" ID="ID_1135515023" MODIFIED="1488530633150">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      payfee
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: &#x5b8b;&#x4f53;; font-size: 11.3pt"><font color="#660e7a"><b>orderInfoDO</b></font>.setPayFee(newMoneyPaid.multiply(payRate).divide(<font color="#000080"><b>new </b></font>BigDecimal(<font color="#0000ff">10000</font>)).setScale(<font color="#0000ff">2</font>, BigDecimal.<font color="#660e7a"><b><i>ROUND_HALF_UP</i></b></font>));</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1488530637816" ID="ID_1060331735" MODIFIED="1488530654627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jiesuanAmount
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: &#x5b8b;&#x4f53;; font-size: 11.3pt"><font color="#660e7a"><b>orderInfoDO</b></font>.setJiesuanAmount(<br />        <font color="#660e7a"><b>orderInfoDO</b></font>.getBillAmount()<br />             .subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getBillAmount().subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getNoRebateMoney())<br />                        .multiply(<font color="#660e7a"><b>orderInfoDO</b></font>.getRebateRate().divide(<font color="#000080"><b>new </b></font>BigDecimal(<font color="#0000ff">100</font>))))<br />                .subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getPayFee()).setScale(<font color="#0000ff">2</font>, BigDecimal.<font color="#660e7a"><b><i>ROUND_HALF_UP</i></b></font>)</pre>
  </body>
</html></richcontent>
</node>
<node CREATED="1488531440152" ID="ID_693025773" MODIFIED="1488531547030">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#34917;&#21047;
    </p>
    <p>
      
    </p>
    <p>
      payfee=moneypaid*payrate,jiesuanAmount = jiesuanAmount - payfee&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488525890506" ID="ID_919189723" MODIFIED="1488867851056" TEXT="md_order_info">
<node CREATED="1488526040440" ID="ID_689827875" MODIFIED="1488868366400" TEXT="money_paid&#xff0c;&#x5b9e;&#x9645;&#x652f;&#x4ed8;&#xff0c;&#x7b2c;&#x4e09;&#x65b9;&#x652f;&#x4ed8;&#x91d1;&#x989d;"/>
<node CREATED="1488526051235" ID="ID_1588300477" MODIFIED="1488526058831" TEXT="pay_fee&#xff0c;&#x624b;&#x7eed;&#x8d39;"/>
<node CREATED="1488526060021" ID="ID_624462557" MODIFIED="1488526074623" TEXT="bill_Amount,&#x8ba2;&#x5355;&#x603b;&#x989d;"/>
<node CREATED="1488526075828" ID="ID_1818300063" MODIFIED="1488526095088" TEXT="rebate_use_money,&#x53cd;&#x73b0;&#x91d1;&#x989d;"/>
</node>
</node>
<node CREATED="1488536100773" ID="ID_1726020131" MODIFIED="1488536115758" TEXT="&#x8003;&#x8651;&#x53bb;&#x6389;&#x7b2c;&#x4e09;&#x65b9;&#x9000;&#x6b3e;&#x7684;&#x56de;&#x6eda;&#x64cd;&#x4f5c;"/>
</node>
<node CREATED="1488761364726" FOLDED="true" ID="ID_132480124" MODIFIED="1490581870488" TEXT="6&#x53f7;">
<node CREATED="1488762719613" ID="ID_581296766" MODIFIED="1488762799616">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20170;&#22825;&#26803;&#29702;&#19979;&#21333;&#27969;&#31243;&#24182;&#32771;&#34385;
    </p>
    <p>
      &#22914;&#20309;&#20462;&#25913;&#22312;&#19979;&#21333;&#26102;&#22686;&#21152;&#20445;&#23384;
    </p>
    <p>
      &#25903;&#20184;&#37197;&#32622;id&#65292;&#21516;&#26102;&#65292;&#32771;&#34385;&#38024;&#23545;&#31532;&#19977;&#26041;&#25903;&#20184;&#21435;&#25481;
    </p>
    <p>
      &#20107;&#21153;&#22238;&#28378;&#26426;&#21046;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488781345979" FOLDED="true" ID="ID_801826198" MODIFIED="1489217285412" TEXT="&#x4e0a;&#x5348;&#x542c;&#x53d6;&#x4ee3;&#x91d1;&#x5238;&#x9700;&#x6c42;">
<node CREATED="1488781364476" ID="ID_402482975" MODIFIED="1488781379732" TEXT="&#x6ee1;&#x8fd4;&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1488781396164" ID="ID_1992826640" MODIFIED="1488787662495">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#27963;&#21160;&#26399;&#20869;&#65292;&#28385;&#36275;&#19968;&#23450;&#37329;&#39069;&#23601;&#32473;
    </p>
    <p>
      
    </p>
    <p>
      &#20808;&#26399;&#21482;&#20570;&#28385;&#36820;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488781380907" ID="ID_459933662" MODIFIED="1488781386259" TEXT="&#x5206;&#x4eab;&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1488781489200" ID="ID_1696858117" MODIFIED="1488781509388" TEXT="&#x6d3b;&#x52a8;&#x671f;&#x5185;&#xff0c;&#x5206;&#x4eab;&#x7ed9;&#x670b;&#x53cb;&#xff0c;&#x903b;&#x8f91;&#x8f83;&#x590d;&#x6742;"/>
</node>
<node CREATED="1488781387199" ID="ID_1524066743" MODIFIED="1488781394099" TEXT="&#x6fc0;&#x6d3b;&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1488781413245" ID="ID_762538524" MODIFIED="1488781484812" TEXT="&#x6d3b;&#x52a8;&#x671f;&#x5185;&#xff0c;&#x6ee1;&#x8db3;&#x51e0;&#x5929;&#x672a;&#x5230;&#x5e97;&#x6d88;&#x8d39;&#x5c31;&#x7ed9;"/>
</node>
</node>
<node CREATED="1488790852004" ID="ID_774635258" MODIFIED="1488795036340">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26242;&#20572;&#36864;&#27454;&#23436;&#21892;&#65292;<font color="#6600ff">&#20840;&#21147;&#25972;&#29702;&#20195;&#37329;&#21048;&#65281;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488791510952" ID="ID_1182136526" MODIFIED="1488791575150">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26126;&#22825;&#19978;&#32447;&#33258;&#21160;&#34917;&#21333;&#65292;&#24050;&#30830;&#35748;&#21457;&#21253;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#26080;&#38656;&#39069;&#22806;&#37197;&#32622;jobcenter,&#30452;&#25509;&#26159;&#37319;&#29992;&#21407;&#26469;&#30340;&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1488849042416" FOLDED="true" ID="ID_260549790" MODIFIED="1490774203018" TEXT="7&#x53f7;">
<node CREATED="1488849049922" ID="ID_508730369" MODIFIED="1490581905822">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20195;&#37329;&#21048;&#29983;&#25104;&#30001;&#20132;&#26131;&#20013;&#24515;&#25903;&#20184;&#25104;&#21151;&#21518;&#65292;&#35843;&#21462;&#24426;&#24426;&#30340;&#25509;&#21475;&#26469;&#29983;&#25104;
    </p>
    <p>
      
    </p>
    <p>
      &#19979;&#21333;&#26102;&#65292;&#21017;&#30001;<font color="#9933ff">&#32993;&#27491;&#36127;&#36131;&#35835;&#21462;&#24182;&#20256;&#32473;&#20132;&#26131;&#20013;&#24515;</font>
    </p>
    <p>
      
    </p>
    <p>
      &#20132;&#26131;&#20013;&#24515;&#36127;&#36131;&#35745;&#31639;&#37329;&#39069;&#65292;&#22312;&#25968;&#25454;&#24211;&#20013;&#20445;&#23384;&#20195;&#37329;&#21048;&#32534;&#30721;&#65292;&#31867;&#22411;&#65292;&#37329;&#39069;&#31561;&#20449;&#24687;&#12290;&#36825;&#22359;&#30340;&#27969;&#31243;&#35774;&#35745;&#30001;&#25105;&#36127;&#36131;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#20851;&#38190;&#26159;&#36864;&#27454;&#27969;&#31243;&#20013;&#23545;&#20195;&#37329;&#21048;&#30340;&#22788;&#29702;&#65292;&#30452;&#25509;&#20316;&#24223;&#30456;&#24212;&#20195;&#37329;&#21048;&#65281;&#65292;&#36864;&#27454;&#25353;&#25903;&#20184;&#37329;&#39069;&#36864;&#27454;&#21363;&#21487;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#20170;&#22825;&#20877;&#27425;&#22238;&#39038;&#24182;&#25972;&#29702;&#37096;&#20998;&#25903;&#20184;&#19979;&#21333;&#27969;&#31243;&#12290;&#32771;&#34385;&#20195;&#37329;&#21048;&#30340;&#21152;&#20837;&#28857;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#19981;&#25972;&#29702;&#20102;&#65292;&#32829;&#35823;&#26102;&#38388;&#65292;&#30452;&#25509;&#32771;&#34385;&#22914;&#20309;&#23454;&#29616;&#65281;
    </p>
  </body>
</html></richcontent>
<node CREATED="1488866350148" ID="ID_970550883" MODIFIED="1488866363674" TEXT="&#x652f;&#x4ed8;&#x5b8c;&#x6210;&#xff0c;&#x8c03;&#x7528;&#x63a5;&#x53e3;&#x751f;&#x6210;&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1488866365422" ID="ID_473340395" MODIFIED="1488866369707" TEXT="&#x95e8;&#x5e97;id"/>
<node CREATED="1488866414127" ID="ID_877449428" MODIFIED="1488866435983" TEXT="&#x652f;&#x4ed8;&#x91d1;&#x989d;"/>
<node CREATED="1488866437140" ID="ID_1012981545" MODIFIED="1488866443173" TEXT="&#x7528;&#x6237;unionid"/>
<node CREATED="1488866451249" ID="ID_1271352683" MODIFIED="1488866464156" TEXT="tradeno"/>
</node>
<node CREATED="1488866582263" ID="ID_1260013737" MODIFIED="1488866612134" TEXT="&#x4e0b;&#x5355;&#xff0c;&#x83b7;&#x53d6;&#x5f53;&#x524d;&#x95e8;&#x5e97;&#x5230;&#x4ee3;&#x91d1;&#x5238;&#x4fe1;&#x606f;">
<node CREATED="1488866613586" ID="ID_1570021874" MODIFIED="1488866628060" TEXT="&#x652f;&#x4ed8;&#x524d;&#x6263;&#x9664;&#x4ee3;&#x91d1;&#x5238;&#x91d1;&#x989d;"/>
</node>
<node CREATED="1488867229966" ID="ID_180471787" MODIFIED="1488867252211" TEXT="&#x6570;&#x636e;&#x5e93;md_order_info&#x542f;&#x7528;&#x51e0;&#x4e2a;&#x6269;&#x5c55;&#x5b57;&#x6bb5;&#xff01;"/>
</node>
<node CREATED="1488872592469" ID="ID_298352564" MODIFIED="1488872669886">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009900">mdfrontserver</font></b>-domain&#160;-&gt; domain -&gt;OrderGenerateDomain
    </p>
    <p>
      -&gt; generateOrder
    </p>
  </body>
</html></richcontent>
<node CREATED="1488871493799" ID="ID_61075740" MODIFIED="1488872687532">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009999">mdtradecenter</font></b>-domain -&gt;trade
    </p>
    <p>
      &#160;-&gt; <b><font color="#9933ff">OrderCreateDomain</font></b>&#160;-&gt; createOrder
    </p>
    <p>
      
    </p>
    <p>
      &#22312;&#35813;&#26041;&#27861;&#20869;&#35745;&#31639;&#22909;jiesuanAmount&#65292;&#36825;&#37324;&#35201;&#25187;&#38500;&#20195;&#37329;&#21048;&#21543;
    </p>
    <p>
      &#20195;&#37329;&#21048;&#65292;&#21017;&#24212;&#22312;&#31532;&#19977;&#26041;&#25903;&#20184;&#21069;&#20174;&#25187;&#38500;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488874473795" ID="ID_412611882" MODIFIED="1488874524776">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20020;&#26102;&#20462;&#25913;mdpaygate&#65292;&#22686;&#21152;mhtSelfMchId&#23383;&#27573;&#65292;&#20256;&#20837;shopId
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488876496801" ID="ID_1832806400" MODIFIED="1488881313276">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009900">mdfrontserver</font></b>-&gt;service-&gt;impl-&gt;OrderFsServiceImpl
    </p>
    <p>
      -&gt; <b><font color="#9933ff">payOrder</font></b>
    </p>
    <p>
      -&gt; <b><font color="#9933ff">wftPayOrder </font></b>
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#00cccc">orderAmount&#22312;&#19979;&#21333;&#26102;&#30830;&#23450;&#30340;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1488876613298" ID="ID_299421869" MODIFIED="1488878967858">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36825;&#37324;&#25165;&#26159;&#25903;&#20184;&#26680;&#24515;&#27969;&#31243;&#25152;&#22312;
    </p>
    <p>
      &#37329;&#39069;&#22312;tradeExtService.<b><font color="#00cccc">createMobileParams</font></b>()&#20013;&#26102;&#65292;&#24050;&#32463;&#26159;&#26368;&#32456;&#38656;&#35201;&#21521;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#37329;&#39069;&#20102;&#65292;&#20063;&#23601;&#26159;money_paid&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1488934541548" FOLDED="true" ID="ID_1877931994" MODIFIED="1490581106992" TEXT="8&#x53f7;">
<node CREATED="1488934578257" ID="ID_1717062284" MODIFIED="1488934593022" TEXT="&#x786e;&#x5b9a;&#x5982;&#x4f55;&#x4fee;&#x6539;&#xff0c;&#x5e76;&#x7740;&#x624b;&#x4fee;&#x6539;&#xff01;"/>
<node CREATED="1488935836181" ID="ID_107263524" MODIFIED="1488960173238">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26080;&#35770;&#26159;b-&gt;c/c-&gt;b&#65292;&#21017;consumeMoney&#20256;&#36807;&#26469;&#30340;&#23601;&#26159;&#29992;&#25143;&#36755;&#20837;&#30340;&#37329;&#39069;&#65292;&#36825;&#26126;&#26174;&#19981;&#21512;&#36866;&#20102;&#65292;&#31561;&#20110;&#37329;&#39069;&#35745;&#31639;&#35201;&#22312;wap&#31471;&#20256;&#36807;&#26469;&#20043;&#21069;&#23436;&#25104;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#30830;&#35748;&#20102;&#22788;&#29702;&#27969;&#31243;&#22914;&#19979;&#65306;
    </p>
    <p>
      
    </p>
    <p>
      &#29992;&#25143;&#36755;&#20837;&#25903;&#20184;&#37329;&#39069;100&#65292;&#21516;&#26102;&#20250;&#36873;&#25321;&#26576;&#20010;&#20195;&#37329;&#21048;&#24182;&#25187;&#38500;&#37329;&#39069;&#21518;&#20063;&#20256;&#36807;&#26469;&#65292;&#20132;&#26131;&#20013;&#24515;&#25343;&#21040;100&#65292;voucherid,&#25187;&#38500;&#20195;&#37329;&#21048;&#37329;&#39069;&#21518;&#30340;&#25968;&#20540;&#65292;&#20132;&#26131;&#20013;&#24515;&#25343;&#21040;vocherid&#65292;&#25552;&#21462;&#20195;&#37329;&#21048;&#37329;&#39069;&#65292;&#20877;&#26681;&#25454;&#20844;&#24335;&#35745;&#31639;&#19968;&#27425;&#19982;&#20256;&#36807;&#26469;&#30340;&#20540;&#20570;&#26657;&#39564;&#65292;&#19988;&#38656;&#35201;&#32465;&#23450;&#35746;&#21333;[&#25152;&#35859;&#32465;&#23450;&#35746;&#21333;&#65292;&#21363;&#22312;md_order_info&#20013;&#35760;&#24405;&#21363;&#21487;&#65292;&#36824;&#26159;&#32771;&#34385;&#39069;&#22806;&#24314;&#34920;&#65311;]&#12290;&#65288;&#22914;&#26524;&#26159;&#19968;&#23545;&#22810;&#20851;&#31995;&#38656;&#35201;&#39069;&#22806;&#24314;&#34920;&#65289;
    </p>
    <p>
      
    </p>
    <p>
      &#19968;&#26086;&#20132;&#26131;&#25104;&#21151;&#65292;&#36864;&#27454;&#21017;&#20316;&#24223;&#30456;&#24212;&#20195;&#37329;&#21048;
    </p>
  </body>
</html></richcontent>
<node CREATED="1488940671145" FOLDED="true" ID="ID_1004926210" MODIFIED="1488960276061">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25903;&#20184;&#26657;&#39564;&#32465;&#23450;&#20195;&#37329;&#21048;
    </p>
    <p>
      
    </p>
    <p>
      &#35843;&#29992;&#20195;&#37329;&#21048;&#38145;&#23450;&#25509;&#21475;-&gt;&#33719;&#21462;&#20195;&#37329;&#21048;&#37329;&#39069;&#65292;&#26159;&#21542;&#26377;&#25928;&#12290;
    </p>
  </body>
</html></richcontent>
<node CREATED="1488940688480" ID="ID_677996150" MODIFIED="1488940704326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="WorkUML/&#x652f;&#x4ed8;&#x6821;&#x9a8c;&#x7ed1;&#x5b9a;&#x4ee3;&#x91d1;&#x5238;&#x6d41;&#x7a0b;%20in%20mdfrontserver.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1488940938892" ID="ID_976898458" MODIFIED="1488943120521">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25903;&#20184;&#23436;&#25104;&#65292;&#35843;&#29992;&#29983;&#25104;&#20195;&#37329;&#21048;&#25509;&#21475;&#65292;&#32771;&#34385;&#25509;notify-message
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#25903;&#20184;&#20013;&#20923;&#32467;&#20195;&#37329;&#21048;<font color="#ff3333">[&#32465;&#23450;&#35746;&#21333;&#25509;&#21475;&#65311;]</font>
      </li>
      <li>
        &#25903;&#20184;&#22833;&#36133;&#37322;&#25918;&#30456;&#24212;&#20195;&#37329;&#21048;&#12290;
      </li>
      <li>
        &#25903;&#20184;&#25104;&#21151;&#26631;&#35782;&#20195;&#37329;&#21048;&#24050;&#20351;&#29992;&#12290;
      </li>
      <li>
        &#36864;&#27454;&#21017;&#20316;&#24223;&#20195;&#37329;&#21048;&#12290;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1488945074008" ID="ID_557557362" MODIFIED="1489134297381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#3333ff">&#30446;&#21069;&#20195;&#37329;&#21048;&#21482;&#33021;&#38024;&#23545;c-&gt;b&#30340;&#24773;&#20917;&#19979;&#25165;&#21487;&#20351;&#29992; </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="#3333ff">&#29616;&#22312;&#25903;&#20184;&#24050;&#32463;&#30528;&#25163;&#25552;&#20379;&#36890;&#36807;&#25480;&#26435;&#30721;&#33719;&#21462;&#24494;&#20449;&#29992;&#25143;&#65292;&#37027;&#20040;&#38024;&#23545;&#24494;&#20449;&#29992;&#25143;&#26410;&#26469;b-&gt;c&#20063;&#21487;&#20351;&#29992;&#20195;&#37329;&#21048;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488952798293" FOLDED="true" ID="ID_1553213862" MODIFIED="1489217326459" TEXT="mdfrontserver &#x521b;&#x5efa; voucher-manfan&#x5206;&#x652f;">
<node CREATED="1488959971146" ID="ID_1013813403" MODIFIED="1488959987153" TEXT="&#x5728;mdfrontserver&#x65b0;&#x589e;HttpClientUtils&#x5de5;&#x5177;&#x7c7b;"/>
<node CREATED="1488959989571" ID="ID_347592708" MODIFIED="1488960912042">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;mdfrontserver&#30340;OrderFsServiceAdapter&#22686;&#21152;verifyPayMoney&#65292;&#24453;&#24426;&#24426;&#25509;&#21475;&#26469;&#23436;&#21892;&#20195;&#37329;&#21048;&#26657;&#39564;&#21644;&#37329;&#39069;&#26657;&#39564;&#65292;&#21516;&#26102;<font color="#ff3333">&#25903;&#20184;&#25104;&#21151;<b>&#21518;</b></font>&#20877;&#32465;&#23450;&#20195;&#37329;&#21048;&#21040;&#35746;&#21333;&#65292;&#25968;&#25454;&#24211;&#37324;&#31616;&#21333;&#22312;md_order_info&#20013;&#35760;&#24405;&#20195;&#37329;&#21048;id&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488960146105" ID="ID_1217973047" MODIFIED="1488962279040">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;mdfrontserver&#20013;&#30340;ShOrderCreateParam&#31867;&#20013;&#22686;&#21152;payMoney&#23646;&#24615;
    </p>
    <p>
      
    </p>
    <p>
      &#24182;&#37197;&#32622;&#30456;&#24212;&#30340;profile&#65292;&#20462;&#25913;mdfrontserver-service-Impl-bean.xml
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488960926338" ID="ID_755990821" MODIFIED="1488961073481">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24212;&#32771;&#34385;&#22312;mdfrontserver paycallback&#20013;&#35843;&#29992;mdtradecenter&#26469;&#32465;&#23450;&#20195;&#37329;&#21048;&#65292;&#26469;&#35299;&#32465;&#20195;&#37329;&#21048;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#32771;&#34385;&#24310;&#26102;&#22788;&#29702;&#65292;&#27604;&#22914;&#22238;&#35843;&#26202;&#20102;&#65292;&#21448;&#27604;&#22914;&#34917;&#21333;&#31561;&#12290;<b><font color="#ff3333">&#21363;&#26126;&#30830;&#25903;&#20184;&#25104;&#21151;&#25110;&#32773;&#22833;&#36133;&#21518;&#25165;&#33021;&#35299;&#32465;&#20195;&#37329;&#21048;</font></b>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488960979874" ID="ID_108452569" MODIFIED="1488960979874" TEXT=""/>
</node>
</node>
<node CREATED="1489022785108" FOLDED="true" ID="ID_725106989" MODIFIED="1490689603698" TEXT="9&#x53f7;">
<node CREATED="1489022793168" ID="ID_880129747" MODIFIED="1489216213851">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30830;&#23450;&#19968;&#19979;c-&gt;b/b-&gt;c&#26368;&#32456;&#25903;&#20184;&#25104;&#21151;&#21518;&#30340;&#22788;&#29702;
    </p>
    <p>
      &#26159;&#21542;&#37117;&#22312;&#21516;&#19968;&#20010;mdfrontservrer&#30340;paycallback&#20013;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        c-&gt;b&#30340;&#36890;&#30693;&#25509;&#25910;&#39029;&#38754;&#65292;&#36208;&#20102;QueueSerivce
      </li>
      <li>
        b-&gt;c&#30340;&#26597;&#35810;&#25509;&#21475;&#65292;&#36208;&#20102;QueueService
      </li>
    </ul>
    <p>
      QueueSerivce.consumeQueue&#20250;&#26368;&#32456;&#35843;&#29992;PayEventHandler.handleEvent&#26469;&#22788;&#29702;&#30456;&#20851;&#30340;&#25903;&#20184;&#21518;&#32493;&#36923;&#36753;
    </p>
    <p>
      
    </p>
    <p>
      &#20063;&#23601;&#26159;&#35775;&#38382;&#20102;mdfrontserver payCallback
    </p>
  </body>
</html></richcontent>
<node CREATED="1489025126945" ID="ID_1711803684" MODIFIED="1489025142392" TEXT="c-&gt;b &#x7684;&#x6d41;&#x7a0b;">
<node CREATED="1489025150573" ID="ID_1370436260" MODIFIED="1489028539075">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      abstractnotify.do
    </p>
    <p>
      
    </p>
    <p>
      &#26368;&#32456;&#36890;&#36807;TradeDomain&#30340;&#20855;&#20307;&#36890;&#36947;&#30340;tradeManager&#30340;handleNotifyParam&#26469;&#30830;&#23450;&#25903;&#20184;&#32467;&#26524;
    </p>
    <p>
      
    </p>
    <p>
      &#23545;&#20110;<font color="#ff3333">&#29616;&#22312;&#25903;&#20184;</font>&#65292;&#25903;&#20184;&#26102;&#38388;&#33410;&#28857;&#26159;<b><font color="#0033ff">mhtOrderStartTime</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1489025980097" ID="ID_1147147019" MODIFIED="1489029295819">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;&#26524;&#25903;&#20184;&#25104;&#21151;&#65292;addQueue
    </p>
    <p>
      
    </p>
    <p>
      &#20854;&#20013;&#21152;&#20837;queue&#20013;&#25968;&#25454;&#23646;&#24615;&#30340;&#22238;&#35843;&#22320;&#22336;&#20063;&#26159;mdfrontserver&#30340;paycallback.do
    </p>
    <p>
      
    </p>
    <p>
      &#21542;&#21017;&#65292;&#30452;&#25509;&#20851;&#38381;&#65292;&#25110;&#31561;&#37325;&#26032;&#36890;&#30693;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1489025164375" ID="ID_1979922453" MODIFIED="1489025171145" TEXT="b-&gt;c&#x7684;&#x6d41;&#x7a0b;">
<node CREATED="1489025173959" FOLDED="true" ID="ID_1139395405" MODIFIED="1490689600963">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      process....result&#26041;&#27861;
    </p>
    <p>
      
    </p>
    <p>
      &#25903;&#20184;&#25104;&#21151;&#25110;&#32773;&#38656;&#35201;&#32456;&#27490;&#26597;&#35810;&#26102;&#35843;&#29992;
    </p>
    <p>
      
    </p>
    <p>
      &#21516;&#26679;addQueue
    </p>
  </body>
</html></richcontent>
<node CREATED="1489025984209" ID="ID_1581297042" MODIFIED="1489026682469">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tradeService.processNowpayscanpayResult
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#26681;&#25454;openid&#25552;&#21462;unionid
      </li>
      <li>
        &#32465;&#23450;&#35746;&#21333;bindorder
      </li>
      <li>
        &#35774;&#32622;&#22238;&#35843;&#22320;&#22336;:http://mdfrontserver.55tuan.me:9000/paycallback.do
      </li>
      <li>
        &#35774;&#32622;paytime&#20026;&quot;responseTime&quot;&#33410;&#28857;&#30340;&#20540;
      </li>
    </ul>
    <p>
      wxScanNotify.addQueue&#23558;&#25968;&#25454;&#20889;&#20837;&#38431;&#21015;&#24453;&#30456;&#24212;&#32447;&#31243;&#36890;&#36807;consumeQueue&#25552;&#21462;&#21518;&#35843;&#29992;&#22238;&#35843;&#22320;&#22336;&#26469;&#22788;&#29702;&#21518;&#32493;&#27969;&#31243;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1489030940140" ID="ID_799618758" MODIFIED="1489031917229">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver.payCallback()
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#35299;&#26512;&#25552;&#21462;&#32479;&#19968;&#20102;&#26684;&#24335;&#30340;&#22238;&#35843;&#25968;&#25454;&#65292;&#20027;&#35201;&#26159;&#20132;&#26131;&#21442;&#25968;
      </li>
      <li>
        &#26681;&#25454;tradeno&#20174;md_order_info&#33719;&#21462;&#35746;&#21333;&#20449;&#24687;
      </li>
      <li>
        &#22914;&#26524;order_status!=5&#26242;&#19981;&#22788;&#29702;&#65292;&#21363;&#35746;&#21333;&#26410;&#32465;&#23450;&#29992;&#25143;
      </li>
      <li>
        &#21482;&#38024;&#23545;payStatus=0/payStatus=1&#22788;&#29702;&#65292;&#26681;&#25454;shopid&#25552;&#21462;&#38376;&#24215;&#20449;&#24687;&#65292;&#22833;&#36133;&#21017;&#36864;&#20986;
      </li>
      <li>
        &#23545;&#38750;&#30452;&#36830;&#38376;&#24215;&#65292;&#26681;&#25454;paytype&#35745;&#31639;&#25163;&#32493;&#36153;
      </li>
      <li>
        &#35843;&#29992;<b><font color="#0033ff">payservice.paySuccessCallBack</font></b>&#36827;&#34892;&#21518;&#32493;&#22788;&#29702;&#65292;&#21253;&#25324;&#32467;&#31639;&#37329;&#39069;&#30340;&#35745;&#31639;&#31561;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489043974576" ID="ID_1129275121" MODIFIED="1489134146645">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver&#23436;&#25104;&#36890;&#29992;&#20110;voucher&#25509;&#21475;&#30340;&#31867;,&#30446;&#21069;&#21482;&#38024;&#23545;c-&gt;b&#25165;&#26377;&#20195;&#37329;&#21048;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#26681;&#25454;id&#35775;&#38382;&#20195;&#37329;&#21048;
      </li>
      <li>
        &#20923;&#32467;&#20195;&#37329;&#21048;
      </li>
      <li>
        &#35299;&#32465;&#20195;&#37329;&#21048;&#65288;&#25903;&#20184;&#22833;&#36133;&#19968;&#31181;&#24773;&#20917;&#65289;
      </li>
      <li>
        &#26631;&#35782;&#20195;&#37329;&#21048;&#24050;&#20351;&#29992;
      </li>
      <li>
        &#20316;&#24223;&#20195;&#37329;&#21048;&#65288;&#36864;&#27454;&#30340;&#24773;&#20917;&#19979;&#65292;&#21487;&#33021;&#38656;&#35201;&#35843;&#29992;&#65289;
      </li>
      <li>
        &#32465;&#23450;&#20195;&#37329;&#21048;&#65288;&#20132;&#26131;&#20013;&#24515;&#33258;&#24049;&#35760;&#24405;&#65289;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1489044943743" ID="ID_358559919" MODIFIED="1489044960073" TEXT="&#x68b3;&#x7406;mdnotifyqueue"/>
<node CREATED="1489052079910" ID="ID_162697005" MODIFIED="1489052193722">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19968;&#20010;&#21322;&#23567;&#26102;&#26597;&#35810;&#22810;&#20027;&#20307;&#35746;&#21333;&#20026;&#21861;&#27809;&#26377;&#21457;&#36865;&#28040;&#24687;&#65292;&#20294;&#23454;&#38469;&#24182;&#27809;&#26377;&#25903;&#20184;&#25104;&#21151;&#65292;&#21482;&#26159;&#24494;&#20449;&#25903;&#20184;&#25104;&#21151;&#65292;&#20294;&#25105;&#20204;&#30340;&#22238;&#35843;&#22788;&#29702;&#22833;&#36133;&#25110;&#20854;&#20182;&#21407;&#22240;
    </p>
    <p>
      
    </p>
    <p>
      &#21457;&#36865;notify&#28040;&#24687;&#26159;&#22312;tradecenter&#21047;&#24211;&#23436;&#25104;&#21518;&#25165;&#21457;&#36865;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489054985810" ID="ID_1847812272" MODIFIED="1489055023446" TEXT="&#x67e5;&#x8be2;&#x67d0;&#x4e9b;&#x8ba2;&#x5355;redis&#x6162;&#x5bfc;&#x81f4;&#x65e0;&#x6cd5;&#x5237;&#x65b0;&#x72b6;&#x6001;&#xff1f;"/>
</node>
<node CREATED="1489107731865" FOLDED="true" ID="ID_823118211" MODIFIED="1490581802584" TEXT="10&#x53f7;">
<node CREATED="1489124485027" ID="ID_822964943" MODIFIED="1489133061297" TEXT="redis&#x6574;&#x7406;">
<node CREATED="1489124492755" ID="ID_704085376" MODIFIED="1489124497627" TEXT="mdtradecenter">
<node CREATED="1489124499128" ID="ID_532268312" MODIFIED="1489124570857">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      redis-mdtradecenter.shanhui.me:7500/7501
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489124573183" ID="ID_464503261" MODIFIED="1489124578594" TEXT="mdtask">
<node CREATED="1489124580047" ID="ID_1260416119" MODIFIED="1489124601435" TEXT="redis222.55tuan.me:27672"/>
</node>
<node CREATED="1489124649110" ID="ID_210150696" MODIFIED="1489124665260" TEXT="mdpaygate">
<node CREATED="1489124666854" ID="ID_197215772" MODIFIED="1489124684110" TEXT="redis-tradem.shanhui.me:17701"/>
</node>
<node CREATED="1489124824464" FOLDED="true" ID="ID_1959387597" MODIFIED="1489138319045" TEXT="mdfrontserver">
<node CREATED="1489124830854" ID="ID_1316074122" MODIFIED="1489124836545">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sentinel-url-1-mastername=mymaster7671
    </p>
    <p>
      sentinel-url-2-mastername=mymaster7672
    </p>
    <p>
      sentinel-url-1-1=redis152.55tuan.me:26379
    </p>
    <p>
      sentinel-url-2-1=redis152.55tuan.me:26379
    </p>
    <p>
      
    </p>
    <p>
      sentinel-url-1-2=redis153.55tuan.me:26379
    </p>
    <p>
      sentinel-url-2-2=redis153.55tuan.me:26379
    </p>
    <p>
      
    </p>
    <p>
      sentinel-url-1-3=redis154.55tuan.me:26379
    </p>
    <p>
      sentinel-url-2-3=redis154.55tuan.me:26379
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1489131219193" ID="ID_274866077" MODIFIED="1489131261016">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30830;&#23450;&#20102;tradecenter&#25903;&#20184;&#25104;&#21151;&#21457;&#36865;&#30340;&#28040;&#24687;&#21253;&#21547;operatorId
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489131264324" ID="ID_1654325563" MODIFIED="1489138574340" TEXT="&#x7ee7;&#x7eed;&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1489131292687" ID="ID_911083672" MODIFIED="1489131333393" TEXT="&#x5b8c;&#x6210;&#x4e86;&#x7cd9;&#x7248;&#x7684;&#x4ee3;&#x91d1;&#x5238;&#x6821;&#x9a8c;&#xff08;&#x751f;&#x6210;&#x8ba2;&#x5355;&#x524d;&#xff09;"/>
<node CREATED="1489138574340" ID="ID_207346556" MODIFIED="1489138624614" TEXT="&#x5b8c;&#x6210;&#x7cd9;&#x7248;&#x7684;&#x4ee3;&#x91d1;&#x5238;&#x51bb;&#x7ed3;&#xff08;&#x8ba2;&#x5355;&#x7ed1;&#x5b9a;&#x7528;&#x6237;&#x540e;&#xff0c;&#x6b64;&#x6b21;&#x4ee3;&#x91d1;&#x5238;&#x4ec5;&#x9650;&#x4e8e;c-&gt;b&#xff0c;&#x56e0;&#x4e3a;&#x9700;&#x8981;userid&#xff09;"/>
</node>
<node BACKGROUND_COLOR="#ffcccc" CREATED="1489138448155" ID="ID_107935014" MODIFIED="1489138561807">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30830;&#23450;&#20102;redis&#30001;&#20110;&#27704;&#20037;&#20445;&#23384;&#20102;&#35746;&#21333;&#35814;&#24773;&#65292;&#23548;&#33268;redis i/o&#25345;&#20037;&#21270;&#21040;&#26412;&#22320;&#26102;&#65292;redis&#30701;&#26399;&#26080;&#27861;&#35775;&#38382;&#65292;&#27492;&#26102;&#20250;&#24433;&#21709;&#20132;&#26131;&#27969;&#31243;&#65292;&#20462;&#25913;mdfrontserver&#30340; redis&#20445;&#23384;&#21152;&#19978;&#36807;&#26399;&#26102;&#38388;&#25110;&#32553;&#30701;&#36807;&#26399;&#26102;&#38388;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1489194505462" FOLDED="true" ID="ID_1064643964" MODIFIED="1490774191552" TEXT="11&#x53f7;&#xff08;&#x5468;&#x516d;&#x52a0;&#x73ed;&#xff09;">
<node CREATED="1489194677618" ID="ID_1995813971" MODIFIED="1490664764857">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#35745;&#21010;
    </p>
    <p>
      mdfrontservrer redis&#35774;&#32622;&#36229;&#26102;
    </p>
    <p>
      &#20195;&#37329;&#21048;&#32487;&#32493;
    </p>
  </body>
</html></richcontent>
<node CREATED="1489196422835" ID="ID_353051434" MODIFIED="1489196531499">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver&#24050;&#32463;&#35774;&#32622;&#20102;&#36807;&#26399;&#26102;&#38388;
    </p>
    <p>
      &#20294;&#21024;&#38500;&#31574;&#30053;&#26159;&#34987;&#21160;&#21024;&#38500;&#30340;&#35805;&#65292;&#21363;&#35775;&#38382;&#26102;&#36807;&#26399;&#25165;&#21024;&#38500;&#65292;&#37027;&#23601;&#27809;&#29992;
    </p>
    <p>
      &#25152;&#20197;&#24517;&#39035;&#37319;&#29992;&#20027;&#21160;&#21024;&#38500;&#31574;&#30053;&#65292;&#27604;&#22914;&#27599;&#22825;&#26202;&#19978;&#25191;&#34892;&#19968;&#27425;&#31561;&#12290;redis&#37197;&#32622;&#36816;&#34892;&#26102;&#24212;&#35813;&#26377;&#22320;&#26041;&#35774;&#32622;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489198335037" ID="ID_500332888" MODIFIED="1489198425922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      &#39640;&#36229;&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#35831;&#22312;2017/03/11&#21495;&#20940;&#26216;5&#28857;&#21327;&#21161;&#28165;&#29702;&#20197;&#19979;redis&#65307;
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      &#28165;&#38500;16&#24180;&#25968;&#25454;&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-PAYSTATUS-Z16*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-REFUNDSTATUS-Z16*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-ORDERSTATUS-Z16*
    </p>
    <p>
      &#28165;&#38500;17&#24180;1&#26376;&#25968;&#25454;&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-PAYSTATUS-Z1701*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-REFUNDSTATUS-Z1701*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-ORDERSTATUS-Z1701*
    </p>
    <p>
      &#28165;&#38500;17&#24180;2&#26376;&#25968;&#25454;&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-PAYSTATUS-Z1702*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-REFUNDSTATUS-Z1702*
    </p>
    <p>
      &#160;&#160;&#160;&#160;MD-ORDERSTATUS-Z1702*
    </p>
    <p>
      
    </p>
    <p>
      &#22914;&#26377;&#38382;&#39064;&#35831;&#38543;&#26102;&#25171;&#25105;&#30005;&#35805;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#26368;&#21518;&#28165;&#29702;&#20102;4&#20010;&#22810;G&#30340;&#25968;&#25454;&#65292;&#30342;&#22240;&#37319;&#29992;&#30340;&#26159;&#34987;&#21160;&#21024;&#38500;&#31574;&#30053;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1489199238909" FOLDED="true" ID="ID_999094515" MODIFIED="1490774190055" TEXT="&#x4ee3;&#x91d1;&#x5238;">
<node CREATED="1489199251798" ID="ID_1559776673" MODIFIED="1489199255419" TEXT="&#x652f;&#x4ed8;&#x524d;">
<node CREATED="1489199257085" ID="ID_1772394369" MODIFIED="1489199261386" TEXT="&#x6821;&#x9a8c;"/>
<node CREATED="1489199262799" ID="ID_46824628" MODIFIED="1489199269611" TEXT="&#x51bb;&#x7ed3;"/>
<node CREATED="1489199270657" ID="ID_1473808313" MODIFIED="1489199280676" TEXT="&#x7ed1;&#x5b9a;&#x5230;&#x7528;&#x6237;"/>
</node>
<node CREATED="1489199282130" ID="ID_1322867302" MODIFIED="1489199287333" TEXT="&#x652f;&#x4ed8;&#x540e;">
<node CREATED="1489199288966" ID="ID_1777408176" MODIFIED="1490605438632">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25104;&#21151;&#65292;&#35843;&#29992;&#8220;&#20351;&#29992;&#20195;&#37329;&#21048;&#8221;&#25509;&#21475;
    </p>
    <p>
      
    </p>
    <p>
      &#22312;paycallback&#20013;&#22788;&#29702;&#26368;&#21512;&#36866;&#65281;
    </p>
  </body>
</html></richcontent>
<node CREATED="1489199395969" ID="ID_1618044109" MODIFIED="1489199421511" TEXT="&#x9000;&#x6b3e;&#xff0c;&#x8c03;&#x7528;&#x201c;&#x4f5c;&#x5e9f;&#x4ee3;&#x91d1;&#x5238;&#x201d;&#x63a5;&#x53e3;"/>
</node>
<node CREATED="1489199317494" ID="ID_1102210350" MODIFIED="1489199337958" TEXT="&#x5931;&#x8d25;&#xff0c;&#x8c03;&#x7528;&#x201c;&#x89e3;&#x51bb;&#x4ee3;&#x91d1;&#x5238;&#x201d;&#x63a5;&#x53e3;"/>
</node>
<node CREATED="1489222638503" ID="ID_355750255" MODIFIED="1489222677204" TEXT="&#x6ee1;&#x8fd4;&#x65f6;&#xff0c;&#x4ee3;&#x91d1;&#x5238;&#x91d1;&#x989d;&#x5927;&#x4e8e;&#x7b49;&#x4e8e;&#x6d88;&#x8d39;&#x91d1;&#x989d;&#xff0c;&#x5904;&#x7406;&#x903b;&#x8f91;">
<node CREATED="1489223390320" ID="ID_470612817" MODIFIED="1489223473627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28385;100&#36820;5&#20803;&#65292;&#21644;&#27809;&#26377;&#38376;&#27099;&#30452;&#25509;&#25903;&#20184;
    </p>
    <p>
      &#24403;&#20195;&#37329;&#21048;&#22823;&#20110;&#35746;&#21333;&#37329;&#39069;&#65292;&#21363;&#20351;&#29992;&#20195;&#37329;&#21048;&#24182;&#23436;&#25104;&#25903;&#20184;&#12290;
    </p>
    <p>
      &#31639;&#26159;&#19968;&#31181;&#20313;&#39069;&#25903;&#20184;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489224591857" ID="ID_425881243" MODIFIED="1489392372437">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdorder&#24211;&#36861;&#21152;md_order_voucher&#34920;
    </p>
    <ul>
      <li>
        order_id varchar(32) not null
      </li>
      <li>
        voucher_id varchar(32) not null
      </li>
      <li>
        voucher_money decimal(10,2) not null
      </li>
      <li>
        user_id bigint(20) unsigned not null
      </li>
      <li>
        shop_id bigint(20) not null
      </li>
      <li>
        supplier_id bigint(20) not null
      </li>
      <li>
        is_bind tinyint(1) not null
      </li>
      <li>
        bind_time bigint(13) not null
      </li>
      <li>
        unbind_time bigint(13) null
      </li>
      <li>
        delete_time bigint(13) null
      </li>
      <li>
        is_delete tinyint(1) not null default(0)
      </li>
      <li>
        is_used tinyint(1)&#160;&#160;&#160;not null default(0)
      </li>
      <li>
        used_time bigint(13) null
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1489367624943" FOLDED="true" ID="ID_70971823" MODIFIED="1490664753749" TEXT="13&#x53f7;">
<node CREATED="1489367635091" ID="ID_958427319" MODIFIED="1489367641097" TEXT="&#x4ee3;&#x91d1;&#x5238;&#x7ee7;&#x7eed;&#x5f00;&#x53d1;"/>
<node CREATED="1489369062809" ID="ID_258311931" MODIFIED="1489393461248">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdtradecenter&#39033;&#30446;&#25289;&#20986;&#20998;&#25903;voucher-manfan
    </p>
    <p>
      
    </p>
    <p>
      &#22686;&#21152;&#22914;&#19979;&#19977;&#25509;&#21475;
    </p>
    <ul>
      <li>
        &#32465;&#23450;&#20195;&#37329;&#21048; -- &#19979;&#21333;&#65292;&#32465;&#23450;&#29992;&#25143;&#25104;&#21151;&#21518;&#65292;&#21363;&#35843;&#29992;&#12290;
      </li>
      <li>
        &#35299;&#32465;&#20195;&#37329;&#21048; -- &#21482;&#26377;&#25903;&#20184;&#22833;&#36133;&#65292;<b><font color="#ff3300">&#20851;&#38381;&#35746;&#21333;</font></b>&#26102;&#25165;&#35843;&#29992;&#12290;&#20027;&#38190;&#24517;&#39035;&#26159;<b><font color="#00cccc">&#32852;&#21512;&#20027;&#38190;</font></b>&#65292;&#21542;&#21017;&#65292;&#19981;&#33021;&#35299;&#32465;&#24182;&#22797;&#29992;&#20102;&#12290;
      </li>
      <li>
        &#26597;&#35810;&#20195;&#37329;&#21048;&#160;&#160;-- &#25490;&#26597;&#38382;&#39064;&#20351;&#29992;
      </li>
      <li>
        &#20316;&#24223;&#20195;&#37329;&#21048;
      </li>
      <li>
        &#26631;&#35782;&#20351;&#29992;&#20195;&#37329;&#21048;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489456323858" FOLDED="true" ID="ID_521286663" MODIFIED="1490664747604" TEXT="14&#x53f7;">
<node CREATED="1489456470630" FOLDED="true" ID="ID_1502321011" MODIFIED="1489485473626" TEXT="serialVersionUID">
<node CREATED="1489456330546" ID="ID_1994099384" MODIFIED="1489457173625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IDEA&#37324;settings-&gt;inspections-&gt;Serialization issues-&gt;Serializable class without 'serialVersionUID'&#65292;&#21551;&#29992;&#21363;&#21487;&#38024;&#23545;&#24207;&#21015;&#21270;&#31867;&#33258;&#21160;&#29983;&#25104;serialVersionUID&#160;&#160;&#23558;&#20809;&#26631;&#25918;&#32622;&#21040;<b><font color="#6600ff">&#31867;&#21517;</font></b>&#19978;&#25353;<b><font color="#009999">alt+enter</font></b>&#21363;&#21487;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489456814205" ID="ID_1299530543" MODIFIED="1489456979425">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24207;&#21015;&#21270;&#23601;&#26159;&#26681;&#25454;&#36825;&#20010;&#30830;&#20445;&#27491;&#30830;&#24207;&#21015;&#21270;&#65292;&#21453;&#24207;&#21015;&#21270;&#65288;&#21363;&#20415;&#21518;&#32493;&#20462;&#25913;&#20102;&#35813;&#31867;&#65289;&#65292;&#20294;&#22914;&#26524;&#27809;&#26377;&#35813;&#20540;&#65292;&#20462;&#25913;&#21518;&#30340;&#24207;&#21015;&#21270;&#31867;&#20043;&#21069;&#30340;&#29256;&#26412;&#23601;&#19981;&#33021;&#27491;&#30830;&#34987;&#21453;&#24207;&#21015;&#21270;&#20102;&#65292;&#20026;&#27492;&#65292;&#27599;&#27425;&#20462;&#25913;&#35813;&#31867;&#21518;&#37117;&#24212;&#35813;&#20462;&#25913;&#35813;&#20540;&#25165;&#23545;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489458887669" ID="ID_1113070165" MODIFIED="1489485465126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdfrontserver c-&gt;b&#30340;createshorder&#26041;&#27861;&#20013;&#23436;&#25104;&#26657;&#39564;&#65292;&#20923;&#32467;&#65292;&#32465;&#23450;&#20195;&#37329;&#21048;
    </p>
    <p>
      &#19979;&#21320;&#23436;&#25104;&#65292;&#26126;&#22825;&#25630;&#23450;&#25903;&#20184;&#23436;&#25104;&#21518;&#30340;&#27969;&#31243;
    </p>
    <p>
      
    </p>
    <p>
      &#20170;&#22825;&#19979;&#21320;&#20027;&#35201;&#26597;&#20102;&#30830;&#23450;&#20102;&#30495;&#27491;&#21407;&#22240;&#65292;&#23601;&#26159;&#32954;&#32420;&#32500;&#21270;&#24863;&#26579;&#32954;&#28814;&#23601;&#26159;&#27809;&#25937;&#30340;&#65281;&#65292;&#29240;&#29240;&#30340;&#20307;&#36136;&#20063;&#26080;&#27861;&#25171;&#30123;&#33495;&#65292;&#23601;&#26159;&#35201;&#36208;&#20102;&#65292;&#25105;&#20063;&#26377;&#32963;&#39135;&#31649;&#21453;&#27969;&#30340;&#27611;&#30149;&#65292;&#19981;&#27880;&#24847;&#20063;&#23601;&#26159;&#32954;&#32420;&#32500;&#21270;&#20102;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#26126;&#22825;&#32487;&#32493;&#22909;&#22909;&#24178;&#27963;&#65292;&#36825;&#20107;&#21040;&#27492;&#20026;&#27490;&#65292;&#29240;&#29240;&#36825;&#31181;&#36208;&#27861;&#19981;&#20111;&#20102;&#65292;&#20116;&#24180;&#27809;&#20107;&#20063;&#26159;&#22855;&#36857;&#20102;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489459577781" ID="ID_818749789" LINK="http://www.wenxuecity.com/blog/201701/70732/6662.html" MODIFIED="1489485552935">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21516;&#26679;&#30340;&#30149;&#20363;&#65292;&#21516;&#26679;&#30340;&#23548;&#28436;&#20309;&#32676;&#20063;&#26159;&#22914;&#27492;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489538934381" FOLDED="true" ID="ID_79769526" MODIFIED="1490664740444" TEXT="15&#x53f7;">
<node CREATED="1489546545576" ID="ID_792601356" MODIFIED="1489550347062" TEXT="&#x5f53;&#x524d;&#x65f6;&#x95f4;">
<node CREATED="1489546273075" ID="ID_1274670190" MODIFIED="1489546538484">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Java&#24403;&#21069;&#26102;&#38388; System.currentTimeMillis()&#65292;&#33258;1970.1.1 0&#28857;&#30340;&#26102;&#38388;&#38388;&#38548;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#6600cc">Date</font>&#160;date = new Date(System.currentTimeMillis());
    </p>
    <p>
      <font color="#6600cc">SimpleDateFormat</font>&#160;simp = new SimpleDateFormat(&quot;yyyy-MM-dd&quot;);
    </p>
    <p>
      String today&#160;&#160;= simp.format(date);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489546556416" ID="ID_28277209" LINK="#ID_785649885" MODIFIED="1489546587724" TEXT="mysql"/>
</node>
<node CREATED="1489559120711" ID="ID_883027192" MODIFIED="1489569352796">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23558;mdpaygate&#30340;consumeQueue&#30340;&#25209;&#37327;&#22788;&#29702;&#25968;&#37327;&#30001;50&#35843;&#25972;&#20026;1000
    </p>
    <p>
      &#39640;&#23792;&#26399;&#36825;&#20010;&#29615;&#33410;&#20986;&#29616;&#20102;6&#31186;&#30340;&#24310;&#36831;&#65292;&#20877;&#27425;&#25913;&#20026;200&#65292;&#25490;&#26597;&#25903;&#20184;&#25104;&#21151;&#36890;&#30693;&#24930;&#30340;&#21407;&#22240;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489569355328" ID="ID_1267134525" MODIFIED="1489569409701">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23436;&#25104;mdtradecenter&#30340;&#20195;&#37329;&#21048;&#20887;&#20313;&#35760;&#24405;&#32534;&#30721;
    </p>
    <p>
      
    </p>
    <p>
      &#26126;&#22825;&#38598;&#25104;&#21040;mdfrontserver&#19994;&#21153;&#20013;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489626673504" FOLDED="true" ID="ID_1539688136" MODIFIED="1490664733051" TEXT="16&#x53f7;">
<node CREATED="1489631565144" ID="ID_830962877" MODIFIED="1489631585010" TEXT="&#x4eca;&#x5929;&#x4e89;&#x53d6;&#x5b8c;&#x6210;&#x5168;&#x90e8;&#x7f16;&#x7801;"/>
<node CREATED="1489650311105" ID="ID_885947225" MODIFIED="1489650346222">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20020;&#26102;&#25601;&#32622;&#65292;&#37325;&#28857;&#35299;&#20915;queue&#26426;&#21046;&#65292;&#30475;&#26377;&#25913;&#21892;&#31354;&#38388;&#21527;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489659875480" ID="ID_1459521839" MODIFIED="1489659919386" TEXT="&#x660e;&#x5929;&#x7d27;&#x6025;&#x4fee;&#x6539;&#x5728;&#x56de;&#x8c03;&#x901a;&#x77e5;&#x9a6c;&#x4e0a;&#x8c03;&#x7528;&#x53d1;&#x9001;&#x58f0;&#x97f3;&#x901a;&#x77e5;&#x529f;&#x80fd;&#xff0c;&#x4ee3;&#x91d1;&#x5238;&#x6682;&#x505c;&#x5230;&#x4e0b;&#x5468;&#x4e00;"/>
</node>
<node CREATED="1489717357702" FOLDED="true" ID="ID_1276339260" MODIFIED="1490691259123" TEXT="17&#x53f7;">
<node CREATED="1489717367773" ID="ID_1784056936" MODIFIED="1489737446647">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23436;&#25104;mdpaygate&#35821;&#38899;&#36890;&#30693;&#20462;&#25913;&#65292;&#20170;&#22825;&#24120;&#35268;&#29615;&#22659;&#32852;&#35843;&#36890;&#36807;&#21518;&#25171;&#21253;&#65292;&#21516;&#26102;&#25277;&#31354;&#22810;&#30475;&#30475;mdpaygate&#30340;queue&#25552;&#21462;&#26426;&#21046;
    </p>
    <p>
      
    </p>
    <p>
      &#30830;&#23450;&#20102;4&#21488;mdpaygate&#26426;&#22120;&#25191;&#34892;&#65292;&#20294;&#38382;&#39064;&#22312;&#26377;&#26102;&#20505;&#26576;&#26465;&#35760;&#24405;&#24310;&#36831;6&#31186;&#25165;&#33021;&#25552;&#20986;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489741096443" ID="ID_324524925" MODIFIED="1489744101727">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25490;&#26597;&#35746;&#21333;&#35821;&#21477;&#65292;228&#24211;
    </p>
    <p>
      <font color="rgb(0, 0, 0)" face="&#x5fae;&#x8f6f;&#x96c5;&#x9ed1;">Z170316438663&#65292;131307555&#65288;id)</font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      select * from md_pay_queue_bak where id&gt;131307500 and id&lt;131307600
    </p>
    <p>
      
    </p>
    <p>
      &#26597;&#20837;&#24211;&#65292;&#20986;&#24211;&#26102;&#38388;&#65292;mdpaygate&#22235;&#21488;&#36880;&#19968;&#26680;&#23545;
    </p>
    <p>
      
    </p>
    <p>
      &#21021;&#27493;&#24576;&#30097;&#26159;nextconsumetime null&#38393;&#30340;
    </p>
    <p>
      
    </p>
    <p>
      find . -regex &quot;.*\(\.log.20170316\)$&quot;|xargs cat|grep -E &quot;2017-03-16 14:14:4[3-9]{1}.{1,}dbMsgConsumer.{1,}QueueDomainRepository&quot; --color=auto
    </p>
    <p>
      
    </p>
    <p>
      &#21487;&#33021;&#21608;&#19968;&#26469;&#26085;&#24535;&#24050;&#21024;&#38500;
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff6666">&#20180;&#32454;&#26597;&#20837;&#24211;&#27969;&#31243;&#65292;createtime&#26377;&#38382;&#39064;&#65292;&#21363;createtime&#26089;&#30340;&#20837;&#24211;&#24863;&#35273;&#21453;&#32780;&#26202;&#20102;&#65292;&#27605;&#31455;createtime&#26159;&#31243;&#24207;&#22635;&#20889;&#19981;&#26159;&#25968;&#25454;&#24211;&#29983;&#25104;</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1489968049904" FOLDED="true" ID="ID_1963375943" MODIFIED="1490664727548" TEXT="20&#x53f7;">
<node CREATED="1489968060312" ID="ID_1135129498" MODIFIED="1489968093780" TEXT="&#x914d;&#x5408;&#x8bed;&#x97f3;&#x8054;&#x8c03;&#xff0c;&#x7ee7;&#x7eed;&#x67e5;queue&#x6162;&#x4e8b;&#x5b9c;"/>
<node CREATED="1489991318534" ID="ID_1171615802" MODIFIED="1489992018870">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25552;&#20986;&#24930;&#30340;&#26681;&#26412;&#21407;&#22240;&#25214;&#21040;&#20102;&#65292;&#26377;&#19968;&#21488;mdpaygate 02&#26426;&#22120;&#24930;10&#31186;&#65292;&#37027;&#20040;&#65292;&#19979;&#21333;&#26102;&#38388;&#26089;,&#20837;queue+10s&#65292;&#20986;queue&#21017;&#21487;&#33021;&#23548;&#33268;&#20002;&#22833;&#65292;&#22914;&#26524;&#20986;queue&#21457;&#29983;&#22312;02&#26426;&#22120;&#65292;&#21017;&#24517;&#26202;6&#31186;&#160;,insert queue&#23548;&#33268;&#25552;&#20986;&#24930;&#20102;&#65292;&#36825;&#25165;&#26159;update&#24930;&#29616;&#35937;&#30340;&#26681;&#26412;&#21407;&#22240;&#65292;&#35299;&#20915;&#21150;&#27861;&#65292;<font color="#ff6666">&#30830;&#20445;&#26381;&#21153;&#22120;&#21516;&#27493;&#26102;&#38388;&#65292;&#21542;&#21017;&#26080;&#35770;&#22914;&#20309;&#37117;&#26377;&#38382;&#39064;</font>&#12290;
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1489998441797" ID="ID_413107854" MODIFIED="1489998464193" TEXT="&#x4e0b;&#x5468;&#x4e00;&#x5b8c;&#x6210;&#x4ee3;&#x91d1;&#x5238;&#x6240;&#x6709;&#x7f16;&#x7801;&#xff08;&#x52a0;&#x73ed;&#x52a0;&#x70b9;&#x5b8c;&#x6210;&#xff09;"/>
<node CREATED="1490001935882" ID="ID_1115503720" MODIFIED="1490002067331">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mysql&#30340;now()&#65292;&#26159;&#20197;&#31186;&#20026;&#21333;&#20301;&#36716;&#25442;&#30340;Long&#22411;
    </p>
    <p>
      Java&#30340;System.currentTimeMili()&#65292;&#26159;&#20197;&#27627;&#31186;&#20026;&#21333;&#20301;&#30340;&#65292;&#25925;&#32780;&#65292;&#35201;&#29992;mysql&#30340;FROM_UNIXTIME&#65292;&#19968;&#33324;&#35201;&#38500;&#20197;1000&#65292;&#21478;&#22806;&#65292;&#20445;&#23384;&#19968;&#33324;&#37319;&#29992;Bigint(13)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1490573571000" FOLDED="true" ID="ID_1169149676" MODIFIED="1490664705218" TEXT="27&#x53f7;">
<node CREATED="1490580661985" ID="ID_321254529" MODIFIED="1490610235534">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      OrderFsServiceAdapter&#65292;&#20351;&#29992;&#20195;&#37329;&#21048;
    </p>
    <p>
      &#26242;&#26102;&#21482;&#32771;&#34385;c-&gt;b&#30340;&#20195;&#37329;&#21048;&#65292;&#20134;&#21363;<font color="#9900ff">createshOrder</font>&#26041;&#27861;&#30340;&#20462;&#25913;
    </p>
    <p>
      
    </p>
    <p>
      &#20808;&#35843;&#29992;&#24426;&#24426;&#30340;&#25509;&#21475;&#36827;&#34892;&#31995;&#21015;&#25805;&#20316;&#65292;&#28982;&#21518;&#35843;&#29992;&#25105;&#33258;&#24049;&#30340;&#25509;&#21475;&#20570;<font color="#9900ff">&#20887;&#20313;&#26085;&#24535;</font>&#32780;&#24050;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      &#24426;&#24426;&#25509;&#21475;
    </p>
    <ul>
      <li>
        verifyPayMoney &#26657;&#39564;&#20195;&#37329;&#21048;
      </li>
      <li>
        freezeVoucher &#20923;&#32467;&#20195;&#37329;&#21048;
      </li>
      <li>
        bindVoucherToUser &#32465;&#23450;&#20195;&#37329;&#21048;
      </li>
    </ul>
    <p>
      &#38656;&#35201;&#32993;&#27491;newwap&#65292;&#20256;&#20837;<b><font color="#9933ff">consumeMoney</font></b>,&#29992;&#25143;&#36755;&#20837;&#30340;&#25903;&#20184;&#37329;&#39069;&#65292;
    </p>
    <p>
      <b><font color="#9933ff">payMoney</font></b>&#65292;&#25187;&#38500;&#20195;&#37329;&#21048;&#37329;&#39069;&#21518;&#23454;&#38469;&#35201;&#25903;&#20184;&#30340;&#37329;&#39069;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1490593887864" ID="ID_1623065471" MODIFIED="1490593905962" TEXT="&#x989d;&#x5916;&#x4fee;&#x6539;bizhttpserver&#x534f;&#x8bae;"/>
<node CREATED="1490601777809" ID="ID_1246701246" MODIFIED="1490601869427">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26597;&#33258;&#21160;&#34917;&#21333;&#65292;&#27809;&#38382;&#39064;
    </p>
    <p>
      &#33258;&#21160;&#34917;&#21333;&#21482;&#38024;&#23545;order_status=3&#30340;&#65292;&#20854;&#20313;&#29366;&#24577;&#19968;&#24459;&#19981;&#31649;
    </p>
    <p>
      &#26376;&#24198;&#32473;&#30340;&#19968;&#25209;&#35746;&#21333;&#21495;&#65292;&#26377;&#21462;&#28040;&#29366;&#24577;&#65292;&#26377;&#32465;&#23450;&#29366;&#24577;&#23601;&#26159;&#27809;&#26377;&#29366;&#24577;&#20026;3
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1490665163008" FOLDED="true" ID="ID_180679266" MODIFIED="1490774168096" TEXT="28&#x53f7;">
<node CREATED="1490665168950" ID="ID_642281952" MODIFIED="1490666121148">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21448;&#21457;&#29616;&#19968;&#22788;&#65292;&#22312;generateorder&#26102;&#65292;blacklist&#20160;&#20040;&#39740;&#65292;&#26377;&#27492;blacklist&#21017;&#20250;insert redis,&#26080;&#36807;&#26399;&#26102;&#38388;
    </p>
    <p>
      
    </p>
    <p>
      &#19988;&#21457;&#29616;MD-PAYSTATUS,MD-ORDERSTATUS&#65292;&#24182;&#27809;&#22312;&#20132;&#26131;&#22235;&#20010;&#24037;&#31243;&#20013;&#20351;&#29992;&#65292;&#21807;&#19968;&#30340;MD-REFUNDSTATUS&#22312;MDTask&#20013;&#20351;&#29992;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1490667531530" ID="ID_185300605" MODIFIED="1490667615748" TEXT="/order/query/queryorderbyid&#xff0c;&#x770b;&#x6709;&#x5ba2;&#x6237;&#x7aef;&#x6216;jobcenter&#x7528;&#x5230;&#x5417;&#xff0c;&#x5426;&#x5219;&#xff0c;&#x53ef;&#x4e0d;&#x5199;&#x5165;"/>
<node CREATED="1490686947524" ID="ID_1940563064" MODIFIED="1490686996285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      c-&gt;b&#20195;&#37329;&#21048;&#37329;&#39069;&#22823;&#20110;&#25903;&#20184;&#26102;&#65292;&#22914;&#20309;&#21047;&#24211;&#65281;
    </p>
  </body>
</html></richcontent>
<node BACKGROUND_COLOR="#ccccff" CREATED="1490687521589" ID="ID_644780076" MODIFIED="1490687535604" TEXT="OrderPayDomain">
<node CREATED="1490687541817" ID="ID_346034502" MODIFIED="1490687645782">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tradeExtService.orderPayCheck
    </p>
    <p>
      
    </p>
    <p>
      &#20063;&#21482;&#26159;&#26597;&#35810;<b><font color="#9933ff">md_order_info</font></b>&#34920;&#65292;&#30830;&#23450;&#26159;&#21542;&#25903;&#20184;&#65292;&#26159;&#21542;&#32465;&#23450;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1490689416865" ID="ID_762071896" MODIFIED="1490689458139">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19981;&#26159;&#31532;&#19977;&#26041;&#25903;&#20184;&#65292;&#19981;&#23384;&#22312;&#32467;&#31639;&#30340;&#24773;&#20917;&#19979;&#65292;&#30452;&#25509;&#21482;&#22788;&#29702;md_order_info&#34920;&#30456;&#24212;&#35760;&#24405;&#21363;&#21487;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1488530637816" ID="ID_351488812" MODIFIED="1488530654627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jiesuanAmount
    </p>
    <p>
      
    </p>
    <pre style="background-color: #ffffff; color: #000000; font-family: &#x5b8b;&#x4f53;; font-size: 11.3pt"><font color="#660e7a"><b>orderInfoDO</b></font>.setJiesuanAmount(<br />        <font color="#660e7a"><b>orderInfoDO</b></font>.getBillAmount()<br />             .subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getBillAmount().subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getNoRebateMoney())<br />                        .multiply(<font color="#660e7a"><b>orderInfoDO</b></font>.getRebateRate().divide(<font color="#000080"><b>new </b></font>BigDecimal(<font color="#0000ff">100</font>))))<br />                .subtract(<font color="#660e7a"><b>orderInfoDO</b></font>.getPayFee()).setScale(<font color="#0000ff">2</font>, BigDecimal.<font color="#660e7a"><b><i>ROUND_HALF_UP</i></b></font>)</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1490690360849" ID="ID_911396684" MODIFIED="1490690386856" TEXT="&#x660e;&#x540e;&#x4e24;&#x5929;&#x5b8c;&#x6210;&#x7f16;&#x7801;&#x5427;"/>
</node>
<node CREATED="1490757123930" FOLDED="true" ID="ID_121645310" MODIFIED="1490863979967" TEXT="29&#x53f7;">
<node CREATED="1490757131570" ID="ID_939125305" MODIFIED="1490757155993" TEXT="Z17032818983 &#x7ed1;&#x5b9a;&#x8ba2;&#x5355;&#x5931;&#x8d25;,b-&gt;c 81"/>
<node CREATED="1490758141407" ID="ID_1676458159" MODIFIED="1490758288691">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Z170328234158 &#20013;&#21320;11:53&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      jedis get lock error! key:MD_PAY_GATE_trade_Z1703282341580000
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1490758568048" ID="ID_211197772" MODIFIED="1490758584566">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      jedis get lock error! key:MD_PAY_GATE_trade_Z1703282341680000
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1490767388010" ID="ID_1261923085" MODIFIED="1490767449229">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdpaygate-cache-impl-bean.xml
    </p>
    <p>
      
    </p>
    <p>
      &#35843;&#25972; dlock&#20351;&#29992;&#30340;redis&#36830;&#25509;&#27744;&#65292;&#25628;&#32034;dlockConfig&#37197;&#32622;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1490772103421" ID="ID_1920575632" MODIFIED="1490772185372">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21047;&#24211;
    </p>
    <ul>
      <li>
        PaySuccessModel
      </li>
      <li>
        payService.paySuccessCallback(paySuccessModel)
      </li>
      <li>
        payService.updateOrderStatus2Rdis(orderid,5,2,0)
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1490772598959" ID="ID_1090807066" MODIFIED="1490772681269">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      update4PaySuccess
    </p>
    <p>
      
    </p>
    <p>
      &#26597;mdtradecenter&#30830;&#35748;&#26356;&#26032;&#37027;&#20123;&#23383;&#27573;
    </p>
  </body>
</html></richcontent>
</node>
<node BACKGROUND_COLOR="#ccffff" CREATED="1490774767884" ID="ID_1035771935" MODIFIED="1490774882768">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      mdtradecenter&#160;
    </p>
    <p>
      
    </p>
    <p>
      OrderPaySuccessDomain.java -&gt;fillOrderInDo&#20013;&#26377;&#25163;&#32493;&#36153;&#22914;&#20309;&#35745;&#31639;&#20844;&#24335;
    </p>
    <p>
      &#20197;&#21450;moneypaid,billAmount&#30340;&#35843;&#25972;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1490862072501" ID="ID_237051751" MODIFIED="1490865582114" TEXT="30&#x53f7;">
<node CREATED="1490862082797" ID="ID_485648471" MODIFIED="1490862144977">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      order_amount&#65292;&#24212;&#20184;&#27454;&#37329;&#39069;
    </p>
    <p>
      &#23454;&#38469;&#19978;&#26368;&#32456;&#37117;&#21464;&#20026;0.0&#65292;&#36825;&#19968;&#23383;&#27573;&#38656;&#25630;&#26126;&#30333;
    </p>
    <p>
      &#26159;&#25903;&#20184;&#21069;&#30340;&#25552;&#21462;&#21040;lessAmount&#30340;&#20540;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1490862223794" ID="ID_1317322195" MODIFIED="1490862252602" TEXT="&#x4ee3;&#x91d1;&#x5238;&#x5927;&#x4e8e;&#x652f;&#x4ed8;&#x989d;&#x7684;&#x5904;&#x7406;&#x6682;&#x65f6;&#x5b8c;&#x6bd5;&#xff0c;&#x5f85;&#x786e;&#x5b9a;lessAmount&#x7684;&#x771f;&#x5b9e;&#x542b;&#x4e49;"/>
<node CREATED="1490862858668" ID="ID_1088680593" MODIFIED="1490862862961" TEXT="&#x4e0b;&#x8ba2;&#x5355;">
<node CREATED="1490862864925" ID="ID_1543849710" MODIFIED="1490862956459">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#39318;&#20808;&#20889;&#20837;&#30340;&#26159; billamount&#65292;&#37319;&#29992;newwap&#20256;&#20837;&#30340;conusmemoney&#23383;&#27573;
    </p>
  </body>
</html>
</richcontent>
</node>
<node BACKGROUND_COLOR="#ccffcc" CREATED="1490863296476" ID="ID_878325727" MODIFIED="1490865692204">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#cc33ff">OrderCreateDomain</font></b>-&gt;fillOrderInfoDO
    </p>
    <p>
      -&gt;billAmount = getBillAmount
    </p>
    <p>
      &#160;&#160;&#160;&#160;orderAmount = getBillAmount
    </p>
    <p>
      &#160;&#160;&#160;&#160;addTime = current
    </p>
    <p>
      &#160;&#160;&#160;&#160;BindLimitTime = current + 15*60000,15&#20998;&#38047;
    </p>
    <p>
      -&gt; jiesuanAmount&#35774;&#32622;&#65292;&#20844;&#24335;&#20063;&#22312;&#27492;&#22788;&#65281;
    </p>
    <p>
      -&gt;payfee&#20808;&#21021;&#22987;&#21270;&#20026;0&#65292;&#31532;&#19977;&#26041;&#25903;&#20184;&#23436;&#25104;&#21518;&#20877;&#35745;&#31639;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1490865585694" ID="ID_1985859982" MODIFIED="1490865591956" TEXT="&#x652f;&#x4ed8;&#x5b8c;&#x6210;">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1490865594557" ID="ID_27784270" MODIFIED="1490865703273">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#3333ff">OrderPaySuccessDomain</font></b>-&gt;fillOrderInfoDo
    </p>
    <p>
      newOrderAmount ==0 &#32780;&#19988; orderAmount==newMoneyPaid&#25165;&#20250;&#27491;&#24120;&#21047;pay_status_payed&#29366;&#24577;&#65281;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1490863936418" ID="ID_635675519" MODIFIED="1490863971458">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26126;&#22825;&#32454;&#32454;&#26803;&#29702;&#27491;&#24120;&#20195;&#37329;&#21048;&#22788;&#29702;&#27969;&#31243;&#65292;&#23588;&#20854;orderamount&#23383;&#27573;&#30340;&#22788;&#29702;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1490918878681" ID="ID_1097489733" MODIFIED="1490918888899" TEXT="31&#x53f7;">
<node CREATED="1490927396082" FOLDED="true" ID="ID_429157155" MODIFIED="1490949828742" TEXT="&#x4ee3;&#x91d1;&#x5238;&#x5b8c;&#x5168;&#x652f;&#x4ed8;">
<node CREATED="1490927407421" ID="ID_1072683299" MODIFIED="1490944544562" TEXT="&#x5237;&#x5e93;&#x51c6;&#x5907;&#x6570;&#x636e;">
<node CREATED="1490927426288" ID="ID_1033570557" MODIFIED="1490927437928">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/03/&#x4ee3;&#x91d1;&#x5238;&#x5b8c;&#x5168;&#x652f;&#x4ed8;-01.jpg" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1490930597198" ID="ID_1713457103" MODIFIED="1490930646111">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      setThirdPartyPayMoney,&#30446;&#21069;&#38480;&#21046;&#24517;&#39035;&#19982;&#25968;&#25454;&#24211;&#20013;&#30340;order_amount&#19968;&#33268;&#65281;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1490944124132" FOLDED="true" ID="ID_176460442" MODIFIED="1490944153433" TEXT="md_order_info&#x91d1;&#x989d;&#x5b57;&#x6bb5;">
<node CREATED="1490944139319" ID="ID_164914420" MODIFIED="1490944146682">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2017/03/&#x91d1;&#x989d;&#x5b57;&#x6bb5;.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1490948873128" ID="ID_1142320635" MODIFIED="1490948882448" TEXT="c-&gt;b&#x903b;&#x8f91;">
<node CREATED="1490948885003" ID="ID_48800540" MODIFIED="1490949049384">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26242;&#26102;&#21482;&#25903;&#25345;c-&gt;b&#65292;&#22240;&#20026;&#26242;&#26102;&#21482;&#26377;c-&gt;b&#25165;&#33021;&#20107;&#20808;&#33719;&#21462;&#29992;&#25143;&#65288;&#22240;&#20026;&#26159;&#29992;&#25143;&#25163;&#26426;&#25195;&#20108;&#32500;&#30721;&#65292;&#33258;&#24102;openid&#36807;&#26469;&#65289;&#65292;&#25165;&#33021;&#30693;&#36947;&#35813;&#29992;&#25143;&#25317;&#26377;&#21738;&#20123;&#20195;&#37329;&#21048;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1490949051563" ID="ID_51343237" MODIFIED="1490949294635">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38656;&#35201;newwap&#20256;&#20837;consumemoney,&#35746;&#21333;&#24635;&#39069;&#65292;&#39069;&#22806;&#20256;&#19968;&#20010;<font color="#0000cc">&#26174;&#31034;</font>&#32473;&#29992;&#25143;&#30340;&#26368;&#32456;&#25903;&#20184;&#37329;&#39069;paymoney&#20197;&#21450;&#30456;&#24212;&#30340;&#20195;&#37329;&#21048;id
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <font color="#009999">&#25105;&#20204;&#38656;&#35201;&#26681;&#25454;&#20195;&#37329;&#21048;id&#21453;&#36807;&#26469;&#39564;&#35777;&#20195;&#37329;&#21048;&#37329;&#39069; </font>
      </li>
      <li>
        <font color="#009999">&#25903;&#20184;&#21069;&#65292;&#22914;&#26524;&#20195;&#37329;&#21048;&#37329;&#39069;&#22823;&#20110;&#24212;&#20184;&#27454;(order_amount)&#65292;&#21363;&#29992;&#25143;&#36755;&#20837;&#30340;&#37329;&#39069;&#65292;&#21017;&#30452;&#25509;&#32467;&#26463;&#12290; </font>
      </li>
      <li>
        <font color="#009999">&#21542;&#21017;&#65292;&#36827;&#20837;&#20313;&#39069;&#25187;&#38500;&#29615;&#33410;&#65292;&#20195;&#37329;&#21048;&#25187;&#38500;&#29615;&#33410;&#24471;&#21040;&#26368;&#32456;&#24212;&#20184;&#27454;&#24182;&#36827;&#20837;&#31532;&#19977;&#26041;&#25903;&#20184;</font>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1490949832855" ID="ID_740687258" MODIFIED="1490955687465">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23545;&#20110;&#31532;&#19977;&#26041;&#25903;&#20184;&#30340;&#21017;&#36824;&#35201;&#21457;&#36865;&#20195;&#37329;&#21048;&#65292;&#32479;&#19968;&#22312;mdfrontserver&#30340;paycallback.do&#20013;&#22788;&#29702;
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        &#20808;&#26681;&#25454;orderId&#25552;&#21462;&#30456;&#24212;&#26377;&#25928;&#20195;&#37329;&#21048;&#65292;&#22914;&#26524;&#26377;&#35760;&#24405;&#21017;&#26681;&#25454;&#25903;&#20184;&#32467;&#26524;&#65292;&#26631;&#35782;&#20351;&#29992;&#20195;&#37329;&#21048;&#65292;&#35299;&#32465;&#20195;&#37329;&#21048;
      </li>
      <li>
        &#22312;&#36864;&#27454;&#37096;&#20998;&#65292;&#21017;&#20316;&#24223;&#20195;&#37329;&#21048;&#12290;
      </li>
    </ul>
    <p>
      &#30456;&#24212;&#20462;&#25913;&#20102;mdtradecenter&#37096;&#20998;&#65292;&#27880;&#24847;&#21512;&#24182;master&#30456;&#20851;&#20462;&#25913;&#36827;&#26469;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1487659705162" FOLDED="true" ID="ID_312284204" MODIFIED="1490668304468" TEXT="notice">
<node CREATED="1486367498106" ID="ID_1675502465" MODIFIED="1487659721070">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25628;&#32034;<font color="#ff3300">tradeextservice</font>&#65292;&#33021;&#30475;&#21040;paytype&#36716;&#25442;&#36890;&#36947;&#20837;&#21475;&#30340;&#25152;&#26377;&#35828;&#26126;
    </p>
    <p>
      
    </p>
    <p>
      SetPayArgToOrderPayDomain&#65292;&#33021;&#30475;&#21040;&#25903;&#20184;&#37197;&#32622;&#21442;&#25968;&#22788;&#29702;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1487641288013" ID="ID_480863181" MODIFIED="1487641476976">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#19968;&#33324;&#29992;<b><font color="#cc00ff">ps -ef|grep</font><font color="#3300ff">&#160;mdfrontserver</font></b>
    </p>
    <p>
      &#26597;&#35810;&#21040;&#20854;&#21551;&#21160;&#30340;<b><font color="#009900">resin&#36827;&#31243;</font></b>&#20013;&#30340;<b><font color="#009999">--log-directory</font></b>&#30446;&#24405;&#65292;&#26597;&#35810;&#20854;&#20869;&#30340;<b><font color="#3300ff">jvm-</font>mdfrontserver.log</b>&#25991;&#20214;&#20013;<b><font color="#009900">&#21551;&#21160;&#37096;&#20998;</font></b>&#20869;&#23481;&#65292;&#33021;&#30475;&#21040;&#20855;&#20307;&#30340;<b><font color="#009999">&#19994;&#21153;&#26085;&#24535;</font></b>&#20889;&#22312;&#21738;&#20010;&#30446;&#24405;&#37324;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1486517411161" ID="ID_337440699" LINK="http://tool.chinaz.com/Tools/unixtime.aspx" MODIFIED="1486517451914" TEXT="unix&#x65f6;&#x95f4;&#x6233;&#x5728;&#x7ebf;&#x67e5;&#x8be2;&#x5de5;&#x5177;&#xff0c;&#x6709;&#x79d2;&#x548c;&#x6beb;&#x79d2;&#x533a;&#x5206;"/>
<node CREATED="1487665064744" FOLDED="true" ID="ID_101792817" MODIFIED="1490668301755" TEXT="Queue&#x673a;&#x5236;">
<node CREATED="1487661546848" ID="ID_52407655" MODIFIED="1487723548224">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Event&#26426;&#21046;&#30340;&#24212;&#29992;&#22330;&#26223;
    </p>
    <p>
      
    </p>
    <p>
      &#23427;&#30340;&#26680;&#24515;&#26159;<b><font color="#0099ff">Event&#31867;</font></b>&#65292;&#35813;&#31867;&#28041;&#21450;&#20102;&#20004;&#20010;&#26680;&#24515;&#23646;&#24615;
    </p>
    <ul>
      <li>
        &#35201;&#22788;&#29702;&#30340;&#25968;&#25454;<b><font color="#0099ff">data</font></b>
      </li>
      <li>
        &#35774;&#32622;&#29992;&#26469;&#35201;&#22788;&#29702;&#30340;&#31867;<b><font color="#0099ff">eventType -- &#26681;&#25454;</font><font color="#006600">eventType</font><font color="#0099ff">&#20250;&#29983;&#25104;&#30456;&#24212;&#30340;&#22788;&#29702;&#31867;</font><font color="#00cccc">EventHandle</font><font color="#0099ff">.(&#26368;&#32456;&#20250;&#29992;</font><font color="#9900ff">EventWorker</font><font color="#0099ff">&#26469;&#20851;&#32852;event - eventHandle&#65292;&#29992;eventHandle&#30340;handleEvent&#22788;&#29702;event)</font></b>
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1487662804845" FOLDED="true" ID="ID_1409344003" MODIFIED="1487723551978">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21516;&#27493;addEventSync
    </p>
  </body>
</html></richcontent>
<node CREATED="1487663530771" ID="ID_1028611028" MODIFIED="1487663666409">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26680;&#24515;&#26159;EventManagerImpl&#30340;addEventSync&#26041;&#27861;&#20869;&#30340;<b><font color="#0099ff">ThreadPoolTaskExecutor</font></b>&#31867;&#65288;&#36825;&#26159;spring-context&#32452;&#20214;&#25552;&#20379;&#30340;&#24182;&#21457;&#31867;&#65289;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487662824933" FOLDED="true" ID="ID_1605340847" MODIFIED="1487723554386" TEXT="&#x5f02;&#x6b65;addEvent">
<node CREATED="1487663435356" ID="ID_956395931" MODIFIED="1487663799625">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26680;&#24515;&#26159;EventScheduled&#22788;&#29702;&#31867;
    </p>
    <p>
      
    </p>
    <p>
      &#23454;&#38469;&#23601;&#26159;&#25172;&#21040;&#38431;&#21015;&#30001;&#19981;&#26029;&#36816;&#34892;&#30340;&#32447;&#31243;(<b><font color="#0099ff">ScheduledExecutorService</font></b>,&#30001;java.util.concurrent&#25552;&#20379;)&#21435;&#22788;&#29702;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487664305783" ID="ID_1256356454" MODIFIED="1487664597853">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#30446;&#21069;&#21482;&#22312;<b><font color="#0099ff">QueueConsumeTask</font></b>&#20013;&#20351;&#29992;&#20102;addEventSync&#65292;&#24322;&#27493;&#29256;&#26681;&#26412;&#23601;&#27809;&#29992;&#65281;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1487733113885" ID="ID_1321422957" MODIFIED="1490664710485" TEXT="&#x4ea4;&#x6613;&#x4e2d;&#x5fc3;">
<node BACKGROUND_COLOR="#ffffcc" CREATED="1487731168360" FOLDED="true" ID="ID_1750382160" MODIFIED="1490664714187" TEXT="&#x5f00;&#x53d1;sql">
<node CREATED="1487731188517" ID="ID_145823177" LINK="2017/02/md_order_info_data_1.sql" MODIFIED="1487731279096" TEXT="&#x67e5;&#x8be2;&#x8ba2;&#x5355;&#x72b6;&#x6001;"/>
<node CREATED="1487731281398" ID="ID_1789928797" LINK="2017/02/get%20account.sql" MODIFIED="1487731323423" TEXT="&#x6839;&#x636e;&#x95e8;&#x5e97;id&#x6216;&#x8005;&#x5546;&#x6237;id&#x67e5;&#x8be2;b&#x7aef;&#x767b;&#x9646;&#x8d26;&#x6237;"/>
</node>
<node CREATED="1487731494776" FOLDED="true" ID="ID_447635710" MODIFIED="1490664718877" TEXT="&#x81ea;&#x6d4b;&#x73af;&#x8282;">
<node CREATED="1487731501234" ID="ID_76665171" MODIFIED="1487731508084" TEXT="&#x5fae;&#x4fe1;&#x652f;&#x4ed8;">
<node CREATED="1487731528067" ID="ID_893677008" MODIFIED="1487731550827" TEXT="b&#x626b;c">
<node CREATED="1487732995900" ID="ID_1560885992" MODIFIED="1487733004816" TEXT="&#x4f1a;&#x6709;5&#x6b21;&#x652f;&#x4ed8;"/>
</node>
<node CREATED="1487731552003" ID="ID_9982898" MODIFIED="1487731561572" TEXT="c&#x626b;b"/>
<node CREATED="1487731563030" ID="ID_1780362252" MODIFIED="1487731570276" TEXT="&#x9000;&#x6b3e;"/>
<node CREATED="1487731572777" ID="ID_1858143355" MODIFIED="1487733052631">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#009999">&#26377;&#23494;&#25903;&#20184;&#65288;5&#27425;&#25903;&#20184;&#21363;&#21487;&#35302;&#21457;&#65289;,&#20165;&#38480;&#20110;b&#25195;c&#25903;&#20184;</font></b>&#65292;c&#25195;b&#23454;&#38469;&#27599;&#27425;&#37117;&#35201;&#27714;&#36755;&#20837;&#23494;&#30721;&#20102;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1487731509111" ID="ID_958313180" MODIFIED="1487731516053" TEXT="&#x652f;&#x4ed8;&#x5b9d;&#x652f;&#x4ed8;"/>
<node CREATED="1487733058075" ID="ID_1771876145" MODIFIED="1487733086793" TEXT="&#x80e1;&#x6b63;&#x63d0;&#x4f9b;&#x7684;&#x4e8c;&#x7ef4;&#x7801;&#x548c;b&#x626b;c&#x5de5;&#x5177;&#x5b9e;&#x9645;&#x901a;&#x7528;&#x4e8e;&#x5fae;&#x4fe1;&#x548c;&#x652f;&#x4ed8;&#x5b9d;"/>
</node>
</node>
<node CREATED="1487812544866" FOLDED="true" ID="ID_1389613243" LINK="http://cli.im/" MODIFIED="1487898468703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26377;&#29992;&#30340;&#20108;&#32500;&#30721;&#22270;&#29255;&#22312;&#32447;&#29983;&#25104;&#32593;&#22336;
    </p>
  </body>
</html></richcontent>
<node CREATED="1487821444662" ID="ID_1243732918" MODIFIED="1487821462712">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#24120;&#35215;
    </p>
    <p>
      http://cgsh.wowotuan.com/shrcode/index?pid=8003&amp;t=rcode&amp;v=shop8005869
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
