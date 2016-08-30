package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Messenger;
import android.text.TextUtils;
import com.amap.api.location.APSServiceBase;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Vector;
import org.json.JSONException;
import org.json.JSONObject;

public class dd
  implements APSServiceBase
{
  Context a;
  boolean b = false;
  String c = null;
  df d = new df(this, this);
  de e = null;
  boolean f = false;
  Vector<Messenger> g = new Vector();
  volatile boolean h = false;
  boolean i = false;
  Object j = new Object();
  Looper k;
  AmapLoc l;
  long m = by.b();
  JSONObject n = new JSONObject();
  AmapLoc o;
  ServerSocket p = null;
  boolean q = false;
  Socket r = null;
  boolean s = false;
  dg t;
  private volatile boolean u = false;
  private boolean v = false;
  private int w = 0;
  private boolean x = false;
  private boolean y = false;
  private ag z = null;

  public dd(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  private static AmapLoc b(int paramInt, String paramString)
  {
    try
    {
      AmapLoc localAmapLoc = new AmapLoc();
      localAmapLoc.b(paramInt);
      localAmapLoc.b(paramString);
      return localAmapLoc;
    }
    catch (Throwable paramString)
    {
    }
    return null;
  }

  private boolean c()
  {
    synchronized (this.j)
    {
      boolean bool = this.h;
      return bool;
    }
  }

  private void d()
  {
    try
    {
      Looper.prepare();
      this.k = Looper.myLooper();
      dp.a(this.a);
      this.z.a(this.a);
      Object localObject = "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##" + dy.b(this.a) + "##" + dy.e(this.a);
      if ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).contains("##")))
        ag.f();
      try
      {
        while (true)
        {
          new ep("loc", "2.3.0", "AMAP_Location_SDK_Android 2.3.0").a(dp.b()).a();
          label114: localObject = ea.a(this.a, true);
          try
          {
            this.n.put("key", dy.e(this.a));
            this.n.put("X-INFO", localObject);
            this.n.put("User-Agent", "AMAP_Location_SDK_Android 2.3.0");
            this.n.put("netloc", "0");
            this.n.put("gpsstatus", "0");
            this.n.put("nbssid", "0");
            if (!this.n.has("reversegeo"))
              this.n.put("reversegeo", true);
            if (!this.n.has("isOffset"))
              this.n.put("isOffset", true);
            if (!this.n.has("wait1stwifi"))
              this.n.put("wait1stwifi", "0");
            this.n.put("autoup", "0");
            this.n.put("upcolmobile", 1);
            this.n.put("enablegetreq", 1);
            this.n.put("wifiactivescan", 1);
            label331: this.z.a(this.n);
            this.u = true;
            return;
            localObject = ((String)localObject).split("##");
            if (localObject.length != 4)
            {
              ag.f();
            }
            else
            {
              dp.e = localObject[0];
              dp.f = localObject[1];
              dp.h = localObject[2];
              dp.i = localObject[3];
            }
          }
          catch (JSONException localJSONException)
          {
            break label331;
          }
        }
      }
      catch (l locall)
      {
        break label114;
      }
    }
    catch (Throwable localThrowable)
    {
    }
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 112	com/loc/dd:s	Z
    //   6: ifne +27 -> 33
    //   9: aload_0
    //   10: new 546	com/loc/dg
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 548	com/loc/dg:<init>	(Lcom/loc/dd;)V
    //   18: putfield 550	com/loc/dd:t	Lcom/loc/dg;
    //   21: aload_0
    //   22: getfield 550	com/loc/dd:t	Lcom/loc/dg;
    //   25: invokevirtual 553	com/loc/dg:start	()V
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 112	com/loc/dd:s	Z
    //   33: aload_0
    //   34: monitorexit
    //   35: return
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    //   41: astore_1
    //   42: goto -9 -> 33
    //
    // Exception table:
    //   from	to	target	type
    //   2	33	36	finally
    //   2	33	41	java/lang/Throwable
  }

  // ERROR //
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 106	com/loc/dd:p	Ljava/net/ServerSocket;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 106	com/loc/dd:p	Ljava/net/ServerSocket;
    //   13: invokevirtual 558	java/net/ServerSocket:close	()V
    //   16: aload_0
    //   17: getfield 110	com/loc/dd:r	Ljava/net/Socket;
    //   20: ifnull +10 -> 30
    //   23: aload_0
    //   24: getfield 110	com/loc/dd:r	Ljava/net/Socket;
    //   27: invokevirtual 335	java/net/Socket:close	()V
    //   30: aload_0
    //   31: aconst_null
    //   32: putfield 106	com/loc/dd:p	Ljava/net/ServerSocket;
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 550	com/loc/dd:t	Lcom/loc/dg;
    //   40: aload_0
    //   41: iconst_0
    //   42: putfield 112	com/loc/dd:s	Z
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 108	com/loc/dd:q	Z
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: astore_1
    //   59: goto -9 -> 50
    //   62: astore_1
    //   63: goto -33 -> 30
    //
    // Exception table:
    //   from	to	target	type
    //   2	16	53	finally
    //   16	30	53	finally
    //   30	50	53	finally
    //   2	16	58	java/lang/Throwable
    //   16	30	58	java/lang/Throwable
    //   30	50	58	java/lang/Throwable
    //   2	16	62	java/io/IOException
    //   16	30	62	java/io/IOException
  }

  public Handler getHandler()
  {
    return this.d;
  }

  public void onCreate()
  {
    try
    {
      this.z = new ag();
      this.c = this.a.getApplicationContext().getPackageName();
      this.h = true;
      this.e = new de(this);
      this.e.setName("serviceThread");
      this.e.start();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void onDestroy()
  {
    try
    {
      synchronized (this.j)
      {
        this.h = false;
        this.j.notify();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dd
 * JD-Core Version:    0.6.2
 */