package com.loc;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.SystemClock;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import com.amap.api.location.AMapLocation;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import org.json.JSONObject;

public final class by
{
  private static int a = 0;
  private static String[] b = null;
  private static Hashtable<String, Long> c = new Hashtable();
  private static DecimalFormat d = null;
  private static SimpleDateFormat e = null;

  public static float a(AmapLoc paramAmapLoc1, AmapLoc paramAmapLoc2)
  {
    return a(new double[] { paramAmapLoc1.i(), paramAmapLoc1.h(), paramAmapLoc2.i(), paramAmapLoc2.h() });
  }

  public static float a(double[] paramArrayOfDouble)
  {
    float[] arrayOfFloat = new float[1];
    Location.distanceBetween(paramArrayOfDouble[0], paramArrayOfDouble[1], paramArrayOfDouble[2], paramArrayOfDouble[3], arrayOfFloat);
    return arrayOfFloat[0];
  }

  public static int a(int paramInt)
  {
    return paramInt * 2 - 113;
  }

  public static int a(int paramInt1, int paramInt2)
  {
    return new Random().nextInt(paramInt2 - paramInt1 + 1) + paramInt1;
  }

  public static int a(NetworkInfo paramNetworkInfo)
  {
    if (paramNetworkInfo == null);
    while ((!paramNetworkInfo.isAvailable()) || (!paramNetworkInfo.isConnected()))
      return -1;
    return paramNetworkInfo.getType();
  }

  public static int a(CellLocation paramCellLocation, Context paramContext)
  {
    if (a(paramContext));
    while (paramCellLocation == null)
      return 9;
    if ((paramCellLocation instanceof GsmCellLocation))
      return 1;
    try
    {
      Class.forName("android.telephony.cdma.CdmaCellLocation");
      return 2;
    }
    catch (Exception paramCellLocation)
    {
    }
    return 9;
  }

  public static long a()
  {
    return System.currentTimeMillis();
  }

  public static Object a(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return null;
    try
    {
      paramContext = paramContext.getApplicationContext().getSystemService(paramString);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
    }
    return null;
  }

  // ERROR //
  public static String a(long paramLong, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_2
    //   4: astore_3
    //   5: aload_2
    //   6: invokestatic 116	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +6 -> 15
    //   12: ldc 118
    //   14: astore_3
    //   15: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   18: astore_2
    //   19: aload_2
    //   20: ifnonnull +41 -> 61
    //   23: new 120	java/text/SimpleDateFormat
    //   26: dup
    //   27: aload_3
    //   28: getstatic 126	java/util/Locale:CHINA	Ljava/util/Locale;
    //   31: invokespecial 129	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   34: putstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   37: lconst_0
    //   38: lconst_0
    //   39: lcmp
    //   40: ifgt +7 -> 47
    //   43: invokestatic 96	java/lang/System:currentTimeMillis	()J
    //   46: lstore_0
    //   47: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   50: ifnonnull +27 -> 77
    //   53: ldc 131
    //   55: astore_2
    //   56: ldc 2
    //   58: monitorexit
    //   59: aload_2
    //   60: areturn
    //   61: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   64: aload_3
    //   65: invokevirtual 135	java/text/SimpleDateFormat:applyPattern	(Ljava/lang/String;)V
    //   68: goto -31 -> 37
    //   71: astore_2
    //   72: ldc 2
    //   74: monitorexit
    //   75: aload_2
    //   76: athrow
    //   77: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   80: lload_0
    //   81: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   84: invokevirtual 145	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   87: astore_2
    //   88: goto -32 -> 56
    //   91: astore_2
    //   92: goto -55 -> 37
    //
    // Exception table:
    //   from	to	target	type
    //   5	12	71	finally
    //   15	19	71	finally
    //   23	37	71	finally
    //   43	47	71	finally
    //   47	53	71	finally
    //   61	68	71	finally
    //   77	88	71	finally
    //   23	37	91	java/lang/Exception
  }

  public static String a(Object paramObject, String paramString)
  {
    Locale.setDefault(Locale.US);
    if (d == null)
      d = new DecimalFormat("#");
    d.applyPattern(paramString);
    return d.format(paramObject);
  }

