package com.nut.blehunter.service;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushManager;
import com.facebook.Session;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.ble.BLEService;
import com.nut.blehunter.dfu.DfuActivity;
import com.nut.blehunter.entity.FindLocation;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.Position;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.rxApi.model.FindRequestBody;
import com.nut.blehunter.rxApi.model.ModifyUserRequestBody;
import com.nut.blehunter.rxApi.model.UpdateNutRequestBody;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.BindDeviceActivity;
import com.nut.blehunter.ui.DialogContainerActivity;
import com.nut.blehunter.ui.MainActivity;
import com.nut.blehunter.ui.NutDetailActivity;
import com.nut.blehunter.ui.ScanDeviceActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import retrofit2.Call;
import rx.schedulers.Schedulers;

public class NutTrackerService extends Service
  implements com.nut.blehunter.ui.b.o
{
  a a;
  com.nut.blehunter.ble.a b;
  Map<String, Boolean> c = new HashMap();
  Map<String, Long> d = new HashMap();
  boolean e = false;
  private Messenger f;
  private Messenger g;
  private boolean h = false;
  private int i = -1;
  private com.nut.blehunter.ble.q j;
  private ArrayList<String> k = new ArrayList();
  private final BroadcastReceiver l = new b(this);
  private final BroadcastReceiver m = new j(this);
  private ServiceConnection n = new k(this);

  private Notification a(String paramString, PendingIntent paramPendingIntent)
  {
    Notification.Builder localBuilder = new Notification.Builder(this);
    if (Build.VERSION.SDK_INT >= 21)
    {
      i1 = 1;
      if (i1 == 0)
        break label79;
    }
    label79: for (int i1 = 2130837999; ; i1 = 2130837998)
    {
      paramString = localBuilder.setSmallIcon(i1).setContentTitle(getString(2131099730)).setContentText(paramString).setContentIntent(paramPendingIntent);
      if (Build.VERSION.SDK_INT >= 21)
        paramString.setColor(Color.parseColor("#35b68e"));
      return paramString.build();
      i1 = 0;
      break;
    }
  }

  private void a(int paramInt, Notification paramNotification)
  {
    ((NotificationManager)getSystemService("notification")).notify(paramInt, paramNotification);
  }

  private void a(int paramInt, com.nut.blehunter.entity.h paramh)
  {
    String str = com.nut.blehunter.d.d.c(this) + "/" + Uri.parse(paramh.a).getLastPathSegment();
    if (new File(str).exists())
    {
      paramh.d = str;
      com.nut.blehunter.provider.j.b().a(paramInt, paramh);
      return;
    }
    com.nut.blehunter.d.k.a(this, "is_show_dfu", true);
    new g(this, paramh, paramInt).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[] { paramh.a, str });
  }

  private void a(Intent paramIntent)
  {
    NutTrackerApplication.b = true;
    a(false);
    paramIntent = paramIntent.getStringExtra("last_activity");
    if (!TextUtils.isEmpty(paramIntent))
    {
      if (!ScanDeviceActivity.class.getSimpleName().equals(paramIntent))
        break label55;
      a(23, null);
    }
    while (true)
    {
      b(false);
      u.a("NTAppLifeCycle", "ENTER_BACKGROUND");
      return;
      label55: if (BindDeviceActivity.class.getSimpleName().equals(paramIntent))
      {
        paramIntent = new Bundle();
        paramIntent.putBoolean("shutdown", true);
        a(23, paramIntent);
      }
    }
  }

  private void a(Nut paramNut)
  {
    rx.h localh = null;
    switch (paramNut.J)
    {
    default:
    case 3:
    case 2:
    case 1:
    }
    while (true)
    {
      if (localh != null)
        localh.b(Schedulers.io()).a(new n(this, paramNut)).a(new m(this, paramNut));
      return;
      localh = com.nut.blehunter.rxApi.a.c().bindNut("v2", "bind", new UpdateNutRequestBody(paramNut));
      continue;
      localh = com.nut.blehunter.rxApi.a.c().bindNut("v3", "update", new UpdateNutRequestBody(paramNut));
      continue;
      com.nut.blehunter.rxApi.a.c().deleteNut(com.nut.blehunter.rxApi.a.a("tagId", paramNut.k)).enqueue(new l(this, paramNut));
    }
  }

  private void a(Position paramPosition)
  {
    if ((this.k == null) || (this.k.isEmpty()));
    while (true)
    {
      return;
      Iterator localIterator = this.k.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        localObject = com.nut.blehunter.provider.i.b().c((String)localObject);
        if ((localObject != null) && (((Nut)localObject).r != null))
        {
          ((Nut)localObject).b = paramPosition.e;
          ((Nut)localObject).r.e = paramPosition.d;
          ((Nut)localObject).r.d = paramPosition.c;
          ((Nut)localObject).r.b = paramPosition.e;
          com.nut.blehunter.provider.i.b().a((Nut)localObject, true);
        }
        localIterator.remove();
      }
    }
  }

  private void a(boolean paramBoolean)
  {
    if (com.nut.blehunter.entity.m.a().c())
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("is_activation", paramBoolean);
      a(6, localBundle);
    }
  }

  private void b(Nut paramNut)
  {
    com.nut.blehunter.rxApi.a.c().getFoundPositionRecords(com.nut.blehunter.rxApi.a.a("tagId", paramNut.k)).b(Schedulers.io()).a(new i(this, paramNut));
  }

  private void b(Position paramPosition)
  {
    if (this.j == null);
    label302: 
    while (true)
    {
      return;
      Object localObject2 = this.j;
      Object localObject1;
      if ((((com.nut.blehunter.ble.q)localObject2).a == null) || (((com.nut.blehunter.ble.q)localObject2).a.isEmpty()))
        localObject1 = null;
      while (true)
      {
        if ((localObject1 == null) || (((ArrayList)localObject1).isEmpty()))
          break label302;
        localObject1 = ((ArrayList)localObject1).iterator();
        Object localObject3;
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          b.a.a.a("report device=%s", new Object[] { localObject2 });
          localObject3 = com.nut.blehunter.d.o.a((String)localObject2);
          com.nut.blehunter.rxApi.a.c().findNut(new FindRequestBody((String)localObject3, paramPosition.c, paramPosition.d)).enqueue(new h(this));
          localObject3 = this.j;
          long l1 = System.currentTimeMillis();
          if (!TextUtils.isEmpty((CharSequence)localObject2))
            ((com.nut.blehunter.ble.q)localObject3).b.put(localObject2, Long.valueOf(l1));
          this.j.a((String)localObject2, true);
        }
        break;
        localObject1 = new ArrayList();
        localObject2 = ((com.nut.blehunter.ble.q)localObject2).a.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          String str = (String)((Map.Entry)localObject3).getKey();
          if (!((Boolean)((Map.Entry)localObject3).getValue()).booleanValue())
            ((ArrayList)localObject1).add(str);
        }
      }
    }
  }

  private void b(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("look_for_canceled", paramBoolean);
    a(38, localBundle);
  }

  private void c()
  {
    stopForeground(true);
    stopSelf();
  }

  // ERROR //
  private void d()
  {
    // Byte code:
    //   0: invokestatic 186	com/nut/blehunter/provider/j:b	()Lcom/nut/blehunter/provider/j;
    //   3: invokevirtual 544	com/nut/blehunter/provider/j:c	()Z
    //   6: ifne +4 -> 10
    //   9: return
    //   10: new 140	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   17: astore 5
    //   19: aconst_null
    //   20: astore_2
    //   21: new 546	java/io/BufferedReader
    //   24: dup
    //   25: new 548	java/io/InputStreamReader
    //   28: dup
    //   29: aload_0
    //   30: invokevirtual 552	com/nut/blehunter/service/NutTrackerService:getAssets	()Landroid/content/res/AssetManager;
    //   33: ldc_w 554
    //   36: invokevirtual 560	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   39: ldc_w 562
    //   42: invokespecial 565	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   45: invokespecial 568	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   48: astore_3
    //   49: aload_3
    //   50: astore_2
    //   51: aload_3
    //   52: invokevirtual 571	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   55: astore 4
    //   57: aload 4
    //   59: ifnull +160 -> 219
    //   62: aload_3
    //   63: astore_2
    //   64: aload 5
    //   66: aload 4
    //   68: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload_3
    //   73: astore_2
    //   74: aload 5
    //   76: bipush 10
    //   78: invokevirtual 574	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   81: pop
    //   82: goto -33 -> 49
    //   85: astore 4
    //   87: aload_3
    //   88: astore_2
    //   89: aload 4
    //   91: invokevirtual 577	java/io/IOException:printStackTrace	()V
    //   94: aload_3
    //   95: ifnull +7 -> 102
    //   98: aload_3
    //   99: invokevirtual 580	java/io/BufferedReader:close	()V
    //   102: new 582	org/json/JSONObject
    //   105: dup
    //   106: aload 5
    //   108: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokespecial 583	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   114: astore_2
    //   115: aload_2
    //   116: ldc_w 585
    //   119: invokevirtual 588	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   122: istore_1
    //   123: aload_0
    //   124: ldc_w 590
    //   127: iload_1
    //   128: invokestatic 593	com/nut/blehunter/d/k:b	(Landroid/content/Context;Ljava/lang/String;I)V
    //   131: aload_2
    //   132: ldc_w 595
    //   135: invokevirtual 599	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   138: astore_2
    //   139: aload_2
    //   140: ifnull -131 -> 9
    //   143: aload_2
    //   144: ldc_w 601
    //   147: invokevirtual 604	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   150: astore_2
    //   151: aload_2
    //   152: invokestatic 234	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   155: ifne -146 -> 9
    //   158: aload_2
    //   159: invokestatic 609	com/nut/blehunter/e:c	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   162: astore_2
    //   163: aload_2
    //   164: ifnull -155 -> 9
    //   167: aload_2
    //   168: invokeinterface 613 1 0
    //   173: ifle -164 -> 9
    //   176: invokestatic 186	com/nut/blehunter/provider/j:b	()Lcom/nut/blehunter/provider/j;
    //   179: aload_2
    //   180: invokevirtual 616	com/nut/blehunter/provider/j:a	(Ljava/util/List;)V
    //   183: ldc_w 618
    //   186: iconst_2
    //   187: anewarray 463	java/lang/Object
    //   190: dup
    //   191: iconst_0
    //   192: iload_1
    //   193: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   196: aastore
    //   197: dup
    //   198: iconst_1
    //   199: aload_2
    //   200: invokeinterface 613 1 0
    //   205: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   208: aastore
    //   209: invokestatic 468	b/a/a:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   212: return
    //   213: astore_2
    //   214: aload_2
    //   215: invokevirtual 624	org/json/JSONException:printStackTrace	()V
    //   218: return
    //   219: aload_3
    //   220: invokevirtual 580	java/io/BufferedReader:close	()V
    //   223: new 582	org/json/JSONObject
    //   226: dup
    //   227: aload 5
    //   229: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokespecial 583	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   235: astore_2
    //   236: aload_2
    //   237: ldc_w 585
    //   240: invokevirtual 588	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   243: istore_1
    //   244: aload_0
    //   245: ldc_w 590
    //   248: iload_1
    //   249: invokestatic 593	com/nut/blehunter/d/k:b	(Landroid/content/Context;Ljava/lang/String;I)V
    //   252: aload_2
    //   253: ldc_w 595
    //   256: invokevirtual 599	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   259: astore_2
    //   260: aload_2
    //   261: ifnull -252 -> 9
    //   264: aload_2
    //   265: ldc_w 601
    //   268: invokevirtual 604	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   271: astore_2
    //   272: aload_2
    //   273: invokestatic 234	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   276: ifne -267 -> 9
    //   279: aload_2
    //   280: invokestatic 609	com/nut/blehunter/e:c	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   283: astore_2
    //   284: aload_2
    //   285: ifnull -276 -> 9
    //   288: aload_2
    //   289: invokeinterface 613 1 0
    //   294: ifle -285 -> 9
    //   297: invokestatic 186	com/nut/blehunter/provider/j:b	()Lcom/nut/blehunter/provider/j;
    //   300: aload_2
    //   301: invokevirtual 616	com/nut/blehunter/provider/j:a	(Ljava/util/List;)V
    //   304: ldc_w 618
    //   307: iconst_2
    //   308: anewarray 463	java/lang/Object
    //   311: dup
    //   312: iconst_0
    //   313: iload_1
    //   314: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   317: aastore
    //   318: dup
    //   319: iconst_1
    //   320: aload_2
    //   321: invokeinterface 613 1 0
    //   326: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   329: aastore
    //   330: invokestatic 468	b/a/a:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   333: return
    //   334: astore_2
    //   335: aload_2
    //   336: invokevirtual 624	org/json/JSONException:printStackTrace	()V
    //   339: return
    //   340: astore 4
    //   342: aload_2
    //   343: astore_3
    //   344: aload 4
    //   346: astore_2
    //   347: aload_3
    //   348: ifnull +7 -> 355
    //   351: aload_3
    //   352: invokevirtual 580	java/io/BufferedReader:close	()V
    //   355: new 582	org/json/JSONObject
    //   358: dup
    //   359: aload 5
    //   361: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: invokespecial 583	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   367: astore_3
    //   368: aload_3
    //   369: ldc_w 585
    //   372: invokevirtual 588	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   375: istore_1
    //   376: aload_0
    //   377: ldc_w 590
    //   380: iload_1
    //   381: invokestatic 593	com/nut/blehunter/d/k:b	(Landroid/content/Context;Ljava/lang/String;I)V
    //   384: aload_3
    //   385: ldc_w 595
    //   388: invokevirtual 599	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   391: astore_3
    //   392: aload_3
    //   393: ifnull +72 -> 465
    //   396: aload_3
    //   397: ldc_w 601
    //   400: invokevirtual 604	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   403: astore_3
    //   404: aload_3
    //   405: invokestatic 234	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   408: ifne +57 -> 465
    //   411: aload_3
    //   412: invokestatic 609	com/nut/blehunter/e:c	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   415: astore_3
    //   416: aload_3
    //   417: ifnull +48 -> 465
    //   420: aload_3
    //   421: invokeinterface 613 1 0
    //   426: ifle +39 -> 465
    //   429: invokestatic 186	com/nut/blehunter/provider/j:b	()Lcom/nut/blehunter/provider/j;
    //   432: aload_3
    //   433: invokevirtual 616	com/nut/blehunter/provider/j:a	(Ljava/util/List;)V
    //   436: ldc_w 618
    //   439: iconst_2
    //   440: anewarray 463	java/lang/Object
    //   443: dup
    //   444: iconst_0
    //   445: iload_1
    //   446: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   449: aastore
    //   450: dup
    //   451: iconst_1
    //   452: aload_3
    //   453: invokeinterface 613 1 0
    //   458: invokestatic 623	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   461: aastore
    //   462: invokestatic 468	b/a/a:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   465: aload_2
    //   466: athrow
    //   467: astore_3
    //   468: aload_3
    //   469: invokevirtual 624	org/json/JSONException:printStackTrace	()V
    //   472: goto -7 -> 465
    //   475: astore_2
    //   476: goto -253 -> 223
    //   479: astore_2
    //   480: goto -378 -> 102
    //   483: astore_3
    //   484: goto -129 -> 355
    //   487: astore 4
    //   489: aload_2
    //   490: astore_3
    //   491: aload 4
    //   493: astore_2
    //   494: goto -147 -> 347
    //   497: astore 4
    //   499: aconst_null
    //   500: astore_3
    //   501: goto -414 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   51	57	85	java/io/IOException
    //   64	72	85	java/io/IOException
    //   74	82	85	java/io/IOException
    //   102	139	213	org/json/JSONException
    //   143	163	213	org/json/JSONException
    //   167	212	213	org/json/JSONException
    //   223	260	334	org/json/JSONException
    //   264	284	334	org/json/JSONException
    //   288	333	334	org/json/JSONException
    //   21	49	340	finally
    //   355	392	467	org/json/JSONException
    //   396	416	467	org/json/JSONException
    //   420	465	467	org/json/JSONException
    //   219	223	475	java/io/IOException
    //   98	102	479	java/io/IOException
    //   351	355	483	java/io/IOException
    //   51	57	487	finally
    //   64	72	487	finally
    //   74	82	487	finally
    //   89	94	487	finally
    //   21	49	497	java/io/IOException
  }

  private void e()
  {
    Object localObject = com.nut.blehunter.provider.i.b().d();
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
        a((Nut)((Iterator)localObject).next());
    }
  }

  private void f()
  {
    User localUser = com.nut.blehunter.entity.m.a().b();
    if (localUser == null)
      return;
    com.nut.blehunter.rxApi.a.b().modifyUser(ModifyUserRequestBody.createModifyUserRequestBody(localUser)).b(Schedulers.io()).a(new p(this, localUser)).a(new o(this, localUser));
  }

  private void g()
  {
    com.nut.blehunter.rxApi.a.b().getDevices(new HashMap()).b(Schedulers.io()).a(new c(this)).a(new q(this));
  }

  private void h()
  {
    Object localObject = com.nut.blehunter.provider.i.b().e();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
        b((Nut)((Iterator)localObject).next());
    }
  }

  final String a(int paramInt)
  {
    Object localObject = com.nut.blehunter.provider.j.b().a(paramInt);
    try
    {
      if ((((com.nut.blehunter.entity.r)localObject).b.b != 1) && (!TextUtils.isEmpty(((com.nut.blehunter.entity.r)localObject).b.c)))
      {
        localObject = getString(2131100018, new Object[] { ((com.nut.blehunter.entity.r)localObject).b.c });
        return localObject;
      }
    }
    catch (Exception localException)
    {
      return "";
    }
    return "";
  }

  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (this.b == null)
      return;
    if (paramInt1 != 0)
      if ((paramInt2 % 3 == 0) || (paramInt2 % 3 == 1))
        paramInt2 /= 3;
    while (true)
    {
      if ((com.nut.blehunter.a.v.length > paramInt1) && (paramInt1 >= 0));
      for (paramInt1 = com.nut.blehunter.a.v[paramInt1]; ; paramInt1 = 0)
      {
        if (paramInt1 != 0)
          break label75;
        this.b.a(paramInt2, paramBoolean);
        return;
        paramInt2 = paramInt2 / 3 + 1;
        break;
      }
      label75: this.b.a(paramInt2, paramBoolean, paramInt1, true, 2);
      return;
    }
  }

  public final void a(int paramInt, Bundle paramBundle)
  {
    try
    {
      Message localMessage = Message.obtain(null, paramInt);
      if (localMessage != null)
      {
        if (paramBundle != null)
          localMessage.setData(paramBundle);
        localMessage.replyTo = this.f;
        if (this.g != null)
          this.g.send(localMessage);
      }
      return;
    }
    catch (RemoteException paramBundle)
    {
      this.g = null;
    }
  }

  final void a(int paramInt, Nut paramNut)
  {
    if (DfuActivity.class.getSimpleName().equals(NutTrackerApplication.a().c()))
      return;
    Intent localIntent = new Intent(this, DialogContainerActivity.class);
    localIntent.setFlags(335544320);
    localIntent.putExtra("nut", paramNut);
    localIntent.putExtra("type", paramInt);
    startActivity(localIntent);
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    paramb = new Position(new Date().getTime() / 1000L, paramb.a, paramb.b);
    b(paramb);
    a(paramb);
  }

  final void a(String paramString)
  {
    if ((!TextUtils.isEmpty(paramString)) && (this.k.indexOf(paramString) == -1))
      this.k.add(paramString);
    com.nut.blehunter.o.a().a(this);
  }

  final void a(String paramString, int paramInt)
  {
    paramString = a(paramString, PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 134217728));
    paramString.defaults = 6;
    paramString.flags |= 16;
    a(paramInt, paramString);
  }

  final void a(String paramString, boolean paramBoolean)
  {
    paramString = a(paramString, PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 134217728));
    if (paramBoolean)
      paramString.defaults = 3;
    a(1000, paramString);
  }

  final boolean a()
  {
    BluetoothAdapter localBluetoothAdapter = ((BluetoothManager)getSystemService("bluetooth")).getAdapter();
    return (localBluetoothAdapter != null) && (localBluetoothAdapter.isEnabled());
  }

  public final void b()
  {
    Object localObject = com.nut.blehunter.provider.i.b().h();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Nut localNut = (Nut)((Iterator)localObject).next();
        if (localNut.K == 1)
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("device_id", localNut.j);
          localBundle.putBoolean("open_disconnect_alert", localNut.a(this));
          a(22, localBundle);
        }
      }
    }
  }

  final void b(int paramInt)
  {
    ((NotificationManager)getSystemService("notification")).cancel(paramInt);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    Object localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("android.intent.action.HEADSET_PLUG");
    ((IntentFilter)localObject).addAction("android.intent.action.SCREEN_OFF");
    ((IntentFilter)localObject).addAction("android.intent.action.SCREEN_ON");
    ((IntentFilter)localObject).addAction("android.intent.action.TIME_TICK");
    registerReceiver(this.m, (IntentFilter)localObject);
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("com.nutspace.action.app.background");
    ((IntentFilter)localObject).addAction("com.nutspace.action.app.foreground");
    ((IntentFilter)localObject).addAction("com.nutspace.action.restart.schedule.scan");
    ((IntentFilter)localObject).addAction("com.nutspace.action.stop.play.sound");
    android.support.v4.b.j.a(this).a(this.l, (IntentFilter)localObject);
    if (a())
    {
      localObject = getString(2131100010);
      localObject = a((String)localObject, PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 134217728));
      if (!com.nut.blehunter.d.k.b(this, "notification_status_switch", false))
        break label286;
      startForeground(1000, (Notification)localObject);
      label157: this.f = new Messenger(new r(this));
      bindService(new Intent(this, BLEService.class), this.n, 1);
      this.a = new a();
      this.b = new com.nut.blehunter.ble.a(this);
      this.j = new com.nut.blehunter.ble.q();
      h();
      u.a("NTAppLifeCycle", "APP_LAUNCHED");
      if (!com.nut.blehunter.d.g.b(this))
        break label304;
      if (!com.nut.blehunter.d.g.c(this))
        break label297;
      localObject = "WIFI ";
    }
    while (true)
    {
      u.a("NTStatsPhone", "NETWORK_CONDITION", "NETWORK_CONDITION", (String)localObject);
      return;
      localObject = getString(2131100005);
      break;
      label286: a(1000, (Notification)localObject);
      break label157;
      label297: localObject = "CELLULAR";
      continue;
      label304: localObject = "NO_NETWORK";
    }
  }

  public void onDestroy()
  {
    unregisterReceiver(this.m);
    android.support.v4.b.j.a(this).a(this.l);
    com.nut.blehunter.o.a().d();
    if (this.g != null);
    try
    {
      Message localMessage = Message.obtain(null, 2);
      if (localMessage != null)
      {
        localMessage.replyTo = this.f;
        if (this.g != null)
          this.g.send(localMessage);
      }
      unbindService(this.n);
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        this.g = null;
        unbindService(this.n);
      }
    }
    finally
    {
      unbindService(this.n);
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Object localObject1;
    if (paramIntent != null)
    {
      localObject1 = paramIntent.getAction();
      if (!"com.nutspace.action.handle.location".equals(localObject1))
        break label497;
      if (!com.nut.blehunter.entity.m.a().c())
        break label481;
      switch (paramIntent.getIntExtra("intent_type", -1))
      {
      case 2:
      case 3:
      default:
      case 1:
      case 4:
      }
    }
    label154: label216: label255: 
    do
    {
      while (true)
      {
        return 1;
        paramIntent = (BluetoothDevice)paramIntent.getParcelableExtra("device");
        if (paramIntent != null)
        {
          localObject1 = this.j;
          Object localObject2 = paramIntent.getAddress();
          long l1;
          if ((((com.nut.blehunter.ble.q)localObject1).a != null) && ((Boolean)((com.nut.blehunter.ble.q)localObject1).a.get(localObject2) != null))
          {
            long l2 = System.currentTimeMillis();
            if ((TextUtils.isEmpty((CharSequence)localObject2)) || (((com.nut.blehunter.ble.q)localObject1).b.get(localObject2) == null))
            {
              l1 = 0L;
              if (l2 - l1 >= 300000L)
                break label216;
            }
          }
          for (paramInt1 = 1; paramInt1 == 0; paramInt1 = 0)
          {
            this.j.a(paramIntent.getAddress(), false);
            com.nut.blehunter.o.a().a(this);
            return 1;
            l1 = ((Long)((com.nut.blehunter.ble.q)localObject1).b.get(localObject2)).longValue();
            break label154;
          }
          paramIntent = (FindLocation)paramIntent.getParcelableExtra("find_location");
          if (paramIntent != null)
            if ((!TextUtils.isEmpty(paramIntent.a)) && (paramIntent.b != null))
            {
              paramInt1 = 1;
              if (paramInt1 != 0)
              {
                localObject1 = com.nut.blehunter.provider.i.b().d(paramIntent.a);
                if ((localObject1 == null) || ((((Nut)localObject1).K != 2) && (((Nut)localObject1).K != 6)) || (com.nut.blehunter.provider.h.b().a(paramIntent.b.a)))
                  continue;
                localObject2 = getString(2131100007, new Object[] { ((Nut)localObject1).c });
                if (!NutTrackerApplication.b)
                  break label461;
                paramInt1 = (int)paramIntent.b.e;
                Intent localIntent = new Intent(this, NutDetailActivity.class);
                localIntent.addFlags(268435456);
                localIntent.putExtra("nut", (Parcelable)localObject1);
                localObject2 = a((String)localObject2, PendingIntent.getActivity(this, 0, localIntent, 134217728));
                ((Notification)localObject2).defaults = 6;
                ((Notification)localObject2).flags |= 16;
                a(paramInt1, (Notification)localObject2);
              }
            }
            else
            {
              while (true)
              {
                com.nut.blehunter.o.a().a(paramIntent);
                ((Nut)localObject1).K = 6;
                com.nut.blehunter.provider.i.b().a((Nut)localObject1, false);
                b((Nut)localObject1);
                return 1;
                paramInt1 = 0;
                break label255;
                break;
                this.b.a(1, false);
                a(8, (Nut)localObject1);
              }
              b.a.a.a("Send ACTION_LOCATION_HANDLE but user is not login", new Object[0]);
              c();
              return 1;
              if ("com.nutspace.action.start.service".equals(localObject1))
              {
                this.h = paramIntent.getBooleanExtra("is_active", false);
                e();
                d();
                g();
                com.nut.blehunter.rxApi.a.a().getUser("Basic " + com.nut.blehunter.entity.m.a().b().i).b(Schedulers.io()).a(rx.a.b.a.a()).a(new e(this));
                com.nut.blehunter.rxApi.a.c().getNuts().b(Schedulers.io()).a(new f(this));
                return 1;
              }
              boolean bool1;
              if ("com.nutspace.action.region.change".equals(localObject1))
              {
                bool1 = com.nut.blehunter.d.g.a(this);
                boolean bool2 = com.nut.blehunter.d.k.c(this);
                b();
                if ((!bool2) && (!bool1) && (this.c != null))
                {
                  paramIntent = this.c.keySet().iterator();
                  while (paramIntent.hasNext())
                  {
                    localObject1 = (String)paramIntent.next();
                    if (((Boolean)this.c.get(localObject1)).booleanValue())
                    {
                      localObject1 = com.nut.blehunter.provider.i.b().d((String)localObject1);
                      localObject2 = com.nut.blehunter.entity.m.a().b();
                      if ((localObject2 != null) && (localObject1 != null))
                      {
                        if (((User)localObject2).l == 0)
                          a(((Nut)localObject1).D, ((User)localObject2).m, false);
                        if (NutTrackerApplication.b)
                        {
                          a(getString(2131100009, new Object[] { ((Nut)localObject1).c }), ((Nut)localObject1).I);
                        }
                        else
                        {
                          if (((User)localObject2).g());
                          for (paramInt1 = 7; ; paramInt1 = 2)
                          {
                            a(paramInt1, (Nut)localObject1);
                            break;
                          }
                        }
                      }
                    }
                  }
                  this.c.clear();
                  return 1;
                }
              }
              else if ("com.nutspace.action.bluetooth.state.changed".equals(localObject1))
              {
                paramInt1 = paramIntent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
                if (paramInt1 == 10)
                {
                  a(getString(2131100005), true);
                  a(36, null);
                  return 1;
                }
                if (paramInt1 == 12)
                {
                  this.e = com.nut.blehunter.provider.i.b().c();
                  if (this.e)
                  {
                    paramIntent = getString(2131100006);
                    a(paramIntent, true);
                    if (NutTrackerApplication.b)
                      break label953;
                  }
                  for (bool1 = true; ; bool1 = false)
                  {
                    a(bool1);
                    return 1;
                    paramIntent = getString(2131100010);
                    break;
                  }
                }
              }
              else
              {
                if ("com.nutspace.action.app.background".equals(localObject1))
                {
                  a(paramIntent);
                  return 1;
                }
                if ("com.nutspace.action.sync.server".equals(localObject1))
                {
                  b.a.a.b("receive sync server action", new Object[0]);
                  if (com.nut.blehunter.entity.m.a().c())
                  {
                    com.nut.blehunter.d.b.a(this);
                    e();
                    f();
                    g();
                    return 1;
                  }
                  b.a.a.a("Send ACTION_SYNC_SERVER but user is not login", new Object[0]);
                  c();
                  return 1;
                }
                if ("com.nutspace.action.execute.nut.api".equals(localObject1))
                {
                  if (com.nut.blehunter.entity.m.a().c())
                  {
                    paramIntent = (Nut)paramIntent.getParcelableExtra("nut");
                    b.a.a.b("sync nut %s to server action", new Object[] { paramIntent.c });
                    a(paramIntent);
                    return 1;
                  }
                  b.a.a.a("Send ACTION_EXECUTE_NUT_API but user is not login", new Object[0]);
                  c();
                  return 1;
                }
                if ("com.nutspace.action.execute.user.api".equals(localObject1))
                {
                  if (com.nut.blehunter.entity.m.a().c())
                  {
                    f();
                    return 1;
                  }
                  b.a.a.a("Send ACTION_EXECUTE_USER_API but user is not login", new Object[0]);
                  c();
                  return 1;
                }
                if ("com.nutspace.action.temp_not_disturb".equals(localObject1))
                {
                  b();
                  return 1;
                }
                if ("com.nutspace.action.check_new_nut_firmware_version".equals(localObject1))
                {
                  paramIntent = paramIntent.getStringExtra("deviceId");
                  paramIntent = com.nut.blehunter.provider.i.b().c(paramIntent);
                  if ((paramIntent == null) || (!paramIntent.g()))
                    continue;
                  localObject1 = com.nut.blehunter.provider.j.b().a(paramIntent.p);
                  if (((com.nut.blehunter.entity.r)localObject1).c == null)
                    continue;
                  try
                  {
                    paramInt1 = Integer.parseInt(((com.nut.blehunter.entity.r)localObject1).c.b);
                    paramInt2 = Integer.parseInt(paramIntent.v);
                    if (paramInt1 > paramInt2)
                    {
                      a(((com.nut.blehunter.entity.r)localObject1).a, ((com.nut.blehunter.entity.r)localObject1).c);
                      return 1;
                    }
                  }
                  catch (NumberFormatException paramIntent)
                  {
                    b.a.a.a(paramIntent, "format firmware version exception", new Object[0]);
                    return 1;
                  }
                }
              }
            }
        }
      }
      if ("com.nutspace.action.logout".equals(localObject1))
      {
        a(3, null);
        paramIntent = (AlarmManager)getSystemService("alarm");
        localObject1 = new Intent(this, NutTrackerService.class);
        ((Intent)localObject1).setAction("com.nutspace.action.sync.server");
        localObject1 = PendingIntent.getService(this, 1000, (Intent)localObject1, 536870912);
        if (localObject1 != null)
          paramIntent.cancel((PendingIntent)localObject1);
        PushManager.stopWork(this);
        com.nut.blehunter.d.k.a(this, "push_channel_id", "");
        paramIntent = Session.getActiveSession();
        if (paramIntent != null)
          paramIntent.closeAndClearTokenInformation();
        com.nut.blehunter.entity.m.a().d();
        com.nut.blehunter.rxApi.a.e();
        com.nut.blehunter.provider.i.b().g();
        com.nut.blehunter.entity.m.a().a(this, false);
        com.nut.blehunter.d.k.a(this, 0L);
        com.nut.blehunter.d.k.b(this, "product_version", 0);
        c();
        return 1;
      }
      if ("com.nutspace.action.delete.receive.nut".equals(localObject1))
      {
        paramIntent = paramIntent.getStringExtra("device_id");
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("device_id", paramIntent);
        a(17, (Bundle)localObject1);
        return 1;
      }
    }
    while (!"com.nutspace.action.notification.status".equals(localObject1));
    label461: label481: label497: if (a())
      if (this.e)
        paramIntent = getString(2131100006);
    while (true)
    {
      label953: paramIntent = a(paramIntent, PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 134217728));
      if (!com.nut.blehunter.d.k.b(this, "notification_status_switch", false))
        break;
      startForeground(1000, paramIntent);
      return 1;
      paramIntent = getString(2131100010);
      continue;
      paramIntent = getString(2131100005);
    }
    stopForeground(true);
    a(1000, paramIntent);
    return 1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.service.NutTrackerService
 * JD-Core Version:    0.6.2
 */