package com.baidu.loctp.str;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Random;

public class BDLocManager
{
  private static Method e = null;
  private static Method f = null;
  private static Method g = null;
  private static Class<?> h = null;
  private static char[] r = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.".toCharArray();
  private final long a = 5000L;
  private Context b = null;
  private TelephonyManager c = null;
  private BDLocManager.a d = new BDLocManager.a(this, null);
  private WifiManager i = null;
  private BDLocManager.WifiList j = null;
  private Object k = null;
  private Method l = null;
  private boolean m = true;
  private long n = 0L;
  private String o = null;
  private int p = 0;
  private String q = null;

  public BDLocManager(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    String str = this.b.getPackageName();
    try
    {
      this.c = ((TelephonyManager)this.b.getSystemService("phone"));
      paramContext = this.c.getDeviceId();
      this.q = ("&" + str + "&" + paramContext);
      this.i = ((WifiManager)this.b.getSystemService("wifi"));
      try
      {
        paramContext = Class.forName("android.net.wifi.WifiManager").getDeclaredField("mService");
        if (paramContext == null)
          return;
        paramContext.setAccessible(true);
        this.k = paramContext.get(this.i);
        this.l = this.k.getClass().getDeclaredMethod("startScan", new Class[] { Boolean.TYPE });
        if (this.l != null)
        {
          this.l.setAccessible(true);
          return;
        }
      }
      catch (Exception paramContext)
      {
      }
      return;
    }
    catch (Exception paramContext)
    {
      while (true)
        paramContext = null;
    }
  }

  private String a(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 3)
      i1 = 3;
    String str3;
    try
    {
      a(this.c.getCellLocation());
      str2 = this.d.toString();
      str1 = str2;
      if (str2 == null)
        str1 = "Z";
    }
    catch (Exception localException1)
    {
      try
      {
        String str1;
        if ((this.j == null) || (BDLocManager.WifiList.a(this.j)))
          this.j = new BDLocManager.WifiList(this, this.i.getScanResults());
        String str2 = this.j.toString(i1);
        str3 = str1;
        if (str2 != null)
          str3 = str1 + str2;
        if (str3.equals("Z"))
        {
          return null;
          localException1 = localException1;
          str2 = null;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          Object localObject = null;
      }
    }
    return a(str3 + "t" + System.currentTimeMillis() + this.q);
  }

  private static String a(String paramString)
  {
    int i4 = 0;
    if (paramString == null)
      return null;
    paramString = paramString.getBytes();
    int i1 = (byte)new Random().nextInt(255);
    int i2 = (byte)new Random().nextInt(255);
    byte[] arrayOfByte = new byte[paramString.length + 2];
    int i5 = paramString.length;
    int i3 = 0;
    while (i4 < i5)
    {
      arrayOfByte[i3] = ((byte)(paramString[i4] ^ i1));
      i4 += 1;
      i3 += 1;
    }
    arrayOfByte[i3] = i1;
    arrayOfByte[(i3 + 1)] = i2;
    return a(arrayOfByte);
  }