  public static boolean a(double paramDouble)
  {
    if (paramDouble > 180.0D);
    while (paramDouble < -180.0D)
      return false;
    return true;
  }

  // ERROR //
  public static boolean a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: iconst_0
    //   4: istore 5
    //   6: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   9: astore 6
    //   11: aload 6
    //   13: ifnonnull +59 -> 72
    //   16: new 120	java/text/SimpleDateFormat
    //   19: dup
    //   20: ldc 169
    //   22: getstatic 126	java/util/Locale:CHINA	Ljava/util/Locale;
    //   25: invokespecial 129	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   28: putstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   31: iload 5
    //   33: istore 4
    //   35: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   38: ifnull +28 -> 66
    //   41: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   44: lload_0
    //   45: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   48: invokevirtual 145	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   51: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   54: lload_2
    //   55: invokestatic 141	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   58: invokevirtual 145	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   61: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   64: istore 4
    //   66: ldc 2
    //   68: monitorexit
    //   69: iload 4
    //   71: ireturn
    //   72: getstatic 32	com/loc/by:e	Ljava/text/SimpleDateFormat;
    //   75: ldc 169
    //   77: invokevirtual 135	java/text/SimpleDateFormat:applyPattern	(Ljava/lang/String;)V
    //   80: goto -49 -> 31
    //   83: astore 6
    //   85: ldc 2
    //   87: monitorexit
    //   88: aload 6
    //   90: athrow
    //   91: astore 6
    //   93: iload 5
    //   95: istore 4
    //   97: goto -31 -> 66
    //   100: astore 6
    //   102: goto -71 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   6	11	83	finally
    //   16	31	83	finally
    //   35	66	83	finally
    //   72	80	83	finally
    //   35	66	91	java/lang/Throwable
    //   16	31	100	java/lang/Exception
  }

  public static boolean a(Context paramContext)
  {
    if (paramContext == null)
      return false;
    paramContext = paramContext.getContentResolver();
    if (c() < 17);
    try
    {
      int i = ((Integer)bx.a("android.provider.Settings$System", "getInt", new Object[] { paramContext, ((String)bx.a("android.provider.Settings$System", "AIRPLANE_MODE_ON")).toString() }, new Class[] { ContentResolver.class, String.class })).intValue();
      return i == 1;
      try
      {
        i = ((Integer)bx.a("android.provider.Settings$Global", "getInt", new Object[] { paramContext, ((String)bx.a("android.provider.Settings$Global", "AIRPLANE_MODE_ON")).toString() }, new Class[] { ContentResolver.class, String.class })).intValue();
        return i == 1;
      }
      catch (Exception paramContext)
      {
      }
      label142: return false;
    }
    catch (Exception paramContext)
    {
      break label142;
    }
  }

  public static boolean a(ScanResult paramScanResult)
  {
    if ((paramScanResult == null) || (TextUtils.isEmpty(paramScanResult.BSSID)));
    while ((paramScanResult.BSSID.equals("00:00:00:00:00:00")) || (paramScanResult.BSSID.contains(" :")))
      return false;
    return true;
  }

  public static boolean a(AMapLocation paramAMapLocation)
  {
    boolean bool = true;
    if ((paramAMapLocation != null) && (paramAMapLocation.getErrorCode() == 0))
    {
      double d1 = paramAMapLocation.getLongitude();
      double d2 = paramAMapLocation.getLatitude();
      float f = paramAMapLocation.getAccuracy();
      if ((d1 != 0.0D) || (d2 != 0.0D) || (f != 0.0D))
      {
        if ((d1 > 180.0D) || (d2 > 90.0D))
          bool = false;
        while ((d1 >= -180.0D) && (d2 >= -90.0D))
          return bool;
      }
    }
    return false;
  }

  public static boolean a(AmapLoc paramAmapLoc)
  {
    boolean bool = true;
    if ((paramAmapLoc != null) && (!paramAmapLoc.m().equals("8")) && (!paramAmapLoc.m().equals("5")) && (!paramAmapLoc.m().equals("6")))
    {
      double d1 = paramAmapLoc.h();
      double d2 = paramAmapLoc.i();
      float f = paramAmapLoc.j();
      if ((d1 != 0.0D) || (d2 != 0.0D) || (f != 0.0D))
      {
        if ((d1 > 180.0D) || (d2 > 90.0D))
          bool = false;
        while ((d1 >= -180.0D) && (d2 >= -90.0D))
          return bool;
      }
    }
    return false;
  }

  public static boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (!TextUtils.isDigitsOnly(paramString))
      return false;
    return ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,".contains("," + paramString + ",");
  }

  public static boolean a(JSONObject paramJSONObject, String paramString)
  {
    return eq.a(paramJSONObject, paramString);
  }

  public static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    int i = 0;
    while (i < 8)
    {
      arrayOfByte[i] = ((byte)(int)(paramLong >> i * 8 & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }

  public static final byte[] a(File paramFile)
    throws IOException
  {
    if ((paramFile == null) || (!paramFile.exists()))
      throw new IOException("can't operate on null");
    byte[] arrayOfByte = new byte[2048];
    paramFile = new FileInputStream(paramFile);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    while (true)
    {
      int i = paramFile.read(arrayOfByte);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    paramFile.close();
    localByteArrayOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = eq.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
    }
    return null;
  }

  public static String[] a(TelephonyManager paramTelephonyManager)
  {
    String str = null;
    if (paramTelephonyManager != null)
      str = paramTelephonyManager.getNetworkOperator();
    paramTelephonyManager = new String[2];
    paramTelephonyManager[0] = "0";
    paramTelephonyManager[1] = "0";
    int i;
    if (TextUtils.isEmpty(str))
      i = 0;
    while (true)
    {
      if (i != 0)
      {
        paramTelephonyManager[0] = str.substring(0, 3);
        char[] arrayOfChar = str.substring(3).toCharArray();
        i = 0;
        while (true)
          if ((i < arrayOfChar.length) && (Character.isDigit(arrayOfChar[i])))
          {
            i += 1;
            continue;
            if (!TextUtils.isDigitsOnly(str))
            {
              i = 0;
              break;
            }
            if (str.length() > 4)
              break label208;
            i = 0;
            break;
          }
        paramTelephonyManager[1] = str.substring(3, i + 3);
      }
      try
      {
        i = Integer.parseInt(paramTelephonyManager[0]);
        if (i == 0)
          paramTelephonyManager[0] = "0";
        if ((!paramTelephonyManager[0].equals("0")) && (!paramTelephonyManager[1].equals("0")))
        {
          b = paramTelephonyManager;
          return paramTelephonyManager;
        }
      }
      catch (Exception localException)
      {
        while (true)
          i = 0;
        if ((paramTelephonyManager[0].equals("0")) && (paramTelephonyManager[1].equals("0")) && (b != null))
          return b;
        return paramTelephonyManager;
      }
      label208: i = 1;
    }
  }

  public static long b()
  {
    return SystemClock.elapsedRealtime();
  }

  public static final long b(byte[] paramArrayOfByte)
  {
    long l = 0L;
    int i = 0;
    while (i < 8)
    {
      l = l << 8 | paramArrayOfByte[i] & 0xFF;
      i += 1;
    }
    return l;
  }

  public static String b(Context paramContext)
  {
    CharSequence localCharSequence = null;
    if (paramContext == null)
      return null;
    if (!TextUtils.isEmpty(dp.k))
      return dp.k;
    Object localObject1 = paramContext.getApplicationContext().getPackageName();
    try
    {
      localObject1 = paramContext.getPackageManager().getPackageInfo((String)localObject1, 64);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          if (TextUtils.isEmpty(dp.l))
            dp.l = null;
          label53: StringBuilder localStringBuilder = new StringBuilder();
          if (localObject1 != null)
          {
            if (((PackageInfo)localObject1).applicationInfo != null)
              localCharSequence = ((PackageInfo)localObject1).applicationInfo.loadLabel(paramContext.getPackageManager());
            if (localCharSequence != null)
              localStringBuilder.append(localCharSequence.toString());
            if (!TextUtils.isEmpty(((PackageInfo)localObject1).versionName))
              localStringBuilder.append(((PackageInfo)localObject1).versionName);
          }
          if (!TextUtils.isEmpty(dp.h))
            localStringBuilder.append(",").append(dp.h);
          if (!TextUtils.isEmpty(dp.l))
            localStringBuilder.append(",").append(dp.l);
          return localStringBuilder.toString();
          localException1 = localException1;
          Object localObject2 = null;
        }
      }
      catch (Exception localException2)
      {
        break label53;
      }
    }
  }

  public static String b(TelephonyManager paramTelephonyManager)
  {
    int i = 0;
    if (paramTelephonyManager != null)
      i = paramTelephonyManager.getNetworkType();
    return (String)dp.r.get(i, "UNKWN");
  }

  public static boolean b(double paramDouble)
  {
    if (paramDouble > 90.0D);
    while (paramDouble < -90.0D)
      return false;
    return true;
  }

  public static byte[] b(int paramInt)
  {
    byte[] arrayOfByte = new byte[2];
    int i = 0;
    while (i < 2)
    {
      arrayOfByte[i] = ((byte)(paramInt >> i * 8 & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }

  public static byte[] b(String paramString)
  {
    byte[] arrayOfByte = new byte[6];
    paramString = paramString.split(":");
    int i = 0;
    while (i < paramString.length)
    {
      arrayOfByte[i] = ((byte)Integer.parseInt(paramString[i], 16));
      i += 1;
    }
    return arrayOfByte;
  }

  public static int c()
  {
    if (a > 0)
      return a;
    try
    {
      i = bx.b("android.os.Build$VERSION", "SDK_INT");
      return i;
    }
    catch (Exception localException1)
    {
      try
      {
        int i = Integer.parseInt(bx.a("android.os.Build$VERSION", "SDK").toString());
        return i;
      }
      catch (Exception localException2)
      {
      }
    }
    return 0;
  }

  public static final int c(byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte[0] & 0xFF) << 8 | paramArrayOfByte[1] & 0xFF;
  }

  public static NetworkInfo c(Context paramContext)
  {
    try
    {
      paramContext = eh.i(paramContext);
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return null;
  }

  public static String c(String paramString)
  {
    return f(paramString);
  }

  public static byte[] c(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    int i = 0;
    while (i < 4)
    {
      arrayOfByte[i] = ((byte)(paramInt >> i * 8 & 0xFF));
      i += 1;
    }
    return arrayOfByte;
  }

  public static final int d(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = 0;
    while (i < 4)
    {
      j = j << 8 | paramArrayOfByte[i] & 0xFF;
      i += 1;
    }
    return j;
  }

  public static String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Environment.getExternalStorageDirectory().getAbsolutePath()).append(File.separator);
    localStringBuilder.append("amaplocationapi").append(File.separator);
    return localStringBuilder.toString();
  }

  public static boolean d(Context paramContext)
  {
    try
    {
      Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (localRunningAppProcessInfo.processName.equals(paramContext.getPackageName()))
        {
          int i = localRunningAppProcessInfo.importance;
          return i != 100;
        }
      }
      return false;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return true;
  }

  public static byte[] d(String paramString)
  {
    return b(Integer.parseInt(paramString));
  }

  public static String e()
  {
    return Build.MODEL;
  }

  public static byte[] e(String paramString)
  {
    return c(Integer.parseInt(paramString));
  }

  public static String f()
  {
    return Build.VERSION.RELEASE;
  }

  private static String f(String paramString)
  {
    Object localObject = null;
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return Base64.encodeToString(paramString, 0);
    }
    catch (Exception paramString)
    {
      while (true)
        paramString = localObject;
    }
  }

  public static boolean g()
  {
    return a(0, 1) == 1;
  }

  public static void h()
  {
    c.clear();
  }

  public static String i()
  {
    try
    {
      String str = ej.a(dp.f.getBytes("UTF-8")).substring(20);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String j()
  {
    try
    {
      String str = new String(Base64.decode(null, 0), "UTF-8");
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static boolean k()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.by
 * JD-Core Version:    0.6.2
 */