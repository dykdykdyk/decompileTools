package com.baidu.android.pushservice.message;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.pushservice.j;
import com.baidu.android.pushservice.j.b;
import com.baidu.android.pushservice.util.m;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.json.JSONObject;

public class f extends d
{
  private com.baidu.android.pushservice.util.e b;

  public f(Context paramContext)
  {
    super(paramContext);
  }

  private byte[] a(long paramLong, int paramInt)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    com.baidu.android.pushservice.util.f localf = new com.baidu.android.pushservice.util.f(localByteArrayOutputStream);
    try
    {
      localf.a(paramLong);
      localf.b(paramInt);
      localf.b(0);
      byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
      try
      {
        localByteArrayOutputStream.close();
      }
      catch (IOException localIOException4)
      {
        try
        {
          while (true)
          {
            localf.a();
            return arrayOfByte;
            localIOException4 = localIOException4;
            com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException4.getMessage());
          }
        }
        catch (IOException localIOException1)
        {
          com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException1.getMessage());
          return arrayOfByte;
        }
      }
    }
    catch (Exception localException)
    {
      localException = localException;
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error : " + localException.getMessage());
      try
      {
        localIOException4.close();
      }
      catch (IOException localIOException5)
      {
        try
        {
          while (true)
          {
            localIOException1.a();
            return null;
            localIOException5 = localIOException5;
            com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException5.getMessage());
          }
        }
        catch (IOException localIOException2)
        {
          while (true)
            com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException2.getMessage());
        }
      }
    }
    finally
    {
    }
    try
    {
      localIOException5.close();
    }
    catch (IOException localIOException6)
    {
      try
      {
        while (true)
        {
          localIOException2.a();
          throw localObject;
          localIOException6 = localIOException6;
          com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException6.getMessage());
        }
      }
      catch (IOException localIOException3)
      {
        while (true)
          com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException3.getMessage());
      }
    }
  }

  private byte[] a(String paramString, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    if (paramString != null)
    {
      paramString = paramString.getBytes();
      System.arraycopy(paramString, 0, arrayOfByte, 0, Math.min(paramInt, paramString.length));
    }
    return arrayOfByte;
  }

  private byte[] a(short paramShort, byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    com.baidu.android.pushservice.util.f localf = new com.baidu.android.pushservice.util.f(localByteArrayOutputStream);
    if (paramArrayOfByte != null);
    for (int i = paramArrayOfByte.length; ; i = 0)
    {
      try
      {
        localf.a(paramShort);
        String str;
        if ((paramShort != g.f.a()) && (paramShort != g.g.a()))
        {
          localf.a(com.baidu.android.pushservice.a.a());
          localf.b(0);
          if (!m.e(this.a, this.a.getPackageName()))
            break label148;
          str = "BaiduApp";
        }
        while (true)
        {
          localf.a(a(str, 16));
          localf.b(-76508268);
          localf.b(1);
          localf.b(i);
          if (paramArrayOfByte != null)
            localf.a(paramArrayOfByte);
          paramArrayOfByte = localByteArrayOutputStream.toByteArray();
          try
          {
            localByteArrayOutputStream.close();
          }
          catch (IOException localIOException1)
          {
            try
            {
              while (true)
              {
                localf.a();
                return paramArrayOfByte;
                label148: str = "DevApp";
                break;
                localIOException1 = localIOException1;
                com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException1.getMessage());
              }
            }
            catch (IOException localIOException2)
            {
              com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException2.getMessage());
              return paramArrayOfByte;
            }
          }
        }
      }
      catch (IOException paramArrayOfByte)
      {
        paramArrayOfByte = paramArrayOfByte;
        com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + paramArrayOfByte.getMessage());
        try
        {
          localByteArrayOutputStream.close();
        }
        catch (IOException paramArrayOfByte)
        {
          try
          {
            while (true)
            {
              localf.a();
              return null;
              paramArrayOfByte = paramArrayOfByte;
              com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + paramArrayOfByte.getMessage());
            }
          }
          catch (IOException paramArrayOfByte)
          {
            while (true)
              com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + paramArrayOfByte.getMessage());
          }
        }
      }
      finally
      {
      }
      try
      {
        localByteArrayOutputStream.close();
      }
      catch (IOException localIOException3)
      {
        try
        {
          while (true)
          {
            localf.a();
            throw paramArrayOfByte;
            localIOException3 = localIOException3;
            com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException3.getMessage());
          }
        }
        catch (IOException localIOException4)
        {
          while (true)
            com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localIOException4.getMessage());
        }
      }
    }
  }

  private String d()
  {
    try
    {
      switch (m.t(this.a))
      {
      case 4:
        return "4g";
      default:
      case 1:
      case 2:
      case 3:
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
      return null;
    }
    return null;
    return "wifi";
    return "2g";
    return "3g";
  }

  private String e()
  {
    try
    {
      Object localObject = ((WindowManager)this.a.getSystemService("window")).getDefaultDisplay();
      int i = ((Display)localObject).getWidth();
      int j = ((Display)localObject).getHeight();
      localObject = j + "_" + i;
      return localObject;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
    }
    return null;
  }

  private String f()
  {
    try
    {
      String str = ((TelephonyManager)this.a.getSystemService("phone")).getSimOperator();
      if (str != null)
      {
        if ((str.equals("46000")) || (str.equals("46002")) || (str.equals("46007")))
          break label101;
        if (str.equals("46001"))
          return "uni";
        if (str.equals("46003"))
          return "ct";
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
    }
    return null;
    label101: return "cm";
  }

  private String g()
  {
    try
    {
      String str = ((TelephonyManager)this.a.getSystemService("phone")).getSubscriberId();
      return str;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
    }
    return null;
  }

  private String h()
  {
    try
    {
      String str = ((WifiManager)this.a.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return str;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
    }
    return null;
  }

  public e a(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    paramInt = 20480;
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    this.b = new com.baidu.android.pushservice.util.e(localByteArrayInputStream);
    int i = this.b.c();
    e locale = new e();
    locale.a = i;
    if ((i == g.g.a()) || (i == g.f.a()))
    {
      com.baidu.android.pushservice.h.a.b("MessageHandler", "readMessage tiny heart beat from server, msgType:" + i);
      localByteArrayInputStream.close();
      if (this.b != null)
        this.b.a();
      return locale;
    }
    int k = this.b.c();
    int m = this.b.b();
    paramArrayOfByte = new byte[16];
    this.b.a(paramArrayOfByte);
    int n = this.b.b();
    int i1 = this.b.b();
    int j = this.b.b();
    com.baidu.android.pushservice.h.a.b("MessageHandler", "readMessage nshead, msgId:" + i + " magicNum:" + Integer.toHexString(n) + " length:" + j + " version =" + k + " logId =" + m + " reserved = " + i1);
    if (j > 0)
      if (j > 20480)
      {
        paramArrayOfByte = new byte[paramInt];
        this.b.a(paramArrayOfByte);
      }
    while (true)
    {
      locale.d = paramArrayOfByte;
      localByteArrayInputStream.close();
      if (this.b != null)
        this.b.a();
      return locale;
      paramInt = j;
      break;
      paramArrayOfByte = null;
    }
  }

  public void a(int paramInt)
  {
    Object localObject2 = new JSONObject();
    Object localObject1 = null;
    try
    {
      ((JSONObject)localObject2).put("channel_token", new String(com.baidu.android.pushservice.j.f.b(b.a(j.a(this.a).c().getBytes()), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n")));
      ((JSONObject)localObject2).put("channel_id", j.a(this.a).b());
      ((JSONObject)localObject2).put("period", 1800);
      ((JSONObject)localObject2).put("channel_type", 3);
      ((JSONObject)localObject2).put("tinyheart", 1);
      ((JSONObject)localObject2).put("connect_version", 2);
      ((JSONObject)localObject2).put("tiny_msghead", 1);
      Object localObject3 = new JSONObject();
      String str = Build.MODEL;
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("model", str);
      str = f();
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("carrier", str);
      str = e();
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("resolution", str);
      str = d();
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("network", str);
      str = h();
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("mac", str);
      str = com.baidu.android.pushservice.j.c.a(this.a);
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("cuid", str);
      str = g();
      if ((str != null) && (str != ""))
        ((JSONObject)localObject3).put("imsi", str);
      paramInt = ((JSONObject)localObject3).toString().length();
      com.baidu.android.pushservice.h.a.c("MessageHandler", "jsonDevInfo = " + ((JSONObject)localObject3).toString());
      localObject3 = b.a(com.baidu.android.pushservice.j.a.a("2011121211143000", "9876543210123456", ((JSONObject)localObject3).toString().getBytes()), "utf-8");
      com.baidu.android.pushservice.h.a.c("MessageHandler", "devinfo = " + (String)localObject3);
      com.baidu.android.pushservice.h.a.c("MessageHandler", "devinfolength = " + paramInt);
      ((JSONObject)localObject2).put("devinfo", localObject3);
      ((JSONObject)localObject2).put("devinfolength", paramInt);
      localObject2 = ((JSONObject)localObject2).toString();
      localObject1 = localObject2;
      com.baidu.android.pushservice.h.a.b("MessageHandler", "onSessionOpened, send handshake msg :" + (String)localObject1);
      if (TextUtils.isEmpty((CharSequence)localObject1))
        return;
    }
    catch (Exception localException)
    {
      while (true)
        com.baidu.android.pushservice.h.a.e("MessageHandler", "error " + localException.getMessage());
      localObject1 = a((short)g.b.a(), ((String)localObject1).getBytes());
      e locale = new e();
      locale.d = ((byte[])localObject1);
      locale.e = true;
      locale.a(false);
      a(locale);
    }
  }

  public void b()
  {
  }

  public void b(e parame)
    throws Exception
  {
    if (parame == null);
    g localg;
    int i;
    do
    {
      return;
      localObject = new a(this.a);
      localg = g.a(parame.a);
      localObject = ((a)localObject).a(localg);
      i = 0;
      if (localObject != null)
        i = ((c)localObject).a(parame);
    }
    while (!parame.f);
    Object localObject = new e();
    if (localg == g.e)
    {
      com.baidu.android.pushservice.h.a.c("MessageHandler", "message need reply , send msg msgId :" + parame.d().b() + " ret: " + i);
      parame = a(parame.d().b(), i);
    }
    for (((e)localObject).d = a((short)g.e.a(), parame); ; ((e)localObject).d = a(parame.a, null))
    {
      do
      {
        a((e)localObject);
        return;
      }
      while ((localg != g.g) && (localg != g.c));
      com.baidu.android.pushservice.h.a.b("MessageHandler", "handleServerHeartbeatMsg, send handshake return msg ");
    }
  }

  public void c()
  {
    com.baidu.android.pushservice.h.a.b("MessageHandler", "sendHeartbeatMessage ");
    byte[] arrayOfByte = a((short)g.f.a(), null);
    e locale = new e();
    locale.d = arrayOfByte;
    locale.e = true;
    locale.a(true);
    a(locale);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.f
 * JD-Core Version:    0.6.2
 */