package com.loc;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.zip.GZIPOutputStream;

public final class cl
{
  int a = 0;
  private Context b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g = 0;

  protected cl(Context paramContext)
  {
    this.b = paramContext;
    a();
    this.c = 768;
    this.e = ((this.c << 3) * 1000 + this.c + 4);
    this.g = this.e;
  }

  private static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2)
      return paramInt1;
    return paramInt2;
  }

  protected static cd a(Location paramLocation, co paramco, int paramInt, byte paramByte, long paramLong, boolean paramBoolean)
  {
    cd localcd = new cd();
    if ((paramInt <= 0) || (paramInt > 3) || (paramco == null))
      return null;
    int j;
    label50: Object localObject1;
    label156: label214: long l2;
    label339: label490: Object localObject2;
    label438: label622: long l1;
    if ((paramInt == 1) || (paramInt == 3))
    {
      i = 1;
      if ((paramInt != 2) && (paramInt != 3))
        break label951;
      j = 1;
      if ((paramco.i == null) && (paramco.a != null))
      {
        paramco.c = ((WifiManager)paramco.a.getSystemService("wifi"));
        if ((paramco.c != null) && (paramco.c.getConnectionInfo() != null))
        {
          paramco.i = paramco.c.getConnectionInfo().getMacAddress();
          if ((paramco.i != null) && (paramco.i.length() > 0))
            paramco.i = paramco.i.replace(":", "");
        }
      }
      if (paramco.i == null)
        break label957;
      localObject1 = paramco.i;
      localObject1 = ((String)localObject1).getBytes();
      System.arraycopy(localObject1, 0, localcd.c, 0, a(localObject1.length, localcd.c.length));
      if (paramco.e == null)
        paramco.e = Build.MODEL;
      if (paramco.e == null)
        break label964;
      localObject1 = paramco.e;
      localObject1 = ((String)localObject1).getBytes();
      System.arraycopy(localObject1, 0, localcd.g, 0, a(localObject1.length, localcd.g.length));
      localObject1 = paramco.f().getBytes();
      System.arraycopy(localObject1, 0, localcd.a, 0, a(localObject1.length, localcd.a.length));
      if ((paramco.f == null) && (paramco.a != null))
      {
        paramco.b = ((TelephonyManager)paramco.a.getSystemService("phone"));
        if (paramco.b != null)
          paramco.f = paramco.b.getSubscriberId();
      }
      if (paramco.f == null)
        break label971;
      localObject1 = paramco.f;
      localObject1 = ((String)localObject1).getBytes();
      System.arraycopy(localObject1, 0, localcd.b, 0, a(localObject1.length, localcd.b.length));
      localcd.d = ((short)paramco.j);
      localcd.e = ((short)paramco.k);
      localcd.f = ((byte)paramco.l);
      if ((paramco.m == null) && (paramco.a != null))
        paramco.m = paramco.a.getPackageName();
      if (paramco.m == null)
        break label978;
      localObject1 = paramco.m;
      localObject1 = ((String)localObject1).getBytes();
      System.arraycopy(localObject1, 0, localcd.h, 0, a(localObject1.length, localcd.h.length));
      l2 = paramLong / 1000L;
      if ((paramLocation == null) || (!paramco.e()))
        break label985;
      paramInt = 1;
      if (paramInt == 0)
        break label1055;
      localObject1 = new ca();
      ((ca)localObject1).b = ((int)l2);
      localObject2 = new cb();
      ((cb)localObject2).a = ((int)(paramLocation.getLongitude() * 1000000.0D));
      ((cb)localObject2).b = ((int)(paramLocation.getLatitude() * 1000000.0D));
      ((cb)localObject2).c = ((int)paramLocation.getAltitude());
      ((cb)localObject2).d = ((int)paramLocation.getAccuracy());
      ((cb)localObject2).e = ((int)paramLocation.getSpeed());
      ((cb)localObject2).f = ((short)(int)paramLocation.getBearing());
      if ((Build.MODEL.equals("sdk")) || ((co.b(paramco.a)) && (ce.b)))
        break label990;
      ((cb)localObject2).g = 0;
      ((cb)localObject2).h = paramByte;
      if (((cb)localObject2).d > 25)
        ((cb)localObject2).h = 5;
      ((cb)localObject2).i = System.currentTimeMillis();
      paramLong = paramco.h;
      if (paramLong > 0L)
        break label999;
      l1 = 0L;
      label668: ((cb)localObject2).j = l1;
      ((ca)localObject1).c = ((cb)localObject2);
      localcd.j.add(localObject1);
    }
    Object localObject3;
    Object localObject4;
    while (true)
    {
      k = 1;
      paramInt = k;
      if (!paramco.c())
        break label1807;
      paramInt = k;
      if (paramco.g)
        break label1807;
      paramInt = k;
      if (i == 0)
        break label1807;
      paramInt = k;
      if (paramBoolean)
        break label1807;
      localObject1 = new ca();
      ((ca)localObject1).b = ((int)l2);
      localObject2 = new dn();
      localObject3 = paramco.a(paramLocation.getSpeed());
      if (((List)localObject3).size() >= 3)
      {
        ((dn)localObject2).a = ((short)((Integer)((List)localObject3).get(0)).intValue());
        ((dn)localObject2).b = ((Integer)((List)localObject3).get(1)).intValue();
      }
      ((dn)localObject2).c = paramco.h();
      localObject3 = paramco.i();
      ((dn)localObject2).d = ((byte)((List)localObject3).size());
      paramInt = 0;
      while (paramInt < ((List)localObject3).size())
      {
        localObject4 = new cn();
        ((cn)localObject4).a = ((short)((NeighboringCellInfo)((List)localObject3).get(paramInt)).getLac());
        ((cn)localObject4).b = ((NeighboringCellInfo)((List)localObject3).get(paramInt)).getCid();
        ((cn)localObject4).c = ((byte)((NeighboringCellInfo)((List)localObject3).get(paramInt)).getRssi());
        ((dn)localObject2).e.add(localObject4);
        paramInt += 1;
      }
      i = 0;
      break;
      label951: j = 0;
      break label50;
      label957: localObject1 = "";
      break label156;
      label964: localObject1 = "";
      break label214;
      label971: localObject1 = "";
      break label339;
      label978: localObject1 = "";
      break label438;
      label985: paramInt = 0;
      break label490;
      label990: ((cb)localObject2).g = 1;
      break label622;
      label999: paramInt = String.valueOf(paramLong).length();
      l1 = paramLong;
      if (paramInt == 13)
        break label668;
      if (paramInt > 13);
      for (paramLong /= 10L; ; paramLong *= 10L)
      {
        paramInt = String.valueOf(paramLong).length();
        break;
      }
      label1055: if (!paramBoolean)
        break label1785;
      localObject1 = new ca();
      ((ca)localObject1).b = ((int)l2);
      localObject2 = new cg();
      new ArrayList();
      label1112: double d1;
      if (paramco.d == null)
      {
        paramByte = 0;
        ((cg)localObject2).a = paramByte;
        k = 0;
        if (k >= ((cg)localObject2).a)
          break label1764;
        localObject3 = new ch();
        ((ch)localObject3).a = ((byte)paramco.a(k).length());
        System.arraycopy(paramco.a(k).getBytes(), 0, ((ch)localObject3).b, 0, ((ch)localObject3).a);
        new ArrayList();
        if (paramco.d != null)
          break label1405;
        d1 = 0.0D;
        label1188: ((ch)localObject3).c = d1;
        new ArrayList();
        if (paramco.d != null)
          break label1459;
        paramInt = 0;
        label1212: ((ch)localObject3).d = paramInt;
        new ArrayList();
        if (paramco.d != null)
          break label1507;
        paramInt = 0;
        label1235: ((ch)localObject3).e = paramInt;
        new ArrayList();
        if (paramco.d != null)
          break label1564;
        d1 = 0.0D;
        label1259: ((ch)localObject3).f = d1;
        new ArrayList();
        if (paramco.d != null)
          break label1618;
        paramByte = 127;
        label1284: ((ch)localObject3).g = paramByte;
        ((ch)localObject3).h = ((byte)paramco.b(k).length());
        System.arraycopy(paramco.b(k).getBytes(), 0, ((ch)localObject3).i, 0, ((ch)localObject3).h);
        new ArrayList();
        if (paramco.d != null)
          break label1691;
        paramByte = 127;
      }
      while (true)
      {
        ((ch)localObject3).j = paramByte;
        ((cg)localObject2).b.add(localObject3);
        k += 1;
        break label1112;
        localObject3 = paramco.d.getSensorList(-1);
        if (localObject3 == null)
        {
          paramByte = 0;
          break;
        }
        paramByte = (byte)((List)localObject3).size();
        break;
        label1405: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null))
        {
          d1 = 0.0D;
          break label1188;
        }
        d1 = ((Sensor)((List)localObject4).get(k)).getMaximumRange();
        break label1188;
        label1459: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null))
        {
          paramInt = 0;
          break label1212;
        }
        paramInt = co.a(((List)localObject4).get(k));
        break label1212;
        label1507: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null))
        {
          paramInt = 0;
          break label1235;
        }
        paramInt = (int)(((Sensor)((List)localObject4).get(k)).getPower() * 100.0D);
        break label1235;
        label1564: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null))
        {
          d1 = 0.0D;
          break label1259;
        }
        d1 = ((Sensor)((List)localObject4).get(k)).getResolution();
        break label1259;
        label1618: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null) || (((Sensor)((List)localObject4).get(k)).getType() > 127))
        {
          paramByte = 127;
          break label1284;
        }
        paramByte = (byte)((Sensor)((List)localObject4).get(k)).getType();
        break label1284;
        label1691: localObject4 = paramco.d.getSensorList(-1);
        if ((localObject4 == null) || (((List)localObject4).get(k) == null) || (((Sensor)((List)localObject4).get(k)).getType() > 127))
          paramByte = 127;
        else
          paramByte = (byte)((Sensor)((List)localObject4).get(k)).getVersion();
      }
      label1764: ((ca)localObject1).g = ((cg)localObject2);
      localcd.j.add(localObject1);
    }
    label1785: return null;
    ((ca)localObject1).d = ((dn)localObject2);
    paramInt = 2;
    localcd.j.add(localObject1);
    label1807: int k = paramInt;
    paramInt = k;
    if (paramco.c())
    {
      paramInt = k;
      if (paramco.g)
      {
        paramInt = k;
        if (i != 0)
        {
          paramInt = k;
          if (!paramBoolean)
          {
            localObject1 = new ca();
            ((ca)localObject1).b = ((int)l2);
            localObject2 = new cm();
            paramLocation = paramco.b(paramLocation.getSpeed());
            if (paramLocation.size() >= 6)
            {
              ((cm)localObject2).a = ((Integer)paramLocation.get(3)).intValue();
              ((cm)localObject2).b = ((Integer)paramLocation.get(4)).intValue();
              ((cm)localObject2).c = ((short)((Integer)paramLocation.get(0)).intValue());
              ((cm)localObject2).d = ((short)((Integer)paramLocation.get(1)).intValue());
              ((cm)localObject2).e = ((Integer)paramLocation.get(2)).intValue();
              ((cm)localObject2).f = paramco.h();
            }
            ((ca)localObject1).e = ((cm)localObject2);
            paramInt = k + 1;
            localcd.j.add(localObject1);
          }
        }
      }
    }
    int i = paramInt;
    if (paramco.d())
    {
      i = paramInt;
      if (j != 0)
      {
        i = paramInt;
        if (!paramBoolean)
        {
          paramLocation = new ca();
          localObject1 = new ci();
          paramco = paramco.k();
          paramLocation.b = ((int)(((Long)paramco.get(0)).longValue() / 1000L));
          ((ci)localObject1).a = ((byte)(paramco.size() - 1));
          i = 1;
          while (i < paramco.size())
          {
            localObject3 = (List)paramco.get(i);
            if ((localObject3 != null) && (((List)localObject3).size() >= 3))
            {
              localObject2 = new cj();
              localObject4 = ((String)((List)localObject3).get(0)).getBytes();
              System.arraycopy(localObject4, 0, ((cj)localObject2).a, 0, a(localObject4.length, ((cj)localObject2).a.length));
              ((cj)localObject2).b = ((short)((Integer)((List)localObject3).get(1)).intValue());
              localObject3 = ((String)((List)localObject3).get(2)).getBytes();
              System.arraycopy(localObject3, 0, ((cj)localObject2).c, 0, a(localObject3.length, ((cj)localObject2).c.length));
              ((ci)localObject1).b.add(localObject2);
            }
            i += 1;
          }
          paramLocation.f = ((ci)localObject1);
          i = paramInt + 1;
          localcd.j.add(paramLocation);
        }
      }
    }
    localcd.i = ((short)i);
    if ((i < 2) && (!paramBoolean))
      return null;
    return localcd;
  }

  protected static File a(Context paramContext)
  {
    paramContext = "/Android/data/" + paramContext.getPackageName() + "/files/";
    return new File(Environment.getExternalStorageDirectory().getPath() + paramContext);
  }

  public static Object a(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    paramString = paramObject.getClass().getDeclaredMethod(paramString, new Class[0]);
    if (!paramString.isAccessible())
      paramString.setAccessible(true);
    return paramString.invoke(paramObject, paramArrayOfObject);
  }

  private static ArrayList a(File[] paramArrayOfFile)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayOfFile.length)
    {
      if ((paramArrayOfFile[i].isFile()) && (paramArrayOfFile[i].getName().length() == 10) && (TextUtils.isDigitsOnly(paramArrayOfFile[i].getName())))
        localArrayList.add(paramArrayOfFile[i]);
      i += 1;
    }
    return localArrayList;
  }

  protected static byte[] a(BitSet paramBitSet)
  {
    byte[] arrayOfByte = new byte[paramBitSet.size() / 8];
    int i = 0;
    if (i < paramBitSet.size())
    {
      int k = i / 8;
      int m = arrayOfByte[k];
      if (paramBitSet.get(i));
      for (int j = 1; ; j = 0)
      {
        arrayOfByte[k] = ((byte)(j << 7 - i % 8 | m));
        i += 1;
        break;
      }
    }
    return arrayOfByte;
  }

  protected static byte[] a(byte[] paramArrayOfByte)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localObject1 = localObject2;
      GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
      localObject1 = localObject2;
      localGZIPOutputStream.write(paramArrayOfByte);
      localObject1 = localObject2;
      localGZIPOutputStream.finish();
      localObject1 = localObject2;
      localGZIPOutputStream.close();
      localObject1 = localObject2;
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      localObject1 = paramArrayOfByte;
      localByteArrayOutputStream.close();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
    }
    return localObject1;
  }

  protected static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return null;
    int i = new String(paramArrayOfByte).indexOf(0);
    if (i > 0)
      if (i + 1 <= paramInt);
    while (true)
    {
      byte[] arrayOfByte = new byte[paramInt];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
      arrayOfByte[(paramInt - 1)] = 0;
      return arrayOfByte;
      paramInt = i + 1;
      continue;
      paramInt = 1;
    }
  }

  public static int b(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    paramString = paramObject.getClass().getDeclaredMethod(paramString, new Class[0]);
    if (!paramString.isAccessible())
      paramString.setAccessible(true);
    return ((Integer)paramString.invoke(paramObject, paramArrayOfObject)).intValue();
  }

  protected static BitSet b(byte[] paramArrayOfByte)
  {
    BitSet localBitSet = new BitSet(paramArrayOfByte.length << 3);
    int i = 0;
    int j = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = 7;
      if (k >= 0)
      {
        if ((paramArrayOfByte[i] & 1 << k) >> k == 1);
        for (boolean bool = true; ; bool = false)
        {
          localBitSet.set(j, bool);
          k -= 1;
          j += 1;
          break;
        }
      }
      i += 1;
    }
    return localBitSet;
  }

  private File c(long paramLong)
  {
    boolean bool2 = false;
    Object localObject1;
    if (Process.myUid() == 1000)
    {
      localObject1 = null;
      return localObject1;
    }
    boolean bool1;
    Object localObject2;
    try
    {
      bool1 = "mounted".equals(Environment.getExternalStorageState());
      if ((!c()) || (bool1))
      {
        localObject1 = new StatFs(Environment.getExternalStorageDirectory().getPath());
        if (((StatFs)localObject1).getAvailableBlocks() * ((StatFs)localObject1).getBlockSize() <= this.d / 2)
          return null;
      }
    }
    catch (Exception localException)
    {
      while (true)
        bool1 = false;
      localObject2 = a(this.b).getPath();
      localObject2 = new File((String)localObject2 + File.separator + "carrierdata");
      if ((!((File)localObject2).exists()) || (!((File)localObject2).isDirectory()))
        ((File)localObject2).mkdirs();
      localObject2 = new File(((File)localObject2).getPath() + File.separator + paramLong);
    }
    while (true)
    {
      try
      {
        bool1 = ((File)localObject2).createNewFile();
        if (bool1)
          break;
        return null;
      }
      catch (IOException localIOException)
      {
        bool1 = bool2;
        continue;
      }
      localObject2 = null;
      bool1 = bool2;
    }
  }

  protected static boolean c()
  {
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        boolean bool = ((Boolean)Environment.class.getMethod("isExternalStorageRemovable", null).invoke(null, null)).booleanValue();
        return bool;
      }
      catch (Exception localException)
      {
      }
    return true;
  }

  private File d()
  {
    if (Process.myUid() == 1000)
      return null;
    try
    {
      bool = "mounted".equals(Environment.getExternalStorageState());
      if ((!c()) || (bool))
      {
        Object localObject1 = a(this.b).getPath();
        localObject1 = new File((String)localObject1 + File.separator + "carrierdata");
        if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
        {
          localObject1 = ((File)localObject1).listFiles();
          if ((localObject1 != null) && (localObject1.length > 0))
          {
            localObject1 = a((File[])localObject1);
            if (((ArrayList)localObject1).size() == 1)
            {
              if (((File)((ArrayList)localObject1).get(0)).length() >= this.f)
                break label204;
              localObject1 = (File)((ArrayList)localObject1).get(0);
              return localObject1;
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool = false;
        continue;
        Object localObject2;
        if (localException.size() >= 2)
        {
          File localFile1 = (File)localException.get(0);
          File localFile2 = (File)localException.get(1);
          localObject2 = localFile1;
          if (localFile1.getName().compareTo(localFile2.getName()) <= 0)
            localObject2 = localFile2;
        }
        else
        {
          label204: localObject2 = null;
        }
      }
    }
  }

  private int e()
  {
    if (Process.myUid() == 1000);
    label144: 
    do
    {
      while (true)
      {
        return 0;
        try
        {
          bool = "mounted".equals(Environment.getExternalStorageState());
          if ((!c()) || (bool))
          {
            Object localObject = a(this.b).getPath();
            localObject = new File((String)localObject + File.separator + "carrierdata");
            if ((((File)localObject).exists()) && (((File)localObject).isDirectory()))
            {
              localObject = ((File)localObject).listFiles();
              if ((localObject != null) && (localObject.length > 0))
              {
                localObject = a((File[])localObject);
                if (((ArrayList)localObject).size() != 1)
                  break label144;
                if (((File)((ArrayList)localObject).get(0)).length() <= 0L)
                  return 10;
              }
            }
          }
        }
        catch (Exception localException)
        {
          while (true)
            boolean bool = false;
        }
      }
      return 1;
    }
    while (localException.size() < 2);
    return 2;
  }

  protected final File a(long paramLong)
  {
    try
    {
      File localFile2 = d();
      File localFile1 = localFile2;
      if (localFile2 == null)
        localFile1 = c(paramLong);
      return localFile1;
    }
    finally
    {
    }
  }

  protected final void a()
  {
    this.a = 768;
    this.d = ((this.a << 3) * 1500 + this.a + 4);
    if ((this.a == 256) || (this.a == 768))
      this.f = (this.d / 100);
    while (this.a != 8736)
      return;
    this.f = (this.d - 5000);
  }

  final File b()
  {
    if (Process.myUid() == 1000)
      return null;
    try
    {
      bool = "mounted".equals(Environment.getExternalStorageState());
      if ((!c()) || (bool))
      {
        Object localObject1 = a(this.b).getPath();
        localObject1 = new File((String)localObject1 + File.separator + "carrierdata");
        if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
        {
          localObject1 = ((File)localObject1).listFiles();
          if ((localObject1 != null) && (localObject1.length > 0))
          {
            Object localObject3 = a((File[])localObject1);
            if (((ArrayList)localObject3).size() >= 2)
            {
              localObject1 = (File)((ArrayList)localObject3).get(0);
              localObject3 = (File)((ArrayList)localObject3).get(1);
              if (((File)localObject1).getName().compareTo(((File)localObject3).getName()) > 0)
              {
                localObject1 = localObject3;
                return localObject1;
              }
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool = false;
        continue;
        continue;
        Object localObject2 = null;
      }
    }
  }

  protected final boolean b(long paramLong)
  {
    boolean bool = false;
    try
    {
      int i = e();
      if (i == 0);
      while (true)
      {
        return bool;
        if (i == 1)
        {
          File localFile = c(paramLong);
          if (localFile != null)
            bool = true;
        }
        else if (i == 2)
        {
          bool = true;
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cl
 * JD-Core Version:    0.6.2
 */