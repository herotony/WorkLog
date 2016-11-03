<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1478080139555" ID="ID_411859334" MODIFIED="1478080160654" TEXT="mockito for Spring">
<node CREATED="1478080329086" ID="ID_447574711" MODIFIED="1478136845261" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      AOP
    </p>
    <ul>
      <li>
        &#160;Static AOP&#65292;&#32534;&#35793;&#38454;&#27573;&#20462;&#25913;&#23383;&#33410;&#30721;&#20197;&#23454;&#29616;&#20171;&#20837;
      </li>
      <li>
        &#160;Dynamic AOP&#65292;&#36816;&#34892;&#26102;&#20171;&#20837;&#65292;&#26356;&#28789;&#27963;&#65292;&#20294;&#36739;&#24930;&#21543;
      </li>
      <li>
        Spring AOP&#26159;&#22522;&#20110;proxy&#35774;&#35745;&#27169;&#24335;&#28404;
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node CREATED="1478139711652" FOLDED="true" ID="ID_638687289" MODIFIED="1478139847500" TEXT="&#x7406;&#x8bba;">
<node CREATED="1478080575602" FOLDED="true" ID="ID_712290337" MODIFIED="1478139795858" TEXT="Joint point">
<node CREATED="1478080337946" ID="ID_44867003" MODIFIED="1478080568331">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Joint Point
    </p>
    <p>
      
    </p>
    <p>
      &#22266;&#23450;&#25968;&#25454;&#26684;&#24335;&#30340;&#25968;&#25454;&#32467;&#26500;&#65292;&#36890;&#36807;&#35774;&#32622;&#35813;&#25968;&#25454;&#32467;&#26500;&#21487;&#20197;<font color="#cc3300">&#28155;&#21152;&#39069;&#22806;&#30340;&#19994;&#21153;&#36923;&#36753;</font>&#12290;&#23384;&#22312;&#22914;&#19979;<font color="#000099">&#20960;&#31181;Joint point&#25968;&#25454;&#32467;&#26500;</font>
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        <font color="#006666">Method invocation </font>
      </li>
      <li>
        <font color="#006666">Class initialization </font>
      </li>
      <li>
        <font color="#006666">Object initialization</font>
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478080613381" FOLDED="true" ID="ID_823844652" MODIFIED="1478139803709" TEXT="Advice">
<node CREATED="1478080717720" ID="ID_1576684003" MODIFIED="1478081008716">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22312;<b><font color="#990099">Joint point</font><font color="#339900">&#21069;</font><font color="#cc3300">&#21518;</font><font color="#990099">&#21450;</font><font color="#000099">&#26399;&#38388;</font></b><font color="#000099">&#20855;&#20307;&#25191;&#34892;&#30340;&#19994;&#21153;&#20195;&#30721;</font>&#65292;&#20063;&#23384;&#22312;&#19977;&#31867;Advice
    </p>
    <p>
      
    </p>
    <ul>
      <li>
        before advice:&#22312;joint point&#20999;&#20837;&#21069;&#25191;&#34892;&#30340;&#20195;&#30721;
      </li>
      <li>
        after advice:&#22312;joint point&#21518;&#25191;&#34892;&#30340;&#20195;&#30721;
      </li>
      <li>
        around advice:&#22312;joint point&#26399;&#38388;&#25191;&#34892;&#30340;&#20195;&#30721;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478080631965" FOLDED="true" ID="ID_695608419" MODIFIED="1478139812723" TEXT="Point cut">
