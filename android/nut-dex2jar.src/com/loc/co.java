package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.GpsStatus.NmeaListener;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Timer;
import java.util.TreeMap;

public final class co
{
  private static co B = null;
  private static String[] H = { "android.permission.READ_PHONE_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_NETWORK_STATE" };
  static int q = 10000;
  static String r = "";
  protected static boolean s = true;
  protected static boolean t = false;
  private long A = 0L;
  private cq C = null;
  private cr D = null;
  private CellLocation E = null;
  private Thread F = null;
  private Looper G = null;
  Context a = null;
  TelephonyManager b = null;
  WifiManager c = null;
  SensorManager d = null;
  String e = "";
  String f = "";
  boolean g = false;
  long h = -1L;
  String i = "";
  int j = 0;
  int k = 0;
  int l = 0;
  String m = "";
  cs n = null;
  List o = new ArrayList();
  Timer p = null;
  private LocationManager u = null;
  private String v = "";
  private int w = 0;
  private boolean x = false;
  private String y = "";
  private long z = 0L;

  private co(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      return;
      this.a = paramContext;
      this.e = Build.MODEL;
      this.b = ((TelephonyManager)paramContext.getSystemService("phone"));
      this.u = ((LocationManager)paramContext.getSystemService("location"));
      this.c = ((WifiManager)paramContext.getSystemService("wifi"));
      this.d = ((SensorManager)paramContext.getSystemService("sensor"));
    }
    while ((this.b == null) || (this.c == null));
    try
    {
      this.v = this.b.getDeviceId();
      label252: this.f = this.b.getSubscriberId();
      if (this.c.getConnectionInfo() != null)
      {
        this.i = this.c.getConnectionInfo().getMacAddress();
        if ((this.i != null) && (this.i.length() > 0))
          this.i = this.i.replace(":", "");
      }
      String[] arrayOfString = b(this.b);
      this.j = Integer.parseInt(arrayOfString[0]);
      this.k = Integer.parseInt(arrayOfString[1]);
      this.l = this.b.getNetworkType();
      this.m = paramContext.getPackageName();
      if (this.b.getPhoneType() == 2);
      for (boolean bool = true; ; bool = false)
      {
        this.g = bool;
        return;
      }
    }
    catch (Exception localException)
    {
      break label252;
    }
  }

  private static int a(CellLocation paramCellLocation, Context paramContext)
  {
    if (Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0) == 1);
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

  static int a(Object paramObject)
  {
    try
    {
      Method localMethod = Sensor.class.getDeclaredMethod("getMinDelay", null);
      if (localMethod != null)
      {
        int i1 = ((Integer)localMethod.invoke(paramObject, null)).intValue();
        return i1;
      }
    }
    catch (Exception paramObject)
    {
    }
    return 0;
  }

  protected static co a(Context paramContext)
  {
    if ((B == null) && (c(paramContext)))
    {
      Object localObject = (LocationManager)paramContext.getSystemService("location");
      if (localObject == null)
        break label97;
      localObject = ((LocationManager)localObject).getAllProviders().iterator();
      String str;
      do
      {
        if (!((Iterator)localObject).hasNext())
          break;
        str = (String)((Iterator)localObject).next();
      }
      while ((!str.equals("passive")) && (!str.equals("gps")));
    }
    label97: for (int i1 = 1; ; i1 = 0)
    {
      if (i1 != 0)
        B = new co(paramContext);
      return B;
    }
  }

  private static void a(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return;
    HashMap localHashMap = new HashMap();
    int i1 = 0;
    while (i1 < paramList.size())
    {
      localObject = (ScanResult)paramList.get(i1);
      if (((ScanResult)localObject).SSID == null)
        ((ScanResult)localObject).SSID = "null";
      localHashMap.put(Integer.valueOf(((ScanResult)localObject).level), localObject);
      i1 += 1;
    }
    Object localObject = new TreeMap(Collections.reverseOrder());
    ((TreeMap)localObject).putAll(localHashMap);
    paramList.clear();
    Iterator localIterator = ((TreeMap)localObject).keySet().iterator();
    while (localIterator.hasNext())
      paramList.add(((TreeMap)localObject).get(localIterator.next()));
    localHashMap.clear();
    ((TreeMap)localObject).clear();
  }

  private boolean a(CellLocation paramCellLocation)
  {
    if (paramCellLocation == null)
      return false;
    switch (a(paramCellLocation, this.a))
    {
    default:
    case 1:
    case 2:
    }
    while (true)
      while (true)
      {
        return true;
        paramCellLocation = (GsmCellLocation)paramCellLocation;
        if ((paramCellLocation.getLac() == -1) || (paramCellLocation.getLac() == 0) || (paramCellLocation.getLac() > 65535) || (paramCellLocation.getCid() == -1) || (paramCellLocation.getCid() == 0) || (paramCellLocation.getCid() == 65535))
          break;
        if (paramCellLocation.getCid() >= 268435455)
        {
          return false;
          try
          {
            if ((cl.b(paramCellLocation, "getSystemId", new Object[0]) <= 0) || (cl.b(paramCellLocation, "getNetworkId", new Object[0]) < 0))
              break;
            int i1 = cl.b(paramCellLocation, "getBaseStationId", new Object[0]);
            if (i1 < 0)
              return false;
          }
          catch (Exception paramCellLocation)
          {
          }
        }
      }
  }

  // ERROR //
  private static CellLocation b(List paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +12 -> 13
    //   4: aload_0
    //   5: invokeinterface 414 1 0
    //   10: ifeq +7 -> 17
    //   13: aconst_null
    //   14: astore_0
    //   15: aload_0
    //   16: areturn
    //   17: invokestatic 420	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
    //   20: astore 11
    //   22: aconst_null
    //   23: astore 8
    //   25: iconst_0
    //   26: istore_2
    //   27: iconst_0
    //   28: istore_1
    //   29: aconst_null
    //   30: astore 9
    //   32: iload_2
    //   33: aload_0
    //   34: invokeinterface 329 1 0
    //   39: if_icmpge +480 -> 519
    //   42: aload_0
    //   43: iload_2
    //   44: invokeinterface 336 2 0
    //   49: astore 12
    //   51: aload 12
    //   53: ifnull +463 -> 516
    //   56: aload 11
    //   58: ldc_w 422
    //   61: invokevirtual 425	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   64: astore 14
    //   66: aload 11
    //   68: ldc_w 427
    //   71: invokevirtual 425	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   74: astore 15
    //   76: aload 11
    //   78: ldc_w 429
    //   81: invokevirtual 425	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   84: astore 16
    //   86: aload 11
    //   88: ldc_w 431
    //   91: invokevirtual 425	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   94: astore 13
    //   96: aload 14
    //   98: aload 12
    //   100: invokevirtual 434	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   103: istore 7
    //   105: iload 7
    //   107: ifeq +52 -> 159
    //   110: iconst_1
    //   111: istore_1
    //   112: iload_1
    //   113: ifle +376 -> 489
    //   116: aconst_null
    //   117: astore 10
    //   119: iload_1
    //   120: iconst_1
    //   121: if_icmpne +92 -> 213
    //   124: aload 14
    //   126: aload 12
    //   128: invokevirtual 437	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   131: astore 10
    //   133: aload 10
    //   135: ldc_w 439
    //   138: iconst_0
    //   139: anewarray 4	java/lang/Object
    //   142: invokestatic 442	com/loc/cl:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   145: astore 12
    //   147: aload 12
    //   149: ifnonnull +115 -> 264
    //   152: iload_2
    //   153: iconst_1
    //   154: iadd
    //   155: istore_2
    //   156: goto -124 -> 32
    //   159: aload 15
    //   161: aload 12
    //   163: invokevirtual 434	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   166: ifeq +8 -> 174
    //   169: iconst_2
    //   170: istore_1
    //   171: goto -59 -> 112
    //   174: aload 16
    //   176: aload 12
    //   178: invokevirtual 434	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   181: ifeq +8 -> 189
    //   184: iconst_3
    //   185: istore_1
    //   186: goto -74 -> 112
    //   189: aload 13
    //   191: aload 12
    //   193: invokevirtual 434	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   196: istore 7
    //   198: iload 7
    //   200: ifeq +8 -> 208
    //   203: iconst_4
    //   204: istore_1
    //   205: goto -93 -> 112
    //   208: iconst_0
    //   209: istore_1
    //   210: goto -98 -> 112
    //   213: iload_1
    //   214: iconst_2
    //   215: if_icmpne +15 -> 230
    //   218: aload 15
    //   220: aload 12
    //   222: invokevirtual 437	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   225: astore 10
    //   227: goto -94 -> 133
    //   230: iload_1
    //   231: iconst_3
    //   232: if_icmpne +15 -> 247
    //   235: aload 16
    //   237: aload 12
    //   239: invokevirtual 437	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   242: astore 10
    //   244: goto -111 -> 133
    //   247: iload_1
    //   248: iconst_4
    //   249: if_icmpne -116 -> 133
    //   252: aload 13
    //   254: aload 12
    //   256: invokevirtual 437	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   259: astore 10
    //   261: goto -128 -> 133
    //   264: iload_1
    //   265: iconst_4
    //   266: if_icmpne +102 -> 368
    //   269: new 444	android/telephony/cdma/CdmaCellLocation
    //   272: dup
    //   273: invokespecial 445	android/telephony/cdma/CdmaCellLocation:<init>	()V
    //   276: astore 10
    //   278: aload 12
    //   280: ldc_w 400
    //   283: iconst_0
    //   284: anewarray 4	java/lang/Object
    //   287: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   290: istore_3
    //   291: aload 12
    //   293: ldc_w 407
    //   296: iconst_0
    //   297: anewarray 4	java/lang/Object
    //   300: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   303: istore 4
    //   305: aload 12
    //   307: ldc_w 447
    //   310: iconst_0
    //   311: anewarray 4	java/lang/Object
    //   314: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   317: istore 5
    //   319: aload 12
    //   321: ldc_w 449
    //   324: iconst_0
    //   325: anewarray 4	java/lang/Object
    //   328: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   331: istore 6
    //   333: aload 10
    //   335: iload 5
    //   337: aload 12
    //   339: ldc_w 451
    //   342: iconst_0
    //   343: anewarray 4	java/lang/Object
    //   346: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   349: iload 6
    //   351: iload_3
    //   352: iload 4
    //   354: invokevirtual 455	android/telephony/cdma/CdmaCellLocation:setCellLocationData	(IIIII)V
    //   357: aload 10
    //   359: astore_0
    //   360: iload_1
    //   361: iconst_4
    //   362: if_icmpeq -347 -> 15
    //   365: aload 8
    //   367: areturn
    //   368: iload_1
    //   369: iconst_3
    //   370: if_icmpne +61 -> 431
    //   373: aload 12
    //   375: ldc_w 457
    //   378: iconst_0
    //   379: anewarray 4	java/lang/Object
    //   382: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   385: istore_3
    //   386: aload 12
    //   388: ldc_w 459
    //   391: iconst_0
    //   392: anewarray 4	java/lang/Object
    //   395: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   398: istore 4
    //   400: new 243	android/telephony/gsm/GsmCellLocation
    //   403: dup
    //   404: invokespecial 460	android/telephony/gsm/GsmCellLocation:<init>	()V
    //   407: astore 10
    //   409: aload 10
    //   411: astore 8
    //   413: aload 10
    //   415: iload_3
    //   416: iload 4
    //   418: invokevirtual 464	android/telephony/gsm/GsmCellLocation:setLacAndCid	(II)V
    //   421: aload 9
    //   423: astore_0
    //   424: aload 10
    //   426: astore 8
    //   428: goto -68 -> 360
    //   431: aload 12
    //   433: ldc_w 465
    //   436: iconst_0
    //   437: anewarray 4	java/lang/Object
    //   440: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   443: istore_3
    //   444: aload 12
    //   446: ldc_w 466
    //   449: iconst_0
    //   450: anewarray 4	java/lang/Object
    //   453: invokestatic 405	com/loc/cl:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   456: istore 4
    //   458: new 243	android/telephony/gsm/GsmCellLocation
    //   461: dup
    //   462: invokespecial 460	android/telephony/gsm/GsmCellLocation:<init>	()V
    //   465: astore 10
    //   467: aload 10
    //   469: astore 8
    //   471: aload 10
    //   473: iload_3
    //   474: iload 4
    //   476: invokevirtual 464	android/telephony/gsm/GsmCellLocation:setLacAndCid	(II)V
    //   479: aload 9
    //   481: astore_0
    //   482: aload 10
    //   484: astore 8
    //   486: goto -126 -> 360
    //   489: goto -337 -> 152
    //   492: astore 10
    //   494: goto -342 -> 152
    //   497: astore 10
    //   499: goto -347 -> 152
    //   502: astore 9
    //   504: aload 10
    //   506: astore 9
    //   508: goto -356 -> 152
    //   511: astore 10
    //   513: goto -361 -> 152
    //   516: goto -364 -> 152
    //   519: aload 9
    //   521: astore_0
    //   522: goto -162 -> 360
    //
    // Exception table:
    //   from	to	target	type
    //   56	105	492	java/lang/Exception
    //   159	169	492	java/lang/Exception
    //   174	184	492	java/lang/Exception
    //   189	198	492	java/lang/Exception
    //   124	133	497	java/lang/Exception
    //   133	147	497	java/lang/Exception
    //   218	227	497	java/lang/Exception
    //   235	244	497	java/lang/Exception
    //   252	261	497	java/lang/Exception
    //   269	278	497	java/lang/Exception
    //   373	409	497	java/lang/Exception
    //   431	467	497	java/lang/Exception
    //   278	357	502	java/lang/Exception
    //   413	421	511	java/lang/Exception
    //   471	479	511	java/lang/Exception
  }

  private static void b(WifiManager paramWifiManager)
  {
    if (paramWifiManager == null)
      return;
    try
    {
      cl.a(paramWifiManager, "startScanActive", new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      paramWifiManager.startScan();
    }
  }

  protected static boolean b(Context paramContext)
  {
    if (paramContext == null)
      return true;
    PackageManager localPackageManager;
    Object localObject;
    boolean bool1;
    if (!Settings.Secure.getString(paramContext.getContentResolver(), "mock_location").equals("0"))
    {
      localPackageManager = paramContext.getPackageManager();
      localObject = localPackageManager.getInstalledApplications(128);
      paramContext = paramContext.getPackageName();
      localObject = ((List)localObject).iterator();
      bool1 = false;
    }
    while (true)
    {
      boolean bool2 = bool1;
      ApplicationInfo localApplicationInfo;
      if (((Iterator)localObject).hasNext())
      {
        localApplicationInfo = (ApplicationInfo)((Iterator)localObject).next();
        bool2 = bool1;
        if (bool1);
      }
      try
      {
        String[] arrayOfString = localPackageManager.getPackageInfo(localApplicationInfo.packageName, 4096).requestedPermissions;
        if (arrayOfString != null)
        {
          int i2 = arrayOfString.length;
          int i1 = 0;
          while (i1 < i2)
          {
            if (arrayOfString[i1].equals("android.permission.ACCESS_MOCK_LOCATION"))
            {
              bool2 = localApplicationInfo.packageName.equals(paramContext);
              if (bool2)
                break;
              bool1 = true;
              break;
            }
            i1 += 1;
          }
          bool2 = false;
          return bool2;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  private static boolean b(Object paramObject)
  {
    try
    {
      Method localMethod = WifiManager.class.getDeclaredMethod("isScanAlwaysAvailable", null);
      if (localMethod != null)
      {
        boolean bool = ((Boolean)localMethod.invoke(paramObject, null)).booleanValue();
        return bool;
      }
    }
    catch (Exception paramObject)
    {
    }
    return false;
  }

  private static String[] b(TelephonyManager paramTelephonyManager)
  {
    int i1 = 0;
    String str = null;
    if (paramTelephonyManager != null)
      str = paramTelephonyManager.getNetworkOperator();
    paramTelephonyManager = new String[2];
    paramTelephonyManager[0] = "0";
    paramTelephonyManager[1] = "0";
    if ((TextUtils.isDigitsOnly(str)) && (str.length() > 4))
    {
      paramTelephonyManager[0] = str.substring(0, 3);
      char[] arrayOfChar = str.substring(3).toCharArray();
      while ((i1 < arrayOfChar.length) && (Character.isDigit(arrayOfChar[i1])))
        i1 += 1;
      paramTelephonyManager[1] = str.substring(3, i1 + 3);
    }
    return paramTelephonyManager;
  }

  private static boolean c(Context paramContext)
  {
    Object localObject = paramContext.getPackageManager();
    try
    {
      paramContext = ((PackageManager)localObject).getPackageInfo(paramContext.getPackageName(), 4096);
      paramContext = paramContext.requestedPermissions;
      int i1 = 0;
      while (i1 < H.length)
      {
        localObject = H[i1];
        if ((paramContext != null) && (localObject != null))
        {
          i2 = 0;
          if (i2 < paramContext.length)
            if (!paramContext[i2].equals(localObject));
        }
        for (int i2 = 1; ; i2 = 0)
        {
          if (i2 != 0)
            break label84;
          return false;
          i2 += 1;
          break;
        }
        label84: i1 += 1;
      }
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return false;
  }

  private CellLocation p()
  {
    if (this.b == null)
      return null;
    try
    {
      CellLocation localCellLocation = b((List)cl.a(this.b, "getAllCellInfo", new Object[0]));
      return localCellLocation;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        Object localObject1 = null;
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject2 = null;
    }
  }

  protected final String a(int paramInt)
  {
    new ArrayList();
    if (this.d == null)
      return "null";
    List localList = this.d.getSensorList(-1);
    if ((localList == null) || (localList.get(paramInt) == null) || (((Sensor)localList.get(paramInt)).getName() == null) || (((Sensor)localList.get(paramInt)).getName().length() <= 0))
      return "null";
    return ((Sensor)localList.get(paramInt)).getName();
  }

  protected final List a(float paramFloat)
  {
    ArrayList localArrayList = new ArrayList();
    long l1 = System.currentTimeMillis();
    float f1 = paramFloat;
    if (Math.abs(paramFloat) <= 1.0F)
      f1 = 1.0F;
    if (c())
    {
      CellLocation localCellLocation = (CellLocation)g().get(1);
      if ((localCellLocation != null) && ((localCellLocation instanceof GsmCellLocation)))
      {
        localArrayList.add(Integer.valueOf(((GsmCellLocation)localCellLocation).getLac()));
        localArrayList.add(Integer.valueOf(((GsmCellLocation)localCellLocation).getCid()));
        if (l1 - ((Long)g().get(0)).longValue() > 50000.0D / f1)
          break label143;
        localArrayList.add(Integer.valueOf(1));
      }
    }
    return localArrayList;
    label143: localArrayList.add(Integer.valueOf(0));
    return localArrayList;
  }

  protected final List a(boolean paramBoolean)
  {
    int i2 = 0;
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2;
    if (d())
    {
      localArrayList2 = new ArrayList();
      if (paramBoolean);
    }
    label138: label145: label148: 
    while (true)
    {
      int i1;
      try
      {
        if (System.currentTimeMillis() - this.z >= 3500L)
          break label145;
        i1 = 1;
        break label138;
        localArrayList2.add(Long.valueOf(this.z));
        i1 = i2;
        if (i1 < this.o.size())
        {
          localArrayList1.add(this.o.get(i1));
          i1 += 1;
          continue;
        }
        localArrayList2.add(localArrayList1);
        return localArrayList2;
      }
      finally
      {
      }
      return new ArrayList();
      while (true)
      {
        if (i1 == 0)
          break label148;
        break;
        i1 = 0;
      }
    }
  }

  protected final void a()
  {
    b();
    if (this.G != null)
    {
      this.G.quit();
      this.G = null;
    }
    if (this.F != null)
    {
      this.F.interrupt();
      this.F = null;
    }
    this.F = new cp(this, "");
    this.F.start();
  }

  final void a(BroadcastReceiver paramBroadcastReceiver)
  {
    if ((paramBroadcastReceiver == null) || (this.a == null))
      return;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.wifi.SCAN_RESULTS");
    this.a.registerReceiver(paramBroadcastReceiver, localIntentFilter);
  }

  protected final String b(int paramInt)
  {
    new ArrayList();
    if (this.d == null)
      return "null";
    List localList = this.d.getSensorList(-1);
    if ((localList == null) || (localList.get(paramInt) == null) || (((Sensor)localList.get(paramInt)).getVendor() == null) || (((Sensor)localList.get(paramInt)).getVendor().length() <= 0))
      return "null";
    return ((Sensor)localList.get(paramInt)).getVendor();
  }

  protected final List b(float paramFloat)
  {
    ArrayList localArrayList = new ArrayList();
    long l1 = System.currentTimeMillis();
    float f1 = paramFloat;
    if (Math.abs(paramFloat) <= 1.0F)
      f1 = 1.0F;
    if (c())
    {
      Object localObject = (CellLocation)g().get(1);
      if ((localObject != null) && ((localObject instanceof CdmaCellLocation)))
      {
        localObject = (CdmaCellLocation)localObject;
        localArrayList.add(Integer.valueOf(((CdmaCellLocation)localObject).getSystemId()));
        localArrayList.add(Integer.valueOf(((CdmaCellLocation)localObject).getNetworkId()));
        localArrayList.add(Integer.valueOf(((CdmaCellLocation)localObject).getBaseStationId()));
        localArrayList.add(Integer.valueOf(((CdmaCellLocation)localObject).getBaseStationLongitude()));
        localArrayList.add(Integer.valueOf(((CdmaCellLocation)localObject).getBaseStationLatitude()));
        if (l1 - ((Long)g().get(0)).longValue() > 50000.0D / f1)
          break label192;
        localArrayList.add(Integer.valueOf(1));
      }
    }
    return localArrayList;
    label192: localArrayList.add(Integer.valueOf(0));
    return localArrayList;
  }

  protected final void b()
  {
    Object localObject;
    if (this.C != null)
    {
      localObject = this.C;
      if (this.b != null)
        this.b.listen((PhoneStateListener)localObject, 0);
      this.C = null;
    }
    if (this.D != null)
    {
      localObject = this.D;
      if ((this.u != null) && (localObject != null))
        break label119;
    }
    while (true)
    {
      this.D = null;
      if (this.p != null)
      {
        this.p.cancel();
        this.p = null;
      }
      if (this.G != null)
      {
        this.G.quit();
        this.G = null;
      }
      if (this.F != null)
      {
        this.F.interrupt();
        this.F = null;
      }
      return;
      label119: this.u.removeNmeaListener((GpsStatus.NmeaListener)localObject);
    }
  }

  final void b(BroadcastReceiver paramBroadcastReceiver)
  {
    if ((paramBroadcastReceiver == null) || (this.a == null))
      return;
    try
    {
      this.a.unregisterReceiver(paramBroadcastReceiver);
      return;
    }
    catch (Exception paramBroadcastReceiver)
    {
    }
  }

  protected final boolean c()
  {
    Object localObject = null;
    if ((this.b != null) && (this.b.getSimState() == 5) && (this.x))
      return true;
    if (this.b != null);
    try
    {
      CellLocation localCellLocation = this.b.getCellLocation();
      localObject = localCellLocation;
      label46: if (localObject != null)
      {
        this.A = System.currentTimeMillis();
        this.E = localObject;
        return true;
      }
      return false;
    }
    catch (Exception localException)
    {
      break label46;
    }
  }

  protected final boolean d()
  {
    return (this.c != null) && ((this.c.isWifiEnabled()) || (b(this.c)));
  }

  protected final boolean e()
  {
    try
    {
      if (this.u != null)
      {
        boolean bool = this.u.isProviderEnabled("gps");
        if (bool)
          return true;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  protected final String f()
  {
    if ((this.v == null) && (this.a != null))
    {
      this.b = ((TelephonyManager)this.a.getSystemService("phone"));
      if (this.b == null);
    }
    try
    {
      this.v = this.b.getDeviceId();
      label48: if (this.v != null)
        return this.v;
      return "";
    }
    catch (Exception localException)
    {
      break label48;
    }
  }

  protected final List g()
  {
    if (Settings.System.getInt(this.a.getContentResolver(), "airplane_mode_on", 0) == 1)
      return new ArrayList();
    if (c())
    {
      ArrayList localArrayList = new ArrayList();
      CellLocation localCellLocation;
      if (!a(this.E))
      {
        localCellLocation = p();
        if (a(localCellLocation))
          this.A = System.currentTimeMillis();
      }
      while (true)
      {
        localArrayList.add(Long.valueOf(this.A));
        localArrayList.add(localCellLocation);
        return localArrayList;
        localCellLocation = this.E;
      }
    }
    return new ArrayList();
  }

  protected final byte h()
  {
    if (c())
      return (byte)this.w;
    return -128;
  }

  protected final List i()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.b == null)
      return localArrayList;
    if (!c())
      return localArrayList;
    if (this.b.getSimState() == 1)
      return localArrayList;
    Iterator localIterator = this.b.getNeighboringCellInfo().iterator();
    int i1 = 0;
    while (localIterator.hasNext())
    {
      NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
      if (i1 > 15)
        break;
      if ((localNeighboringCellInfo.getLac() != 0) && (localNeighboringCellInfo.getLac() != 65535) && (localNeighboringCellInfo.getCid() != 65535) && (localNeighboringCellInfo.getCid() != 268435455))
      {
        localArrayList.add(localNeighboringCellInfo);
        i1 += 1;
      }
    }
    return localArrayList;
  }

  protected final List j()
  {
    ArrayList localArrayList = new ArrayList();
    long l2;
    if (e())
      l2 = this.h;
    for (String str = this.y; ; str = "")
    {
      long l1 = l2;
      if (l2 <= 0L)
        l1 = System.currentTimeMillis() / 1000L;
      l2 = l1;
      if (l1 > 2147483647L)
        l2 = l1 / 1000L;
      localArrayList.add(Long.valueOf(l2));
      localArrayList.add(str);
      return localArrayList;
      l2 = -1L;
    }
  }

  protected final List k()
  {
    int i1 = 0;
    ArrayList localArrayList1 = new ArrayList();
    if (d())
    {
      Object localObject = a(true);
      List localList = (List)((List)localObject).get(1);
      long l1 = ((Long)((List)localObject).get(0)).longValue();
      a(localList);
      localArrayList1.add(Long.valueOf(l1));
      if ((localList != null) && (localList.size() > 0))
        while (i1 < localList.size())
        {
          localObject = (ScanResult)localList.get(i1);
          if (localArrayList1.size() - 1 >= 40)
            break;
          if (localObject != null)
          {
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add(((ScanResult)localObject).BSSID.replace(":", ""));
            localArrayList2.add(Integer.valueOf(((ScanResult)localObject).level));
            localArrayList2.add(((ScanResult)localObject).SSID);
            localArrayList1.add(localArrayList2);
          }
          i1 += 1;
        }
    }
    return localArrayList1;
  }

  protected final void l()
  {
    try
    {
      this.o.clear();
      if (this.n != null)
      {
        b(this.n);
        this.n = null;
      }
      if (this.p != null)
      {
        this.p.cancel();
        this.p = null;
      }
      this.p = new Timer();
      this.n = new cs(this, (byte)0);
      a(this.n);
      n();
      return;
    }
    finally
    {
    }
  }

  protected final void m()
  {
    try
    {
      this.o.clear();
      if (this.n != null)
      {
        b(this.n);
        this.n = null;
      }
      if (this.p != null)
      {
        this.p.cancel();
        this.p = null;
      }
      return;
    }
    finally
    {
    }
  }

  final void n()
  {
    if (this.c == null);
    while (true)
    {
      return;
      try
      {
        if (s)
        {
          b(this.c);
          return;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.co
 * JD-Core Version:    0.6.2
 */