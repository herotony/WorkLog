今后Java可用如下示例进行多线程并发测试
```java
public void TestDate() throws  Exception{

        String data =  WxpayUtil.getWSPayTime("2017-12-05 07:56:56");
        //data = "20171205075656";
        final long prevTime =  WxpayUtil.getPayTime(data);

        //核心测试框架
        ExecutorService threadPool = Executors.newCachedThreadPool();
        CompletionService<Long> cs = new ExecutorCompletionService<Long>(threadPool);

        for(int i = 1; i < 1000; i++) {
            cs.submit(new Callable<Long>() {
                public Long call() throws Exception {
                    //String str = WxpayUtil.getWSPayTime("2017-12-05 07:56:56");
                    String str="20171205075656"+"";
                    long value = WxpayUtil.getPayTime(str);
                    //long value = new SimpleDateFormat("yyyyMMddHHmmss").parse(str).getTime();
                    if(prevTime != value)
                        System.out.println("fail"+value);
                    else
                        System.out.println("equal");
                    return value;
                }
            });
        }

        for(int j=1;j<100;j++){
           //提取测试结果
           System.out.println( cs.take().get());
        }

        System.out.println("test finish");

    }
```
