package retrofit;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.Executor;

class RestAdapter$RestHandler
  implements InvocationHandler
{
  private final Map<Method, RestMethodInfo> methodDetailsCache;

  RestAdapter$RestHandler(Map<Method, RestMethodInfo> paramMap)
  {
    Object localObject;
    this.methodDetailsCache = localObject;
  }

  // ERROR //
  private Object invokeRequest(RequestInterceptor paramRequestInterceptor, RestMethodInfo paramRestMethodInfo, Object[] paramArrayOfObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_2
    //   4: invokevirtual 42	retrofit/RestMethodInfo:init	()V
    //   7: aload_0
    //   8: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   11: getfield 48	retrofit/RestAdapter:server	Lretrofit/Endpoint;
    //   14: invokeinterface 54 1 0
    //   19: astore 10
    //   21: new 56	retrofit/RequestBuilder
    //   24: dup
    //   25: aload 10
    //   27: aload_2
    //   28: aload_0
    //   29: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   32: getfield 60	retrofit/RestAdapter:converter	Lretrofit/converter/Converter;
    //   35: invokespecial 63	retrofit/RequestBuilder:<init>	(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/converter/Converter;)V
    //   38: astore 9
    //   40: aload 9
    //   42: aload_3
    //   43: invokevirtual 67	retrofit/RequestBuilder:setArguments	([Ljava/lang/Object;)V
    //   46: aload_1
    //   47: aload 9
    //   49: invokeinterface 73 2 0
    //   54: aload 9
    //   56: invokevirtual 77	retrofit/RequestBuilder:build	()Lretrofit/client/Request;
    //   59: astore 9
    //   61: aload 9
    //   63: invokevirtual 80	retrofit/client/Request:getUrl	()Ljava/lang/String;
    //   66: astore_1
    //   67: aload_2
    //   68: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   71: ifne +33 -> 104
    //   74: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   77: new 92	java/lang/StringBuilder
    //   80: dup
    //   81: ldc 94
    //   83: invokespecial 97	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_1
    //   87: aload 10
    //   89: invokevirtual 103	java/lang/String:length	()I
    //   92: invokevirtual 107	java/lang/String:substring	(I)Ljava/lang/String;
    //   95: invokevirtual 111	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   104: aload 9
    //   106: astore_3
    //   107: aload_0
    //   108: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   111: getfield 121	retrofit/RestAdapter:logLevel	Lretrofit/RestAdapter$LogLevel;
    //   114: invokevirtual 127	retrofit/RestAdapter$LogLevel:log	()Z
    //   117: ifeq +15 -> 132
    //   120: aload_0
    //   121: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   124: ldc 129
    //   126: aload 9
    //   128: invokevirtual 133	retrofit/RestAdapter:logAndReplaceRequest	(Ljava/lang/String;Lretrofit/client/Request;)Lretrofit/client/Request;
    //   131: astore_3
    //   132: aload_0
    //   133: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   136: invokestatic 137	retrofit/RestAdapter:access$200	(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    //   139: ifnull +556 -> 695
    //   142: aload_0
    //   143: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   146: invokestatic 137	retrofit/RestAdapter:access$200	(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    //   149: invokeinterface 143 1 0
    //   154: astore 8
    //   156: invokestatic 149	java/lang/System:nanoTime	()J
    //   159: lstore 5
    //   161: aload_0
    //   162: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   165: invokestatic 153	retrofit/RestAdapter:access$300	(Lretrofit/RestAdapter;)Lretrofit/client/Client$Provider;
    //   168: invokeinterface 159 1 0
    //   173: aload_3
    //   174: invokeinterface 165 2 0
    //   179: astore 9
    //   181: getstatic 171	java/util/concurrent/TimeUnit:NANOSECONDS	Ljava/util/concurrent/TimeUnit;
    //   184: invokestatic 149	java/lang/System:nanoTime	()J
    //   187: lload 5
    //   189: lsub
    //   190: invokevirtual 175	java/util/concurrent/TimeUnit:toMillis	(J)J
    //   193: lstore 5
    //   195: aload 9
    //   197: invokevirtual 180	retrofit/client/Response:getStatus	()I
    //   200: istore 4
    //   202: aload_0
    //   203: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   206: invokestatic 137	retrofit/RestAdapter:access$200	(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    //   209: ifnull +30 -> 239
    //   212: aload 10
    //   214: aload_2
    //   215: aload_3
    //   216: invokestatic 184	retrofit/RestAdapter:access$400	(Ljava/lang/String;Lretrofit/RestMethodInfo;Lretrofit/client/Request;)Lretrofit/Profiler$RequestInformation;
    //   219: astore_3
    //   220: aload_0
    //   221: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   224: invokestatic 137	retrofit/RestAdapter:access$200	(Lretrofit/RestAdapter;)Lretrofit/Profiler;
    //   227: aload_3
    //   228: lload 5
    //   230: iload 4
    //   232: aload 8
    //   234: invokeinterface 188 6 0
    //   239: aload_0
    //   240: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   243: getfield 121	retrofit/RestAdapter:logLevel	Lretrofit/RestAdapter$LogLevel;
    //   246: invokevirtual 127	retrofit/RestAdapter$LogLevel:log	()Z
    //   249: ifeq +440 -> 689
    //   252: aload_0
    //   253: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   256: aload_1
    //   257: aload 9
    //   259: lload 5
    //   261: invokestatic 192	retrofit/RestAdapter:access$500	(Lretrofit/RestAdapter;Ljava/lang/String;Lretrofit/client/Response;J)Lretrofit/client/Response;
    //   264: astore_3
    //   265: aload_2
    //   266: getfield 196	retrofit/RestMethodInfo:responseObjectType	Ljava/lang/reflect/Type;
    //   269: astore 9
    //   271: iload 4
    //   273: sipush 200
    //   276: if_icmplt +344 -> 620
    //   279: iload 4
    //   281: sipush 300
    //   284: if_icmpge +336 -> 620
    //   287: aload 9
    //   289: ldc 177
    //   291: invokevirtual 200	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   294: ifeq +74 -> 368
    //   297: aload_2
    //   298: getfield 203	retrofit/RestMethodInfo:isStreaming	Z
    //   301: ifne +385 -> 686
    //   304: aload_3
    //   305: invokestatic 209	retrofit/Utils:readBodyToBytesIfNecessary	(Lretrofit/client/Response;)Lretrofit/client/Response;
    //   308: astore_3
    //   309: aload_2
    //   310: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   313: istore 7
    //   315: iload 7
    //   317: ifeq +24 -> 341
    //   320: aload_3
    //   321: astore_1
    //   322: aload_2
    //   323: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   326: ifne +13 -> 339
    //   329: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   332: ldc 211
    //   334: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   337: aload_3
    //   338: astore_1
    //   339: aload_1
    //   340: areturn
    //   341: new 213	retrofit/ResponseWrapper
    //   344: dup
    //   345: aload_3
    //   346: aload_3
    //   347: invokespecial 216	retrofit/ResponseWrapper:<init>	(Lretrofit/client/Response;Ljava/lang/Object;)V
    //   350: astore_3
    //   351: aload_2
    //   352: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   355: ifne +11 -> 366
    //   358: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   361: ldc 211
    //   363: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   366: aload_3
    //   367: areturn
    //   368: aload_3
    //   369: invokevirtual 220	retrofit/client/Response:getBody	()Lretrofit/mime/TypedInput;
    //   372: astore 8
    //   374: aload 8
    //   376: ifnonnull +60 -> 436
    //   379: aload_2
    //   380: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   383: istore 7
    //   385: iload 7
    //   387: ifeq +20 -> 407
    //   390: aload_2
    //   391: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   394: ifne +11 -> 405
    //   397: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   400: ldc 211
    //   402: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   405: aconst_null
    //   406: areturn
    //   407: new 213	retrofit/ResponseWrapper
    //   410: dup
    //   411: aload_3
    //   412: aconst_null
    //   413: invokespecial 216	retrofit/ResponseWrapper:<init>	(Lretrofit/client/Response;Ljava/lang/Object;)V
    //   416: astore_3
    //   417: aload_3
    //   418: astore_1
    //   419: aload_2
    //   420: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   423: ifne -84 -> 339
    //   426: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   429: ldc 211
    //   431: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   434: aload_3
    //   435: areturn
    //   436: new 222	retrofit/ExceptionCatchingTypedInput
    //   439: dup
    //   440: aload 8
    //   442: invokespecial 225	retrofit/ExceptionCatchingTypedInput:<init>	(Lretrofit/mime/TypedInput;)V
    //   445: astore 10
    //   447: aload_0
    //   448: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   451: getfield 60	retrofit/RestAdapter:converter	Lretrofit/converter/Converter;
    //   454: aload 10
    //   456: aload 9
    //   458: invokeinterface 231 3 0
    //   463: astore 8
    //   465: aload_2
    //   466: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   469: istore 7
    //   471: iload 7
    //   473: ifeq +24 -> 497
    //   476: aload 8
    //   478: astore_1
    //   479: aload_2
    //   480: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   483: ifne -144 -> 339
    //   486: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   489: ldc 211
    //   491: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   494: aload 8
    //   496: areturn
    //   497: new 213	retrofit/ResponseWrapper
    //   500: dup
    //   501: aload_3
    //   502: aload 8
    //   504: invokespecial 216	retrofit/ResponseWrapper:<init>	(Lretrofit/client/Response;Ljava/lang/Object;)V
    //   507: astore 8
    //   509: aload_2
    //   510: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   513: ifne +11 -> 524
    //   516: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   519: ldc 211
    //   521: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   524: aload 8
    //   526: areturn
    //   527: astore 8
    //   529: aload 10
    //   531: invokevirtual 234	retrofit/ExceptionCatchingTypedInput:threwException	()Z
    //   534: ifeq +30 -> 564
    //   537: aload 10
    //   539: invokevirtual 238	retrofit/ExceptionCatchingTypedInput:getThrownException	()Ljava/io/IOException;
    //   542: athrow
    //   543: astore_1
    //   544: aload_1
    //   545: athrow
    //   546: astore_1
    //   547: aload_2
    //   548: getfield 84	retrofit/RestMethodInfo:isSynchronous	Z
    //   551: ifne +11 -> 562
    //   554: invokestatic 90	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   557: ldc 211
    //   559: invokevirtual 117	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   562: aload_1
    //   563: athrow
    //   564: aload_1
    //   565: aload_3
    //   566: aconst_null
    //   567: invokestatic 242	retrofit/Utils:replaceResponseBody	(Lretrofit/client/Response;Lretrofit/mime/TypedInput;)Lretrofit/client/Response;
    //   570: aload_0
    //   571: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   574: getfield 60	retrofit/RestAdapter:converter	Lretrofit/converter/Converter;
    //   577: aload 9
    //   579: aload 8
    //   581: invokestatic 246	retrofit/RetrofitError:conversionError	(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;
    //   584: athrow
    //   585: astore 8
    //   587: aload_1
    //   588: astore_3
    //   589: aload 8
    //   591: astore_1
    //   592: aload_0
    //   593: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   596: getfield 121	retrofit/RestAdapter:logLevel	Lretrofit/RestAdapter$LogLevel;
    //   599: invokevirtual 127	retrofit/RestAdapter$LogLevel:log	()Z
    //   602: ifeq +12 -> 614
    //   605: aload_0
    //   606: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   609: aload_1
    //   610: aload_3
    //   611: invokevirtual 250	retrofit/RestAdapter:logException	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   614: aload_3
    //   615: aload_1
    //   616: invokestatic 254	retrofit/RetrofitError:networkError	(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;
    //   619: athrow
    //   620: aload_1
    //   621: aload_3
    //   622: invokestatic 209	retrofit/Utils:readBodyToBytesIfNecessary	(Lretrofit/client/Response;)Lretrofit/client/Response;
    //   625: aload_0
    //   626: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   629: getfield 60	retrofit/RestAdapter:converter	Lretrofit/converter/Converter;
    //   632: aload 9
    //   634: invokestatic 258	retrofit/RetrofitError:httpError	(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;
    //   637: athrow
    //   638: astore 8
    //   640: aload_1
    //   641: astore_3
    //   642: aload 8
    //   644: astore_1
    //   645: aload_0
    //   646: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   649: getfield 121	retrofit/RestAdapter:logLevel	Lretrofit/RestAdapter$LogLevel;
    //   652: invokevirtual 127	retrofit/RestAdapter$LogLevel:log	()Z
    //   655: ifeq +12 -> 667
    //   658: aload_0
    //   659: getfield 15	retrofit/RestAdapter$RestHandler:this$0	Lretrofit/RestAdapter;
    //   662: aload_1
    //   663: aload_3
    //   664: invokevirtual 250	retrofit/RestAdapter:logException	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   667: aload_3
    //   668: aload_1
    //   669: invokestatic 262	retrofit/RetrofitError:unexpectedError	(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;
    //   672: athrow
    //   673: astore_1
    //   674: aconst_null
    //   675: astore_3
    //   676: goto -31 -> 645
    //   679: astore_1
    //   680: aload 8
    //   682: astore_3
    //   683: goto -91 -> 592
    //   686: goto -377 -> 309
    //   689: aload 9
    //   691: astore_3
    //   692: goto -427 -> 265
    //   695: aconst_null
    //   696: astore 8
    //   698: goto -542 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   447	471	527	retrofit/converter/ConversionException
    //   497	509	527	retrofit/converter/ConversionException
    //   3	67	543	retrofit/RetrofitError
    //   67	104	543	retrofit/RetrofitError
    //   107	132	543	retrofit/RetrofitError
    //   132	156	543	retrofit/RetrofitError
    //   156	239	543	retrofit/RetrofitError
    //   239	265	543	retrofit/RetrofitError
    //   265	271	543	retrofit/RetrofitError
    //   287	309	543	retrofit/RetrofitError
    //   309	315	543	retrofit/RetrofitError
    //   341	351	543	retrofit/RetrofitError
    //   368	374	543	retrofit/RetrofitError
    //   379	385	543	retrofit/RetrofitError
    //   407	417	543	retrofit/RetrofitError
    //   436	447	543	retrofit/RetrofitError
    //   447	471	543	retrofit/RetrofitError
    //   497	509	543	retrofit/RetrofitError
    //   529	543	543	retrofit/RetrofitError
    //   564	585	543	retrofit/RetrofitError
    //   620	638	543	retrofit/RetrofitError
    //   3	67	546	finally
    //   67	104	546	finally
    //   107	132	546	finally
    //   132	156	546	finally
    //   156	239	546	finally
    //   239	265	546	finally
    //   265	271	546	finally
    //   287	309	546	finally
    //   309	315	546	finally
    //   341	351	546	finally
    //   368	374	546	finally
    //   379	385	546	finally
    //   407	417	546	finally
    //   436	447	546	finally
    //   447	471	546	finally
    //   497	509	546	finally
    //   529	543	546	finally
    //   544	546	546	finally
    //   564	585	546	finally
    //   592	614	546	finally
    //   614	620	546	finally
    //   620	638	546	finally
    //   645	667	546	finally
    //   667	673	546	finally
    //   67	104	585	java/io/IOException
    //   107	132	585	java/io/IOException
    //   132	156	585	java/io/IOException
    //   156	239	585	java/io/IOException
    //   239	265	585	java/io/IOException
    //   265	271	585	java/io/IOException
    //   287	309	585	java/io/IOException
    //   309	315	585	java/io/IOException
    //   341	351	585	java/io/IOException
    //   368	374	585	java/io/IOException
    //   379	385	585	java/io/IOException
    //   407	417	585	java/io/IOException
    //   436	447	585	java/io/IOException
    //   447	471	585	java/io/IOException
    //   497	509	585	java/io/IOException
    //   529	543	585	java/io/IOException
    //   564	585	585	java/io/IOException
    //   620	638	585	java/io/IOException
    //   67	104	638	java/lang/Throwable
    //   107	132	638	java/lang/Throwable
    //   132	156	638	java/lang/Throwable
    //   156	239	638	java/lang/Throwable
    //   239	265	638	java/lang/Throwable
    //   265	271	638	java/lang/Throwable
    //   287	309	638	java/lang/Throwable
    //   309	315	638	java/lang/Throwable
    //   341	351	638	java/lang/Throwable
    //   368	374	638	java/lang/Throwable
    //   379	385	638	java/lang/Throwable
    //   407	417	638	java/lang/Throwable
    //   436	447	638	java/lang/Throwable
    //   447	471	638	java/lang/Throwable
    //   497	509	638	java/lang/Throwable
    //   529	543	638	java/lang/Throwable
    //   564	585	638	java/lang/Throwable
    //   620	638	638	java/lang/Throwable
    //   3	67	673	java/lang/Throwable
    //   3	67	679	java/io/IOException
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    if (paramMethod.getDeclaringClass() == Object.class)
      return paramMethod.invoke(this, paramArrayOfObject);
    paramObject = RestAdapter.getMethodInfo(this.methodDetailsCache, paramMethod);
    if (paramObject.isSynchronous)
      try
      {
        paramObject = invokeRequest(this.this$0.requestInterceptor, paramObject, paramArrayOfObject);
        return paramObject;
      }
      catch (RetrofitError paramObject)
      {
        paramMethod = this.this$0.errorHandler.handleError(paramObject);
        if (paramMethod == null)
          throw new IllegalStateException("Error handler returned null for wrapped exception.", paramObject);
        throw paramMethod;
      }
    if ((this.this$0.httpExecutor == null) || (this.this$0.callbackExecutor == null))
      throw new IllegalStateException("Asynchronous invocation requires calling setExecutors.");
    if (paramObject.isObservable)
    {
      if (RestAdapter.access$000(this.this$0) == null)
      {
        if (Platform.HAS_RX_JAVA)
          RestAdapter.access$002(this.this$0, new RxSupport(this.this$0.httpExecutor, this.this$0.errorHandler, this.this$0.requestInterceptor));
      }
      else
        return RestAdapter.access$000(this.this$0).createRequestObservable(new RestAdapter.RestHandler.1(this, paramObject, paramArrayOfObject));
      throw new IllegalStateException("Observable method found but no RxJava on classpath.");
    }
    paramMethod = new RequestInterceptorTape();
    this.this$0.requestInterceptor.intercept(paramMethod);
    Callback localCallback = (Callback)paramArrayOfObject[(paramArrayOfObject.length - 1)];
    this.this$0.httpExecutor.execute(new RestAdapter.RestHandler.2(this, localCallback, this.this$0.callbackExecutor, this.this$0.errorHandler, paramMethod, paramObject, paramArrayOfObject));
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RestAdapter.RestHandler
 * JD-Core Version:    0.6.2
 */