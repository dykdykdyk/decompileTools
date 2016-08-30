package com.baidu.android.pushservice.e;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushConstants;
import com.baidu.android.pushservice.i.c;
import com.baidu.android.pushservice.i.t;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class a
  implements Runnable
{
  protected Context a;
  protected l b;
  protected String c;
  protected boolean d = true;

  public a(l paraml, Context paramContext)
  {
    this.b = paraml;
    this.a = paramContext.getApplicationContext();
    this.c = com.baidu.android.pushservice.h.e();
  }

  private void a(String paramString, int paramInt)
  {
    new a.1(this, paramString, paramInt).start();
  }

  // ERROR //
  private int b(int paramInt)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifle +150 -> 151
    //   4: aload_0
    //   5: getfield 31	com/baidu/android/pushservice/e/a:a	Landroid/content/Context;
    //   8: astore 6
    //   10: iload_1
    //   11: iconst_1
    //   12: if_icmpne +24 -> 36
    //   15: iconst_1
    //   16: istore 5
    //   18: aload 6
    //   20: iload 5
    //   22: invokestatic 55	com/baidu/android/pushservice/h:b	(Landroid/content/Context;Z)Ljava/lang/String;
    //   25: astore 6
    //   27: aload 6
    //   29: ifnonnull +13 -> 42
    //   32: sipush 10002
    //   35: ireturn
    //   36: iconst_0
    //   37: istore 5
    //   39: goto -21 -> 18
    //   42: aload_0
    //   43: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   46: ldc 57
    //   48: invokevirtual 63	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   51: ifeq +100 -> 151
    //   54: aload_0
    //   55: aload_0
    //   56: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   59: ldc 57
    //   61: ldc 65
    //   63: invokevirtual 69	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   66: putfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   69: aload_0
    //   70: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   73: ldc 71
    //   75: invokevirtual 75	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   78: istore_2
    //   79: iload_2
    //   80: ifle +15 -> 95
    //   83: aload_0
    //   84: aload_0
    //   85: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   88: iload_2
    //   89: invokevirtual 79	java/lang/String:substring	(I)Ljava/lang/String;
    //   92: putfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   95: aload_0
    //   96: new 81	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 57
    //   102: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload 6
    //   107: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_0
    //   111: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   114: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: putfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   123: ldc 93
    //   125: new 81	java/lang/StringBuilder
    //   128: dup
    //   129: ldc 95
    //   131: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload_0
    //   135: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   138: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: aload_0
    //   145: getfield 31	com/baidu/android/pushservice/e/a:a	Landroid/content/Context;
    //   148: invokestatic 100	com/baidu/android/pushservice/h/b:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   151: aconst_null
    //   152: astore 6
    //   154: aload 6
    //   156: astore 7
    //   158: new 102	java/util/HashMap
    //   161: dup
    //   162: invokespecial 103	java/util/HashMap:<init>	()V
    //   165: astore 8
    //   167: aload 6
    //   169: astore 7
    //   171: aload_0
    //   172: aload 8
    //   174: invokevirtual 106	com/baidu/android/pushservice/e/a:a	(Ljava/util/HashMap;)V
    //   177: aload 6
    //   179: astore 7
    //   181: aload_0
    //   182: getfield 39	com/baidu/android/pushservice/e/a:c	Ljava/lang/String;
    //   185: ldc 108
    //   187: aload 8
    //   189: invokestatic 113	com/baidu/android/pushservice/f/c:a	(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lcom/baidu/android/pushservice/f/b;
    //   192: astore 8
    //   194: aload 6
    //   196: astore 7
    //   198: aload 8
    //   200: invokevirtual 118	com/baidu/android/pushservice/f/b:b	()I
    //   203: istore 4
    //   205: aload 6
    //   207: astore 7
    //   209: aload 8
    //   211: invokevirtual 121	com/baidu/android/pushservice/f/b:a	()Ljava/io/InputStream;
    //   214: astore 6
    //   216: iload 4
    //   218: sipush 200
    //   221: if_icmpne +108 -> 329
    //   224: aload 6
    //   226: astore 7
    //   228: aload 6
    //   230: invokestatic 126	com/baidu/android/pushservice/i/a/b:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   233: astore 8
    //   235: aload 6
    //   237: astore 7
    //   239: ldc 93
    //   241: new 81	java/lang/StringBuilder
    //   244: dup
    //   245: ldc 128
    //   247: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: aload 8
    //   252: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   258: invokestatic 133	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload 6
    //   263: astore 7
    //   265: aload_0
    //   266: iconst_0
    //   267: aload_0
    //   268: aload 8
    //   270: invokevirtual 136	com/baidu/android/pushservice/e/a:b	(Ljava/lang/String;)Ljava/lang/String;
    //   273: invokevirtual 140	java/lang/String:getBytes	()[B
    //   276: invokevirtual 143	com/baidu/android/pushservice/e/a:a	(I[B)V
    //   279: iconst_0
    //   280: istore_2
    //   281: iconst_0
    //   282: istore_3
    //   283: aload 6
    //   285: ifnull +8 -> 293
    //   288: iload 4
    //   290: ifne +25 -> 315
    //   293: iload_1
    //   294: iconst_2
    //   295: if_icmplt +16 -> 311
    //   298: aload 6
    //   300: astore 7
    //   302: iload_2
    //   303: istore_3
    //   304: aload_0
    //   305: sipush 10002
    //   308: invokevirtual 146	com/baidu/android/pushservice/e/a:a	(I)V
    //   311: sipush 10002
    //   314: istore_3
    //   315: iconst_1
    //   316: anewarray 148	java/io/Closeable
    //   319: dup
    //   320: iconst_0
    //   321: aload 6
    //   323: aastore
    //   324: invokestatic 151	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   327: iload_3
    //   328: ireturn
    //   329: aload 6
    //   331: astore 7
    //   333: ldc 93
    //   335: new 81	java/lang/StringBuilder
    //   338: dup
    //   339: ldc 153
    //   341: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   344: iload 4
    //   346: invokevirtual 156	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   349: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokestatic 133	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   355: iload 4
    //   357: sipush 503
    //   360: if_icmpne +209 -> 569
    //   363: iconst_1
    //   364: istore_2
    //   365: aload 6
    //   367: astore 7
    //   369: iload_2
    //   370: istore_3
    //   371: aload 6
    //   373: invokestatic 126	com/baidu/android/pushservice/i/a/b:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   376: astore 8
    //   378: aload 6
    //   380: astore 7
    //   382: iload_2
    //   383: istore_3
    //   384: ldc 93
    //   386: new 81	java/lang/StringBuilder
    //   389: dup
    //   390: ldc 128
    //   392: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   395: aload 8
    //   397: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: invokestatic 133	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   406: aload 6
    //   408: astore 7
    //   410: iload_2
    //   411: istore_3
    //   412: aload_0
    //   413: aload 8
    //   415: invokevirtual 158	com/baidu/android/pushservice/e/a:a	(Ljava/lang/String;)V
    //   418: iload 4
    //   420: istore_3
    //   421: goto -138 -> 283
    //   424: astore 7
    //   426: aconst_null
    //   427: astore 6
    //   429: iconst_0
    //   430: istore_1
    //   431: ldc 93
    //   433: new 81	java/lang/StringBuilder
    //   436: dup
    //   437: ldc 160
    //   439: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   442: aload 7
    //   444: invokevirtual 163	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   447: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   453: aload_0
    //   454: getfield 31	com/baidu/android/pushservice/e/a:a	Landroid/content/Context;
    //   457: invokestatic 165	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   460: iload_1
    //   461: ifeq +27 -> 488
    //   464: aload_0
    //   465: sipush 10003
    //   468: invokevirtual 146	com/baidu/android/pushservice/e/a:a	(I)V
    //   471: iconst_m1
    //   472: istore_3
    //   473: iconst_1
    //   474: anewarray 148	java/io/Closeable
    //   477: dup
    //   478: iconst_0
    //   479: aload 6
    //   481: aastore
    //   482: invokestatic 151	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   485: goto -158 -> 327
    //   488: new 81	java/lang/StringBuilder
    //   491: dup
    //   492: ldc 167
    //   494: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   497: aload 7
    //   499: invokevirtual 163	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   502: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: aload_0
    //   509: getfield 31	com/baidu/android/pushservice/e/a:a	Landroid/content/Context;
    //   512: invokestatic 172	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   515: aload_0
    //   516: sipush 20001
    //   519: invokevirtual 146	com/baidu/android/pushservice/e/a:a	(I)V
    //   522: goto -51 -> 471
    //   525: astore 8
    //   527: aload 6
    //   529: astore 7
    //   531: aload 8
    //   533: astore 6
    //   535: iconst_1
    //   536: anewarray 148	java/io/Closeable
    //   539: dup
    //   540: iconst_0
    //   541: aload 7
    //   543: aastore
    //   544: invokestatic 151	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   547: aload 6
    //   549: athrow
    //   550: astore 6
    //   552: goto -17 -> 535
    //   555: astore 7
    //   557: iconst_0
    //   558: istore_1
    //   559: goto -128 -> 431
    //   562: astore 7
    //   564: iload_3
    //   565: istore_1
    //   566: goto -135 -> 431
    //   569: iconst_0
    //   570: istore_2
    //   571: goto -206 -> 365
    //
    // Exception table:
    //   from	to	target	type
    //   158	167	424	java/lang/Exception
    //   171	177	424	java/lang/Exception
    //   181	194	424	java/lang/Exception
    //   198	205	424	java/lang/Exception
    //   209	216	424	java/lang/Exception
    //   431	460	525	finally
    //   464	471	525	finally
    //   488	522	525	finally
    //   158	167	550	finally
    //   171	177	550	finally
    //   181	194	550	finally
    //   198	205	550	finally
    //   209	216	550	finally
    //   228	235	550	finally
    //   239	261	550	finally
    //   265	279	550	finally
    //   304	311	550	finally
    //   333	355	550	finally
    //   371	378	550	finally
    //   384	406	550	finally
    //   412	418	550	finally
    //   228	235	555	java/lang/Exception
    //   239	261	555	java/lang/Exception
    //   265	279	555	java/lang/Exception
    //   333	355	555	java/lang/Exception
    //   304	311	562	java/lang/Exception
    //   371	378	562	java/lang/Exception
    //   384	406	562	java/lang/Exception
    //   412	418	562	java/lang/Exception
  }

  private void b(int paramInt, byte[] paramArrayOfByte)
  {
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.internal.RECEIVE");
    localIntent.putExtra("method", this.b.a);
    localIntent.putExtra("error_msg", paramInt);
    localIntent.putExtra("content", paramArrayOfByte);
    localIntent.putExtra("appid", this.b.f);
    localIntent.setFlags(32);
    a(localIntent);
    com.baidu.android.pushservice.h.a.c("AbstractProcessor", "> sendInternalMethodResult  ,method:" + this.b.a + " ,errorCode : " + paramInt + " ,content : " + new String(paramArrayOfByte));
    this.a.sendBroadcast(localIntent);
  }

  private boolean c(String paramString)
  {
    int i = 0;
    while (i < 5)
    {
      if (new String[] { "method_deal_lapp_bind_intent", "method_lapp_unbind", "method_set_lapp_tags", "method_del_lapp_tags", "method_list_lapp_tags" }[i].equals(paramString))
        return true;
      i += 1;
    }
    return false;
  }

  protected void a()
  {
    if ((this.b == null) || (TextUtils.isEmpty(this.b.a)))
      return;
    if ((!this.b.a.equals("com.baidu.android.pushservice.action.UNBIND")) && (!this.b.a.equals("method_deal_webapp_bind_intent")) && (!this.b.a.equals("method_deal_lapp_bind_intent")) && (!this.b.a.equals("method_sdk_unbind")) && (!this.b.a.equals("method_lapp_unbind")) && (!this.b.a.equals("method_set_lapp_tags")) && (!this.b.a.equals("method_del_lapp_tags")) && (!this.b.a.equals("method_list_lapp_tags")) && (TextUtils.isEmpty(this.b.e)) && (!this.b.a.equals("com.baidu.android.pushservice.action.UNBINDAPP")))
    {
      com.baidu.android.pushservice.h.a.e("AbstractProcessor", "Unknown method = " + this.b.a);
      return;
    }
    if (!com.baidu.android.pushservice.f.a.b(this.a))
    {
      com.baidu.android.pushservice.h.b.b("AbstractProcessor", "Network is not useful!", this.a);
      if (com.baidu.android.pushservice.a.b() > 0)
        t.a(this.a, "039912");
      a(10001);
      com.baidu.android.pushservice.util.l.a(this.a, new Intent());
      com.baidu.android.pushservice.h.a.b("AbstractProcessor", "startPushService BaseApiProcess");
      return;
    }
    if (com.baidu.android.pushservice.a.b() > 0)
      t.a(this.a, "039914");
    synchronized (com.baidu.android.pushservice.j.a(this.a))
    {
      if ((this.d) && (!???.d()))
      {
        ???.a(this.a, false);
        this.d = false;
        try
        {
          while (!???.a())
            ???.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          com.baidu.android.pushservice.h.a.e("AbstractProcessor", "error : " + localInterruptedException.getMessage());
        }
      }
      if (!com.baidu.android.pushservice.j.a(this.a).d())
      {
        a(10002);
        return;
      }
    }
    boolean bool = b();
    com.baidu.android.pushservice.h.b.c("AbstractProcessor", "netWorkConnect connectResult: " + bool, this.a);
  }

  protected void a(int paramInt)
  {
    a(paramInt, PushConstants.a(paramInt).getBytes());
  }

  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    if ((!TextUtils.isEmpty(this.b.b)) && (this.b.b.equals("internal")))
    {
      b(paramInt, paramArrayOfByte);
      return;
    }
    Intent localIntent = new Intent();
    label69: int j;
    c localc2;
    com.baidu.android.pushservice.i.m localm2;
    if (this.b.a.equals("method_deal_webapp_bind_intent"))
    {
      localIntent.setAction("com.baidu.android.pushservice.action.web.RECEIVE");
      localIntent.putExtra("method", this.b.a);
      localIntent.putExtra("error_msg", paramInt);
      localIntent.putExtra("content", paramArrayOfByte);
      localIntent.setFlags(32);
      a(localIntent);
      j = 0;
      if (!this.b.a.equals("method_bind"))
        break label909;
      localIntent.putExtra("access_token", this.b.d);
      localIntent.putExtra("secret_key", this.b.i);
      localIntent.putExtra("real_bind", "real_bind");
      localc2 = new c();
      localc2.f = "020101";
      localc2.g = System.currentTimeMillis();
      localc2.h = com.baidu.android.pushservice.i.a.b.d(this.a);
      localm2 = new com.baidu.android.pushservice.i.m();
    }
    while (true)
    {
      try
      {
        Object localObject2 = new JSONObject(new String(paramArrayOfByte));
        localc2.b = ((JSONObject)localObject2).getString("request_id");
        if (paramInt != 0)
          localc2.a = ((JSONObject)localObject2).getString("error_msg");
        localObject1 = ((JSONObject)localObject2).getJSONObject("response_params").getString("appid");
        com.baidu.android.pushservice.c.h localh = com.baidu.android.pushservice.c.b.a(this.a).d((String)localObject1);
        localc2.j = ((String)localObject1);
        localObject2 = ((JSONObject)localObject2).getJSONObject("response_params").getString("user_id");
        localm2.a((String)localObject1);
        localm2.c(com.baidu.android.pushservice.util.m.b((String)localObject2));
        localm2.b((String)localObject2);
        localObject1 = localm2;
        i = j;
        if (localh != null)
        {
          localm2.d(localh.c());
          localObject1 = com.baidu.android.pushservice.util.m.a(localm2, this.a, localh.c());
          i = j;
        }
        localc2.i = paramInt;
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          Object localObject1;
          t.a(this.a, localc2);
          if (i == 0)
            t.a(this.a, (com.baidu.android.pushservice.i.m)localObject1);
          if (com.baidu.android.pushservice.a.b() > 0)
          {
            localObject1 = new com.baidu.android.pushservice.i.j();
            ((com.baidu.android.pushservice.i.j)localObject1).g = System.currentTimeMillis();
            ((com.baidu.android.pushservice.i.j)localObject1).h = com.baidu.android.pushservice.i.a.b.d(this.a);
            ((com.baidu.android.pushservice.i.j)localObject1).k = this.b.i;
            ((com.baidu.android.pushservice.i.j)localObject1).f = "039904";
            ((com.baidu.android.pushservice.i.j)localObject1).i = paramInt;
            if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
              ((com.baidu.android.pushservice.i.j)localObject1).l = new String(paramArrayOfByte);
            t.a(this.a, (com.baidu.android.pushservice.i.j)localObject1);
          }
          if ((TextUtils.isEmpty(this.b.e)) && (!c(this.b.a)))
            break;
          if (!c(this.b.a))
            localIntent.setPackage(this.b.e);
          com.baidu.android.pushservice.h.a.c("AbstractProcessor", "> sendResult to " + this.b.i + " ,method:" + this.b.a + " ,errorCode : " + paramInt + " ,content : " + new String(paramArrayOfByte));
          if ((this.b.a.equals("com.baidu.android.pushservice.action.UNBINDAPP")) || (!TextUtils.isEmpty(this.b.j)))
            break;
          com.baidu.android.pushservice.util.m.a(this.a, localIntent, localIntent.getAction(), this.b.e);
          return;
          if ((this.b.a.equals("method_deal_lapp_bind_intent")) || (this.b.a.equals("method_lapp_unbind")) || (this.b.a.equals("method_set_lapp_tags")) || (this.b.a.equals("method_del_lapp_tags")) || (this.b.a.equals("method_list_lapp_tags")))
          {
            localIntent.setAction("com.baidu.android.pushservice.action.lapp.RECEIVE");
            break label69;
          }
          if (this.b.a.equals("method_sdk_bind"))
          {
            localIntent.setAction("com.baidu.android.pushservice.action.sdk.RECEIVE");
            break label69;
          }
          localIntent.setAction("com.baidu.android.pushservice.action.RECEIVE");
          break label69;
          localJSONException1 = localJSONException1;
          int i = 1;
          if (paramArrayOfByte != null)
          {
            com.baidu.android.pushservice.h.a.e("AbstractProcessor", "bind failed msg: " + new String(paramArrayOfByte));
            localm1 = localm2;
            continue;
          }
          com.baidu.android.pushservice.h.b.b("AbstractProcessor", "bind failed", this.a);
          com.baidu.android.pushservice.i.m localm1 = localm2;
        }
        catch (Exception localException1)
        {
          com.baidu.android.pushservice.h.b.b("AbstractProcessor", "error " + localException1.getMessage(), this.a);
          continue;
        }
      }
      label909: if ((paramArrayOfByte == null) || ((!this.b.a.equals("method_unbind")) && (!this.b.a.equals("com.baidu.android.pushservice.action.UNBINDAPP"))))
        continue;
      c localc1 = new c();
      if (this.b.a.equals("method_unbind"))
      {
        localc1.f = "020301";
        localc1.g = System.currentTimeMillis();
        localc1.h = com.baidu.android.pushservice.i.a.b.d(this.a);
        localc1.j = this.b.f;
      }
      try
      {
        localc1.b = new JSONObject(new String(paramArrayOfByte)).getString("request_id");
        try
        {
          t.a(this.a, localc1);
        }
        catch (Exception localException2)
        {
          com.baidu.android.pushservice.h.b.b("AbstractProcessor", "error " + localException2.getMessage(), this.a);
        }
        continue;
        localException2.f = "020601";
      }
      catch (JSONException localJSONException2)
      {
        while (true)
        {
          com.baidu.android.pushservice.h.b.b("AbstractProcessor", "unbind failed msg: " + new String(paramArrayOfByte), this.a);
          localException2.a = new String(paramArrayOfByte);
        }
      }
    }
  }

  protected void a(Intent paramIntent)
  {
  }

  protected void a(String paramString)
  {
    if (paramString == null)
      return;
    Object localObject = paramString;
    if (!paramString.startsWith("{\""))
      localObject = paramString.substring(paramString.indexOf("{\""));
    try
    {
      localObject = new JSONObject((String)localObject);
      int i = ((JSONObject)localObject).getInt("error_code");
      paramString = ((JSONObject)localObject).getString("error_msg");
      localObject = ((JSONObject)localObject).getString("request_id");
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("error_msg", paramString);
      localJSONObject.put("request_id", localObject);
      a(i, localJSONObject.toString().getBytes());
      return;
    }
    catch (JSONException paramString)
    {
      com.baidu.android.pushservice.h.b.b("AbstractProcessor", "error : " + paramString.getMessage(), this.a);
    }
  }

  protected void a(HashMap<String, String> paramHashMap)
  {
    b.b(paramHashMap);
    if (!TextUtils.isEmpty(this.b.h))
    {
      paramHashMap.put("rsa_bduss", this.b.h);
      paramHashMap.put("appid", this.b.f);
    }
    do
    {
      return;
      if (!TextUtils.isEmpty(this.b.d))
      {
        paramHashMap.put("rsa_access_token", this.b.d);
        return;
      }
    }
    while (TextUtils.isEmpty(this.b.i));
    paramHashMap.put("apikey", this.b.i);
  }

  protected String b(String paramString)
  {
    return paramString;
  }

  public boolean b()
  {
    boolean bool2 = false;
    boolean bool1;
    if (TextUtils.isEmpty(this.c))
    {
      com.baidu.android.pushservice.h.b.b("AbstractProcessor", "mUrl is null", this.a);
      bool1 = bool2;
    }
    int i;
    int j;
    do
    {
      do
      {
        do
        {
          return bool1;
          com.baidu.android.pushservice.h.a.c("AbstractProcessor", "Request Url = " + this.c);
          i = 0;
          bool1 = bool2;
        }
        while (i > 2);
        j = b(i);
        if (j != 0)
          break;
        bool1 = true;
      }
      while (i <= 0);
      a("030402", j);
      return true;
      bool1 = bool2;
    }
    while (j != 10002);
    if (i > 0)
      a("030403", j);
    while (true)
    {
      i += 1;
      break;
      a("030401", j);
    }
  }

  public void run()
  {
    a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.a
 * JD-Core Version:    0.6.2
 */