<node CREATED="1478081412457" ID="ID_1042168778" MODIFIED="1478081544152">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23601;&#26159;&#19968;&#20010;<b><font color="#339900">joint point&#30340;&#38598;&#21512;</font></b>&#65292;&#35813;&#38598;&#21512;&#20013;&#25152;&#26377;&#30340;joint point&#37117;&#21482;&#25191;&#34892;<b><font color="#990099">&#21516;&#19968;&#20010;advice</font></b>&#32780;&#24050;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478080651052" FOLDED="true" ID="ID_1486059011" MODIFIED="1478139816539" TEXT="Aspect">
<node CREATED="1478081582012" ID="ID_1194569878" MODIFIED="1478081730209">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#25152;&#35859;&#8220;&#27178;&#20999;&#8221;&#30340;&#20855;&#20307;&#23454;&#29616;&#12290;&#20854;&#30001;<b><font color="#cc3300">advice</font></b>&#21644;<b><font color="#006666">pointcut&#38598;&#21512;</font></b>&#32452;&#25104;&#65292;&#36825;&#20010;&#24456;&#23481;&#26131;&#29702;&#35299;&#65292;<u><font color="#000099">&#19968;&#20010;pointcut&#21482;&#23545;&#24212;&#19968;&#20010;advice,&#32780;&#19968;&#20010;aspect&#23545;&#24212;&#22810;&#20010;ponitcut</font></u>&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478080659728" FOLDED="true" ID="ID_886819251" MODIFIED="1478139820978" TEXT="Weaving">
<node CREATED="1478082088916" ID="ID_865938025" MODIFIED="1478082223338">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20855;&#20307;&#22788;&#29702;&#25152;&#26377;aspect&#30340;&#65292;&#20063;&#23601;&#26159;&#26368;&#32456;&#23454;&#29616;&#22312;&#36866;&#21512;&#30340;&#21508;&#20010;joint point&#20999;&#20837;&#22788;&#29702;&#30340;&#36807;&#31243;&#12290;&#23384;&#22312;&#19977;&#31867;Weaving
    </p>
    <ul>
      <li>
        Compile-time weaving
      </li>
      <li>
        Class load-time weaving
      </li>
      <li>
        Runtime weaving
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478082246216" FOLDED="true" ID="ID_1098611991" MODIFIED="1478139824546" TEXT="Target">
<node CREATED="1478136863637" ID="ID_847962179" MODIFIED="1478136905268">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20855;&#20307;&#34987;aspect&#20171;&#20837;&#30340;object&#23545;&#35937;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1478082254001" FOLDED="true" ID="ID_482706570" MODIFIED="1478137043585" TEXT="Introduction">
<node CREATED="1478136911377" ID="ID_938252634" MODIFIED="1478136988061">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#38024;&#23545;&#23545;&#35937;&#30340;&#26576;&#20010;&#32467;&#26500;&#39069;&#22806;&#28155;&#21152;&#26041;&#27861;&#21644;&#21151;&#33021;&#65292;&#32780;&#26080;&#39035;&#35813;&#31867;&#23545;&#35937;&#33258;&#24049;&#19987;&#38376;&#23454;&#29616;&#26576;&#20010;&#25509;&#21475;&#65292;&#31867;&#20284;c#&#30340;&#25193;&#23637;&#26041;&#27861;&#21543;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1478139835129" ID="ID_796305964" MODIFIED="1478139845412" TEXT="SpringAOP&#x5b9e;&#x4f8b;">
<node CREATED="1478139874484" FOLDED="true" ID="ID_1128693789" MODIFIED="1478143793493" TEXT="1&#x3001;&#x6765;&#x81ea;mockito for Spring&#x7684;&#x4f8b;&#x5b50;">
<node CREATED="1478140250914" FOLDED="true" ID="ID_1085928250" MODIFIED="1478143137999" TEXT="&#x5f85;&#x4ecb;&#x5165;&#x7684;&#x4e1a;&#x52a1;&#x7c7b;">
<node CREATED="1478140274197" ID="ID_391888647" MODIFIED="1478140379303">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0,0,0)" face="CourierStd" size="3">public </font><font color="#0000ff" face="CourierStd" size="3">interface</font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;</font><font color="#006666" face="CourierStd" size="3"><b>IMessageWriter</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;{<br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;void <b>writeMessage</b>();<br size="3" style="font-variant: normal" />}</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1478140398294" ID="ID_604581562" MODIFIED="1478140448186">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="CourierStd" size="3" color="rgb(0,0,0)">public class MessageWriter </font><font face="CourierStd" size="3" color="#0000ff"><b>implements</b></font><font face="CourierStd" size="3" color="rgb(0,0,0)">&#160;</font><font face="CourierStd" size="3" color="#006666"><b>IMessageWriter</b></font><font face="CourierStd" size="3" color="rgb(0,0,0)">&#160; {<br size="3" style="font-variant: normal" />&#160;&#160; @Override<br size="3" style="font-variant: normal" />&#160; public void <b>writeMessage</b>() {<br size="3" style="font-variant: normal" />&#160;&#160;&#160; &#160;&#160; System.out.print(&quot;World&quot;);<br size="3" style="font-variant: normal" />&#160; }<br size="3" style="font-variant: normal" />}</font><font face="CourierStd" size="9pt" color="rgb(0,0,0)"><br align="-webkit-auto" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" /></font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1478140459304" FOLDED="true" ID="ID_718195845" MODIFIED="1478143225343">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      AOP&#20171;&#20837;&#31867;MessageDecorator
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1478140492128" ID="ID_255491045" MODIFIED="1478143220474">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0,0,0)" face="CourierStd" size="3">import org.aopalliance.intercept.</font><font color="#0000ff" face="CourierStd" size="3">MethodInterceptor</font><font color="rgb(0,0,0)" face="CourierStd" size="3">;<br size="3" style="font-variant: normal" />import org.aopalliance.intercept.</font><font color="#990099" face="CourierStd" size="3">MethodInvocation</font><font color="rgb(0,0,0)" face="CourierStd" size="3">;<br size="3" style="font-variant: normal" />public class Message</font><font color="#009999" face="CourierStd" size="3"><b>Decorator</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;<b>implements</b>&#160;</font><font color="#0000ff" face="CourierStd" size="3">MethodInterceptor</font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160; {<br size="3" style="font-variant: normal" />&#160;&#160;&#160;public Object </font><font color="#006600" face="CourierStd" size="3"><b>invoke</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">(</font><font color="#990099" face="CourierStd" size="3">MethodInvocation</font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160; <b>invocation</b>) //&#24517;&#39035;&#23454;&#29616;invoke&#26041;&#27861;<br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;throws Throwable {<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; System.out.print(&quot;Hello &quot;);<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Object<b>&#160; retVal </b>=<b>&#160;invocation</b>.proceed();</font><font color="#006600" face="CourierStd" size="3">//<b>invocation</b>&#20026;&#34987;&#20171;&#20837;&#23545;&#35937;[&#26412;&#20363;&#20013;&#20026;<b>MessageWriter</b>]&#30340;&#26576;&#20010;&#26041;&#27861;</font><font color="rgb(0,0,0)" face="CourierStd" size="3"><br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;!&quot;);<br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return <b>retVal;</b><br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;}<br size="3" style="font-variant: normal" />}<br align="-webkit-auto" size="3" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" /><br class="Apple-interchange-newline" size="3" style="font-variant: normal" /></font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1478143229842" FOLDED="true" ID="ID_1573008991" MODIFIED="1478143787846" TEXT="AOP&#x4ecb;&#x5165;&#x5b8c;&#x6574;&#x5b9e;&#x4f8b;">
<node CREATED="1478143434410" ID="ID_846375255" MODIFIED="1478143782921">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(0,0,0)" face="CourierStd" size="3">import org.springframework.aop.framework.ProxyFactory;<br size="3" style="font-variant: normal" />public class AOPTest {<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;public static void main(String[] args) {<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; MessageWriter </font><font color="#006600" face="CourierStd" size="3"><b>target</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;= new MessageWriter();<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; // create the proxy<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ProxyFactory </font><font color="#990099" face="CourierStd" size="3"><b>pf</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;= new ProxyFactory();<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Add the given AOP Alliance advice to the tail<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// of the advice (interceptor) chain<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#990099" face="CourierStd" size="3">&#160; <b>pf.</b></font><b><font color="rgb(0,0,0)" face="CourierStd" size="3">add</font><font color="#009999" face="CourierStd" size="3">Advice</font></b><font color="rgb(0,0,0)" face="CourierStd" size="3">(new </font><font color="#cc0000" face="CourierStd" size="3"><b>MessageDecorator()</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">);</font><font color="#cc0000" face="CourierStd" size="3"><b>&#160; //&#36890;&#36807;advice&#20171;&#20837;</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3"><br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Set the given object as target<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#990099" face="CourierStd" size="3">&#160; <b>pf</b></font><b><font color="rgb(0,0,0)" face="CourierStd" size="3">.setTarget</font></b><font color="rgb(0,0,0)" face="CourierStd" size="3">(</font><font color="#006600" face="CourierStd" size="3"><b>target</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">);<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Create a new proxy according to the<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// settings in this factory<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;MessageWriter </font><font color="#0000ff" face="CourierStd" size="3"><b>proxy</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">&#160;= (MessageWriter)</font><font color="#990099" face="CourierStd" size="3"><b>pf.</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3">getProxy();</font><font color="#006600" face="CourierStd" size="3"><b>//&#26469;&#33258;target&#30340;&#23553;&#35013;</b></font><font color="rgb(0,0,0)" face="CourierStd" size="3"><br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;// write the messages<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; target.writeMessage();</font><font color="#006600" face="CourierStd" size="3">&#160;&#160;//&#36825;&#21477;&#26159;&#22810;&#20313;&#30340;&#65292;&#20026;&#20102;&#28436;&#31034;&#38750;&#20171;&#20837;&#29256;&#32780;&#24050;</font><font color="rgb(0,0,0)" face="CourierStd" size="3"><br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;&quot;);<br size="3" style="font-variant: normal" />&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;// use the proxy<br size="3" style="font-variant: normal" />&#160;&#160;&#160;&#160;&#160;&#160; <b>&#160; </b></font><b><font color="#0000ff" face="CourierStd" size="3">proxy</font><font color="rgb(0,0,0)" face="CourierStd" size="3">.writeMessage();</font></b><font color="rgb(0,0,0)" face="CourierStd" size="3"><br size="3" style="font-variant: normal" />&#160;&#160;&#160;}<br size="3" style="font-variant: normal" />}<br align="-webkit-auto" size="3" style="font-variant: normal; letter-spacing: normal; line-height: normal; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px" /><br class="Apple-interchange-newline" size="3" style="font-variant: normal" /></font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1478143796559" ID="ID_1679595559" MODIFIED="1478143816654" TEXT="2&#x3001;&#x6765;&#x81ea;&#x7f51;&#x6587;"/>
</node>
</node>
</node>
</map>
