<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1481587520600" ID="ID_326945002" MODIFIED="1481587530576" TEXT="JAVA">
<node CREATED="1481587551854" ID="ID_290247199" MODIFIED="1481587559111" POSITION="right" TEXT="JAVA WEB">
<node CREATED="1481587593060" ID="ID_696015068" MODIFIED="1481587613536" TEXT="Spring&#x6846;&#x67b6;&#x7684;&#x8bbe;&#x8ba1;&#x7406;&#x5ff5;&#x548c;&#x8bbe;&#x8ba1;&#x6a21;&#x5f0f;&#x5206;&#x6790;">
<node CREATED="1481587629348" ID="ID_406201457" MODIFIED="1481587668047" TEXT="Spring AOP&#x7279;&#x6027;&#x8be6;&#x89e3;">
<node CREATED="1481587669955" FOLDED="true" ID="ID_212731697" MODIFIED="1481620645261">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Java&#20043;&#21160;&#24577;&#20195;&#29702;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481588146351" ID="ID_440236093" MODIFIED="1481620419382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26469;&#33258;&#32593;&#25991;
    </p>
    <p>
      
    </p>
    <p>
      http://blog.csdn.net/luanlouis/article/details/24589193
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481588188296" FOLDED="true" ID="ID_1522847824" MODIFIED="1481600090789" TEXT="class&#x6587;&#x4ef6;&#x7684;&#x751f;&#x6210;&#x548c;&#x52a0;&#x8f7d;">
<node CREATED="1481588383866" FOLDED="true" ID="ID_1041272727" MODIFIED="1481593367775" TEXT="&#x56fe;&#x793a;">
<node CREATED="1481588400581" ID="ID_1392465145" MODIFIED="1481588414606">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/javaclassloader.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481590387970" FOLDED="true" ID="ID_1850333857" MODIFIED="1481593370239">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21160;&#24577;&#21019;&#24314;&#31867;&#29983;&#25104;&#28436;&#31034;&#22270;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481590467427" ID="ID_1856589295" MODIFIED="1481590472202">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/javaclassloader-dynamic.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481588467663" FOLDED="true" ID="ID_794600289" MODIFIED="1481594900807" TEXT="&#x6e90;&#x7801;&#x6f14;&#x793a;">
<node CREATED="1481588483477" FOLDED="true" ID="ID_769735375" MODIFIED="1481590526480" TEXT="java&#x6e90;&#x7801;">
<node CREATED="1481589192991" ID="ID_320740523" MODIFIED="1481589264277">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="color: rgb(0, 0, 0); font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: left; text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: pre-wrap">public class Programmer {

   public void code()
   {
      System.out.println(&quot;I'm a Programmer,Just Coding.....&quot;);
    }
}</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481588500709" FOLDED="true" ID="ID_1962738415" MODIFIED="1481591222220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#33258;&#23450;&#20041;java class loader
    </p>
    <p>
      
    </p>
    <p>
      &#21482;&#26159;&#28436;&#31034;&#65292;&#30452;&#25509;&#37319;&#29992;&#20102;super...&#65292;&#21861;&#20063;&#27809;&#20570;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481589346643" ID="ID_1547083876" MODIFIED="1481589557596">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public class MyClassLoader extends <b><font color="#006666">ClassLoader</font></b>&#160;{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;public <b>Class&lt;?&gt;</b>&#160;defineMyClass( byte[] b, int off, int len)
    </p>
    <p>
      &#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;return <b><font color="#006600">super</font><font color="#3300cc">.defineClass</font></b>(b, off, len);
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
</node>
</node>
<node CREATED="1481588519566" FOLDED="true" ID="ID_451090751" MODIFIED="1481591195656" TEXT="&#x5229;&#x7528;&#x81ea;&#x5b9a;&#x4e49;java class loader&#x5904;&#x7406;&#x5b57;&#x8282;&#x7801;">
<node CREATED="1481589632252" FOLDED="true" ID="ID_561768782" MODIFIED="1481590634246">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="color: rgb(0, 0, 0); font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: pre-wrap">import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class MyTest {

&#x9;public static void main(String[] args) throws IOException {
&#x9;&#x9;//&#35835;&#21462;&#26412;&#22320;&#30340;class&#25991;&#20214;&#20869;&#30340;&#23383;&#33410;&#30721;&#65292;&#36716;&#25442;&#25104;&#23383;&#33410;&#30721;&#25968;&#32452;
&#x9;&#x9;File file = new File(&quot;.&quot;);
  <b><font color="#006600">//&#36825;&#37096;&#20998;&#23454;&#38469;&#21487;&#20197;&#22312;&#20195;&#30721;&#20013;&#21160;&#24577;&#29983;&#25104;&#31526;&#21512;</font><font color="#990099">class&#35268;&#33539;&#30340;&#25968;&#25454;&#27969;</font><font color="#006600">&#65281;&#36825;&#37324;&#20026;&#20102;&#28436;&#31034;&#26041;&#20415;&#37319;&#29992;&#24050;&#29983;&#25104;&#30340;class&#25991;&#20214;</font></b>
  InputStream  input = new FileInputStream(file.getCanonicalPath()+&quot;\\bin\\samples\\<font color="#ff0000">P<b>rogrammer.class</b></font>&quot;);
&#x9;&#x9;byte[] result = new byte[1024];
&#x9;&#x9;
&#x9;&#x9;int count = input.read(result);
&#x9;&#x9;// &#20351;&#29992;&#33258;&#23450;&#20041;&#30340;<b><font color="#3300cc">&#31867;&#21152;&#36733;&#22120;</font></b>&#23558; byte&#23383;&#33410;&#30721;&#25968;&#32452;&#36716;&#25442;&#20026;&#23545;&#24212;&#30340;class&#23545;&#35937;
&#x9;&#x9;MyClassLoader loader = new MyClassLoader();
&#x9;&#x9;<b><font color="#006666">Class</font></b> <font color="#ff0000">clazz</font> = <b><font color="#006600">loader.</font><font color="#3300cc">defineMyClass</font></b>( result, 0, count);
&#x9;&#x9;//<b><font color="#990099">&#27979;&#35797;&#21152;&#36733;&#26159;&#21542;&#25104;&#21151;</font></b>&#65292;&#25171;&#21360;class &#23545;&#35937;&#30340;&#21517;&#31216;
&#x9;&#x9;System.out.println(clazz.getCanonicalName());
                
               //&#23454;&#20363;&#21270;&#19968;&#20010;Programmer&#23545;&#35937;
&#160;&#160; &#160;&#160;&#160; &#160;       Object <b><font color="#009900">o</font></b>= <font color="#ff0000">clazz</font><font color="#3300cc"><b>.newInstance()</b></font>;
&#160;&#160; &#160;&#160;&#160; &#160;       try {
&#160;&#160; &#160;&#160;&#160; &#160;&#160;&#160; &#160;       //&#35843;&#29992;Programmer&#30340;<b><font color="#3300cc">code&#26041;&#27861;,&#21160;&#24577;&#20195;&#29702;&#30340;&#26681;&#25454;&#22312;&#27492;</font></b>
&#160;&#160; &#160;&#160;&#160; &#160;&#160;&#160; &#160;        <font color="#ff0000">clazz</font>.<font color="#3300cc">getMethod</font>(&quot;<b><font color="#3300cc">code</font></b>&quot;, null).<b><font color="#990099">invoke</font></b>(<b><font color="#006600">o</font></b>, null);
&#160;&#160; &#160;&#160;&#160; &#160;           } catch (IllegalArgumentException | InvocationTargetException
&#160;&#160; &#160;&#160;&#160; &#160;&#160;&#160; &#160;&#160;&#160; &#160;        | NoSuchMethodException | SecurityException e) {
&#160;&#160; &#160;&#160;&#160; &#160;&#160;&#160; &#160;         e.printStackTrace();
&#160;&#160; &#160;&#160;&#160; &#160;          }
&#160;}
}</pre>
  </body>
</html>
</richcontent>
<node CREATED="1481590056987" ID="ID_1466642771" MODIFIED="1481590091019">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20851;&#38190;&#23601;&#22312;<b><font color="#3300cc">class&#35268;&#33539;</font></b>&#20013;&#30340;<b><font color="#990099">invoke</font></b>&#26041;&#27861;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1481591322689" FOLDED="true" ID="ID_1530088107" MODIFIED="1481594899671" TEXT="&#x5f00;&#x6e90;&#x9879;&#x76ee;">
<node CREATED="1481591329499" ID="ID_236979041" MODIFIED="1481591362740" TEXT="ASM&#x5f00;&#x6e90;&#x6846;&#x67b6;&#x751f;&#x6210;&#x5b57;&#x8282;&#x7801;&#xff0c;org.objectweb.asm">
<node CREATED="1481590751738" ID="ID_1643472259" MODIFIED="1481590799843">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#26356;&#30452;&#25509;&#30340;&#21033;&#29992;<b><font color="#3300cc">JVM&#27719;&#32534;&#25351;&#20196;</font></b>&#29983;&#25104;class&#25991;&#20214;&#20030;&#20363;
    </p>
  </body>
</html></richcontent>
<node CREATED="1481590808529" ID="ID_1755820006" LINK="#ID_769735375" MODIFIED="1481590833435" TEXT="&#x6700;&#x7ec8;&#x751f;&#x6210;&#x7684;&#x6e90;&#x7801;&#xff0c;&#x540c;&#x4e0a;"/>
<node CREATED="1481590840135" FOLDED="true" ID="ID_1783818248" MODIFIED="1481591179385">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20195;&#30721;&#28436;&#31034;
    </p>
    <p>
      &#38656;&#35201;&#23545;class&#35268;&#33539;&#21644;jvm&#27719;&#32534;&#25351;&#20196;&#26377;&#30456;&#24403;&#30340;&#20102;&#35299;
    </p>
  </body>
</html></richcontent>
<node CREATED="1481590924300" ID="ID_893229338" MODIFIED="1481591164789">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="color: rgb(0, 0, 0); font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: pre-wrap">import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.objectweb.asm.ClassWriter;
import org.objectweb.asm.MethodVisitor;
import org.objectweb.asm.Opcodes;
public class <b><font color="#ff0000">MyGenerator</font></b> {

&#x9;public static void main(String[] args) throws IOException {

&#x9;&#x9;System.out.println();
&#x9;&#x9;<b><font color="#990099">ClassWriter</font></b> classWriter = new ClassWriter(0);
&#x9;&#x9;// &#36890;&#36807;visit&#26041;&#27861;&#30830;&#23450;&#31867;&#30340;&#22836;&#37096;&#20449;&#24687;
&#x9;&#x9;classWriter.visit(<b><font color="#3300cc">Opcodes.V1_7</font></b>,// java&#29256;&#26412;
&#x9;&#x9;&#x9;&#x9;Opcodes.ACC_PUBLIC,// &#31867;&#20462;&#39280;&#31526;
&#x9;&#x9;&#x9;&#x9;&quot;<font color="#006600">Programmer</font>&quot;, // &#31867;&#30340;&#20840;&#38480;&#23450;&#21517;
&#x9;&#x9;&#x9;&#x9;null, &quot;java/lang/Object&quot;, null);
&#x9;&#x9;
&#x9;&#x9;<b><font color="#3300cc">//&#21019;&#24314;&#26500;&#36896;&#20989;&#25968;</font></b>
<b><font color="#ff00cc">MethodVisitor</font></b> mv = classWriter.visitMethod(Opcodes.ACC_PUBLIC, &quot;&lt;init&gt;&quot;, &quot;()V&quot;, null, null);
&#x9;&#x9;mv.visitCode();
&#x9;&#x9;mv.visitVarInsn(Opcodes.ALOAD, 0);
&#x9;&#x9;mv.visitMethodInsn(Opcodes.INVOKESPECIAL, &quot;java/lang/Object&quot;, &quot;&lt;init&gt;&quot;,&quot;()V&quot;);
&#x9;&#x9;mv.visitInsn(Opcodes.RETURN);
&#x9;&#x9;mv.visitMaxs(1, 1);
&#x9;&#x9;mv.visitEnd();
&#x9;&#x9;
&#x9;&#x9;<b><font color="#3300cc">// &#23450;&#20041;code&#26041;&#27861;</font></b>
MethodVisitor methodVisitor = classWriter.visitMethod(Opcodes.ACC_PUBLIC, &quot;<font color="#3300cc">code</font>&quot;, &quot;()V&quot;,
&#x9;&#x9;&#x9;&#x9;null, null);
&#x9;&#x9;methodVisitor.visitCode();
&#x9;&#x9;methodVisitor.visitFieldInsn(Opcodes.GETSTATIC, &quot;java/lang/System&quot;, &quot;out&quot;,
&#x9;&#x9;&#x9;&#x9;&quot;Ljava/io/PrintStream;&quot;);
&#x9;&#x9;methodVisitor.visitLdcInsn(&quot;I'm a Programmer,Just Coding.....&quot;);
methodVisitor.visitMethodInsn(Opcodes.INVOKEVIRTUAL, &quot;java/io/PrintStream&quot;, &quot;println&quot;,
&#x9;&#x9;&#x9;&#x9;&quot;(Ljava/lang/String;)V&quot;);
&#x9;&#x9;methodVisitor.visitInsn(Opcodes.RETURN);
&#x9;&#x9;methodVisitor.visitMaxs(2, 2);
&#x9;&#x9;methodVisitor.visitEnd();
&#x9;&#x9;classWriter.visitEnd(); 
&#x9;&#x9;// &#20351;classWriter&#31867;&#24050;&#32463;&#23436;&#25104;
&#x9;&#x9;// &#23558;classWriter&#36716;&#25442;&#25104;&#23383;&#33410;&#25968;&#32452;&#20889;&#21040;&#25991;&#20214;&#37324;&#38754;&#21435;
&#x9;&#x9;<font color="#990099">byte[] <b>data</b> </font>= classWriter.toByteArray();
&#x9;&#x9;File file = new File(&quot;<font color="#000000">D://Programmer.class</font>&quot;);
&#x9;&#x9;FileOutputStream fout = new FileOutputStream(file);
&#x9;&#x9;fout.write(<font color="#990099">data</font>);
&#x9;&#x9;fout.close();
&#x9;}
}</pre>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1481591368707" ID="ID_1390256667" MODIFIED="1481591514650">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      javassist&#24320;&#28304;&#26694;&#26550;&#29983;&#25104;&#23383;&#33410;&#30721;&#65292;javassist
    </p>
    <p>
      jboss&#30340;&#19968;&#20010;&#23376;&#39033;&#30446;&#65292;&#30456;&#23545;&#20110;ASM&#65292;&#26080;&#38656;&#20102;&#35299;jvm&#27719;&#32534;&#25351;&#20196;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481590808529" ID="ID_971512635" LINK="#ID_769735375" MODIFIED="1481590833435" TEXT="&#x6700;&#x7ec8;&#x751f;&#x6210;&#x7684;&#x6e90;&#x7801;&#xff0c;&#x540c;&#x4e0a;"/>
<node CREATED="1481591444311" ID="ID_675370430" MODIFIED="1481594855269" TEXT="&#x4ee3;&#x7801;&#x6f14;&#x793a;">
<node CREATED="1481591517529" ID="ID_1461742263" MODIFIED="1481594886258">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="color: rgb(0, 0, 0); font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: pre-wrap">import javassist.ClassPool;
import javassist.CtClass;
import javassist.CtMethod;
import javassist.CtNewMethod;

public class MyGenerator {

&#x9;public static void main(String[] args) throws Exception {
&#x9;&#x9;<font color="#3300cc">ClassPool</font> pool = ClassPool.getDefault();
        //&#21019;&#24314;Programmer&#31867;&#x9;&#x9;
&#x9;&#x9;<font color="#006600">CtClass</font> <b><font color="#ff0000">cc</font></b>= <font color="#3300cc">pool.makeClass</font>(&quot;com.samples.Programmer&quot;);
&#x9;&#x9;//&#23450;&#20041;code&#26041;&#27861;
&#x9;&#x9;<font color="#006600">CtMethod</font> <b><font color="#3300cc">method</font></b> = CtNewMethod.<font color="#006600">make</font>(&quot;public void code(){}&quot;, <b><font color="#ff0000">cc</font></b>);
&#x9;&#x9;//&#25554;&#20837;&#26041;&#27861;&#20195;&#30721;
<b><font color="#3300cc">method</font></b>.<b><font color="#006600">insertBefore</font></b>(&quot;System.out.println(\&quot;I'm a Programmer,Just Coding.....\&quot;);&quot;);
&#x9;&#x9;<b><font color="#ff0000">cc</font></b>.<font color="#006600">addMethod</font>(method);
&#x9;&#x9;//&#20445;&#23384;&#29983;&#25104;&#30340;&#23383;&#33410;&#30721;
&#x9;&#x9;cc.writeFile(&quot;d://temp&quot;);
&#x9;}
}</pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1481591784052" FOLDED="true" ID="ID_488450086" MODIFIED="1481620432045">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20026;&#20309;&#35201;&#21160;&#24577;&#20195;&#29702;&#27169;&#24335;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481592815614" ID="ID_664778268" MODIFIED="1481592823158">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/why-dynamic-proxy.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481592882314" FOLDED="true" ID="ID_1438437380" MODIFIED="1481599181501" TEXT="&#x9759;&#x6001;&#x4ee3;&#x7406;&#x6a21;&#x5f0f;&#x4e3e;&#x4f8b;">
<node CREATED="1481593272324" FOLDED="true" ID="ID_394654362" MODIFIED="1481598781430" TEXT="uml&#x56fe;">
<node CREATED="1481593284107" HGAP="19" ID="ID_1816525427" MODIFIED="1481598755829" VSHIFT="41">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-station.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481593349945" ID="ID_1859286001" MODIFIED="1481598782674" TEXT="&#x6e90;&#x7801;">
<node CREATED="1481593390499" FOLDED="true" ID="ID_818699101" MODIFIED="1481593535991" TEXT="TicketSerivce">
<node CREATED="1481593480473" ID="ID_761108084" MODIFIED="1481593493188">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <pre style="color: rgb(0, 0, 0); font-style: normal; font-weight: normal; letter-spacing: normal; line-height: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px; white-space: pre-wrap">package com.foo.proxy;
/**
 * &#21806;&#31080;&#26381;&#21153;&#25509;&#21475; 
 * @author louluan
 */
public <font color="#3300cc">interface</font> TicketService {

&#x9;//&#21806;&#31080;
&#x9;public void sellTicket();
&#x9;
&#x9;//&#38382;&#35810;
&#x9;public void inquire();
&#x9;
&#x9;//&#36864;&#31080;
&#x9;public void withdraw();
&#x9;
}</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481593407480" FOLDED="true" ID="ID_906025513" MODIFIED="1481598796149">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      StationProxy
    </p>
    <p>
      
    </p>
    <p>
      &#31616;&#21333;&#21270;&#22788;&#29702;&#65292;&#26500;&#36896;&#22120;&#27880;&#20837;&#23436;&#20107;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481594017538" ID="ID_406793801" MODIFIED="1481594128647">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      &#160;* &#36710;&#31080;&#20195;&#21806;&#28857;
    </p>
    <p>
      &#160;* @author louluan
    </p>
    <p>
      &#160;*
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      public class StationProxy implements TicketService {
    </p>
    <p>
      
    </p>
    <p>
      private Station <font color="#3300cc">station</font>;
    </p>
    <p>
      
    </p>
    <p>
      public StationProxy(Station <font color="#3300cc">station</font>){
    </p>
    <p>
      this.station = station;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void sellTicket() {
    </p>
    <p>
      
    </p>
    <p>
      // 1.&#20570;&#30495;&#27491;&#19994;&#21153;&#21069;&#65292;&#25552;&#31034;&#20449;&#24687;
    </p>
    <p>
      this.showAlertInfo(&quot;&#215;&#215;&#215;&#215;&#24744;&#27491;&#22312;&#20351;&#29992;&#36710;&#31080;&#20195;&#21806;&#28857;&#36827;&#34892;&#36141;&#31080;&#65292;&#27599;&#24352;&#31080;&#23558;&#20250;&#25910;&#21462;5&#20803;&#25163;&#32493;&#36153;&#65281;&#215;&#215;&#215;&#215;&quot;);
    </p>
    <p>
      // 2.&#35843;&#29992;&#30495;&#23454;&#19994;&#21153;&#36923;&#36753;
    </p>
    <p>
      station.sellTicket();
    </p>
    <p>
      // 3.&#21518;&#22788;&#29702;
    </p>
    <p>
      this.takeHandlingFee();
    </p>
    <p>
      this.showAlertInfo(&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#24744;&#30340;&#20809;&#20020;&#65292;&#20877;&#35265;&#65281;&#215;&#215;&#215;&#215;\n&quot;);
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void inquire() {
    </p>
    <p>
      // 1&#20570;&#30495;&#27491;&#19994;&#21153;&#21069;&#65292;&#25552;&#31034;&#20449;&#24687;
    </p>
    <p>
      this.showAlertInfo(&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#20809;&#20020;&#26412;&#20195;&#21806;&#28857;&#65292;&#38382;&#35810;&#26381;&#21153;&#19981;&#20250;&#25910;&#21462;&#20219;&#20309;&#36153;&#29992;&#65292;&#26412;&#38382;&#35810;&#20449;&#24687;&#20165;&#20379;&#21442;&#32771;&#65292;&#20855;&#20307;&#20449;&#24687;&#20197;&#36710;&#31449;&#30495;&#23454;&#25968;&#25454;&#20026;&#20934;&#65281;&#215;&#215;&#215;&#215;&quot;);
    </p>
    <p>
      // 2.&#35843;&#29992;&#30495;&#23454;&#36923;&#36753;
    </p>
    <p>
      station.inquire();
    </p>
    <p>
      // 3&#12290;&#21518;&#22788;&#29702;
    </p>
    <p>
      this.showAlertInfo(&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#24744;&#30340;&#20809;&#20020;&#65292;&#20877;&#35265;&#65281;&#215;&#215;&#215;&#215;\n&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void withdraw() {
    </p>
    <p>
      // 1&#12290;&#30495;&#27491;&#19994;&#21153;&#21069;&#22788;&#29702;
    </p>
    <p>
      this.showAlertInfo(&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#20809;&#20020;&#26412;&#20195;&#21806;&#28857;&#65292;&#36864;&#31080;&#38500;&#20102;&#25187;&#38500;&#31080;&#39069;&#30340;20%&#22806;&#65292;&#26412;&#20195;&#29702;&#22788;&#39069;&#22806;&#21152;&#25910;2&#20803;&#25163;&#32493;&#36153;&#65281;&#215;&#215;&#215;&#215;&quot;);
    </p>
    <p>
      // 2.&#35843;&#29992;&#30495;&#27491;&#19994;&#21153;&#36923;&#36753;
    </p>
    <p>
      station.withdraw();
    </p>
    <p>
      // 3.&#21518;&#22788;&#29702;
    </p>
    <p>
      this.takeHandlingFee();
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      * &#23637;&#31034;&#39069;&#22806;&#20449;&#24687;
    </p>
    <p>
      */
    </p>
    <p>
      private void showAlertInfo(String info) {
    </p>
    <p>
      System.out.println(info);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      * &#25910;&#21462;&#25163;&#32493;&#36153;
    </p>
    <p>
      */
    </p>
    <p>
      private void takeHandlingFee() {
    </p>
    <p>
      System.out.println(&quot;&#25910;&#21462;&#25163;&#32493;&#36153;&#65292;&#25171;&#21360;&#21457;&#31080;&#12290;&#12290;&#12290;&#12290;&#12290;\n&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481593417369" FOLDED="true" ID="ID_500576231" MODIFIED="1481598748726" TEXT="">
<node CREATED="1481593542570" ID="ID_719591893" MODIFIED="1481593549139">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      /**
    </p>
    <p>
      &#160;* &#21806;&#31080;&#26381;&#21153;&#25509;&#21475;&#23454;&#29616;&#31867;&#65292;&#36710;&#31449;
    </p>
    <p>
      &#160;* @author louluan
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      public class Station implements TicketService {
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void sellTicket() {
    </p>
    <p>
      System.out.println(&quot;\n\t&#21806;&#31080;.....\n&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void inquire() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;\n\t&#38382;&#35810;&#12290;&#12290;&#12290;&#12290;\n&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      @Override
    </p>
    <p>
      public void withdraw() {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;System.out.println(&quot;\n\t&#36864;&#31080;......\n&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1481595181532" ID="ID_893415601" MODIFIED="1481599185345" TEXT="&#x52a8;&#x6001;&#x4ee3;&#x7406;&#x6a21;&#x5f0f;&#x4e3e;&#x4f8b;">
<node CREATED="1481594203649" FOLDED="true" ID="ID_750907234" MODIFIED="1481620492821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#37319;&#29992;javassist&#20197;<b><font color="#3300cc">&#21160;&#24577;&#20195;&#29702;&#27169;&#24335;</font></b>&#22788;&#29702;StationProxy
    </p>
    <p>
      
    </p>
    <p>
      <font color="#ff0000">&#38750;&#24120;&#23436;&#32654;&#30340;&#31034;&#20363;</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1481594262169" ID="ID_313527294" MODIFIED="1481595075416">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      import java.lang.reflect.Constructor;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#3300cc">import javassist.*; </font></b>
    </p>
    <p>
      
    </p>
    <p>
      public class Test {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;public static void main(String[] args) throws Exception {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#006666">createProxy();</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;/*
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* &#25163;&#21160;&#21019;&#24314;&#23383;&#33410;&#30721;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;private static void <b><font color="#006666">createProxy()</font></b>&#160; throws Exception
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;ClassPool pool = ClassPool.getDefault();
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtClass <font color="#006600">cc</font>&#160;= pool.makeClass(&quot;com.foo.proxy.StationProxy&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#35774;&#32622;&#25509;&#21475;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtClass <font color="#3300cc">interface1</font>&#160;= pool.get(&quot;com.foo.proxy.TicketService&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160; <b><font color="#006600">cc.setInterfaces</font></b>(new <font color="#3300cc">CtClass[]</font>{<font color="#3300cc"><b>interface1</b></font>});
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#35774;&#32622;Field
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtField field = <font color="#3300cc">CtField.make</font>(&quot;<font color="#990099">private com.foo.proxy.Station station;</font>&quot;, <b><font color="#006600">cc</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160; <b><font color="#006600">cc.</font></b>addField(field);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtClass stationClass = pool.get(&quot;com.foo.proxy.Station&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtClass[] arrays = new CtClass[]{stationClass};
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtConstructor ctc = <b><font color="#006666">CtNewConstructor.</font></b>make(arrays,null,CtNewConstructor.PASS_NONE,null,null, <b><font color="#006600">cc</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#35774;&#32622;&#26500;&#36896;&#20989;&#25968;&#20869;&#37096;&#20449;&#24687;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;ctc.setBody(&quot;{this.station=$1;}&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addConstructor(ctc);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#21019;&#24314;&#25910;&#21462;&#25163;&#32493; takeHandlingFee&#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtMethod takeHandlingFee = CtMethod.make(&quot;private void takeHandlingFee() {}&quot;, cc);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;takeHandlingFee.setBody(&quot;System.out.println(\&quot;&#25910;&#21462;&#25163;&#32493;&#36153;&#65292;&#25171;&#21360;&#21457;&#31080;&#12290;&#12290;&#12290;&#12290;&#12290;\&quot;);&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addMethod(takeHandlingFee);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#21019;&#24314;showAlertInfo &#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtMethod showInfo = CtMethod.make(&quot;private void showAlertInfo(String info) {}&quot;, cc);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;showInfo.setBody(&quot;System.out.println($1);&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addMethod(showInfo);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//sellTicket
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtMethod sellTicket = CtMethod.make(&quot;public void sellTicket(){}&quot;, cc);
    </p>
    <p>
      &#160;&#160;&#160;&#160; sellTicket.setBody(&quot;{this.showAlertInfo(\&quot;&#215;&#215;&#215;&#215;&#24744;&#27491;&#22312;&#20351;&#29992;&#36710;&#31080;&#20195;&#21806;&#28857;&#36827;&#34892;&#36141;&#31080;&#65292;&#27599;&#24352;&#31080;&#23558;&#20250;&#25910;&#21462;5&#20803;&#25163;&#32493;&#36153;&#65281;&#215;&#215;&#215;&#215;\&quot;);&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;station.sellTicket();&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;this.takeHandlingFee();&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;this.showAlertInfo(\&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#24744;&#30340;&#20809;&#20020;&#65292;&#20877;&#35265;&#65281;&#215;&#215;&#215;&#215;\&quot;);}&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addMethod(sellTicket);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#28155;&#21152;inquire&#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtMethod<b><font color="#ff0000">&#160;inquire </font></b>= CtMethod.make(&quot;public void inquire() {}&quot;, <b><font color="#006600">cc</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">&#160;inquire.setBody</font></b>(&quot;{this.showAlertInfo(\&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#20809;&#20020;&#26412;&#20195;&#21806;&#28857;&#65292;&#38382;&#35810;&#26381;&#21153;&#19981;&#20250;&#25910;&#21462;&#20219;&#20309;&#36153;&#29992;&#65292;&#26412;&#38382;&#35810;&#20449;&#24687;&#20165;&#20379;&#21442;&#32771;&#65292;&#20855;&#20307;&#20449;&#24687;&#20197;&#36710;&#31449;&#30495;&#23454;&#25968;&#25454;&#20026;&#20934;&#65281;&#215;&#215;&#215;&#215;\&quot;);&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;station.inquire();&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;this.showAlertInfo(\&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#24744;&#30340;&#20809;&#20020;&#65292;&#20877;&#35265;&#65281;&#215;&#215;&#215;&#215;\&quot;);}&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addMethod(inquire);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#28155;&#21152;widthraw&#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;CtMethod withdraw = CtMethod.make(&quot;public void withdraw() {}&quot;, cc);
    </p>
    <p>
      &#160;&#160;&#160;&#160; withdraw.setBody(&quot;{this.showAlertInfo(\&quot;&#215;&#215;&#215;&#215;&#27426;&#36814;&#20809;&#20020;&#26412;&#20195;&#21806;&#28857;&#65292;&#36864;&#31080;&#38500;&#20102;&#25187;&#38500;&#31080;&#39069;&#30340;20%&#22806;&#65292;&#26412;&#20195;&#29702;&#22788;&#39069;&#22806;&#21152;&#25910;2&#20803;&#25163;&#32493;&#36153;&#65281;&#215;&#215;&#215;&#215;\&quot;);&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;station.withdraw();&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;+ &quot;this.takeHandlingFee();}&quot;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.addMethod(withdraw);
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#33719;&#21462;&#21160;&#24577;&#29983;&#25104;&#30340;class
    </p>
    <p>
      &#160;&#160;&#160;&#160; <b><font color="#006600">Class c = cc.toClass();</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#33719;&#21462;&#26500;&#36896;&#22120;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;Constructor constructor= c.getConstructor(<b><font color="#3300cc">Station.class</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;//&#36890;&#36807;&#26500;&#36896;&#22120;&#23454;&#20363;&#21270;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;TicketService <b><font color="#ff00ff">o</font></b>&#160;= (TicketService)constructor.newInstance(new Station());
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;<b><font color="#ff00ff">o.</font><font color="#ff0000">inquire();</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;cc.writeFile(&quot;D://test&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1481595194591" FOLDED="true" ID="ID_175694117" MODIFIED="1481598570367">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#22914;&#27492;&#20351;&#29992;javassist&#30340;&#38169;&#35823;&#20986;&#21457;&#28857;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481595213130" ID="ID_165491364" MODIFIED="1481595226065">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36890;&#36807;&#19978;&#38754;&#21160;&#24577;&#29983;&#25104;&#30340;&#20195;&#30721;&#65292;<font color="#ff0000">&#25105;&#20204;&#21457;&#29616;&#65292;&#20854;&#23454;&#29616;&#30456;&#24403;&#22320;&#40635;&#28902;&#22312;&#21019;&#36896;&#30340;&#36807;&#31243;&#20013;&#65292;&#21547;&#26377;&#22826;&#22810;&#30340;&#19994;&#21153;&#20195;&#30721;&#12290;&#25105;&#20204;&#20351;&#29992;&#19978;&#36848;&#21019;&#24314;Proxy&#20195;&#29702;&#31867;&#30340;&#26041;&#24335;&#30340;&#21021;&#34935;&#26159;&#20943;&#23569;&#31995;&#32479;&#20195;&#30721;&#30340;&#20887;&#26434;&#24230;&#65292;&#20294;&#26159;&#19978;&#36848;&#20570;&#27861;&#21364;&#22686;&#21152;&#20102;&#22312;&#21160;&#24577;&#21019;&#24314;&#20195;&#29702;&#31867;&#36807;&#31243;&#20013;&#30340;&#22797;&#26434;&#24230;&#65306;&#25163;&#21160;&#22320;&#21019;&#24314;&#20102;&#22826;&#22810;&#30340;&#19994;&#21153;&#20195;&#30721;&#65292;&#24182;&#19988;&#23553;&#35013;&#24615;&#20063;&#19981;&#22815;&#65292;&#23436;&#20840;&#19981;&#20855;&#26377;&#21487;&#25299;&#23637;&#24615;&#21644;&#36890;&#29992;&#24615;&#12290;&#22914;&#26524;&#26576;&#20010;&#20195;&#29702;&#31867;&#30340;&#19968;&#20123;&#19994;&#21153;&#36923;&#36753;&#38750;&#24120;&#22797;&#26434;&#65292;&#19978;&#36848;&#30340;&#21160;&#24577;&#21019;&#24314;&#20195;&#29702;&#30340;&#26041;&#24335;&#26159;&#38750;&#24120;&#19981;&#21487;&#21462;&#30340;&#65281;</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481595263626" FOLDED="true" ID="ID_631810341" MODIFIED="1481620642136">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#006600">&#25913;&#21892;&#29256;</font></b>&#30340;invocationHandler&#30340;&#30001;&#26469;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481595488924" FOLDED="true" ID="ID_1168383594" MODIFIED="1481620497909" TEXT="&#x56fe;&#x793a;&#x8bf4;&#x660e;">
<node CREATED="1481595495189" ID="ID_446022054" MODIFIED="1481595506849">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/invokeHandler.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481595688368" ID="ID_7245276" MODIFIED="1481595775055" TEXT="&#x9759;&#x6001;&#x4ee3;&#x7406;&#x4e2d;&#x7684;proxy&#x4f1a;&#x8c03;&#x7528;&#x7279;&#x5e26;&#x7279;&#x5b9a;&#xff08;&#x4ee3;&#x7406;&#x7684;&#xff09;&#x7684;realSubject&#x65b9;&#x6cd5;"/>
<node CREATED="1481595801418" ID="ID_361962111" MODIFIED="1481620505738">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21160;&#24577;&#20195;&#29702;&#20013;&#25105;&#20204;&#24378;&#35843;&#26377;&#20102;<b><font color="#006666">&#20013;&#38388;&#23618;</font><font color="#ff00cc">invocationHandler</font></b>&#26469;&#22788;&#29702;&#25152;&#26377;&#30340;&#26041;&#27861;&#35843;&#29992;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481597004510" FOLDED="true" ID="ID_773289541" MODIFIED="1481620510686" TEXT="&#x56fe;&#x793a;">
<node CREATED="1481597009070" ID="ID_1109276673" MODIFIED="1481597014810">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/invokeHandler-role.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481597034626" FOLDED="true" ID="ID_1303553487" MODIFIED="1481620635229">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      JDK&#27169;&#24335;&#21160;&#24577;&#20195;&#29702;&#65288;&#25509;&#21475;&#27169;&#24335;&#65289;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481597216212" FOLDED="true" ID="ID_1009875856" MODIFIED="1481620521774" TEXT="&#x5b9e;&#x73b0;&#x6b65;&#x9aa4;">
<node CREATED="1481597226642" ID="ID_1279916393" MODIFIED="1481597358307">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-jdk-implement-1.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481597894755" FOLDED="true" ID="ID_1319673505" MODIFIED="1481620525965" TEXT="&#x5173;&#x952e;&#x70b9;">
<node CREATED="1481597903798" ID="ID_1855997843" MODIFIED="1481597909313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-jdk-implement-2.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481597917715" ID="ID_302331514" MODIFIED="1481620527110" TEXT="&#x4e3e;&#x4f8b;">
<node CREATED="1481597995181" FOLDED="true" ID="ID_843121894" MODIFIED="1481614943688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#23450;&#20041;&#19968;&#20010;&#23454;&#29616;&#20004;&#20010;&#25509;&#21475;&#31867;&#30340;&#30005;&#21160;&#36710;uml&#22270;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481598019492" ID="ID_1484418372" MODIFIED="1481598092593">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-jdk-implement-3.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481598159011" ID="ID_644853260" MODIFIED="1481598171426" TEXT="&#x6e90;&#x7801;">
<node CREATED="1481598174982" FOLDED="true" ID="ID_198786192" MODIFIED="1481620537902" TEXT="main&#x51fd;&#x6570;">
<node CREATED="1481598183867" ID="ID_1800821566" MODIFIED="1481615463675">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      import <b><font color="#660066">java.lang.reflect.InvocationHandler</font></b>;
    </p>
    <p>
      import<font color="#660066">&#160;<b>java.lang.reflect.Proxy</b></font>;
    </p>
    <p>
      
    </p>
    <p>
      public class Test {
    </p>
    <p>
      
    </p>
    <p>
      public static void main(String[] args) {
    </p>
    <p>
      
    </p>
    <p>
      ElectricCar <b><font color="#3300cc">car</font></b>&#160;= new <b><font color="#3300cc">ElectricCar()</font></b>;
    </p>
    <p>
      <font color="#009900">// 1.&#33719;&#21462;&#23545;&#24212;&#30340;ClassLoader</font>
    </p>
    <p>
      <b><font color="#3300cc">ClassLoader</font></b>&#160;<font color="#ff0000">classLoader</font>&#160;= <b><font color="#3300cc">car</font></b>.getClass().getClassLoader();
    </p>
    <p>
      
    </p>
    <p>
      <font color="#009900">// 2.&#33719;&#21462;ElectricCar &#25152;&#23454;&#29616;&#30340;&#25152;&#26377;&#25509;&#21475;</font>
    </p>
    <p>
      <b><font color="#3300cc">Class[]</font></b>&#160;<font color="#ff6633">interfaces</font>&#160;= <b><font color="#3300cc">car</font></b>.getClass().getInterfaces();
    </p>
    <p>
      
    </p>
    <p>
      <font color="#009900">// 3.&#35774;&#32622;&#19968;&#20010;&#26469;&#33258;&#20195;&#29702;&#20256;&#36807;&#26469;&#30340;&#26041;&#27861;&#35843;&#29992;&#35831;&#27714;&#22788;&#29702;&#22120;&#65292;&#22788;&#29702;&#25152;&#26377;&#30340;&#20195;&#29702;&#23545;&#35937;&#19978;&#30340;&#26041;&#27861;&#35843;&#29992;</font>
    </p>
    <p>
      <b><font color="#3300cc">InvocationHandler</font></b>&#160;<b><font color="#ff00ff">handler </font></b>= new <b><font color="#ff00ff">InvocationHandlerImpl</font></b>(<b><font color="#3300cc">car</font></b>);<b><font color="#ff0000">//&#38656;&#35201;&#25105;&#20204;&#25163;&#21160;&#23454;&#29616;</font></b>
    </p>
    <p>
      /*
    </p>
    <p>
      &#160; <font color="#009900">4.&#26681;&#25454;&#19978;&#38754;&#25552;&#20379;&#30340;&#20449;&#24687;&#65292;&#21019;&#24314;&#20195;&#29702;&#23545;&#35937; &#22312;&#36825;&#20010;&#36807;&#31243;&#20013;&#65292; </font>
    </p>
    <p>
      <font color="#009900">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;a.JDK&#20250;&#36890;&#36807;&#26681;&#25454;&#20256;&#20837;&#30340;&#21442;&#25968;&#20449;&#24687;&#21160;&#24577;&#22320;&#22312;&#20869;&#23384;&#20013;&#21019;&#24314;&#21644;.class &#25991;&#20214;&#31561;&#21516;&#30340;&#23383;&#33410;&#30721; </font>
    </p>
    <p>
      <font color="#009900">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b.&#28982;&#21518;&#26681;&#25454;&#30456;&#24212;&#30340;&#23383;&#33410;&#30721;&#36716;&#25442;&#25104;&#23545;&#24212;&#30340;class&#65292; </font>
    </p>
    <p>
      <font color="#009900">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;c.&#28982;&#21518;&#35843;&#29992;newInstance()&#21019;&#24314;&#23454;&#20363; </font>
    </p>
    <p>
      <font color="#009900">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#660066"><b>&#160; &#160;&#160;&#160;&#24443;&#24213;&#30465;&#21435;&#20102;javassist&#30340;&#25163;&#21160;&#19968;&#34892;&#34892;&#32534;&#20889;&#30340;&#40635;&#28902;</b></font>
    </p>
    <p>
      */
    </p>
    <p>
      Object <b><font color="#990099">o </font></b>= <b><font color="#006666">Proxy.newProxyInstance</font></b>(<font color="#ff0000">classLoader</font>, <font color="#ff6633">interfaces</font>, <font color="#ff00ff">handler</font>);
    </p>
    <p>
      Vehicle vehicle = (Vehicle) o;
    </p>
    <p>
      <b><font color="#009999">vehicle.drive();</font></b>
    </p>
    <p>
      Rechargable rechargeable = (Rechargable) o;
    </p>
    <p>
      <b><font color="#006666">rechargeable.recharge();</font></b>
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481615471458" ID="ID_1028619912" MODIFIED="1481615569194">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      vehichle.drive();
    </p>
    <p>
      rechargeable.recharge();
    </p>
    <p>
      &#20004;&#20010;&#26041;&#27861;&#34987;<b><font color="#990099">&#20195;&#29702;&#31867;</font></b>&#25318;&#25130;&#24182;&#28155;&#21152;&#20102;<b><font color="#009999">Before/After&#21151;&#33021;&#36755;&#20986;</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481615572598" ID="ID_1237017748" MODIFIED="1481615642274">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-jdk-implement-4.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481615076401" FOLDED="true" ID="ID_1207240400" MODIFIED="1481620611430">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff00ff">InvocationHandlerImpl</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481615096404" ID="ID_650707983" MODIFIED="1481615360164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      import java.lang.reflect.InvocationHandler;
    </p>
    <p>
      import java.lang.reflect.Method;
    </p>
    <p>
      
    </p>
    <p>
      public class <b><font color="#660066">InvocationHandlerImpl</font></b>&#160;implements <b><font color="#3300cc">InvocationHandler</font></b>&#160; {
    </p>
    <p>
      
    </p>
    <p>
      private <b><font color="#006600">ElectricCar</font></b>&#160;<font color="#006600">car</font>;
    </p>
    <p>
      
    </p>
    <p>
      public InvocationHandlerImpl(ElectricCar car)
    </p>
    <p>
      {
    </p>
    <p>
      <b><font color="#3300cc">this.car=car</font></b>;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#3300cc">@Override </font></b>/<b><font color="#ff00cc">/&#24517;&#39035;&#35201;&#23454;&#29616;&#30340;&#26041;&#27861;&#65281;</font></b>
    </p>
    <p>
      public Object <b><font color="#ff00cc">invoke</font></b>(Object <b><font color="#660066">paramObject</font></b>, Method <b>param<font color="#006600">Method</font></b>,
    </p>
    <p>
      Object[] <b><font color="#006600">param</font>ArrayOfObject</b>) throws Throwable {
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#009900">//Before&#19994;&#21153;&#23450;&#21046;</font></b>
    </p>
    <p>
      System.out.println(&quot;You are going to invoke &quot;+paramMethod.getName()+&quot; ...&quot;);
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#3300cc">paramMethod</font><font color="#990099">.invoke(car, null); //&#23454;&#38469;&#19978;&#20195;&#29702;&#31867;&#35843;&#29992;realSubject&#30340;&#20219;&#20309;&#26041;&#27861;&#37117;&#20250;&#33719;&#21462;&#20855;&#20307;&#30340;paramMethod</font></b>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#009900">&#160; //After&#19994;&#21153;&#23450;&#21046;</font></b>
    </p>
    <p>
      System.out.println(paramMethod.getName()+&quot; invocation Has Been finished...&quot;);
    </p>
    <p>
      return null;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#ffffcc" CREATED="1481615795693" FOLDED="true" ID="ID_1085230956" MODIFIED="1481620627837">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#006666">&#24037;&#20855;&#20171;&#32461;</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481616031519" FOLDED="true" ID="ID_1721051257" MODIFIED="1481620571085">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20316;&#32773;&#33258;&#34892;&#24320;&#21457;&#30340;&#23567;&#24037;&#20855;
    </p>
    <p>
      ProxyUtils.generateClassFile
    </p>
    <p>
      &#21033;&#29992;&#20102;<b><font color="#660066">sun.misc.ProxyGenerator&#21253;</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481616243296" ID="ID_682594424" MODIFIED="1481616414684">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package com.foo.proxy;
    </p>
    <p>
      
    </p>
    <p>
      import java.io.FileOutputStream;
    </p>
    <p>
      import java.io.IOException;
    </p>
    <p>
      import <b><font color="#990099">java.lang.reflect.Proxy</font></b>;
    </p>
    <p>
      import <b><font color="#990099">sun.misc.ProxyGenerator</font></b>;
    </p>
    <p>
      
    </p>
    <p>
      public class ProxyUtils {
    </p>
    <p>
      
    </p>
    <p>
      <font color="#006600">/* </font>
    </p>
    <p>
      <font color="#006600">* &#23558;&#26681;&#25454;&#31867;&#20449;&#24687; &#21160;&#24577;&#29983;&#25104;&#30340;&#20108;&#36827;&#21046;&#23383;&#33410;&#30721;&#20445;&#23384;&#21040;&#30828;&#30424;&#20013;&#65292; </font>
    </p>
    <p>
      <font color="#006600">* &#40664;&#35748;&#30340;&#26159;clazz&#30446;&#24405;&#19979; </font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;* params :clazz </font><font color="#660066"><b>&#38656;&#35201;&#29983;&#25104;&#21160;&#24577;&#20195;&#29702;&#31867;&#30340;&#31867;</b></font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;* proxyName : </font><font color="#ff00cc"><b>&#20026;&#21160;&#24577;&#29983;&#25104;&#30340;&#20195;&#29702;&#31867;&#30340;&#21517;&#31216;</b></font>
    </p>
    <p>
      <font color="#006600">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*/</font>
    </p>
    <p>
      public static void generateClassFile(Class <font color="#660066">clazz</font>,String <font color="#ff00cc">proxyName</font>)
    </p>
    <p>
      {
    </p>
    <p>
      //&#26681;&#25454;&#31867;&#20449;&#24687;&#21644;&#25552;&#20379;&#30340;&#20195;&#29702;&#31867;&#21517;&#31216;&#65292;&#29983;&#25104;&#23383;&#33410;&#30721;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;byte[] classFile = <b><font color="#006600">ProxyGenerator.generateProxyClass</font></b>(<font color="#ff00cc">proxyName</font>, <font color="#660066">clazz.<b>getInterfaces()</b></font>);
    </p>
    <p>
      String <font color="#3300cc"><b>paths</b></font>&#160;= <font color="#660066"><b>clazz.getResource(&quot;.&quot;).getPath()</b></font>;
    </p>
    <p>
      System.out.println(paths);
    </p>
    <p>
      FileOutputStream out = null;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;try {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;//&#20445;&#30041;&#21040;&#30828;&#30424;&#20013;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;out = new FileOutputStream(<font color="#3300cc">paths</font>+<font color="#ff00cc">proxyName</font>+&quot;<b><font color="#ff0000">.class</font></b>&quot;); &#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;out.write(classFile);&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;out.flush();&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;} catch (Exception e) {&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;e.printStackTrace();&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;} finally {&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;try {&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;out.close();&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;} catch (IOException e) {&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;e.printStackTrace();&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}&#160;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481616427592" ID="ID_1847742748" MODIFIED="1481616490491">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20351;&#29992;&#24456;&#31616;&#21333;&#65306;
    </p>
    <p>
      ProxyUtils.generateClassFile(<b><font color="#660066">car.getClass()</font></b>,&quot;<b><font color="#ff00ff">ElectriCarProxy</font></b>&quot;);
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1481616508727" ID="ID_972519434" MODIFIED="1481616562746">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21033;&#29992;<b><font color="#006600">jd-gui.exe</font></b>&#21453;&#32534;&#35793;&#19978;&#38754;&#29983;&#25104;&#30340;<b><font color="#ff00ff">ElectriCarProxy.class</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481616585811" FOLDED="true" ID="ID_1236315147" MODIFIED="1481617377224" TEXT="&#x53cd;&#x7f16;&#x8bd1;&#x540e;&#x663e;&#x793a;&#x751f;&#x6210;&#x7684;class&#x6e90;&#x7801;">
<node CREATED="1481616613352" ID="ID_325706392" MODIFIED="1481617369559">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      import com.foo.proxy.Rechargable;
    </p>
    <p>
      import com.foo.proxy.Vehicle;
    </p>
    <p>
      import java.lang.reflect.InvocationHandler;
    </p>
    <p>
      import java.lang.reflect.Method;
    </p>
    <p>
      import java.lang.reflect.Proxy;
    </p>
    <p>
      import java.lang.reflect.UndeclaredThrowableException;
    </p>
    <p>
      /**
    </p>
    <p>
      &#160;&#29983;&#25104;&#30340;<b><font color="#990099">&#21160;&#24577;&#20195;&#29702;&#31867;</font></b>&#30340;&#32452;&#32455;&#27169;&#24335;&#26159;<b><font color="#006666">&#32487;&#25215;</font><font color="#3300cc">Proxy&#31867;&#65288;Java&#33258;&#24102;&#30340;&#65289;</font></b>&#65292;&#28982;&#21518;<b>&#23454;&#29616;&#38656;&#35201;<font color="#ff00ff">&#23454;&#29616;</font><font color="#660066">&#34987;&#20195;&#29702;&#30340;&#31867;</font>&#19978;&#30340;<font color="#006600">&#25152;&#26377;&#25509;&#21475;</font></b>&#65292;<b><font color="#003399">&#32780;&#22312;&#23454;&#29616;&#30340;&#36807;&#31243;&#20013;&#65292;&#21017;&#26159;&#36890;&#36807;&#23558;</font><font color="#ff00cc">&#25152;&#26377;&#30340;&#26041;&#27861;</font><font color="#003399">&#37117;&#20132;&#32473;&#20102;</font><font color="#ff00cc">InvocationHandler</font><font color="#003399">&#26469;&#22788;&#29702;</font></b>
    </p>
    <p>
      */
    </p>
    <p>
      &#160;public final class ElectricCarProxy <b><font color="#006600">extends</font></b>&#160;<b><font color="#3300cc">Proxy</font></b>
    </p>
    <p>
      &#160; <font color="#3300cc">implements</font>&#160;<b><font color="#003399">Rechargable, Vehicle</font></b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;<font color="#009999">private static Method m1; </font>
    </p>
    <p>
      <font color="#009999">&#160;&#160;private static Method m3; </font>
    </p>
    <p>
      <font color="#009999">&#160;&#160;private static Method m4; </font>
    </p>
    <p>
      <font color="#009999">&#160;&#160;private static Method m0; </font>
    </p>
    <p>
      <font color="#009999">&#160;&#160;private static Method m2;</font>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public ElectricCarProxy(<b><font color="#ff00cc">InvocationHandler</font></b>&#160;<font color="#ff00cc">paramInvocationHandler</font>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;super(paramInvocationHandler);
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public final boolean equals(Object paramObject)
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ // &#26041;&#27861;&#21151;&#33021;&#23454;&#29616;&#20132;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return ((Boolean)<b><font color="#ff00ff">this.h.invoke</font></b>(this,<b><font color="#ff00cc">&#160; m1</font></b>, new Object[] { paramObject })).booleanValue();
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Error|RuntimeException localError)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw localError;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Throwable localThrowable)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new UndeclaredThrowableException(localThrowable);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public final void<b><font color="#009999">&#160;recharge()</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;// &#26041;&#27861;&#21151;&#33021;&#23454;&#29616;&#20132;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff00cc">this.h.invoke</font></b>(this, <b><font color="#ff00cc">m3</font></b>, null);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Error|RuntimeException localError)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw localError;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Throwable localThrowable)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new UndeclaredThrowableException(localThrowable);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public final void <b><font color="#009999">drive()</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;// &#26041;&#27861;&#21151;&#33021;&#23454;&#29616;&#20132;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;<b><font color="#ff00cc">&#160;this.h.invoke</font></b>(this, <b><font color="#ff00cc">m4</font></b>, null);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Error|RuntimeException localError)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw localError;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Throwable localThrowable)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new UndeclaredThrowableException(localThrowable);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public final int hashCode()
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;// &#26041;&#27861;&#21151;&#33021;&#23454;&#29616;&#20132;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;return ((Integer)<b><font color="#ff00cc">this.h.invoke</font></b>(this,<b>&#160; <font color="#ff00cc">m0</font></b>, null)).intValue();
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Error|RuntimeException localError)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw localError;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Throwable localThrowable)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new UndeclaredThrowableException(localThrowable);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;public final String toString()
    </p>
    <p>
      &#160;&#160;&#160;&#160;throws
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;// &#26041;&#27861;&#21151;&#33021;&#23454;&#29616;&#20132;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return (String)<b><font color="#ff00cc">this.h.invoke</font></b>(this, <b><font color="#ff00cc">m2</font></b>, null);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Error|RuntimeException localError)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw localError;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (Throwable localThrowable)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new UndeclaredThrowableException(localThrowable);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;<b><font color="#3300cc">static</font></b>
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;try
    </p>
    <p>
      &#160;&#160;&#160;&#160;{&#160;&#160;//&#20026;&#27599;&#19968;&#20010;&#38656;&#35201;&#26041;&#27861;&#23545;&#35937;&#65292;&#24403;&#35843;&#29992;&#30456;&#24212;&#30340;&#26041;&#27861;&#26102;&#65292;&#20998;&#21035;&#23558;&#26041;&#27861;&#23545;&#35937;&#20316;&#20026;&#21442;&#25968;&#20256;&#36882;&#32473;InvocationHandler&#22788;&#29702;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;<font color="#ff00cc"><b>m1 = Class.forName(&quot;java.lang.Object&quot;).getMethod(&quot;equals&quot;, new Class[] { Class.forName(&quot;java.lang.Object&quot;) }); </b></font>
    </p>
    <p>
      <font color="#ff00cc"><b>&#160;&#160;&#160;&#160;&#160;&#160;m3 = Class.forName(&quot;com.foo.proxy.Rechargable&quot;).getMethod(&quot;</b></font><b><font color="#009999">recharge</font><font color="#ff00cc">&quot;, new Class[0]); </font></b>
    </p>
    <p>
      <font color="#ff00cc"><b>&#160;&#160;&#160;&#160;&#160;&#160;m4 = Class.forName(&quot;com.foo.proxy.Vehicle&quot;).getMethod(&quot;</b></font><b><font color="#009999">drive</font><font color="#ff00cc">&quot;, new Class[0]); </font></b>
    </p>
    <p>
      <font color="#ff00cc"><b>&#160;&#160;&#160;&#160;&#160;&#160;m0 = Class.forName(&quot;java.lang.Object&quot;).getMethod(&quot;hashCode&quot;, new Class[0]); </b></font>
    </p>
    <p>
      <font color="#ff00cc"><b>&#160;&#160;&#160;&#160;&#160;&#160;m2 = Class.forName(&quot;java.lang.Object&quot;).getMethod(&quot;toString&quot;, new Class[0]);</b></font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (NoSuchMethodException localNoSuchMethodException)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new NoSuchMethodError(localNoSuchMethodException.getMessage());
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;catch (ClassNotFoundException localClassNotFoundException)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;throw new NoClassDefFoundError(localClassNotFoundException.getMessage());
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481617562176" FOLDED="true" ID="ID_538862112" MODIFIED="1481620556998" TEXT="&#x56fe;&#x89e3;&#x8bf4;&#x660e;">
<node CREATED="1481617571543" ID="ID_833266170" MODIFIED="1481617577603">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-jdk-implement-5.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1481597059344" ID="ID_872607877" MODIFIED="1481600235759">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      cglib&#27169;&#24335;&#21160;&#24577;&#20195;&#29702;&#65288;&#32487;&#25215;&#27169;&#24335;&#65289;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#006600">spring&#26694;&#26550;&#29992;&#30340;&#27492;&#27169;&#24335;</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481617617135" FOLDED="true" ID="ID_390696763" MODIFIED="1481620638805" TEXT="&#x5b9e;&#x73b0;&#x6b65;&#x9aa4;">
<node CREATED="1481617819288" ID="ID_733424080" MODIFIED="1481617849326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="2016/12/proxy-cglib-implement-1.jpg" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481617871302" ID="ID_1472267473" MODIFIED="1481619898706" TEXT="&#x6e90;&#x7801;&#x4e3e;&#x4f8b;">
<node CREATED="1481617885328" FOLDED="true" ID="ID_299819509" MODIFIED="1481617928518" TEXT="Programmer">
<node CREATED="1481617910086" ID="ID_469997672" MODIFIED="1481617925745">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package samples;
    </p>
    <p>
      /**
    </p>
    <p>
      &#160;* &#31243;&#24207;&#29503;&#31867;
    </p>
    <p>
      &#160;* @author louluan
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      public class Programmer {
    </p>
    <p>
      
    </p>
    <p>
      public void code()
    </p>
    <p>
      {
    </p>
    <p>
      System.out.println(&quot;I'm a Programmer,Just Coding.....&quot;);
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481617958294" FOLDED="true" ID="ID_486757493" MODIFIED="1481619885942" TEXT="Hacker">
<node CREATED="1481617980600" ID="ID_975054819" MODIFIED="1481618098579">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package samples;
    </p>
    <p>
      
    </p>
    <p>
      import java.lang.reflect.Method;
    </p>
    <p>
      
    </p>
    <p>
      import <b><font color="#3333ff">net.sf.cglib.proxy.MethodInterceptor;</font></b>
    </p>
    <p>
      import <b><font color="#3333ff">net.sf.cglib.proxy.MethodProxy;</font></b>
    </p>
    <p>
      /*
    </p>
    <p>
      &#160;* &#23454;&#29616;&#20102;&#26041;&#27861;&#25318;&#25130;&#22120;&#25509;&#21475;
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      public class Hacker implements <b><font color="#3300cc">MethodInterceptor</font></b>&#160;{
    </p>
    <p>
      @Override<b><font color="#006600">&#160;//&#31561;&#21516;&#20110;JDK&#27169;&#24335;&#30340;invoke</font></b>
    </p>
    <p>
      public Object <b><font color="#ff00cc">intercept</font></b>(Object obj, Method method, Object[] args,
    </p>
    <p>
      MethodProxy proxy) throws Throwable {
    </p>
    <p>
      System.out.println(&quot;**** I am a hacker,Let's see what the poor programmer is doing Now...&quot;); <b><font color="#009900">//Before</font></b>
    </p>
    <p>
      <b><font color="#3333ff">proxy.invokeSuper(obj, args); </font></b>
    </p>
    <p>
      <b><font color="#3333ff">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#009900">//After</font></b>
    </p>
    <p>
      System.out.println(&quot;****&#160;&#160;Oh,what a poor programmer.....&quot;);
    </p>
    <p>
      return null;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481618123264" FOLDED="true" ID="ID_949282096" MODIFIED="1481619913814" TEXT="&#x6574;&#x5408;demo">
<node CREATED="1481619561536" ID="ID_1110207014" MODIFIED="1481619745938">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      package samples;
    </p>
    <p>
      
    </p>
    <p>
      import net.sf.cglib.proxy.Enhancer;
    </p>
    <p>
      
    </p>
    <p>
      public class Test {
    </p>
    <p>
      
    </p>
    <p>
      public static void main(String[] args) {
    </p>
    <p>
      
    </p>
    <p>
      Programmer <font color="#3333ff">progammer</font>&#160;= new Programmer();
    </p>
    <p>
      Hacker <font color="#ff00cc">hacker</font>&#160;= new Hacker();
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#006600">//cglib &#20013;&#21152;&#24378;&#22120;&#65292;&#29992;&#26469;&#21019;&#24314;&#21160;&#24577;&#20195;&#29702;</font></b>
    </p>
    <p>
      <b><font color="#009999">Enhancer enhancer = new Enhancer();&#160; </font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#006600">&#160; //&#35774;&#32622;&#35201;&#21019;&#24314;&#21160;&#24577;&#20195;&#29702;&#30340;&#31867;</font>
    </p>
    <p>
      <b><font color="#009999">enhancer.setSuperclass</font></b>(<font color="#3300cc">progammer.getClass()</font>);&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#006600">&#160; // &#35774;&#32622;&#22238;&#35843;&#65292;&#36825;&#37324;&#30456;&#24403;&#20110;&#26159;&#23545;&#20110;&#20195;&#29702;&#31867;&#19978;&#25152;&#26377;&#26041;&#27861;&#30340;&#35843;&#29992;&#65292;&#37117;&#20250;&#35843;&#29992;CallBack&#65292;&#32780;Callback&#21017;&#38656;&#35201;&#23454;&#34892;intercept()&#26041;&#27861;&#36827;&#34892;&#25318;&#25130;</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#009999">&#160; enhancer.setCallback(</font><font color="#ff00ff">hacker</font><font color="#009999">);</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#3333ff">Programmer</font></b>&#160; <b><font color="#ff0000">proxy</font></b>&#160;=(Programmer)<b><font color="#009999">enhancer.create</font></b>();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <font color="#ff0000">proxy</font>.<b><font color="#009999">code();</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      }
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1481619916285" FOLDED="true" ID="ID_393494857" MODIFIED="1481620139663">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21516;&#26679;&#36890;&#36807;<b><font color="#006600">jd-gui.exe</font></b>&#21453;&#32534;&#35793;<font color="#ff0000">proxy.class</font>&#26597;&#30475;<b><font color="#009999">cglib&#29983;&#25104;</font></b>&#30340;&#28304;&#30721;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481620007297" ID="ID_159482305" MODIFIED="1481620137330">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      package samples;
    </p>
    <p>
      
    </p>
    <p>
      import java.lang.reflect.Method;
    </p>
    <p>
      import net.sf.cglib.core.ReflectUtils;
    </p>
    <p>
      import net.sf.cglib.core.Signature;
    </p>
    <p>
      import net.sf.cglib.proxy.Callback;
    </p>
    <p>
      import net.sf.cglib.proxy.Factory;
    </p>
    <p>
      import net.sf.cglib.proxy.MethodInterceptor;
    </p>
    <p>
      import net.sf.cglib.proxy.MethodProxy;
    </p>
    <p>
      
    </p>
    <p>
      public class <font color="#3333ff">Programmer</font>$$<font color="#009999">EnhancerByCGLIB</font>$$fa7aa2cd <b><font color="#006600">extends</font></b>&#160; <font color="#3333ff">Programmer</font>
    </p>
    <p>
      &#160;&#160;implements <b><font color="#3300cc">Factory</font></b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;//......&#30465;&#30053;
    </p>
    <p>
      &#160;&#160;private <b><font color="#ff00cc">MethodInterceptor</font></b>&#160;CGLIB$CALLBACK_0;&#160;&#160;// Enchaner&#20256;&#20837;&#30340;methodInterceptor
    </p>
    <p>
      &#160;&#160;&#160;// ....&#30465;&#30053;
    </p>
    <p>
      &#160;&#160;public final void code()
    </p>
    <p>
      &#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;MethodInterceptor <font color="#ff00cc">tmp4_1</font>&#160;= this.<font color="#ff00cc">CGLIB$CALLBACK_0</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (tmp4_1 == null)
    </p>
    <p>
      &#160;&#160;&#160;&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;tmp4_1;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;CGLIB$BIND_CALLBACKS(this);//&#33509;callback &#19981;&#20026;&#31354;&#65292;&#21017;&#35843;&#29992;methodInterceptor &#30340;intercept()&#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (this.CGLIB$CALLBACK_0 != null)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;return;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;//&#22914;&#26524;&#27809;&#26377;&#35774;&#32622;callback&#22238;&#35843;&#20989;&#25968;&#65292;&#21017;&#40664;&#35748;&#25191;&#34892;&#29238;&#31867;&#30340;&#26041;&#27861;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;super.code();
    </p>
    <p>
      &#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;//....&#21518;&#32493;&#30465;&#30053;
    </p>
    <p>
      }
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
<node CREATED="1481587914354" FOLDED="true" ID="ID_134359529" MODIFIED="1481620370183" TEXT="&#x76ee;&#x7684;">
<node CREATED="1481587930380" ID="ID_1552398158" MODIFIED="1481588026941">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20026;<b><font color="#3300cc">&#20854;&#20182;&#23545;&#35937;</font><font color="#ff00cc">&#25552;&#20379;</font><font color="#006600">&#19968;&#31181;</font><font color="#ff0000">&#20195;&#29702;</font><font color="#006600">&#20197;&#25511;&#21046;</font></b>&#23545;<b><font color="#006666">&#36825;&#20010;&#23545;&#35937;</font></b>&#30340;&#35775;&#38382;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1481600096023" ID="ID_299406714" MODIFIED="1481611701071">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#36804;&#20170;&#20026;&#27490;&#65292;&#30475;&#21040;&#30340;&#20195;&#29702;&#37117;&#26159;&#22312;proxy&#31867;&#20013;&#27880;&#20837;&#20102;&#23454;&#38469;&#30340;&#34987;&#20195;&#29702;&#31867;&#65292;&#25630;&#27611;&#21834;&#65281;&#65281;&#65281;&#36825;&#31181;&#20363;&#23376;&#19981;&#26159;&#22403;&#22334;&#26159;&#20160;&#20040;&#65311;&#65281;
    </p>
    <p>
      
    </p>
    <p>
      Java&#20013;&#20195;&#29702;&#23545;&#35937;&#30446;&#30340;&#19982;&#25105;&#29702;&#35299;&#30340;&#26377;&#20986;&#20837;&#65292;&#25105;&#26159;&#22522;&#20110;.net remoting&#26041;&#24335;&#65292;&#20195;&#29702;&#31471;&#26159;&#32431;&#31929;&#30340;&#30246;&#23458;&#25143;&#31471;&#65292;&#20165;&#20165;&#26159;&#36828;&#31243;&#35843;&#29992;&#20351;&#29992;&#65292;&#32780;Java&#36825;&#20010;&#27010;&#24565;&#21253;&#25324;&#20102;&#28155;&#21152;&#39069;&#22806;&#30340;&#21151;&#33021;&#65311;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1481614088724" ID="ID_97979035" LINK="2016/12/&#x4ee3;&#x7406;&#x6a21;&#x5f0f;.mht" MODIFIED="1481614826164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28165;&#26224;&#35299;&#37322;&#20102;,<b><font color="#ff0000">&#25105;&#23545;&#20195;&#29702;&#27169;&#24335;&#30340;&#29702;&#35299;&#29421;&#38552;&#20102;</font></b>
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
</map>