  private static String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar1 = new char[(paramArrayOfByte.length + 2) / 3 * 4];
    int i1 = 0;
    int i2 = 0;
    int i4;
    if (i2 < paramArrayOfByte.length)
    {
      i4 = (paramArrayOfByte[i2] & 0xFF) << 8;
      if (i2 + 1 >= paramArrayOfByte.length)
        break label239;
      i4 |= paramArrayOfByte[(i2 + 1)] & 0xFF;
    }
    label110: label239: for (int i3 = 1; ; i3 = 0)
    {
      i4 <<= 8;
      if (i2 + 2 < paramArrayOfByte.length)
        i4 |= paramArrayOfByte[(i2 + 2)] & 0xFF;
      for (int i5 = 1; ; i5 = 0)
      {
        char[] arrayOfChar2 = r;
        if (i5 != 0)
        {
          i5 = 63 - (i4 & 0x3F);
          arrayOfChar1[(i1 + 3)] = arrayOfChar2[i5];
          i4 >>= 6;
          arrayOfChar2 = r;
          if (i3 == 0)
            break label217;
        }
        for (i3 = 63 - (i4 & 0x3F); ; i3 = 64)
        {
          arrayOfChar1[(i1 + 2)] = arrayOfChar2[i3];
          i3 = i4 >> 6;
          arrayOfChar1[(i1 + 1)] = r[(63 - (i3 & 0x3F))];
          arrayOfChar1[(i1 + 0)] = r[(63 - (i3 >> 6 & 0x3F))];
          i2 += 3;
          i1 += 4;
          break;
          i5 = 64;
          break label110;
        }
        return new String(arrayOfChar1);
      }
    }
  }

  private void a(CellLocation paramCellLocation)
  {
    int i2 = 0;
    int i3 = 0;
    if ((paramCellLocation == null) || (this.c == null));
    while (true)
    {
      return;
      BDLocManager.a locala = new BDLocManager.a(this, null);
      Object localObject = this.c.getNetworkOperator();
      if ((localObject != null) && (((String)localObject).length() > 0));
      try
      {
        if (((String)localObject).length() >= 3)
        {
          int i4 = Integer.valueOf(((String)localObject).substring(0, 3)).intValue();
          i1 = i4;
          if (i4 < 0)
            i1 = this.d.c;
          locala.c = i1;
        }
        localObject = ((String)localObject).substring(3);
        if (localObject != null)
        {
          char[] arrayOfChar = ((String)localObject).toCharArray();
          i1 = i3;
          while (true)
          {
            i2 = i1;
            if (i1 >= arrayOfChar.length)
              break;
            i2 = i1;
            if (!Character.isDigit(arrayOfChar[i1]))
              break;
            i1 += 1;
          }
        }
        i2 = Integer.valueOf(((String)localObject).substring(0, i2)).intValue();
        int i1 = i2;
        if (i2 < 0)
          i1 = this.d.d;
        locala.d = i1;
        label181: if ((paramCellLocation instanceof GsmCellLocation))
        {
          locala.a = ((GsmCellLocation)paramCellLocation).getLac();
          locala.b = ((GsmCellLocation)paramCellLocation).getCid();
          locala.e = 'g';
        }
        while (BDLocManager.a.a(locala))
        {
          this.d = locala;
          return;
          if (!(paramCellLocation instanceof CdmaCellLocation))
            continue;
          locala.e = 'w';
          if (h == null);
          try
          {
            localObject = Class.forName("android.telephony.cdma.CdmaCellLocation");
            h = (Class)localObject;
            e = ((Class)localObject).getMethod("getBaseStationId", new Class[0]);
            f = h.getMethod("getNetworkId", new Class[0]);
            g = h.getMethod("getSystemId", new Class[0]);
            if ((h == null) || (!h.isInstance(paramCellLocation)))
              continue;
            try
            {
              i2 = ((Integer)g.invoke(paramCellLocation, new Object[0])).intValue();
              i1 = i2;
              if (i2 < 0)
                i1 = this.d.d;
              locala.d = i1;
              locala.b = ((Integer)e.invoke(paramCellLocation, new Object[0])).intValue();
              locala.a = ((Integer)f.invoke(paramCellLocation, new Object[0])).intValue();
            }
            catch (Exception paramCellLocation)
            {
            }
          }
          catch (Exception paramCellLocation)
          {
            h = null;
            return;
          }
        }
      }
      catch (Exception localException)
      {
        break label181;
      }
    }
  }

  private boolean a()
  {
    String str = null;
    this.o = null;
    this.p = 0;
    Object localObject = this.i.getConnectionInfo();
    if (localObject == null);
    while (true)
    {
      return false;
      try
      {
        localObject = ((WifiInfo)localObject).getBSSID();
        if (localObject != null)
          str = ((String)localObject).replace(":", "");
        if (str.length() == 12)
        {
          this.o = new String(str);
          return true;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return false;
  }

  public String getLocString()
  {
    try
    {
      String str = a(3);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getLocString(int paramInt)
  {
    try
    {
      String str = a(paramInt);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public boolean startWifiScan()
  {
    if (this.i == null);
    long l1;
    do
    {
      return false;
      l1 = System.currentTimeMillis() - this.n;
    }
    while ((l1 <= 5000L) && (l1 >= 0L));
    if (this.i.isWifiEnabled())
    {
      if ((this.l != null) && (this.k != null));
      while (true)
      {
        try
        {
          this.l.invoke(this.k, new Object[] { Boolean.valueOf(this.m) });
          this.n = System.currentTimeMillis();
          return true;
        }
        catch (Exception localException)
        {
          this.i.startScan();
          continue;
        }
        this.i.startScan();
      }
    }
    this.n = 0L;
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.loctp.str.BDLocManager
 * JD-Core Version:    0.6.2
 */