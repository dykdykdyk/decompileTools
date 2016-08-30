package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

public final class ag
{
  public static final StringBuilder f = new StringBuilder();
  private long A = 0L;
  private boolean B = false;
  private boolean C = false;
  private long D = 0L;
  private long E = 0L;
  private int F = 0;
  private String G = "00:00:00:00:00:00";
  private String H = null;
  private bu I = null;
  private Timer J = null;
  private TimerTask K = null;
  private int L = 0;
  private ck M = null;
  private int[] N = { 0, 0, 0 };
  private String O = null;
  private String P = null;
  private long Q = 0L;
  private long R = 0L;
  private String S = null;
  private bb T = null;
  private AmapLoc U = null;
  private String V = null;
  private Timer W = null;
  private TimerTask X = null;
  private String Y = null;
  private int Z = 0;
  JSONObject a = null;
  private int aa = 0;
  private boolean ab = true;
  private boolean ac = true;
  private long ad = 0L;
  AmapLoc b = null;
  ce c = null;
  public boolean d = false;
  bq e = null;
  al g;
  int h = -1;
  boolean i = false;
  AmapLoc j = null;
  Object k = new Object();
  public boolean l = false;
  int m = 12;
  boolean n = true;
  aj o = new aj(this);
  private Context p = null;
  private ConnectivityManager q = null;
  private be r = null;
  private bc s;
  private ArrayList<ScanResult> t = new ArrayList();
  private ArrayList<ScanResult> u = new ArrayList();
  private HashMap<String, ArrayList<ScanResult>> v = new HashMap();
  private ak w = new ak(this, (byte)0);
  private WifiInfo x = null;
  private long y = 0L;
  private long z = 0L;

  public static AmapLoc a(AmapLoc paramAmapLoc)
  {
    return av.a().a(paramAmapLoc);
  }

  private AmapLoc a(String paramString1, String paramString2)
  {
    int i2 = 0;
    if (!bv.i())
      return null;
    if ((paramString1 != null) && (paramString1.equals(this.V)) && (this.U != null))
      return this.U;
    u();
    ArrayList localArrayList = bm.a().b();
    while (true)
    {
      try
      {
        Object localObject1;
        int i1;
        if (ba.b())
        {
          localObject1 = ba.a(paramString1);
          if (localObject1 != null)
          {
            i3 = ((ArrayList)localObject1).size();
            i1 = 0;
            if (i1 < i3)
            {
              Object localObject2 = (String)((ArrayList)localObject1).get(i1);
              localObject2 = a(paramString1, paramString2, null, ((String)localObject2).substring(((String)localObject2).lastIndexOf(File.separator) + 1, ((String)localObject2).length()));
              if (!by.a((AmapLoc)localObject2))
                break label218;
              this.V = paramString1;
              this.U = ((AmapLoc)localObject2);
              return localObject2;
            }
          }
        }
        int i3 = localArrayList.size();
        if (i3 != 0)
        {
          i1 = i2;
          if (i1 < i3)
          {
            localObject1 = a(paramString1, paramString2, null, ((bl)localArrayList.get(i1)).a);
            if (by.a((AmapLoc)localObject1))
            {
              this.V = paramString1;
              this.U = ((AmapLoc)localObject1);
              return localObject1;
            }
            i1 += 1;
            continue;
          }
        }
      }
      catch (Throwable paramString1)
      {
      }
      return null;
      label218: i1 += 1;
    }
  }

  private AmapLoc a(String paramString1, String paramString2, double[] paramArrayOfDouble, String paramString3)
  {
    if (!by.k());
    while (true)
    {
      return null;
      if (TextUtils.isEmpty(paramString3))
      {
        paramArrayOfDouble = new double[2];
        if (!by.a(this.b))
          break label96;
        paramArrayOfDouble[0] = this.b.i();
        paramArrayOfDouble[1] = this.b.h();
      }
      while ((paramArrayOfDouble[0] != 0.0D) && (paramArrayOfDouble[1] != 0.0D))
      {
        by.b();
        return ba.a(paramArrayOfDouble, paramString3, paramString1, paramString2, new int[] { this.aa, this.Z });
        label96: if (by.a(this.j))
        {
          paramArrayOfDouble[0] = this.j.i();
          paramArrayOfDouble[1] = this.j.h();
        }
        else
        {
          paramArrayOfDouble[0] = 0.0D;
          paramArrayOfDouble[1] = 0.0D;
        }
      }
    }
  }

  private static String a(int paramInt1, int paramInt2)
    throws Exception
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("e", 1);
    localJSONObject.put("d", paramInt1);
    localJSONObject.put("u", paramInt2);
    return localJSONObject.toString();
  }

  private static void a(StringBuilder paramStringBuilder)
  {
    int i1 = 0;
    while (i1 < 26)
    {
      String str = new String[] { " phnum=\"\"", " nettype=\"\"", " nettype=\"UNKWN\"", " inftype=\"\"", "<macs><![CDATA[]]></macs>", "<nb></nb>", "<mmac><![CDATA[]]></mmac>", " gtype=\"0\"", " gmock=\"0\"", " glong=\"0.0\"", " glat=\"0.0\"", " precision=\"0.0\"", " glong=\"0\"", " glat=\"0\"", " precision=\"0\"", "<smac>null</smac>", "<smac>00:00:00:00:00:00</smac>", "<imei>000000000000000</imei>", "<imsi>000000000000000</imsi>", "<mcc>000</mcc>", "<mcc>0</mcc>", "<lac>0</lac>", "<cellid>0</cellid>", "<key></key>", "<poiid></poiid>", "<poiid>null</poiid>" }[i1];
      while (paramStringBuilder.indexOf(str) != -1)
      {
        int i2 = paramStringBuilder.indexOf(str);
        paramStringBuilder.delete(i2, str.length() + i2);
      }
      i1 += 1;
    }
    while (paramStringBuilder.indexOf("*<") != -1)
      paramStringBuilder.deleteCharAt(paramStringBuilder.indexOf("*<"));
  }

  private static boolean a(int paramInt)
  {
    int i1 = 20;
    try
    {
      paramInt = WifiManager.calculateSignalLevel(paramInt, 20);
      return paramInt > 0;
    }
    catch (ArithmeticException localArithmeticException)
    {
      while (true)
        paramInt = i1;
    }
  }

  private static boolean a(WifiInfo paramWifiInfo)
  {
    if ((paramWifiInfo == null) || (TextUtils.isEmpty(paramWifiInfo.getBSSID())));
    while ((paramWifiInfo.getSSID() == null) || (paramWifiInfo.getBSSID().equals("00:00:00:00:00:00")) || (paramWifiInfo.getBSSID().contains(" :")) || (TextUtils.isEmpty(paramWifiInfo.getSSID())))
      return false;
    return true;
  }

  static void f()
  {
    dp.e = "";
    dp.f = "";
    dp.h = "";
  }

  // ERROR //
  private StringBuilder i()
  {
    // Byte code:
    //   0: new 89	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   7: astore 15
    //   9: getstatic 561	com/loc/dp:i	Ljava/lang/String;
    //   12: astore 16
    //   14: ldc_w 563
    //   17: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   20: ldc_w 563
    //   23: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   26: ldc_w 531
    //   29: putstatic 569	com/loc/dp:d	Ljava/lang/String;
    //   32: sipush -32768
    //   35: sipush 32767
    //   38: invokestatic 571	com/loc/by:a	(II)I
    //   41: istore_3
    //   42: ldc_w 531
    //   45: astore 9
    //   47: ldc_w 531
    //   50: astore 8
    //   52: ldc_w 531
    //   55: astore 13
    //   57: getstatic 535	com/loc/dp:e	Ljava/lang/String;
    //   60: astore 11
    //   62: getstatic 537	com/loc/dp:f	Ljava/lang/String;
    //   65: astore 10
    //   67: aload_0
    //   68: getfield 203	com/loc/ag:ac	Z
    //   71: ifne +2296 -> 2367
    //   74: ldc_w 573
    //   77: astore 11
    //   79: ldc_w 575
    //   82: astore 10
    //   84: new 89	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   91: astore 17
    //   93: new 89	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   100: astore 18
    //   102: new 89	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   109: astore 19
    //   111: aload_0
    //   112: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   115: astore 7
    //   117: aload 7
    //   119: getfield 581	com/loc/bc:a	I
    //   122: istore 4
    //   124: aload 7
    //   126: getfield 584	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   129: astore 21
    //   131: aload 7
    //   133: getfield 586	com/loc/bc:b	Ljava/util/ArrayList;
    //   136: astore 20
    //   138: iload 4
    //   140: iconst_2
    //   141: if_icmpne +2218 -> 2359
    //   144: ldc_w 588
    //   147: astore 12
    //   149: aload 21
    //   151: ifnull +81 -> 232
    //   154: getstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   157: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   160: ifeq +812 -> 972
    //   163: ldc_w 563
    //   166: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   169: aload_0
    //   170: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   173: invokestatic 593	com/loc/eh:l	(Landroid/content/Context;)Ljava/lang/String;
    //   176: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   179: getstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   182: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   185: ifeq +9 -> 194
    //   188: ldc_w 563
    //   191: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   194: getstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   197: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   200: ifeq +808 -> 1008
    //   203: ldc_w 563
    //   206: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   209: aload 21
    //   211: invokevirtual 598	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   214: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   217: getstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   220: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   223: ifeq +9 -> 232
    //   226: ldc_w 563
    //   229: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   232: aconst_null
    //   233: astore 7
    //   235: aload_0
    //   236: getfield 100	com/loc/ag:q	Landroid/net/ConnectivityManager;
    //   239: invokevirtual 604	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   242: astore 14
    //   244: aload 14
    //   246: astore 7
    //   248: aload 7
    //   250: invokestatic 607	com/loc/by:a	(Landroid/net/NetworkInfo;)I
    //   253: iconst_m1
    //   254: if_icmpeq +796 -> 1050
    //   257: aload 21
    //   259: invokestatic 610	com/loc/by:b	(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    //   262: astore 8
    //   264: aload_0
    //   265: invokespecial 612	com/loc/ag:n	()Z
    //   268: ifeq +774 -> 1042
    //   271: aload_0
    //   272: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   275: invokestatic 614	com/loc/ag:a	(Landroid/net/wifi/WifiInfo;)Z
    //   278: ifeq +764 -> 1042
    //   281: ldc_w 616
    //   284: astore 7
    //   286: aload_0
    //   287: invokespecial 612	com/loc/ag:n	()Z
    //   290: ifne +2058 -> 2348
    //   293: aload_0
    //   294: invokespecial 526	com/loc/ag:l	()V
    //   297: aload 8
    //   299: astore 9
    //   301: aload 7
    //   303: astore 8
    //   305: aload_0
    //   306: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   309: ldc_w 618
    //   312: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   315: ifeq +770 -> 1085
    //   318: aload_0
    //   319: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   322: ldc_w 618
    //   325: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   328: astore 7
    //   330: aload 7
    //   332: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   335: ifeq +723 -> 1058
    //   338: aload_0
    //   339: aconst_null
    //   340: putfield 149	com/loc/ag:H	Ljava/lang/String;
    //   343: aload 15
    //   345: ldc_w 627
    //   348: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: pop
    //   352: aload 15
    //   354: ldc_w 629
    //   357: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   360: pop
    //   361: aload 15
    //   363: ldc_w 631
    //   366: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: pop
    //   370: aload 15
    //   372: aload 12
    //   374: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: pop
    //   378: aload 15
    //   380: ldc_w 633
    //   383: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: ldc_w 635
    //   389: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: pop
    //   393: ldc_w 635
    //   396: ldc_w 588
    //   399: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   402: ifeq +33 -> 435
    //   405: aload 15
    //   407: ldc_w 637
    //   410: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: astore 14
    //   415: aload_0
    //   416: getfield 137	com/loc/ag:C	Z
    //   419: ifeq +674 -> 1093
    //   422: ldc_w 588
    //   425: astore 7
    //   427: aload 14
    //   429: aload 7
    //   431: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: pop
    //   435: aload 15
    //   437: ldc_w 639
    //   440: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: ldc_w 635
    //   446: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: pop
    //   450: aload 15
    //   452: ldc_w 641
    //   455: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: ldc_w 635
    //   461: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: pop
    //   465: aload 15
    //   467: ldc_w 643
    //   470: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: ldc_w 635
    //   476: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: pop
    //   480: aload 15
    //   482: ldc_w 645
    //   485: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: aload 11
    //   490: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: pop
    //   494: aload 15
    //   496: ldc_w 647
    //   499: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   502: aload 10
    //   504: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   507: pop
    //   508: aload 15
    //   510: ldc_w 649
    //   513: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: aload 16
    //   518: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   521: pop
    //   522: aload 15
    //   524: ldc_w 651
    //   527: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: getstatic 539	com/loc/dp:h	Ljava/lang/String;
    //   533: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: pop
    //   537: aload 15
    //   539: ldc_w 653
    //   542: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: getstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   548: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   551: pop
    //   552: aload 15
    //   554: ldc_w 655
    //   557: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: getstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   563: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: pop
    //   567: aload 15
    //   569: ldc_w 657
    //   572: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: iload_3
    //   576: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   579: pop
    //   580: aload 15
    //   582: ldc_w 659
    //   585: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: aload_0
    //   589: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   592: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: pop
    //   596: aload 15
    //   598: ldc_w 661
    //   601: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   604: pop
    //   605: aload 15
    //   607: ldc_w 663
    //   610: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: invokestatic 665	com/loc/ag:r	()Ljava/lang/String;
    //   616: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   619: pop
    //   620: aload 15
    //   622: ldc_w 667
    //   625: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   628: aload_0
    //   629: getfield 149	com/loc/ag:H	Ljava/lang/String;
    //   632: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   635: pop
    //   636: aload 15
    //   638: ldc_w 669
    //   641: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   644: getstatic 569	com/loc/dp:d	Ljava/lang/String;
    //   647: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: pop
    //   651: aload 15
    //   653: ldc_w 671
    //   656: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   659: aload 9
    //   661: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: pop
    //   665: aload 15
    //   667: ldc_w 673
    //   670: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: aload 8
    //   675: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   678: ldc_w 675
    //   681: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: pop
    //   685: aload 13
    //   687: astore 7
    //   689: aload 20
    //   691: invokevirtual 677	java/util/ArrayList:isEmpty	()Z
    //   694: ifne +59 -> 753
    //   697: new 89	java/lang/StringBuilder
    //   700: dup
    //   701: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   704: astore 13
    //   706: iload 4
    //   708: tableswitch	default:+24 -> 732, 1:+393->1101, 2:+645->1353
    //   733: invokespecial 679	com/loc/ag:w	()V
    //   736: ldc_w 531
    //   739: astore 7
    //   741: aload 13
    //   743: iconst_0
    //   744: aload 13
    //   746: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   749: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   752: pop
    //   753: aload_0
    //   754: invokespecial 612	com/loc/ag:n	()Z
    //   757: ifeq +844 -> 1601
    //   760: aload_0
    //   761: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   764: invokestatic 614	com/loc/ag:a	(Landroid/net/wifi/WifiInfo;)Z
    //   767: ifeq +108 -> 875
    //   770: aload 19
    //   772: aload_0
    //   773: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   776: invokevirtual 515	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   779: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   782: ldc_w 390
    //   785: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   788: pop
    //   789: aload_0
    //   790: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   793: invokevirtual 682	android/net/wifi/WifiInfo:getRssi	()I
    //   796: istore_2
    //   797: iload_2
    //   798: bipush 128
    //   800: if_icmpge +788 -> 1588
    //   803: iconst_0
    //   804: istore_1
    //   805: aload 19
    //   807: iload_1
    //   808: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   811: ldc_w 390
    //   814: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   817: pop
    //   818: aload_0
    //   819: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   822: invokevirtual 518	android/net/wifi/WifiInfo:getSSID	()Ljava/lang/String;
    //   825: astore 13
    //   827: bipush 32
    //   829: istore_1
    //   830: aload_0
    //   831: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   834: invokevirtual 518	android/net/wifi/WifiInfo:getSSID	()Ljava/lang/String;
    //   837: ldc_w 408
    //   840: invokevirtual 412	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   843: arraylength
    //   844: istore_2
    //   845: iload_2
    //   846: istore_1
    //   847: iload_1
    //   848: bipush 32
    //   850: if_icmplt +8 -> 858
    //   853: ldc_w 684
    //   856: astore 13
    //   858: aload 19
    //   860: aload 13
    //   862: ldc_w 686
    //   865: ldc_w 688
    //   868: invokevirtual 692	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   871: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   874: pop
    //   875: aload_0
    //   876: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   879: astore 13
    //   881: aload 13
    //   883: invokeinterface 695 1 0
    //   888: bipush 15
    //   890: invokestatic 700	java/lang/Math:min	(II)I
    //   893: istore_2
    //   894: iconst_0
    //   895: istore_1
    //   896: iload_1
    //   897: iload_2
    //   898: if_icmpge +707 -> 1605
    //   901: aload 13
    //   903: iload_1
    //   904: invokeinterface 701 2 0
    //   909: checkcast 703	android/net/wifi/ScanResult
    //   912: astore 14
    //   914: aload 18
    //   916: aload 14
    //   918: getfield 706	android/net/wifi/ScanResult:BSSID	Ljava/lang/String;
    //   921: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   924: ldc_w 390
    //   927: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   930: pop
    //   931: aload 18
    //   933: aload 14
    //   935: getfield 709	android/net/wifi/ScanResult:level	I
    //   938: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   941: ldc_w 390
    //   944: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   947: pop
    //   948: aload 18
    //   950: aload 14
    //   952: getfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   955: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   958: ldc_w 686
    //   961: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   964: pop
    //   965: iload_1
    //   966: iconst_1
    //   967: iadd
    //   968: istore_1
    //   969: goto -73 -> 896
    //   972: ldc_w 563
    //   975: getstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   978: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   981: ifeq -802 -> 179
    //   984: ldc_w 563
    //   987: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   990: aload_0
    //   991: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   994: invokestatic 593	com/loc/eh:l	(Landroid/content/Context;)Ljava/lang/String;
    //   997: putstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   1000: goto -821 -> 179
    //   1003: astore 7
    //   1005: goto -826 -> 179
    //   1008: ldc_w 563
    //   1011: getstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   1014: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1017: ifeq -800 -> 217
    //   1020: ldc_w 563
    //   1023: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   1026: aload 21
    //   1028: invokevirtual 598	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   1031: putstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   1034: goto -817 -> 217
    //   1037: astore 7
    //   1039: goto -822 -> 217
    //   1042: ldc_w 588
    //   1045: astore 7
    //   1047: goto -761 -> 286
    //   1050: aload_0
    //   1051: aconst_null
    //   1052: putfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   1055: goto -750 -> 305
    //   1058: aload 7
    //   1060: invokevirtual 280	java/lang/String:length	()I
    //   1063: bipush 32
    //   1065: if_icmple +11 -> 1076
    //   1068: aload_0
    //   1069: aconst_null
    //   1070: putfield 149	com/loc/ag:H	Ljava/lang/String;
    //   1073: goto -730 -> 343
    //   1076: aload_0
    //   1077: aload 7
    //   1079: putfield 149	com/loc/ag:H	Ljava/lang/String;
    //   1082: goto -739 -> 343
    //   1085: aload_0
    //   1086: aconst_null
    //   1087: putfield 149	com/loc/ag:H	Ljava/lang/String;
    //   1090: goto -747 -> 343
    //   1093: ldc_w 635
    //   1096: astore 7
    //   1098: goto -671 -> 427
    //   1101: aload_0
    //   1102: invokespecial 679	com/loc/ag:w	()V
    //   1105: aload 20
    //   1107: iconst_0
    //   1108: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1111: checkcast 714	com/loc/bb
    //   1114: astore 7
    //   1116: aload 13
    //   1118: iconst_0
    //   1119: aload 13
    //   1121: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   1124: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1127: pop
    //   1128: aload 13
    //   1130: ldc_w 716
    //   1133: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1136: aload 7
    //   1138: getfield 717	com/loc/bb:a	Ljava/lang/String;
    //   1141: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1144: ldc_w 719
    //   1147: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1150: pop
    //   1151: aload 13
    //   1153: ldc_w 721
    //   1156: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1159: aload 7
    //   1161: getfield 722	com/loc/bb:b	Ljava/lang/String;
    //   1164: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1167: ldc_w 724
    //   1170: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1173: pop
    //   1174: aload 13
    //   1176: ldc_w 726
    //   1179: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1182: aload 7
    //   1184: getfield 728	com/loc/bb:c	I
    //   1187: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1190: ldc_w 730
    //   1193: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1196: pop
    //   1197: aload 13
    //   1199: ldc_w 732
    //   1202: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1205: aload 7
    //   1207: getfield 734	com/loc/bb:d	I
    //   1210: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1213: pop
    //   1214: aload 13
    //   1216: ldc_w 736
    //   1219: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1222: pop
    //   1223: aload 13
    //   1225: ldc_w 738
    //   1228: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1231: aload 7
    //   1233: getfield 740	com/loc/bb:j	I
    //   1236: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1239: pop
    //   1240: aload 13
    //   1242: ldc_w 742
    //   1245: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1248: pop
    //   1249: aload 13
    //   1251: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1254: astore 7
    //   1256: iconst_1
    //   1257: istore_1
    //   1258: iload_1
    //   1259: aload 20
    //   1261: invokevirtual 264	java/util/ArrayList:size	()I
    //   1264: if_icmpge +86 -> 1350
    //   1267: aload 20
    //   1269: iload_1
    //   1270: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1273: checkcast 714	com/loc/bb
    //   1276: astore 14
    //   1278: aload 17
    //   1280: aload 14
    //   1282: getfield 728	com/loc/bb:c	I
    //   1285: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1288: ldc_w 390
    //   1291: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1294: pop
    //   1295: aload 17
    //   1297: aload 14
    //   1299: getfield 734	com/loc/bb:d	I
    //   1302: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1305: ldc_w 390
    //   1308: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1311: pop
    //   1312: aload 17
    //   1314: aload 14
    //   1316: getfield 740	com/loc/bb:j	I
    //   1319: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1322: pop
    //   1323: iload_1
    //   1324: aload 20
    //   1326: invokevirtual 264	java/util/ArrayList:size	()I
    //   1329: iconst_1
    //   1330: isub
    //   1331: if_icmpge +12 -> 1343
    //   1334: aload 17
    //   1336: ldc_w 686
    //   1339: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1342: pop
    //   1343: iload_1
    //   1344: iconst_1
    //   1345: iadd
    //   1346: istore_1
    //   1347: goto -89 -> 1258
    //   1350: goto -609 -> 741
    //   1353: aload 20
    //   1355: iconst_0
    //   1356: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1359: checkcast 714	com/loc/bb
    //   1362: astore 7
    //   1364: aload 13
    //   1366: iconst_0
    //   1367: aload 13
    //   1369: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   1372: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1375: pop
    //   1376: aload 13
    //   1378: ldc_w 716
    //   1381: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1384: aload 7
    //   1386: getfield 717	com/loc/bb:a	Ljava/lang/String;
    //   1389: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1392: ldc_w 719
    //   1395: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1398: pop
    //   1399: aload 13
    //   1401: ldc_w 744
    //   1404: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1407: aload 7
    //   1409: getfield 746	com/loc/bb:g	I
    //   1412: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1415: ldc_w 748
    //   1418: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1421: pop
    //   1422: aload 13
    //   1424: ldc_w 750
    //   1427: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1430: aload 7
    //   1432: getfield 751	com/loc/bb:h	I
    //   1435: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1438: ldc_w 753
    //   1441: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1444: pop
    //   1445: aload 13
    //   1447: ldc_w 755
    //   1450: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: aload 7
    //   1455: getfield 757	com/loc/bb:i	I
    //   1458: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1461: ldc_w 759
    //   1464: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1467: pop
    //   1468: aload 7
    //   1470: getfield 761	com/loc/bb:f	I
    //   1473: ifle +108 -> 1581
    //   1476: aload 7
    //   1478: getfield 763	com/loc/bb:e	I
    //   1481: ifle +100 -> 1581
    //   1484: aload_0
    //   1485: aload 7
    //   1487: getfield 761	com/loc/bb:f	I
    //   1490: putfield 195	com/loc/ag:Z	I
    //   1493: aload_0
    //   1494: aload 7
    //   1496: getfield 763	com/loc/bb:e	I
    //   1499: putfield 197	com/loc/ag:aa	I
    //   1502: aload 13
    //   1504: ldc_w 765
    //   1507: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1510: aload 7
    //   1512: getfield 761	com/loc/bb:f	I
    //   1515: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1518: ldc_w 767
    //   1521: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1524: pop
    //   1525: aload 13
    //   1527: ldc_w 769
    //   1530: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1533: aload 7
    //   1535: getfield 763	com/loc/bb:e	I
    //   1538: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1541: ldc_w 771
    //   1544: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1547: pop
    //   1548: aload 13
    //   1550: ldc_w 738
    //   1553: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1556: aload 7
    //   1558: getfield 740	com/loc/bb:j	I
    //   1561: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1564: ldc_w 742
    //   1567: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1570: pop
    //   1571: aload 13
    //   1573: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1576: astore 7
    //   1578: goto -837 -> 741
    //   1581: aload_0
    //   1582: invokespecial 679	com/loc/ag:w	()V
    //   1585: goto -37 -> 1548
    //   1588: iload_2
    //   1589: istore_1
    //   1590: iload_2
    //   1591: bipush 127
    //   1593: if_icmple -788 -> 805
    //   1596: iconst_0
    //   1597: istore_1
    //   1598: goto -793 -> 805
    //   1601: aload_0
    //   1602: invokespecial 526	com/loc/ag:l	()V
    //   1605: aload 15
    //   1607: aload 7
    //   1609: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1612: pop
    //   1613: aload 15
    //   1615: getstatic 777	java/util/Locale:US	Ljava/util/Locale;
    //   1618: ldc_w 779
    //   1621: iconst_1
    //   1622: anewarray 4	java/lang/Object
    //   1625: dup
    //   1626: iconst_0
    //   1627: aload 17
    //   1629: aastore
    //   1630: invokestatic 783	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1633: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1636: pop
    //   1637: aload 18
    //   1639: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   1642: ifne +566 -> 2208
    //   1645: aload 18
    //   1647: aload 19
    //   1649: invokevirtual 786	java/lang/StringBuilder:append	(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    //   1652: pop
    //   1653: aload 15
    //   1655: ldc_w 788
    //   1658: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1661: pop
    //   1662: aload 15
    //   1664: getstatic 777	java/util/Locale:US	Ljava/util/Locale;
    //   1667: ldc_w 790
    //   1670: iconst_1
    //   1671: anewarray 4	java/lang/Object
    //   1674: dup
    //   1675: iconst_0
    //   1676: aload 19
    //   1678: aastore
    //   1679: invokestatic 783	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1682: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1685: pop
    //   1686: aload 15
    //   1688: ldc_w 792
    //   1691: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1694: pop
    //   1695: aload 15
    //   1697: ldc_w 794
    //   1700: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1703: pop
    //   1704: aload 15
    //   1706: getstatic 777	java/util/Locale:US	Ljava/util/Locale;
    //   1709: ldc_w 790
    //   1712: iconst_1
    //   1713: anewarray 4	java/lang/Object
    //   1716: dup
    //   1717: iconst_0
    //   1718: aload 19
    //   1720: aastore
    //   1721: invokestatic 783	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1724: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1727: pop
    //   1728: aload 15
    //   1730: ldc_w 796
    //   1733: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1736: pop
    //   1737: aload 15
    //   1739: invokestatic 798	com/loc/ag:a	(Ljava/lang/StringBuilder;)V
    //   1742: iconst_1
    //   1743: istore 6
    //   1745: iload 6
    //   1747: istore 5
    //   1749: aload_0
    //   1750: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   1753: ldc_w 800
    //   1756: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1759: ifeq +15 -> 1774
    //   1762: aload_0
    //   1763: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   1766: ldc_w 800
    //   1769: invokevirtual 804	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   1772: istore 5
    //   1774: iload 5
    //   1776: ifne +519 -> 2295
    //   1779: aload_0
    //   1780: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1783: iconst_2
    //   1784: putfield 808	com/loc/bu:b	S
    //   1787: aload_0
    //   1788: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   1791: ldc_w 810
    //   1794: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   1797: ifeq +30 -> 1827
    //   1800: aload_0
    //   1801: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   1804: ldc_w 810
    //   1807: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1810: ldc_w 588
    //   1813: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1816: ifeq +11 -> 1827
    //   1819: aload_0
    //   1820: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1823: iconst_1
    //   1824: putfield 808	com/loc/bu:b	S
    //   1827: aload_0
    //   1828: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1831: aload 11
    //   1833: putfield 811	com/loc/bu:c	Ljava/lang/String;
    //   1836: aload_0
    //   1837: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1840: aload 10
    //   1842: putfield 812	com/loc/bu:d	Ljava/lang/String;
    //   1845: aload_0
    //   1846: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1849: invokestatic 814	com/loc/by:e	()Ljava/lang/String;
    //   1852: putfield 815	com/loc/bu:f	Ljava/lang/String;
    //   1855: aload_0
    //   1856: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1859: new 89	java/lang/StringBuilder
    //   1862: dup
    //   1863: ldc_w 817
    //   1866: invokespecial 820	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1869: invokestatic 822	com/loc/by:f	()Ljava/lang/String;
    //   1872: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1875: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1878: putfield 824	com/loc/bu:g	Ljava/lang/String;
    //   1881: getstatic 826	com/loc/dp:k	Ljava/lang/String;
    //   1884: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1887: ifeq +13 -> 1900
    //   1890: aload_0
    //   1891: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   1894: invokestatic 828	com/loc/by:b	(Landroid/content/Context;)Ljava/lang/String;
    //   1897: putstatic 826	com/loc/dp:k	Ljava/lang/String;
    //   1900: aload_0
    //   1901: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1904: getstatic 826	com/loc/dp:k	Ljava/lang/String;
    //   1907: putfield 829	com/loc/bu:h	Ljava/lang/String;
    //   1910: aload_0
    //   1911: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1914: aload 12
    //   1916: putfield 830	com/loc/bu:i	Ljava/lang/String;
    //   1919: aload_0
    //   1920: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1923: ldc_w 635
    //   1926: putfield 832	com/loc/bu:j	Ljava/lang/String;
    //   1929: aload_0
    //   1930: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1933: astore 11
    //   1935: aload_0
    //   1936: getfield 137	com/loc/ag:C	Z
    //   1939: ifeq +367 -> 2306
    //   1942: ldc_w 588
    //   1945: astore 10
    //   1947: aload 11
    //   1949: aload 10
    //   1951: putfield 833	com/loc/bu:k	Ljava/lang/String;
    //   1954: aload_0
    //   1955: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1958: ldc_w 635
    //   1961: putfield 835	com/loc/bu:l	Ljava/lang/String;
    //   1964: aload_0
    //   1965: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1968: ldc_w 635
    //   1971: putfield 837	com/loc/bu:m	Ljava/lang/String;
    //   1974: aload_0
    //   1975: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1978: ldc_w 635
    //   1981: putfield 839	com/loc/bu:n	Ljava/lang/String;
    //   1984: aload_0
    //   1985: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1988: aload 16
    //   1990: putfield 841	com/loc/bu:o	Ljava/lang/String;
    //   1993: aload_0
    //   1994: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   1997: getstatic 565	com/loc/dp:b	Ljava/lang/String;
    //   2000: putfield 843	com/loc/bu:p	Ljava/lang/String;
    //   2003: aload_0
    //   2004: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2007: getstatic 567	com/loc/dp:c	Ljava/lang/String;
    //   2010: putfield 845	com/loc/bu:q	Ljava/lang/String;
    //   2013: aload_0
    //   2014: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2017: iload_3
    //   2018: invokestatic 376	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   2021: putfield 847	com/loc/bu:s	Ljava/lang/String;
    //   2024: aload_0
    //   2025: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2028: aload_0
    //   2029: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   2032: putfield 849	com/loc/bu:t	Ljava/lang/String;
    //   2035: aload_0
    //   2036: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2039: ldc_w 851
    //   2042: putfield 853	com/loc/bu:v	Ljava/lang/String;
    //   2045: aload_0
    //   2046: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2049: invokestatic 665	com/loc/ag:r	()Ljava/lang/String;
    //   2052: putfield 855	com/loc/bu:w	Ljava/lang/String;
    //   2055: aload_0
    //   2056: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2059: aload_0
    //   2060: getfield 149	com/loc/ag:H	Ljava/lang/String;
    //   2063: putfield 857	com/loc/bu:F	Ljava/lang/String;
    //   2066: aload_0
    //   2067: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2070: getstatic 569	com/loc/dp:d	Ljava/lang/String;
    //   2073: putfield 859	com/loc/bu:u	Ljava/lang/String;
    //   2076: aload_0
    //   2077: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2080: aload 9
    //   2082: putfield 861	com/loc/bu:x	Ljava/lang/String;
    //   2085: aload_0
    //   2086: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2089: aload 8
    //   2091: putfield 863	com/loc/bu:y	Ljava/lang/String;
    //   2094: aload_0
    //   2095: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2098: iload 4
    //   2100: invokestatic 376	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   2103: putfield 865	com/loc/bu:z	Ljava/lang/String;
    //   2106: aload_0
    //   2107: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2110: aload 7
    //   2112: putfield 867	com/loc/bu:A	Ljava/lang/String;
    //   2115: aload_0
    //   2116: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2119: aload 17
    //   2121: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2124: putfield 869	com/loc/bu:B	Ljava/lang/String;
    //   2127: aload_0
    //   2128: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2131: aload 18
    //   2133: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2136: putfield 871	com/loc/bu:D	Ljava/lang/String;
    //   2139: aload_0
    //   2140: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2143: invokestatic 314	com/loc/by:b	()J
    //   2146: aload_0
    //   2147: getfield 141	com/loc/ag:E	J
    //   2150: lsub
    //   2151: invokestatic 874	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   2154: putfield 876	com/loc/bu:E	Ljava/lang/String;
    //   2157: aload_0
    //   2158: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2161: aload 19
    //   2163: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2166: putfield 878	com/loc/bu:C	Ljava/lang/String;
    //   2169: aload 17
    //   2171: iconst_0
    //   2172: aload 17
    //   2174: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   2177: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   2180: pop
    //   2181: aload 18
    //   2183: iconst_0
    //   2184: aload 18
    //   2186: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   2189: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   2192: pop
    //   2193: aload 19
    //   2195: iconst_0
    //   2196: aload 19
    //   2198: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   2201: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   2204: pop
    //   2205: aload 15
    //   2207: areturn
    //   2208: aload 18
    //   2210: aload 18
    //   2212: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   2215: iconst_1
    //   2216: isub
    //   2217: invokevirtual 405	java/lang/StringBuilder:deleteCharAt	(I)Ljava/lang/StringBuilder;
    //   2220: pop
    //   2221: aload 15
    //   2223: ldc_w 788
    //   2226: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2229: pop
    //   2230: aload 15
    //   2232: getstatic 777	java/util/Locale:US	Ljava/util/Locale;
    //   2235: ldc_w 790
    //   2238: iconst_1
    //   2239: anewarray 4	java/lang/Object
    //   2242: dup
    //   2243: iconst_0
    //   2244: aload 18
    //   2246: aastore
    //   2247: invokestatic 783	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   2250: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2253: pop
    //   2254: aload 15
    //   2256: ldc_w 792
    //   2259: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2262: pop
    //   2263: aload 15
    //   2265: ldc_w 880
    //   2268: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2271: invokestatic 314	com/loc/by:b	()J
    //   2274: aload_0
    //   2275: getfield 141	com/loc/ag:E	J
    //   2278: lsub
    //   2279: invokevirtual 883	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   2282: pop
    //   2283: aload 15
    //   2285: ldc_w 885
    //   2288: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2291: pop
    //   2292: goto -597 -> 1695
    //   2295: aload_0
    //   2296: getfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   2299: iconst_0
    //   2300: putfield 808	com/loc/bu:b	S
    //   2303: goto -516 -> 1787
    //   2306: ldc_w 635
    //   2309: astore 10
    //   2311: goto -364 -> 1947
    //   2314: astore 13
    //   2316: goto -489 -> 1827
    //   2319: astore 13
    //   2321: iload 6
    //   2323: istore 5
    //   2325: goto -551 -> 1774
    //   2328: astore 14
    //   2330: goto -1483 -> 847
    //   2333: astore 14
    //   2335: goto -2087 -> 248
    //   2338: astore 7
    //   2340: goto -2123 -> 217
    //   2343: astore 7
    //   2345: goto -2166 -> 179
    //   2348: aload 8
    //   2350: astore 9
    //   2352: aload 7
    //   2354: astore 8
    //   2356: goto -2051 -> 305
    //   2359: ldc_w 635
    //   2362: astore 12
    //   2364: goto -2215 -> 149
    //   2367: goto -2283 -> 84
    //   2370: astore 7
    //   2372: goto -2029 -> 343
    //
    // Exception table:
    //   from	to	target	type
    //   990	1000	1003	java/lang/Exception
    //   1026	1034	1037	java/lang/Exception
    //   1800	1827	2314	java/lang/Exception
    //   1762	1774	2319	java/lang/Exception
    //   830	845	2328	java/lang/Exception
    //   235	244	2333	java/lang/Exception
    //   209	217	2338	java/lang/Exception
    //   169	179	2343	java/lang/Exception
    //   318	343	2370	java/lang/Exception
    //   1058	1073	2370	java/lang/Exception
    //   1076	1082	2370	java/lang/Exception
  }

  private void j()
  {
    try
    {
      ArrayList localArrayList1 = this.t;
      ArrayList localArrayList2 = this.u;
      localArrayList1.clear();
      synchronized (this.k)
      {
        localArrayList1.addAll(localArrayList2);
        return;
      }
    }
    finally
    {
    }
  }

  // ERROR //
  private void k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   6: ifnull +17 -> 23
    //   9: aload_0
    //   10: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   13: invokevirtual 677	java/util/ArrayList:isEmpty	()Z
    //   16: istore 4
    //   18: iload 4
    //   20: ifeq +6 -> 26
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: invokestatic 314	com/loc/by:b	()J
    //   29: aload_0
    //   30: getfield 141	com/loc/ag:E	J
    //   33: lsub
    //   34: ldc2_w 896
    //   37: lcmp
    //   38: ifle +7 -> 45
    //   41: aload_0
    //   42: invokespecial 526	com/loc/ag:l	()V
    //   45: invokestatic 899	com/loc/by:g	()Z
    //   48: istore 4
    //   50: aload_0
    //   51: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   54: ldc_w 901
    //   57: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   60: istore 5
    //   62: iload 5
    //   64: ifeq +219 -> 283
    //   67: aload_0
    //   68: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   71: ldc_w 901
    //   74: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   77: ldc_w 588
    //   80: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   83: istore 5
    //   85: iload 5
    //   87: ifeq +165 -> 252
    //   90: iconst_1
    //   91: istore 4
    //   93: new 903	java/util/Hashtable
    //   96: dup
    //   97: invokespecial 904	java/util/Hashtable:<init>	()V
    //   100: astore 6
    //   102: aload_0
    //   103: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   106: astore 7
    //   108: aload 7
    //   110: invokeinterface 695 1 0
    //   115: istore_3
    //   116: iconst_0
    //   117: istore_1
    //   118: iload_1
    //   119: iload_3
    //   120: if_icmpge +204 -> 324
    //   123: aload 7
    //   125: iload_1
    //   126: invokeinterface 701 2 0
    //   131: checkcast 703	android/net/wifi/ScanResult
    //   134: astore 8
    //   136: aload 8
    //   138: invokestatic 907	com/loc/by:a	(Landroid/net/wifi/ScanResult;)Z
    //   141: ifeq +104 -> 245
    //   144: iload_3
    //   145: bipush 20
    //   147: if_icmple +14 -> 161
    //   150: aload 8
    //   152: getfield 709	android/net/wifi/ScanResult:level	I
    //   155: invokestatic 909	com/loc/ag:a	(I)Z
    //   158: ifeq +87 -> 245
    //   161: aload 8
    //   163: getfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   166: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifne +144 -> 313
    //   172: iload 4
    //   174: ifeq +120 -> 294
    //   177: aload 8
    //   179: aload 8
    //   181: getfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   184: ldc_w 686
    //   187: ldc_w 688
    //   190: invokevirtual 692	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   193: putfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   196: aload 8
    //   198: getfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   201: ldc_w 408
    //   204: invokevirtual 412	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   207: arraylength
    //   208: istore_2
    //   209: iload_2
    //   210: bipush 32
    //   212: if_icmplt +12 -> 224
    //   215: aload 8
    //   217: iload_1
    //   218: invokestatic 376	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   221: putfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   224: aload 6
    //   226: aload 8
    //   228: getfield 709	android/net/wifi/ScanResult:level	I
    //   231: bipush 30
    //   233: imul
    //   234: iload_1
    //   235: iadd
    //   236: invokestatic 912	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   239: aload 8
    //   241: invokevirtual 915	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   244: pop
    //   245: iload_1
    //   246: iconst_1
    //   247: iadd
    //   248: istore_1
    //   249: goto -131 -> 118
    //   252: aload_0
    //   253: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   256: ldc_w 901
    //   259: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   262: ldc_w 635
    //   265: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   268: istore 5
    //   270: iload 5
    //   272: ifeq +6 -> 278
    //   275: iconst_0
    //   276: istore 4
    //   278: goto -185 -> 93
    //   281: astore 6
    //   283: goto -190 -> 93
    //   286: astore 9
    //   288: bipush 32
    //   290: istore_2
    //   291: goto -82 -> 209
    //   294: aload 8
    //   296: iload_1
    //   297: invokestatic 376	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   300: putfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   303: goto -79 -> 224
    //   306: astore 6
    //   308: aload_0
    //   309: monitorexit
    //   310: aload 6
    //   312: athrow
    //   313: aload 8
    //   315: ldc_w 684
    //   318: putfield 712	android/net/wifi/ScanResult:SSID	Ljava/lang/String;
    //   321: goto -97 -> 224
    //   324: new 917	java/util/TreeMap
    //   327: dup
    //   328: invokestatic 923	java/util/Collections:reverseOrder	()Ljava/util/Comparator;
    //   331: invokespecial 926	java/util/TreeMap:<init>	(Ljava/util/Comparator;)V
    //   334: astore 8
    //   336: aload 8
    //   338: aload 6
    //   340: invokevirtual 930	java/util/TreeMap:putAll	(Ljava/util/Map;)V
    //   343: aload 7
    //   345: invokeinterface 888 1 0
    //   350: aload 8
    //   352: invokevirtual 934	java/util/TreeMap:keySet	()Ljava/util/Set;
    //   355: invokeinterface 940 1 0
    //   360: astore 9
    //   362: aload 9
    //   364: invokeinterface 945 1 0
    //   369: ifeq +26 -> 395
    //   372: aload 7
    //   374: aload 8
    //   376: aload 9
    //   378: invokeinterface 949 1 0
    //   383: invokevirtual 952	java/util/TreeMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   386: invokeinterface 955 2 0
    //   391: pop
    //   392: goto -30 -> 362
    //   395: aload 6
    //   397: invokevirtual 956	java/util/Hashtable:clear	()V
    //   400: aload 8
    //   402: invokevirtual 957	java/util/TreeMap:clear	()V
    //   405: goto -382 -> 23
    //
    // Exception table:
    //   from	to	target	type
    //   67	85	281	java/lang/Exception
    //   252	270	281	java/lang/Exception
    //   196	209	286	java/lang/Exception
    //   2	18	306	finally
    //   26	45	306	finally
    //   45	62	306	finally
    //   67	85	306	finally
    //   93	116	306	finally
    //   123	144	306	finally
    //   150	161	306	finally
    //   161	172	306	finally
    //   177	196	306	finally
    //   196	209	306	finally
    //   215	224	306	finally
    //   224	245	306	finally
    //   252	270	306	finally
    //   294	303	306	finally
    //   313	321	306	finally
    //   324	362	306	finally
    //   362	392	306	finally
    //   395	405	306	finally
  }

  private void l()
  {
    this.E = 0L;
    this.t.clear();
    this.x = null;
    synchronized (this.k)
    {
      this.u.clear();
      this.v.clear();
      return;
    }
  }

  // ERROR //
  private void m()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokespecial 612	com/loc/ag:n	()Z
    //   6: ifne +4 -> 10
    //   9: return
    //   10: invokestatic 963	com/loc/by:c	()I
    //   13: bipush 18
    //   15: if_icmpge +113 -> 128
    //   18: invokestatic 963	com/loc/by:c	()I
    //   21: iconst_3
    //   22: if_icmple +106 -> 128
    //   25: aload_0
    //   26: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   29: ldc_w 965
    //   32: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   35: ifeq +93 -> 128
    //   38: ldc_w 588
    //   41: aload_0
    //   42: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   45: ldc_w 965
    //   48: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   51: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   54: istore_1
    //   55: iload_1
    //   56: ifeq +91 -> 147
    //   59: aload_0
    //   60: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   63: invokevirtual 968	com/loc/be:b	()Z
    //   66: istore_2
    //   67: iload_2
    //   68: istore_1
    //   69: iload_2
    //   70: ifeq +12 -> 82
    //   73: aload_0
    //   74: invokestatic 314	com/loc/by:b	()J
    //   77: putfield 139	com/loc/ag:D	J
    //   80: iload_2
    //   81: istore_1
    //   82: iload_1
    //   83: ifne -74 -> 9
    //   86: aload_0
    //   87: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   90: astore 4
    //   92: iload_3
    //   93: istore_1
    //   94: aload 4
    //   96: getfield 971	com/loc/be:a	Landroid/net/wifi/WifiManager;
    //   99: ifnull +12 -> 111
    //   102: aload 4
    //   104: getfield 971	com/loc/be:a	Landroid/net/wifi/WifiManager;
    //   107: invokevirtual 974	android/net/wifi/WifiManager:startScan	()Z
    //   110: istore_1
    //   111: iload_1
    //   112: ifeq -103 -> 9
    //   115: aload_0
    //   116: invokestatic 314	com/loc/by:b	()J
    //   119: putfield 139	com/loc/ag:D	J
    //   122: return
    //   123: astore 4
    //   125: return
    //   126: astore 4
    //   128: iconst_0
    //   129: istore_1
    //   130: goto -75 -> 55
    //   133: astore 4
    //   135: iconst_0
    //   136: istore_1
    //   137: goto -55 -> 82
    //   140: astore 4
    //   142: iload_2
    //   143: istore_1
    //   144: goto -62 -> 82
    //   147: iconst_0
    //   148: istore_1
    //   149: goto -67 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   86	92	123	java/lang/Exception
    //   94	111	123	java/lang/Exception
    //   115	122	123	java/lang/Exception
    //   38	55	126	java/lang/Exception
    //   59	67	133	java/lang/Exception
    //   73	80	140	java/lang/Exception
  }

  private boolean n()
  {
    if (this.r != null)
      return this.r.c();
    return false;
  }

  private boolean o()
  {
    return this.c != null;
  }

  private void p()
  {
    if (this.K != null)
    {
      this.K.cancel();
      this.K = null;
    }
    if (this.J != null)
    {
      this.J.cancel();
      this.J.purge();
      this.J = null;
    }
  }

  private boolean q()
  {
    if ((this.r != null) && (this.q != null))
      return this.r.a(this.q);
    return false;
  }

  private static String r()
  {
    try
    {
      String str = ce.a("version");
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private AmapLoc s()
    throws Exception
  {
    if (f.length() > 0)
      f.delete(0, f.length());
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject2 = localObject3;
    try
    {
      if (!this.B)
      {
        localObject2 = localObject3;
        this.s.c();
        localObject2 = localObject3;
        this.s.b();
        localObject2 = localObject3;
        localObject1 = this.s.a();
      }
      localObject2 = localObject1;
      j();
      localObject2 = localObject1;
      localObject3 = this.t;
      Object localObject4;
      if (localObject3 != null)
      {
        localObject2 = localObject1;
        if (((ArrayList)localObject3).isEmpty())
        {
          localObject2 = localObject1;
          this.E = by.b();
          localObject2 = localObject1;
          localObject4 = this.r.a();
          if (localObject4 != null)
          {
            localObject2 = localObject1;
            ((ArrayList)localObject3).addAll((Collection)localObject4);
          }
        }
      }
      localObject2 = localObject1;
      k();
      localObject2 = localObject1;
      label133: localObject3 = b(false);
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject1 = new AmapLoc();
        ((AmapLoc)localObject1).b(this.m);
        ((AmapLoc)localObject1).b(f.toString());
      }
      while (true)
      {
        localObject2 = localObject1;
        do
        {
          return localObject2;
          String str = (String)localObject3 + "&" + this.ac + "&" + this.ab;
          localObject4 = c(true);
          localObject1 = bi.a().a(str, (StringBuilder)localObject4);
          if (by.a((AmapLoc)localObject1))
          {
            this.R = 0L;
            ((AmapLoc)localObject1).a(4);
            this.b = ((AmapLoc)localObject1);
            t();
            return localObject1;
          }
          localObject1 = a(b());
          if (by.a((AmapLoc)localObject1))
          {
            ((AmapLoc)localObject1).f("new");
            this.S = ((StringBuilder)localObject4).toString();
            this.T = localObject2;
            this.y = by.b();
            this.b = ((AmapLoc)localObject1);
            bi.a().a(str, (StringBuilder)localObject4, this.b, this.p, true);
            t();
            break;
          }
          localObject3 = a((String)localObject3, ((StringBuilder)localObject4).toString());
          localObject2 = localObject1;
        }
        while (!by.a((AmapLoc)localObject3));
        this.S = ((StringBuilder)localObject4).toString();
        ((AmapLoc)localObject3).f("file");
        ((AmapLoc)localObject3).a(8);
        ((AmapLoc)localObject3).b("离线定位结果，在线定位失败原因:" + ((AmapLoc)localObject1).d());
        this.b = ((AmapLoc)localObject3);
        localObject1 = localObject3;
      }
    }
    catch (Throwable localThrowable)
    {
      break label133;
    }
  }

  private void t()
  {
    this.U = null;
    this.V = null;
  }

  private void u()
  {
    if (!bv.i())
      v();
    do
    {
      return;
      if (ba.a[1] > 2000)
      {
        v();
        return;
      }
    }
    while ((this.W != null) && (this.X != null));
    this.X = new ai(this);
    this.W = new Timer("T-O", false);
    this.W.schedule(this.X, 0L, 60000L);
  }

  private void v()
  {
    if (this.X != null)
    {
      this.X.cancel();
      this.X = null;
    }
    if (this.W != null)
    {
      this.W.cancel();
      this.W.purge();
      this.W = null;
    }
  }

  private void w()
  {
    this.Z = 0;
    this.aa = 0;
  }

  final AmapLoc a(String paramString)
    throws Exception
  {
    if (this.p == null)
    {
      f.append("context is null");
      paramString = new AmapLoc();
      paramString.b(1);
      paramString.b(f.toString());
      return paramString;
    }
    if ((paramString == null) || (paramString.length() == 0))
    {
      paramString = new AmapLoc();
      paramString.b(3);
      paramString.b(f.toString());
      return paramString;
    }
    new AmapLoc();
    paramString = new bs();
    try
    {
      localObject1 = this.e.a(this.p, this.a, this.I, dp.a());
      if (localObject1 == null)
      {
        paramString = new AmapLoc();
        paramString.b(4);
        f.append("please check the network");
        paramString.b(f.toString());
        return paramString;
      }
    }
    catch (Throwable paramString)
    {
      paramString.printStackTrace();
      paramString = new AmapLoc();
      paramString.b(4);
      f.append("please check the network");
      paramString.b(f.toString());
      return paramString;
    }
    this.ad = by.a();
    Object localObject2 = new String((byte[])localObject1, "UTF-8");
    if (((String)localObject2).contains("\"status\":\"0\""))
      return bs.b((String)localObject2);
    Object localObject1 = bf.a((byte[])localObject1);
    if (localObject1 == null)
    {
      paramString = new AmapLoc();
      paramString.b(5);
      f.append("decrypt response data error");
      paramString.b(f.toString());
      return paramString;
    }
    localObject1 = paramString.a((String)localObject1);
    if (by.a((AmapLoc)localObject1))
      if ((((AmapLoc)localObject1).D() == null) || ((((AmapLoc)localObject1).a() == 0) && (((AmapLoc)localObject1).b() == 0)))
      {
        if ((!"-5".equals(((AmapLoc)localObject1).m())) && (!"1".equals(((AmapLoc)localObject1).m())) && (!"2".equals(((AmapLoc)localObject1).m())) && (!"14".equals(((AmapLoc)localObject1).m())) && (!"24".equals(((AmapLoc)localObject1).m())) && (!"-1".equals(((AmapLoc)localObject1).m())))
          break label545;
        ((AmapLoc)localObject1).a(5);
      }
    while (true)
    {
      ((AmapLoc)localObject1).b(((AmapLoc)localObject1).m());
      ((AmapLoc)localObject1).a(this.ac);
      ((AmapLoc)localObject1).b(this.ab);
      return localObject1;
      if (localObject1 != null)
      {
        this.O = ((AmapLoc)localObject1).n();
        ((AmapLoc)localObject1).b(6);
        localObject2 = f;
        StringBuilder localStringBuilder = new StringBuilder("location faile retype:").append(((AmapLoc)localObject1).m()).append(" rdesc:");
        if (this.O != null);
        for (paramString = this.O; ; paramString = "null")
        {
          ((StringBuilder)localObject2).append(paramString);
          ((AmapLoc)localObject1).b(f.toString());
          return localObject1;
        }
      }
      paramString = new AmapLoc();
      paramString.b(6);
      f.append("location is null");
      paramString.b(f.toString());
      return paramString;
      label545: ((AmapLoc)localObject1).a(6);
    }
  }

  // ERROR //
  public final AmapLoc a(boolean paramBoolean)
    throws Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   5: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   8: ifle +17 -> 25
    //   11: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   14: iconst_0
    //   15: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   18: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   21: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   24: pop
    //   25: aload_0
    //   26: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   29: ifnonnull +50 -> 79
    //   32: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   35: ldc_w 1076
    //   38: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: iconst_0
    //   43: istore_2
    //   44: iload_2
    //   45: ifne +82 -> 127
    //   48: new 306	com/autonavi/aps/amapapi/model/AmapLoc
    //   51: dup
    //   52: invokespecial 1023	com/autonavi/aps/amapapi/model/AmapLoc:<init>	()V
    //   55: astore 14
    //   57: aload 14
    //   59: iconst_1
    //   60: invokevirtual 1026	com/autonavi/aps/amapapi/model/AmapLoc:b	(I)V
    //   63: aload 14
    //   65: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   68: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokevirtual 1028	com/autonavi/aps/amapapi/model/AmapLoc:b	(Ljava/lang/String;)V
    //   74: aload_0
    //   75: monitorexit
    //   76: aload 14
    //   78: areturn
    //   79: getstatic 535	com/loc/dp:e	Ljava/lang/String;
    //   82: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   85: ifeq +18 -> 103
    //   88: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   91: ldc_w 1139
    //   94: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: pop
    //   98: iconst_0
    //   99: istore_2
    //   100: goto -56 -> 44
    //   103: getstatic 537	com/loc/dp:f	Ljava/lang/String;
    //   106: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   109: ifeq +2424 -> 2533
    //   112: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   115: ldc_w 1141
    //   118: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: pop
    //   122: iconst_0
    //   123: istore_2
    //   124: goto -80 -> 44
    //   127: iconst_1
    //   128: istore 6
    //   130: iconst_1
    //   131: istore 5
    //   133: aload_0
    //   134: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   137: ldc_w 800
    //   140: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   143: ifeq +15 -> 158
    //   146: aload_0
    //   147: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   150: ldc_w 800
    //   153: invokevirtual 804	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   156: istore 5
    //   158: aload_0
    //   159: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   162: ldc_w 1143
    //   165: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   168: ifeq +15 -> 183
    //   171: aload_0
    //   172: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   175: ldc_w 1143
    //   178: invokevirtual 804	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   181: istore 6
    //   183: iload 6
    //   185: aload_0
    //   186: getfield 203	com/loc/ag:ac	Z
    //   189: if_icmpne +16 -> 205
    //   192: aload_0
    //   193: getfield 201	com/loc/ag:ab	Z
    //   196: istore 7
    //   198: iload 5
    //   200: iload 7
    //   202: if_icmpeq +29 -> 231
    //   205: aload_0
    //   206: aconst_null
    //   207: putfield 175	com/loc/ag:S	Ljava/lang/String;
    //   210: aload_0
    //   211: aconst_null
    //   212: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   215: aload_0
    //   216: lconst_0
    //   217: putfield 173	com/loc/ag:R	J
    //   220: aload_0
    //   221: lconst_0
    //   222: putfield 129	com/loc/ag:y	J
    //   225: invokestatic 227	com/loc/av:a	()Lcom/loc/av;
    //   228: invokevirtual 1145	com/loc/av:b	()V
    //   231: aload_0
    //   232: iload 6
    //   234: putfield 203	com/loc/ag:ac	Z
    //   237: aload_0
    //   238: iload 5
    //   240: putfield 201	com/loc/ag:ab	Z
    //   243: aload_0
    //   244: aload_0
    //   245: getfield 143	com/loc/ag:F	I
    //   248: iconst_1
    //   249: iadd
    //   250: putfield 143	com/loc/ag:F	I
    //   253: aload_0
    //   254: aload_0
    //   255: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   258: invokestatic 1148	com/loc/by:a	(Landroid/content/Context;)Z
    //   261: putfield 135	com/loc/ag:B	Z
    //   264: iload_1
    //   265: ifeq +12 -> 277
    //   268: aload_0
    //   269: invokespecial 1150	com/loc/ag:s	()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   272: astore 14
    //   274: goto -200 -> 74
    //   277: aload_0
    //   278: getfield 143	com/loc/ag:F	I
    //   281: iconst_2
    //   282: if_icmpne +551 -> 833
    //   285: aload_0
    //   286: invokevirtual 438	com/loc/ag:d	()V
    //   289: aload_0
    //   290: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   293: ifnull +17 -> 310
    //   296: aload_0
    //   297: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   300: ifnull +10 -> 310
    //   303: aload_0
    //   304: getfield 163	com/loc/ag:d	Z
    //   307: ifne +120 -> 427
    //   310: aload_0
    //   311: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   314: ifnull +515 -> 829
    //   317: aload_0
    //   318: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   321: ldc_w 378
    //   324: iconst_0
    //   325: invokevirtual 384	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   328: astore 15
    //   330: aload_0
    //   331: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   334: ifnull +323 -> 657
    //   337: aload_0
    //   338: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   341: ldc_w 378
    //   344: iconst_0
    //   345: invokevirtual 384	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   348: astore 14
    //   350: aload 14
    //   352: ifnull +305 -> 657
    //   355: aload 14
    //   357: ldc_w 425
    //   360: invokeinterface 1152 2 0
    //   365: istore 5
    //   367: iload 5
    //   369: ifeq +288 -> 657
    //   372: aload 14
    //   374: ldc_w 425
    //   377: aconst_null
    //   378: invokeinterface 1155 3 0
    //   383: ldc_w 408
    //   386: invokevirtual 412	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   389: invokestatic 417	com/loc/ej:a	([B)Ljava/lang/String;
    //   392: ldc_w 390
    //   395: invokevirtual 1159	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   398: astore 16
    //   400: iconst_0
    //   401: istore_2
    //   402: iload_2
    //   403: iconst_3
    //   404: if_icmpge +253 -> 657
    //   407: aload_0
    //   408: getfield 165	com/loc/ag:N	[I
    //   411: iload_2
    //   412: aload 16
    //   414: iload_2
    //   415: aaload
    //   416: invokestatic 402	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   419: iastore
    //   420: iload_2
    //   421: iconst_1
    //   422: iadd
    //   423: istore_2
    //   424: goto -22 -> 402
    //   427: aload_0
    //   428: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   431: astore 15
    //   433: aload_0
    //   434: getfield 163	com/loc/ag:d	Z
    //   437: istore 5
    //   439: aload 15
    //   441: getfield 1161	com/loc/be:c	Landroid/content/Context;
    //   444: astore 14
    //   446: aload 15
    //   448: getfield 971	com/loc/be:a	Landroid/net/wifi/WifiManager;
    //   451: ifnull -141 -> 310
    //   454: aload 14
    //   456: ifnull -146 -> 310
    //   459: iload 5
    //   461: ifeq -151 -> 310
    //   464: invokestatic 963	com/loc/by:c	()I
    //   467: bipush 17
    //   469: if_icmple -159 -> 310
    //   472: aload 15
    //   474: getfield 1163	com/loc/be:b	Lorg/json/JSONObject;
    //   477: ldc_w 1165
    //   480: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   483: istore 5
    //   485: iload 5
    //   487: ifeq +27 -> 514
    //   490: ldc_w 635
    //   493: aload 15
    //   495: getfield 1163	com/loc/be:b	Lorg/json/JSONObject;
    //   498: ldc_w 1165
    //   501: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   504: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   507: istore 5
    //   509: iload 5
    //   511: ifne -201 -> 310
    //   514: aload 14
    //   516: invokevirtual 1169	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   519: astore 14
    //   521: ldc_w 1171
    //   524: ldc_w 1173
    //   527: iconst_2
    //   528: anewarray 4	java/lang/Object
    //   531: dup
    //   532: iconst_0
    //   533: aload 14
    //   535: aastore
    //   536: dup
    //   537: iconst_1
    //   538: ldc_w 1175
    //   541: aastore
    //   542: iconst_2
    //   543: anewarray 1177	java/lang/Class
    //   546: dup
    //   547: iconst_0
    //   548: ldc_w 1179
    //   551: aastore
    //   552: dup
    //   553: iconst_1
    //   554: ldc 239
    //   556: aastore
    //   557: invokestatic 1184	com/loc/bx:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    //   560: checkcast 399	java/lang/Integer
    //   563: invokevirtual 1187	java/lang/Integer:intValue	()I
    //   566: ifne -256 -> 310
    //   569: getstatic 1191	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   572: astore 15
    //   574: ldc_w 1171
    //   577: ldc_w 1193
    //   580: iconst_3
    //   581: anewarray 4	java/lang/Object
    //   584: dup
    //   585: iconst_0
    //   586: aload 14
    //   588: aastore
    //   589: dup
    //   590: iconst_1
    //   591: ldc_w 1175
    //   594: aastore
    //   595: dup
    //   596: iconst_2
    //   597: iconst_1
    //   598: invokestatic 912	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   601: aastore
    //   602: iconst_3
    //   603: anewarray 1177	java/lang/Class
    //   606: dup
    //   607: iconst_0
    //   608: ldc_w 1179
    //   611: aastore
    //   612: dup
    //   613: iconst_1
    //   614: ldc 239
    //   616: aastore
    //   617: dup
    //   618: iconst_2
    //   619: aload 15
    //   621: aastore
    //   622: invokestatic 1184	com/loc/bx:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    //   625: pop
    //   626: goto -316 -> 310
    //   629: astore 14
    //   631: goto -321 -> 310
    //   634: astore 16
    //   636: aload 14
    //   638: invokeinterface 423 1 0
    //   643: ldc_w 425
    //   646: invokeinterface 1197 2 0
    //   651: invokeinterface 983 1 0
    //   656: pop
    //   657: aload 15
    //   659: ifnull +92 -> 751
    //   662: aload 15
    //   664: ldc_w 980
    //   667: invokeinterface 1152 2 0
    //   672: istore 5
    //   674: iload 5
    //   676: ifeq +75 -> 751
    //   679: aload 15
    //   681: ldc_w 980
    //   684: aconst_null
    //   685: invokeinterface 1155 3 0
    //   690: pop
    //   691: invokestatic 1199	com/loc/by:j	()Ljava/lang/String;
    //   694: ldc_w 390
    //   697: invokevirtual 1159	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   700: astore 14
    //   702: iconst_0
    //   703: istore_2
    //   704: iload_2
    //   705: iconst_2
    //   706: if_icmpge +45 -> 751
    //   709: getstatic 976	com/loc/ba:a	[I
    //   712: iload_2
    //   713: aload 14
    //   715: iload_2
    //   716: aaload
    //   717: invokestatic 402	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   720: iastore
    //   721: iload_2
    //   722: iconst_1
    //   723: iadd
    //   724: istore_2
    //   725: goto -21 -> 704
    //   728: astore 14
    //   730: aload 15
    //   732: invokeinterface 423 1 0
    //   737: ldc_w 980
    //   740: invokeinterface 1197 2 0
    //   745: invokeinterface 983 1 0
    //   750: pop
    //   751: aload_0
    //   752: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   755: ifnull +74 -> 829
    //   758: aload 15
    //   760: ifnull +69 -> 829
    //   763: aconst_null
    //   764: astore 14
    //   766: aload 15
    //   768: ldc_w 1201
    //   771: invokeinterface 1152 2 0
    //   776: istore 5
    //   778: iload 5
    //   780: ifeq +25 -> 805
    //   783: aload 15
    //   785: ldc_w 1201
    //   788: aconst_null
    //   789: invokeinterface 1155 3 0
    //   794: ldc_w 408
    //   797: invokevirtual 412	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   800: invokestatic 417	com/loc/ej:a	([B)Ljava/lang/String;
    //   803: astore 14
    //   805: aload 14
    //   807: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   810: ifne +19 -> 829
    //   813: aload 14
    //   815: ldc 145
    //   817: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   820: ifne +9 -> 829
    //   823: aload_0
    //   824: aload 14
    //   826: putfield 147	com/loc/ag:G	Ljava/lang/String;
    //   829: aload_0
    //   830: invokespecial 245	com/loc/ag:u	()V
    //   833: aload_0
    //   834: getfield 143	com/loc/ag:F	I
    //   837: iconst_1
    //   838: if_icmpne +127 -> 965
    //   841: aload_0
    //   842: invokespecial 612	com/loc/ag:n	()Z
    //   845: ifeq +120 -> 965
    //   848: aload_0
    //   849: getfield 109	com/loc/ag:u	Ljava/util/ArrayList;
    //   852: invokevirtual 677	java/util/ArrayList:isEmpty	()Z
    //   855: ifeq +53 -> 908
    //   858: aload_0
    //   859: invokestatic 314	com/loc/by:b	()J
    //   862: putfield 141	com/loc/ag:E	J
    //   865: aload_0
    //   866: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   869: invokevirtual 1016	com/loc/be:a	()Ljava/util/List;
    //   872: astore 15
    //   874: aload_0
    //   875: getfield 207	com/loc/ag:k	Ljava/lang/Object;
    //   878: astore 14
    //   880: aload 14
    //   882: monitorenter
    //   883: aload_0
    //   884: getfield 109	com/loc/ag:u	Ljava/util/ArrayList;
    //   887: ifnull +18 -> 905
    //   890: aload 15
    //   892: ifnull +13 -> 905
    //   895: aload_0
    //   896: getfield 109	com/loc/ag:u	Ljava/util/ArrayList;
    //   899: aload 15
    //   901: invokevirtual 1017	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   904: pop
    //   905: aload 14
    //   907: monitorexit
    //   908: aload_0
    //   909: getfield 109	com/loc/ag:u	Ljava/util/ArrayList;
    //   912: astore 15
    //   914: aconst_null
    //   915: astore 14
    //   917: aload_0
    //   918: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   921: ldc_w 1203
    //   924: invokestatic 621	com/loc/by:a	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   927: ifeq +15 -> 942
    //   930: aload_0
    //   931: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   934: ldc_w 1203
    //   937: invokevirtual 625	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   940: astore 14
    //   942: aload 14
    //   944: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   947: ifne +18 -> 965
    //   950: aload 14
    //   952: ldc_w 588
    //   955: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   958: istore 5
    //   960: iload 5
    //   962: ifne +132 -> 1094
    //   965: aload_0
    //   966: getfield 129	com/loc/ag:y	J
    //   969: lstore 8
    //   971: iconst_0
    //   972: istore_3
    //   973: iload_3
    //   974: istore_2
    //   975: invokestatic 314	com/loc/by:b	()J
    //   978: lload 8
    //   980: lsub
    //   981: ldc2_w 1204
    //   984: lcmp
    //   985: ifge +32 -> 1017
    //   988: lconst_0
    //   989: lstore 8
    //   991: aload_0
    //   992: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   995: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   998: ifeq +1540 -> 2538
    //   1001: invokestatic 1091	com/loc/by:a	()J
    //   1004: aload_0
    //   1005: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1008: invokevirtual 1207	com/autonavi/aps/amapapi/model/AmapLoc:k	()J
    //   1011: lsub
    //   1012: lstore 8
    //   1014: goto +1524 -> 2538
    //   1017: iload_2
    //   1018: ifeq +196 -> 1214
    //   1021: aload_0
    //   1022: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1025: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   1028: ifeq +186 -> 1214
    //   1031: aload_0
    //   1032: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1035: iconst_2
    //   1036: invokevirtual 1045	com/autonavi/aps/amapapi/model/AmapLoc:a	(I)V
    //   1039: aload_0
    //   1040: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1043: astore 14
    //   1045: goto -971 -> 74
    //   1048: astore 14
    //   1050: aload 15
    //   1052: invokeinterface 423 1 0
    //   1057: ldc_w 1201
    //   1060: invokeinterface 1197 2 0
    //   1065: invokeinterface 983 1 0
    //   1070: pop
    //   1071: aconst_null
    //   1072: astore 14
    //   1074: goto -269 -> 805
    //   1077: astore 15
    //   1079: aload 14
    //   1081: monitorexit
    //   1082: aload 15
    //   1084: athrow
    //   1085: astore 14
    //   1087: aload_0
    //   1088: monitorexit
    //   1089: aload 14
    //   1091: athrow
    //   1092: astore 14
    //   1094: aload_0
    //   1095: getfield 207	com/loc/ag:k	Ljava/lang/Object;
    //   1098: astore 14
    //   1100: aload 14
    //   1102: monitorenter
    //   1103: aload 15
    //   1105: invokeinterface 888 1 0
    //   1110: aload 14
    //   1112: monitorexit
    //   1113: aload_0
    //   1114: invokespecial 1209	com/loc/ag:m	()V
    //   1117: bipush 20
    //   1119: istore_2
    //   1120: iload_2
    //   1121: ifle +38 -> 1159
    //   1124: aload 15
    //   1126: invokeinterface 1210 1 0
    //   1131: istore 5
    //   1133: iload 5
    //   1135: ifeq +24 -> 1159
    //   1138: ldc2_w 1211
    //   1141: invokestatic 1218	java/lang/Thread:sleep	(J)V
    //   1144: iload_2
    //   1145: iconst_1
    //   1146: isub
    //   1147: istore_2
    //   1148: goto -28 -> 1120
    //   1151: astore 15
    //   1153: aload 14
    //   1155: monitorexit
    //   1156: aload 15
    //   1158: athrow
    //   1159: aload_0
    //   1160: getfield 207	com/loc/ag:k	Ljava/lang/Object;
    //   1163: astore 14
    //   1165: aload 14
    //   1167: monitorenter
    //   1168: aload 14
    //   1170: monitorexit
    //   1171: aload 15
    //   1173: invokeinterface 1210 1 0
    //   1178: ifeq -213 -> 965
    //   1181: aload_0
    //   1182: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   1185: ifnull -220 -> 965
    //   1188: aload 15
    //   1190: aload_0
    //   1191: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   1194: invokevirtual 1016	com/loc/be:a	()Ljava/util/List;
    //   1197: invokeinterface 892 2 0
    //   1202: pop
    //   1203: goto -238 -> 965
    //   1206: astore 15
    //   1208: aload 14
    //   1210: monitorexit
    //   1211: aload 15
    //   1213: athrow
    //   1214: aload_0
    //   1215: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   1218: invokevirtual 1005	com/loc/bc:c	()V
    //   1221: iload_1
    //   1222: ifne +312 -> 1534
    //   1225: invokestatic 314	com/loc/by:b	()J
    //   1228: lstore 8
    //   1230: aload_0
    //   1231: getfield 149	com/loc/ag:H	Ljava/lang/String;
    //   1234: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1237: ifne +98 -> 1335
    //   1240: iconst_1
    //   1241: istore_2
    //   1242: iload_2
    //   1243: ifeq +284 -> 1527
    //   1246: bipush 20
    //   1248: istore_2
    //   1249: aload_0
    //   1250: getfield 109	com/loc/ag:u	Ljava/util/ArrayList;
    //   1253: astore 14
    //   1255: lload 8
    //   1257: aload_0
    //   1258: getfield 131	com/loc/ag:z	J
    //   1261: lsub
    //   1262: ldc2_w 1219
    //   1265: lcmp
    //   1266: iflt +22 -> 1288
    //   1269: aload_0
    //   1270: getfield 207	com/loc/ag:k	Ljava/lang/Object;
    //   1273: astore 15
    //   1275: aload 15
    //   1277: monitorenter
    //   1278: aload 14
    //   1280: invokeinterface 888 1 0
    //   1285: aload 15
    //   1287: monitorexit
    //   1288: aload_0
    //   1289: invokespecial 1209	com/loc/ag:m	()V
    //   1292: lload 8
    //   1294: aload_0
    //   1295: getfield 131	com/loc/ag:z	J
    //   1298: lsub
    //   1299: ldc2_w 1219
    //   1302: lcmp
    //   1303: iflt +171 -> 1474
    //   1306: iload_2
    //   1307: ifle +167 -> 1474
    //   1310: aload 14
    //   1312: invokeinterface 1210 1 0
    //   1317: istore_1
    //   1318: iload_1
    //   1319: ifeq +155 -> 1474
    //   1322: ldc2_w 1211
    //   1325: invokestatic 1218	java/lang/Thread:sleep	(J)V
    //   1328: iload_2
    //   1329: iconst_1
    //   1330: isub
    //   1331: istore_2
    //   1332: goto -26 -> 1306
    //   1335: iconst_1
    //   1336: istore_2
    //   1337: aload_0
    //   1338: invokespecial 612	com/loc/ag:n	()Z
    //   1341: ifne +8 -> 1349
    //   1344: iconst_0
    //   1345: istore_2
    //   1346: goto -104 -> 1242
    //   1349: aload_0
    //   1350: getfield 139	com/loc/ag:D	J
    //   1353: lconst_0
    //   1354: lcmp
    //   1355: ifne +8 -> 1363
    //   1358: iconst_1
    //   1359: istore_2
    //   1360: goto -118 -> 1242
    //   1363: invokestatic 314	com/loc/by:b	()J
    //   1366: aload_0
    //   1367: getfield 139	com/loc/ag:D	J
    //   1370: lsub
    //   1371: ldc2_w 1221
    //   1374: lcmp
    //   1375: ifge +8 -> 1383
    //   1378: iconst_0
    //   1379: istore_2
    //   1380: goto -138 -> 1242
    //   1383: invokestatic 314	com/loc/by:b	()J
    //   1386: lstore 10
    //   1388: aload_0
    //   1389: getfield 141	com/loc/ag:E	J
    //   1392: lstore 12
    //   1394: lload 10
    //   1396: lload 12
    //   1398: lsub
    //   1399: ldc2_w 1223
    //   1402: lcmp
    //   1403: ifge -161 -> 1242
    //   1406: iconst_0
    //   1407: istore_2
    //   1408: goto -166 -> 1242
    //   1411: astore 14
    //   1413: aload 15
    //   1415: monitorexit
    //   1416: aload 14
    //   1418: athrow
    //   1419: astore 14
    //   1421: aload_0
    //   1422: iconst_0
    //   1423: invokevirtual 1022	com/loc/ag:b	(Z)Ljava/lang/String;
    //   1426: astore 14
    //   1428: aload 14
    //   1430: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1433: ifeq +186 -> 1619
    //   1436: aload_0
    //   1437: getfield 183	com/loc/ag:i	Z
    //   1440: ifne +1114 -> 2554
    //   1443: aload_0
    //   1444: invokevirtual 1226	com/loc/ag:h	()V
    //   1447: goto +1107 -> 2554
    //   1450: iload_2
    //   1451: ifle +102 -> 1553
    //   1454: aload_0
    //   1455: getfield 181	com/loc/ag:h	I
    //   1458: ifeq +95 -> 1553
    //   1461: ldc2_w 1227
    //   1464: invokestatic 1231	android/os/SystemClock:sleep	(J)V
    //   1467: iload_2
    //   1468: iconst_1
    //   1469: isub
    //   1470: istore_2
    //   1471: goto -21 -> 1450
    //   1474: aload_0
    //   1475: getfield 207	com/loc/ag:k	Ljava/lang/Object;
    //   1478: astore 15
    //   1480: aload 15
    //   1482: monitorenter
    //   1483: aload 15
    //   1485: monitorexit
    //   1486: aload 14
    //   1488: invokeinterface 1210 1 0
    //   1493: ifeq +34 -> 1527
    //   1496: aload_0
    //   1497: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   1500: ifnull +27 -> 1527
    //   1503: aload_0
    //   1504: getfield 102	com/loc/ag:r	Lcom/loc/be;
    //   1507: invokevirtual 1016	com/loc/be:a	()Ljava/util/List;
    //   1510: astore 15
    //   1512: aload 15
    //   1514: ifnull +13 -> 1527
    //   1517: aload 14
    //   1519: aload 15
    //   1521: invokeinterface 892 2 0
    //   1526: pop
    //   1527: aload_0
    //   1528: invokestatic 314	com/loc/by:b	()J
    //   1531: putfield 131	com/loc/ag:z	J
    //   1534: aload_0
    //   1535: invokespecial 1013	com/loc/ag:j	()V
    //   1538: aload_0
    //   1539: invokespecial 1019	com/loc/ag:k	()V
    //   1542: goto -121 -> 1421
    //   1545: astore 14
    //   1547: aload 15
    //   1549: monitorexit
    //   1550: aload 14
    //   1552: athrow
    //   1553: aload_0
    //   1554: getfield 181	com/loc/ag:h	I
    //   1557: ifne +30 -> 1587
    //   1560: aload_0
    //   1561: aload_0
    //   1562: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   1565: invokevirtual 1237	com/loc/al:b	()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1568: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1571: aload_0
    //   1572: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1575: ifnull +12 -> 1587
    //   1578: aload_0
    //   1579: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1582: astore 14
    //   1584: goto -1510 -> 74
    //   1587: new 306	com/autonavi/aps/amapapi/model/AmapLoc
    //   1590: dup
    //   1591: invokespecial 1023	com/autonavi/aps/amapapi/model/AmapLoc:<init>	()V
    //   1594: astore 14
    //   1596: aload 14
    //   1598: aload_0
    //   1599: getfield 211	com/loc/ag:m	I
    //   1602: invokevirtual 1026	com/autonavi/aps/amapapi/model/AmapLoc:b	(I)V
    //   1605: aload 14
    //   1607: getstatic 94	com/loc/ag:f	Ljava/lang/StringBuilder;
    //   1610: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1613: invokevirtual 1028	com/autonavi/aps/amapapi/model/AmapLoc:b	(Ljava/lang/String;)V
    //   1616: goto -1542 -> 74
    //   1619: aload_0
    //   1620: iconst_0
    //   1621: invokevirtual 1035	com/loc/ag:c	(Z)Ljava/lang/StringBuilder;
    //   1624: astore 18
    //   1626: aload_0
    //   1627: getfield 135	com/loc/ag:B	Z
    //   1630: ifne +897 -> 2527
    //   1633: aload_0
    //   1634: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   1637: invokevirtual 1011	com/loc/bc:a	()Lcom/loc/bb;
    //   1640: astore 15
    //   1642: aload 15
    //   1644: ifnonnull +10 -> 1654
    //   1647: aload_0
    //   1648: getfield 177	com/loc/ag:T	Lcom/loc/bb;
    //   1651: ifnull +933 -> 2584
    //   1654: aload_0
    //   1655: getfield 177	com/loc/ag:T	Lcom/loc/bb;
    //   1658: ifnull +907 -> 2565
    //   1661: aload_0
    //   1662: getfield 177	com/loc/ag:T	Lcom/loc/bb;
    //   1665: astore 16
    //   1667: aload 15
    //   1669: ifnull +890 -> 2559
    //   1672: aload 15
    //   1674: getfield 1239	com/loc/bb:k	I
    //   1677: tableswitch	default:+882 -> 2559, 1:+262->1939, 2:+209->1886
    //   1701: getfield 129	com/loc/ag:y	J
    //   1704: lconst_0
    //   1705: lcmp
    //   1706: ifne +297 -> 2003
    //   1709: iconst_1
    //   1710: istore_2
    //   1711: aload_0
    //   1712: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1715: ifnull +807 -> 2522
    //   1718: aload_0
    //   1719: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   1722: invokeinterface 695 1 0
    //   1727: istore_3
    //   1728: aload_0
    //   1729: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1732: invokevirtual 1242	com/autonavi/aps/amapapi/model/AmapLoc:j	()F
    //   1735: ldc_w 1243
    //   1738: fcmpl
    //   1739: ifle +856 -> 2595
    //   1742: iload_3
    //   1743: iconst_5
    //   1744: if_icmple +851 -> 2595
    //   1747: iconst_1
    //   1748: istore_3
    //   1749: goto +822 -> 2571
    //   1752: aload_0
    //   1753: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1756: ifnull +844 -> 2600
    //   1759: aload_0
    //   1760: getfield 175	com/loc/ag:S	Ljava/lang/String;
    //   1763: ifnull +837 -> 2600
    //   1766: iload_3
    //   1767: ifne +833 -> 2600
    //   1770: iload 4
    //   1772: ifne +828 -> 2600
    //   1775: invokestatic 1040	com/loc/bi:a	()Lcom/loc/bi;
    //   1778: pop
    //   1779: aload_0
    //   1780: getfield 175	com/loc/ag:S	Ljava/lang/String;
    //   1783: aload 18
    //   1785: invokestatic 1246	com/loc/bi:b	(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    //   1788: istore 5
    //   1790: iload 5
    //   1792: ifne +33 -> 1825
    //   1795: iload 5
    //   1797: istore_1
    //   1798: aload_0
    //   1799: getfield 173	com/loc/ag:R	J
    //   1802: lconst_0
    //   1803: lcmp
    //   1804: ifeq +219 -> 2023
    //   1807: iload 5
    //   1809: istore_1
    //   1810: invokestatic 314	com/loc/by:b	()J
    //   1813: aload_0
    //   1814: getfield 173	com/loc/ag:R	J
    //   1817: lsub
    //   1818: ldc2_w 1221
    //   1821: lcmp
    //   1822: ifge +201 -> 2023
    //   1825: aload_0
    //   1826: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   1829: aload_0
    //   1830: getfield 135	com/loc/ag:B	Z
    //   1833: invokevirtual 1249	com/loc/bc:a	(Z)Z
    //   1836: ifeq +10 -> 1846
    //   1839: aload_0
    //   1840: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   1843: invokevirtual 1250	com/loc/bc:d	()V
    //   1846: iload 5
    //   1848: istore_1
    //   1849: aload_0
    //   1850: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1853: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   1856: ifeq +167 -> 2023
    //   1859: aload_0
    //   1860: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1863: ldc_w 1252
    //   1866: invokevirtual 1056	com/autonavi/aps/amapapi/model/AmapLoc:f	(Ljava/lang/String;)V
    //   1869: aload_0
    //   1870: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1873: iconst_2
    //   1874: invokevirtual 1045	com/autonavi/aps/amapapi/model/AmapLoc:a	(I)V
    //   1877: aload_0
    //   1878: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1881: astore 14
    //   1883: goto -1809 -> 74
    //   1886: aload 16
    //   1888: getfield 1239	com/loc/bb:k	I
    //   1891: iconst_2
    //   1892: if_icmpne +667 -> 2559
    //   1895: aload 15
    //   1897: getfield 757	com/loc/bb:i	I
    //   1900: aload 16
    //   1902: getfield 757	com/loc/bb:i	I
    //   1905: if_icmpne +669 -> 2574
    //   1908: aload 15
    //   1910: getfield 751	com/loc/bb:h	I
    //   1913: aload 16
    //   1915: getfield 751	com/loc/bb:h	I
    //   1918: if_icmpne +656 -> 2574
    //   1921: aload 15
    //   1923: getfield 746	com/loc/bb:g	I
    //   1926: aload 16
    //   1928: getfield 746	com/loc/bb:g	I
    //   1931: if_icmpne +643 -> 2574
    //   1934: iconst_1
    //   1935: istore_2
    //   1936: goto +625 -> 2561
    //   1939: aload 16
    //   1941: getfield 1239	com/loc/bb:k	I
    //   1944: iconst_1
    //   1945: if_icmpne +614 -> 2559
    //   1948: aload 15
    //   1950: getfield 728	com/loc/bb:c	I
    //   1953: aload 16
    //   1955: getfield 728	com/loc/bb:c	I
    //   1958: if_icmpne +621 -> 2579
    //   1961: aload 15
    //   1963: getfield 734	com/loc/bb:d	I
    //   1966: aload 16
    //   1968: getfield 734	com/loc/bb:d	I
    //   1971: if_icmpne +608 -> 2579
    //   1974: aload 15
    //   1976: getfield 722	com/loc/bb:b	Ljava/lang/String;
    //   1979: ifnull +600 -> 2579
    //   1982: aload 15
    //   1984: getfield 722	com/loc/bb:b	Ljava/lang/String;
    //   1987: aload 16
    //   1989: getfield 722	com/loc/bb:b	Ljava/lang/String;
    //   1992: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1995: ifeq +584 -> 2579
    //   1998: iconst_1
    //   1999: istore_2
    //   2000: goto +561 -> 2561
    //   2003: invokestatic 314	com/loc/by:b	()J
    //   2006: aload_0
    //   2007: getfield 129	com/loc/ag:y	J
    //   2010: lsub
    //   2011: ldc2_w 1253
    //   2014: lcmp
    //   2015: ifle +575 -> 2590
    //   2018: iconst_1
    //   2019: istore_2
    //   2020: goto -309 -> 1711
    //   2023: iload_1
    //   2024: ifne +342 -> 2366
    //   2027: aload_0
    //   2028: invokestatic 314	com/loc/by:b	()J
    //   2031: putfield 173	com/loc/ag:R	J
    //   2034: aload_0
    //   2035: getfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2038: ifnull +352 -> 2390
    //   2041: aload 14
    //   2043: aload_0
    //   2044: getfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2047: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2050: ifne +340 -> 2390
    //   2053: invokestatic 1091	com/loc/by:a	()J
    //   2056: aload_0
    //   2057: getfield 171	com/loc/ag:Q	J
    //   2060: lsub
    //   2061: ldc2_w 1221
    //   2064: lcmp
    //   2065: ifge +309 -> 2374
    //   2068: aload_0
    //   2069: getfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2072: astore 14
    //   2074: aconst_null
    //   2075: astore 17
    //   2077: new 89	java/lang/StringBuilder
    //   2080: dup
    //   2081: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   2084: aload 14
    //   2086: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2089: ldc_w 1030
    //   2092: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2095: aload_0
    //   2096: getfield 203	com/loc/ag:ac	Z
    //   2099: invokevirtual 1033	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   2102: ldc_w 1030
    //   2105: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2108: aload_0
    //   2109: getfield 201	com/loc/ag:ab	Z
    //   2112: invokevirtual 1033	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   2115: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2118: astore 19
    //   2120: aload 17
    //   2122: astore 16
    //   2124: iload_3
    //   2125: ifne +23 -> 2148
    //   2128: aload 17
    //   2130: astore 16
    //   2132: iload_2
    //   2133: ifne +15 -> 2148
    //   2136: invokestatic 1040	com/loc/bi:a	()Lcom/loc/bi;
    //   2139: aload 19
    //   2141: aload 18
    //   2143: invokevirtual 1043	com/loc/bi:a	(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2146: astore 16
    //   2148: iload_2
    //   2149: ifne +456 -> 2605
    //   2152: aload 16
    //   2154: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   2157: ifeq +6 -> 2163
    //   2160: goto +445 -> 2605
    //   2163: aload_0
    //   2164: aload_0
    //   2165: aload_0
    //   2166: invokevirtual 1049	com/loc/ag:b	()Ljava/lang/String;
    //   2169: invokevirtual 1052	com/loc/ag:a	(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2172: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2175: aload_0
    //   2176: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2179: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   2182: ifeq +39 -> 2221
    //   2185: aload_0
    //   2186: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2189: ldc_w 1054
    //   2192: invokevirtual 1056	com/autonavi/aps/amapapi/model/AmapLoc:f	(Ljava/lang/String;)V
    //   2195: aload_0
    //   2196: aload 18
    //   2198: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2201: putfield 175	com/loc/ag:S	Ljava/lang/String;
    //   2204: aload_0
    //   2205: aload 15
    //   2207: putfield 177	com/loc/ag:T	Lcom/loc/bb;
    //   2210: aload_0
    //   2211: invokestatic 314	com/loc/by:b	()J
    //   2214: putfield 129	com/loc/ag:y	J
    //   2217: aload_0
    //   2218: invokespecial 1047	com/loc/ag:t	()V
    //   2221: invokestatic 1040	com/loc/bi:a	()Lcom/loc/bi;
    //   2224: aload 19
    //   2226: aload 18
    //   2228: aload_0
    //   2229: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2232: aload_0
    //   2233: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   2236: iconst_1
    //   2237: invokevirtual 1059	com/loc/bi:a	(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    //   2240: invokestatic 250	com/loc/bm:a	()Lcom/loc/bm;
    //   2243: aload_0
    //   2244: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   2247: aload 14
    //   2249: aload_0
    //   2250: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2253: invokevirtual 1257	com/loc/bm:a	(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    //   2256: aload_0
    //   2257: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2260: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   2263: ifne +82 -> 2345
    //   2266: aload_0
    //   2267: aload 14
    //   2269: aload 18
    //   2271: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2274: invokespecial 1061	com/loc/ag:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2277: astore 14
    //   2279: aload 14
    //   2281: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   2284: ifeq +61 -> 2345
    //   2287: aload_0
    //   2288: aload 18
    //   2290: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2293: putfield 175	com/loc/ag:S	Ljava/lang/String;
    //   2296: aload_0
    //   2297: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2300: astore 15
    //   2302: aload_0
    //   2303: aload 14
    //   2305: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2308: aload_0
    //   2309: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2312: bipush 8
    //   2314: invokevirtual 1045	com/autonavi/aps/amapapi/model/AmapLoc:a	(I)V
    //   2317: aload_0
    //   2318: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2321: new 89	java/lang/StringBuilder
    //   2324: dup
    //   2325: ldc_w 1259
    //   2328: invokespecial 820	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2331: aload 15
    //   2333: invokevirtual 1067	com/autonavi/aps/amapapi/model/AmapLoc:d	()Ljava/lang/String;
    //   2336: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2339: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2342: invokevirtual 1028	com/autonavi/aps/amapapi/model/AmapLoc:b	(Ljava/lang/String;)V
    //   2345: aload 18
    //   2347: iconst_0
    //   2348: aload 18
    //   2350: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   2353: invokevirtual 436	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   2356: pop
    //   2357: aload_0
    //   2358: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2361: astore 14
    //   2363: goto -2289 -> 74
    //   2366: aload_0
    //   2367: lconst_0
    //   2368: putfield 173	com/loc/ag:R	J
    //   2371: goto -337 -> 2034
    //   2374: aload_0
    //   2375: invokestatic 1091	com/loc/by:a	()J
    //   2378: putfield 171	com/loc/ag:Q	J
    //   2381: aload_0
    //   2382: aload 14
    //   2384: putfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2387: goto -313 -> 2074
    //   2390: aload_0
    //   2391: getfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2394: ifnonnull +19 -> 2413
    //   2397: aload_0
    //   2398: invokestatic 1091	com/loc/by:a	()J
    //   2401: putfield 171	com/loc/ag:Q	J
    //   2404: aload_0
    //   2405: aload 14
    //   2407: putfield 169	com/loc/ag:P	Ljava/lang/String;
    //   2410: goto -336 -> 2074
    //   2413: aload_0
    //   2414: invokestatic 1091	com/loc/by:a	()J
    //   2417: putfield 171	com/loc/ag:Q	J
    //   2420: goto -346 -> 2074
    //   2423: iload_2
    //   2424: ifeq +54 -> 2478
    //   2427: aload_0
    //   2428: aload_0
    //   2429: aload_0
    //   2430: invokevirtual 1049	com/loc/ag:b	()Ljava/lang/String;
    //   2433: invokevirtual 1052	com/loc/ag:a	(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2436: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2439: aload_0
    //   2440: getfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2443: invokestatic 292	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   2446: ifeq -225 -> 2221
    //   2449: aload_0
    //   2450: aload 18
    //   2452: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2455: putfield 175	com/loc/ag:S	Ljava/lang/String;
    //   2458: aload_0
    //   2459: aload 15
    //   2461: putfield 177	com/loc/ag:T	Lcom/loc/bb;
    //   2464: aload_0
    //   2465: invokestatic 314	com/loc/by:b	()J
    //   2468: putfield 129	com/loc/ag:y	J
    //   2471: aload_0
    //   2472: invokespecial 1047	com/loc/ag:t	()V
    //   2475: goto -254 -> 2221
    //   2478: aload_0
    //   2479: lconst_0
    //   2480: putfield 173	com/loc/ag:R	J
    //   2483: aload 16
    //   2485: iconst_4
    //   2486: invokevirtual 1045	com/autonavi/aps/amapapi/model/AmapLoc:a	(I)V
    //   2489: aload_0
    //   2490: aload 16
    //   2492: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   2495: aload_0
    //   2496: invokespecial 1047	com/loc/ag:t	()V
    //   2499: goto -278 -> 2221
    //   2502: astore 14
    //   2504: goto -1360 -> 1144
    //   2507: astore 15
    //   2509: goto -1181 -> 1328
    //   2512: astore 15
    //   2514: goto -2000 -> 514
    //   2517: astore 14
    //   2519: goto -2288 -> 231
    //   2522: iconst_0
    //   2523: istore_3
    //   2524: goto -772 -> 1752
    //   2527: aconst_null
    //   2528: astore 15
    //   2530: goto -888 -> 1642
    //   2533: iconst_1
    //   2534: istore_2
    //   2535: goto -2491 -> 44
    //   2538: iload_3
    //   2539: istore_2
    //   2540: lload 8
    //   2542: ldc2_w 1219
    //   2545: lcmp
    //   2546: ifgt -1529 -> 1017
    //   2549: iconst_1
    //   2550: istore_2
    //   2551: goto -1534 -> 1017
    //   2554: iconst_4
    //   2555: istore_2
    //   2556: goto -1106 -> 1450
    //   2559: iconst_0
    //   2560: istore_2
    //   2561: iload_2
    //   2562: ifne +22 -> 2584
    //   2565: iconst_1
    //   2566: istore 4
    //   2568: goto -868 -> 1700
    //   2571: goto -819 -> 1752
    //   2574: iconst_0
    //   2575: istore_2
    //   2576: goto -15 -> 2561
    //   2579: iconst_0
    //   2580: istore_2
    //   2581: goto -20 -> 2561
    //   2584: iconst_0
    //   2585: istore 4
    //   2587: goto -887 -> 1700
    //   2590: iconst_0
    //   2591: istore_2
    //   2592: goto -881 -> 1711
    //   2595: iconst_0
    //   2596: istore_3
    //   2597: goto -26 -> 2571
    //   2600: iconst_0
    //   2601: istore_1
    //   2602: goto -579 -> 2023
    //   2605: iload_3
    //   2606: ifeq -183 -> 2423
    //   2609: goto -446 -> 2163
    //
    // Exception table:
    //   from	to	target	type
    //   521	626	629	java/lang/Exception
    //   372	400	634	java/lang/Exception
    //   407	420	634	java/lang/Exception
    //   679	702	728	java/lang/Exception
    //   709	721	728	java/lang/Exception
    //   783	805	1048	java/lang/Exception
    //   883	890	1077	finally
    //   895	905	1077	finally
    //   905	908	1077	finally
    //   1079	1082	1077	finally
    //   2	25	1085	finally
    //   25	42	1085	finally
    //   48	74	1085	finally
    //   79	98	1085	finally
    //   103	122	1085	finally
    //   133	158	1085	finally
    //   158	183	1085	finally
    //   183	198	1085	finally
    //   205	231	1085	finally
    //   231	264	1085	finally
    //   268	274	1085	finally
    //   277	310	1085	finally
    //   310	350	1085	finally
    //   355	367	1085	finally
    //   372	400	1085	finally
    //   407	420	1085	finally
    //   427	454	1085	finally
    //   464	485	1085	finally
    //   490	509	1085	finally
    //   514	521	1085	finally
    //   521	626	1085	finally
    //   636	657	1085	finally
    //   662	674	1085	finally
    //   679	702	1085	finally
    //   709	721	1085	finally
    //   730	751	1085	finally
    //   751	758	1085	finally
    //   766	778	1085	finally
    //   783	805	1085	finally
    //   805	829	1085	finally
    //   829	833	1085	finally
    //   833	883	1085	finally
    //   908	914	1085	finally
    //   917	942	1085	finally
    //   942	960	1085	finally
    //   965	971	1085	finally
    //   975	988	1085	finally
    //   991	1014	1085	finally
    //   1021	1045	1085	finally
    //   1050	1071	1085	finally
    //   1082	1085	1085	finally
    //   1094	1103	1085	finally
    //   1113	1117	1085	finally
    //   1124	1133	1085	finally
    //   1138	1144	1085	finally
    //   1156	1159	1085	finally
    //   1159	1168	1085	finally
    //   1171	1203	1085	finally
    //   1211	1214	1085	finally
    //   1214	1221	1085	finally
    //   1225	1240	1085	finally
    //   1249	1278	1085	finally
    //   1288	1306	1085	finally
    //   1310	1318	1085	finally
    //   1322	1328	1085	finally
    //   1337	1344	1085	finally
    //   1349	1358	1085	finally
    //   1363	1378	1085	finally
    //   1383	1394	1085	finally
    //   1416	1419	1085	finally
    //   1421	1447	1085	finally
    //   1454	1467	1085	finally
    //   1474	1483	1085	finally
    //   1486	1512	1085	finally
    //   1517	1527	1085	finally
    //   1527	1534	1085	finally
    //   1534	1542	1085	finally
    //   1550	1553	1085	finally
    //   1553	1584	1085	finally
    //   1587	1616	1085	finally
    //   1619	1642	1085	finally
    //   1647	1654	1085	finally
    //   1654	1667	1085	finally
    //   1672	1700	1085	finally
    //   1700	1709	1085	finally
    //   1711	1742	1085	finally
    //   1752	1766	1085	finally
    //   1775	1790	1085	finally
    //   1798	1807	1085	finally
    //   1810	1825	1085	finally
    //   1825	1846	1085	finally
    //   1849	1883	1085	finally
    //   1886	1934	1085	finally
    //   1939	1998	1085	finally
    //   2003	2018	1085	finally
    //   2027	2034	1085	finally
    //   2034	2074	1085	finally
    //   2077	2120	1085	finally
    //   2136	2148	1085	finally
    //   2152	2160	1085	finally
    //   2163	2221	1085	finally
    //   2221	2345	1085	finally
    //   2345	2363	1085	finally
    //   2366	2371	1085	finally
    //   2374	2387	1085	finally
    //   2390	2410	1085	finally
    //   2413	2420	1085	finally
    //   2427	2475	1085	finally
    //   2478	2499	1085	finally
    //   917	942	1092	java/lang/Exception
    //   942	960	1092	java/lang/Exception
    //   1103	1113	1151	finally
    //   1153	1156	1151	finally
    //   1168	1171	1206	finally
    //   1208	1211	1206	finally
    //   1278	1288	1411	finally
    //   1413	1416	1411	finally
    //   1225	1240	1419	java/lang/Throwable
    //   1249	1278	1419	java/lang/Throwable
    //   1288	1306	1419	java/lang/Throwable
    //   1310	1318	1419	java/lang/Throwable
    //   1322	1328	1419	java/lang/Throwable
    //   1337	1344	1419	java/lang/Throwable
    //   1349	1358	1419	java/lang/Throwable
    //   1363	1378	1419	java/lang/Throwable
    //   1383	1394	1419	java/lang/Throwable
    //   1416	1419	1419	java/lang/Throwable
    //   1474	1483	1419	java/lang/Throwable
    //   1486	1512	1419	java/lang/Throwable
    //   1517	1527	1419	java/lang/Throwable
    //   1527	1534	1419	java/lang/Throwable
    //   1534	1542	1419	java/lang/Throwable
    //   1550	1553	1419	java/lang/Throwable
    //   1483	1486	1545	finally
    //   1547	1550	1545	finally
    //   1138	1144	2502	java/lang/Exception
    //   1322	1328	2507	java/lang/Exception
    //   490	509	2512	java/lang/Exception
    //   205	231	2517	java/lang/Exception
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 209	com/loc/ag:l	Z
    //   7: iconst_0
    //   8: putstatic 1264	com/loc/dp:n	Z
    //   11: aload_0
    //   12: invokevirtual 529	com/loc/ag:e	()V
    //   15: aload_0
    //   16: aconst_null
    //   17: putfield 159	com/loc/ag:c	Lcom/loc/ce;
    //   20: aload_0
    //   21: aconst_null
    //   22: putfield 161	com/loc/ag:M	Lcom/loc/ck;
    //   25: aload_0
    //   26: aconst_null
    //   27: putfield 175	com/loc/ag:S	Ljava/lang/String;
    //   30: aload_0
    //   31: invokespecial 1047	com/loc/ag:t	()V
    //   34: aload_0
    //   35: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   38: ifnull +116 -> 154
    //   41: aload_0
    //   42: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   45: astore_3
    //   46: aload_3
    //   47: getfield 1266	com/loc/al:f	Z
    //   50: ifeq +14 -> 64
    //   53: aload_3
    //   54: getfield 1268	com/loc/al:a	Landroid/content/Context;
    //   57: aload_3
    //   58: getfield 1271	com/loc/al:d	Landroid/content/ServiceConnection;
    //   61: invokevirtual 1275	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   64: aload_3
    //   65: getfield 1277	com/loc/al:g	Z
    //   68: ifeq +14 -> 82
    //   71: aload_3
    //   72: getfield 1268	com/loc/al:a	Landroid/content/Context;
    //   75: aload_3
    //   76: getfield 1279	com/loc/al:e	Landroid/content/ServiceConnection;
    //   79: invokevirtual 1275	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   82: aload_3
    //   83: aconst_null
    //   84: putfield 1282	com/loc/al:c	Lcom/loc/dv;
    //   87: aload_3
    //   88: aconst_null
    //   89: putfield 1268	com/loc/al:a	Landroid/content/Context;
    //   92: aload_3
    //   93: aconst_null
    //   94: putfield 1282	com/loc/al:c	Lcom/loc/dv;
    //   97: aload_3
    //   98: aconst_null
    //   99: putfield 1271	com/loc/al:d	Landroid/content/ServiceConnection;
    //   102: aload_3
    //   103: aconst_null
    //   104: putfield 1279	com/loc/al:e	Landroid/content/ServiceConnection;
    //   107: aload_3
    //   108: getfield 1285	com/loc/al:h	Lcom/loc/ao;
    //   111: ifnull +13 -> 124
    //   114: aload_3
    //   115: getfield 1285	com/loc/al:h	Lcom/loc/ao;
    //   118: iconst_m1
    //   119: invokeinterface 1288 2 0
    //   124: aload_3
    //   125: iconst_1
    //   126: putfield 1290	com/loc/al:b	Z
    //   129: aload_3
    //   130: iconst_0
    //   131: putfield 1266	com/loc/al:f	Z
    //   134: aload_3
    //   135: iconst_0
    //   136: putfield 1277	com/loc/al:g	Z
    //   139: aload_0
    //   140: aconst_null
    //   141: putfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   144: aload_0
    //   145: iconst_0
    //   146: putfield 183	com/loc/ag:i	Z
    //   149: aload_0
    //   150: iconst_m1
    //   151: putfield 181	com/loc/ag:h	I
    //   154: aload_0
    //   155: invokespecial 442	com/loc/ag:p	()V
    //   158: invokestatic 1295	com/loc/bk:a	()Lcom/loc/bk;
    //   161: astore 4
    //   163: aload_0
    //   164: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   167: astore_3
    //   168: aload_3
    //   169: ifnull +40 -> 209
    //   172: aload_3
    //   173: ldc_w 1297
    //   176: iconst_0
    //   177: aconst_null
    //   178: invokevirtual 1301	android/content/Context:openOrCreateDatabase	(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   181: astore_3
    //   182: aload 4
    //   184: aload_3
    //   185: ldc_w 1303
    //   188: invokevirtual 1306	com/loc/bk:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    //   191: ifne +207 -> 398
    //   194: aload_3
    //   195: ifnull +14 -> 209
    //   198: aload_3
    //   199: invokevirtual 1311	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   202: ifeq +7 -> 209
    //   205: aload_3
    //   206: invokevirtual 1314	android/database/sqlite/SQLiteDatabase:close	()V
    //   209: invokestatic 227	com/loc/av:a	()Lcom/loc/av;
    //   212: invokevirtual 1145	com/loc/av:b	()V
    //   215: invokestatic 1315	com/loc/by:h	()V
    //   218: aload_0
    //   219: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   222: ifnull +14 -> 236
    //   225: aload_0
    //   226: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   229: aload_0
    //   230: getfield 121	com/loc/ag:w	Lcom/loc/ak;
    //   233: invokevirtual 1319	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   236: aload_0
    //   237: aconst_null
    //   238: putfield 121	com/loc/ag:w	Lcom/loc/ak;
    //   241: aload_0
    //   242: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   245: ifnull +61 -> 306
    //   248: aload_0
    //   249: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   252: astore_3
    //   253: aload_3
    //   254: getfield 584	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   257: ifnull +26 -> 283
    //   260: aload_3
    //   261: getfield 1322	com/loc/bc:g	Landroid/telephony/PhoneStateListener;
    //   264: astore 4
    //   266: aload 4
    //   268: ifnull +15 -> 283
    //   271: aload_3
    //   272: getfield 584	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   275: aload_3
    //   276: getfield 1322	com/loc/bc:g	Landroid/telephony/PhoneStateListener;
    //   279: iconst_0
    //   280: invokevirtual 1326	android/telephony/TelephonyManager:listen	(Landroid/telephony/PhoneStateListener;I)V
    //   283: aload_3
    //   284: getfield 586	com/loc/bc:b	Ljava/util/ArrayList;
    //   287: invokevirtual 959	java/util/ArrayList:clear	()V
    //   290: aload_3
    //   291: bipush 143
    //   293: putfield 1327	com/loc/bc:c	I
    //   296: aload_3
    //   297: aconst_null
    //   298: putfield 584	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   301: aload_3
    //   302: aconst_null
    //   303: putfield 1329	com/loc/bc:e	Ljava/lang/Object;
    //   306: invokestatic 1040	com/loc/bi:a	()Lcom/loc/bi;
    //   309: invokevirtual 1330	com/loc/bi:b	()V
    //   312: invokestatic 250	com/loc/bm:a	()Lcom/loc/bm;
    //   315: astore_3
    //   316: invokestatic 250	com/loc/bm:a	()Lcom/loc/bm;
    //   319: astore 4
    //   321: aload 4
    //   323: getfield 1333	com/loc/bm:a	Ljava/util/Hashtable;
    //   326: invokevirtual 1334	java/util/Hashtable:isEmpty	()Z
    //   329: ifne +11 -> 340
    //   332: aload 4
    //   334: getfield 1333	com/loc/bm:a	Ljava/util/Hashtable;
    //   337: invokevirtual 956	java/util/Hashtable:clear	()V
    //   340: aload_3
    //   341: iconst_0
    //   342: putfield 1335	com/loc/bm:b	Z
    //   345: invokestatic 1337	com/loc/ba:a	()V
    //   348: aload_0
    //   349: invokespecial 894	com/loc/ag:v	()V
    //   352: aload_0
    //   353: lconst_0
    //   354: putfield 129	com/loc/ag:y	J
    //   357: aload_0
    //   358: lconst_0
    //   359: putfield 171	com/loc/ag:Q	J
    //   362: aload_0
    //   363: invokespecial 526	com/loc/ag:l	()V
    //   366: aload_0
    //   367: aconst_null
    //   368: putfield 127	com/loc/ag:b	Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   371: aload_0
    //   372: aconst_null
    //   373: putfield 98	com/loc/ag:p	Landroid/content/Context;
    //   376: iconst_m1
    //   377: putstatic 1340	com/loc/dz:a	I
    //   380: aload_0
    //   381: monitorexit
    //   382: return
    //   383: astore 4
    //   385: aload 4
    //   387: invokevirtual 1341	java/lang/IllegalArgumentException:printStackTrace	()V
    //   390: goto -308 -> 82
    //   393: astore_3
    //   394: aload_0
    //   395: monitorexit
    //   396: aload_3
    //   397: athrow
    //   398: invokestatic 1091	com/loc/by:a	()J
    //   401: lstore_1
    //   402: aload_3
    //   403: new 89	java/lang/StringBuilder
    //   406: dup
    //   407: ldc_w 1303
    //   410: invokespecial 820	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   413: aload 4
    //   415: getfield 1342	com/loc/bk:a	Ljava/lang/String;
    //   418: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: invokevirtual 406	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: ldc_w 1344
    //   427: iconst_1
    //   428: anewarray 239	java/lang/String
    //   431: dup
    //   432: iconst_0
    //   433: lload_1
    //   434: ldc2_w 1345
    //   437: lsub
    //   438: invokestatic 874	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   441: aastore
    //   442: invokevirtual 1349	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   445: pop
    //   446: aload_3
    //   447: ifnull -238 -> 209
    //   450: aload_3
    //   451: invokevirtual 1311	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   454: ifeq -245 -> 209
    //   457: aload_3
    //   458: invokevirtual 1314	android/database/sqlite/SQLiteDatabase:close	()V
    //   461: goto -252 -> 209
    //   464: astore 4
    //   466: aload 4
    //   468: invokevirtual 1352	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   471: astore 4
    //   473: aload 4
    //   475: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   478: ifne -32 -> 446
    //   481: aload 4
    //   483: ldc_w 1354
    //   486: invokevirtual 523	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   489: pop
    //   490: goto -44 -> 446
    //   493: astore_3
    //   494: aload_0
    //   495: aconst_null
    //   496: putfield 121	com/loc/ag:w	Lcom/loc/ak;
    //   499: goto -258 -> 241
    //   502: astore_3
    //   503: aload_0
    //   504: aconst_null
    //   505: putfield 121	com/loc/ag:w	Lcom/loc/ak;
    //   508: aload_3
    //   509: athrow
    //   510: astore 4
    //   512: goto -229 -> 283
    //   515: astore 4
    //   517: goto -435 -> 82
    //   520: astore_3
    //   521: goto -312 -> 209
    //
    // Exception table:
    //   from	to	target	type
    //   46	64	383	java/lang/IllegalArgumentException
    //   64	82	383	java/lang/IllegalArgumentException
    //   2	46	393	finally
    //   46	64	393	finally
    //   64	82	393	finally
    //   82	124	393	finally
    //   124	154	393	finally
    //   154	158	393	finally
    //   158	168	393	finally
    //   172	194	393	finally
    //   198	209	393	finally
    //   209	218	393	finally
    //   236	241	393	finally
    //   241	266	393	finally
    //   271	283	393	finally
    //   283	306	393	finally
    //   306	340	393	finally
    //   340	380	393	finally
    //   385	390	393	finally
    //   398	402	393	finally
    //   402	446	393	finally
    //   450	461	393	finally
    //   466	490	393	finally
    //   494	499	393	finally
    //   503	510	393	finally
    //   402	446	464	android/database/sqlite/SQLiteException
    //   218	236	493	java/lang/Exception
    //   218	236	502	finally
    //   271	283	510	java/lang/Exception
    //   46	64	515	java/lang/Throwable
    //   64	82	515	java/lang/Throwable
    //   158	168	520	java/lang/Exception
    //   172	194	520	java/lang/Exception
    //   198	209	520	java/lang/Exception
    //   398	402	520	java/lang/Exception
    //   402	446	520	java/lang/Exception
    //   450	461	520	java/lang/Exception
    //   466	490	520	java/lang/Exception
  }

  // ERROR //
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: getstatic 826	com/loc/dp:k	Ljava/lang/String;
    //   12: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifeq +10 -> 25
    //   18: aload_1
    //   19: invokestatic 828	com/loc/by:b	(Landroid/content/Context;)Ljava/lang/String;
    //   22: putstatic 826	com/loc/dp:k	Ljava/lang/String;
    //   25: aload_0
    //   26: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   29: ifnonnull -23 -> 6
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 1359	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   37: putfield 98	com/loc/ag:p	Landroid/content/Context;
    //   40: aload_0
    //   41: aload_1
    //   42: invokestatic 1362	com/loc/bq:a	(Landroid/content/Context;)Lcom/loc/bq;
    //   45: putfield 179	com/loc/ag:e	Lcom/loc/bq;
    //   48: aload_0
    //   49: aload_0
    //   50: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   53: invokestatic 1365	com/loc/ce:a	(Landroid/content/Context;)Lcom/loc/ce;
    //   56: putfield 159	com/loc/ag:c	Lcom/loc/ce;
    //   59: aload_0
    //   60: invokestatic 314	com/loc/by:b	()J
    //   63: putfield 133	com/loc/ag:A	J
    //   66: aload_0
    //   67: new 967	com/loc/be
    //   70: dup
    //   71: aload_0
    //   72: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   75: aload_0
    //   76: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   79: ldc_w 1367
    //   82: invokestatic 1370	com/loc/by:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    //   85: checkcast 505	android/net/wifi/WifiManager
    //   88: aload_0
    //   89: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   92: invokespecial 1373	com/loc/be:<init>	(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V
    //   95: putfield 102	com/loc/ag:r	Lcom/loc/be;
    //   98: aload_0
    //   99: aload_0
    //   100: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   103: ldc_w 1375
    //   106: invokestatic 1370	com/loc/by:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    //   109: checkcast 600	android/net/ConnectivityManager
    //   112: putfield 100	com/loc/ag:q	Landroid/net/ConnectivityManager;
    //   115: new 1377	android/content/IntentFilter
    //   118: dup
    //   119: invokespecial 1378	android/content/IntentFilter:<init>	()V
    //   122: astore_2
    //   123: aload_2
    //   124: ldc_w 1380
    //   127: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   130: aload_2
    //   131: ldc_w 1385
    //   134: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   137: aload_2
    //   138: ldc_w 1387
    //   141: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   144: aload_2
    //   145: ldc_w 1389
    //   148: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   151: aload_2
    //   152: ldc_w 1391
    //   155: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   158: aload_2
    //   159: ldc_w 1393
    //   162: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   165: aload_2
    //   166: ldc_w 1395
    //   169: invokevirtual 1383	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   172: aload_0
    //   173: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   176: aload_0
    //   177: getfield 121	com/loc/ag:w	Lcom/loc/ak;
    //   180: aload_2
    //   181: invokevirtual 1399	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   184: pop
    //   185: aload_0
    //   186: invokespecial 1209	com/loc/ag:m	()V
    //   189: aload_0
    //   190: new 579	com/loc/bc
    //   193: dup
    //   194: aload_0
    //   195: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   198: aload_0
    //   199: getfield 125	com/loc/ag:a	Lorg/json/JSONObject;
    //   202: invokespecial 1402	com/loc/bc:<init>	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   205: putfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   208: aload_0
    //   209: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   212: invokevirtual 1250	com/loc/bc:d	()V
    //   215: iconst_1
    //   216: putstatic 1264	com/loc/dp:n	Z
    //   219: aload_0
    //   220: new 806	com/loc/bu
    //   223: dup
    //   224: invokespecial 1403	com/loc/bu:<init>	()V
    //   227: putfield 151	com/loc/ag:I	Lcom/loc/bu;
    //   230: aload_0
    //   231: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   234: invokevirtual 1008	com/loc/bc:b	()Landroid/telephony/CellLocation;
    //   237: pop
    //   238: invokestatic 1040	com/loc/bi:a	()Lcom/loc/bi;
    //   241: aload_1
    //   242: invokevirtual 1405	com/loc/bi:a	(Landroid/content/Context;)V
    //   245: invokestatic 250	com/loc/bm:a	()Lcom/loc/bm;
    //   248: aload_1
    //   249: invokevirtual 1406	com/loc/bm:a	(Landroid/content/Context;)V
    //   252: aload_0
    //   253: iconst_1
    //   254: putfield 209	com/loc/ag:l	Z
    //   257: goto -251 -> 6
    //   260: astore_1
    //   261: aload_0
    //   262: monitorexit
    //   263: aload_1
    //   264: athrow
    //   265: astore_2
    //   266: aload_2
    //   267: invokevirtual 1089	java/lang/Throwable:printStackTrace	()V
    //   270: goto -81 -> 189
    //   273: astore_2
    //   274: goto -215 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   9	25	260	finally
    //   25	48	260	finally
    //   48	59	260	finally
    //   59	66	260	finally
    //   66	189	260	finally
    //   189	257	260	finally
    //   266	270	260	finally
    //   66	189	265	java/lang/Throwable
    //   48	59	273	java/lang/Exception
  }

  public final void a(JSONObject paramJSONObject)
  {
    this.a = paramJSONObject;
    if (by.a(paramJSONObject, "collwifiscan"));
    try
    {
      String str = paramJSONObject.getString("collwifiscan");
      if (TextUtils.isEmpty(str));
      for (dp.m = 20; ; dp.m = Integer.parseInt(str) / 1000)
      {
        if (c())
          this.c.a(dp.m * 1000);
        label56: if (this.s != null)
          this.s.f = paramJSONObject;
        if (this.r != null)
          this.r.b = paramJSONObject;
        return;
      }
    }
    catch (Exception localException)
    {
      break label56;
    }
  }

  public final String b()
  {
    try
    {
      if (this.s.a(this.B))
        this.s.d();
      try
      {
        Object localObject1 = i();
        localObject1 = ((StringBuilder)localObject1).toString();
        return localObject1;
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          localThrowable.printStackTrace();
          f.append("get parames error:" + localThrowable.getMessage());
          Object localObject2 = null;
        }
      }
    }
    finally
    {
    }
  }

  public final String b(boolean paramBoolean)
  {
    int i2 = 0;
    Object localObject3;
    label54: int i1;
    Object localObject4;
    while (true)
    {
      try
      {
        if (this.B)
        {
          this.s.e();
          localObject1 = "";
          if (!n())
            break label217;
          localObject3 = this.r;
          if (((be)localObject3).a == null)
            break;
          localObject3 = ((be)localObject3).a.getConnectionInfo();
          this.x = ((WifiInfo)localObject3);
          i1 = this.s.a;
          localObject4 = this.s.b;
          localObject3 = this.t;
          if (((localObject4 != null) && (!((ArrayList)localObject4).isEmpty())) || ((localObject3 != null) && (!((List)localObject3).isEmpty())))
            break label888;
          f.append("⊗ lstCgi & ⊗ wifis");
          this.m = 12;
          localObject3 = localObject1;
          return localObject3;
        }
        Object localObject1 = this.s;
        switch (((bc)localObject1).a)
        {
        case 1:
          if (!((bc)localObject1).b.isEmpty())
            continue;
          ((bc)localObject1).a = 9;
          continue;
        case 2:
        }
      }
      finally
      {
      }
      if (localCharSequence.b.isEmpty())
      {
        localCharSequence.a = 9;
        continue;
        label217: l();
      }
    }
    label224: this.m = 11;
    f.append("get cgi failure");
    Object localObject2;
    while (true)
    {
      localObject3 = localCharSequence;
      if (TextUtils.isEmpty(localCharSequence))
        break;
      localObject3 = localCharSequence;
      if (!localCharSequence.startsWith("#"))
        localObject3 = "#" + localCharSequence;
      localObject3 = by.i() + (String)localObject3;
      break;
      if (!((ArrayList)localObject4).isEmpty())
      {
        localObject2 = (bb)((ArrayList)localObject4).get(0);
        localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append(((bb)localObject2).a).append("#");
        ((StringBuilder)localObject4).append(((bb)localObject2).b).append("#");
        ((StringBuilder)localObject4).append(((bb)localObject2).c).append("#");
        ((StringBuilder)localObject4).append(((bb)localObject2).d).append("#");
        ((StringBuilder)localObject4).append("network").append("#");
        if (!((List)localObject3).isEmpty())
          break label927;
        if (!a(this.x))
          break label935;
        break label927;
        label447: ((StringBuilder)localObject4).append((String)localObject2);
        localObject2 = ((StringBuilder)localObject4).toString();
        continue;
        if (!((ArrayList)localObject4).isEmpty())
        {
          localObject2 = (bb)((ArrayList)localObject4).get(0);
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append(((bb)localObject2).a).append("#");
          ((StringBuilder)localObject4).append(((bb)localObject2).b).append("#");
          ((StringBuilder)localObject4).append(((bb)localObject2).g).append("#");
          ((StringBuilder)localObject4).append(((bb)localObject2).h).append("#");
          ((StringBuilder)localObject4).append(((bb)localObject2).i).append("#");
          ((StringBuilder)localObject4).append("network").append("#");
          if (!((List)localObject3).isEmpty())
            break label943;
          if (!a(this.x))
            break label951;
          break label943;
          label616: ((StringBuilder)localObject4).append((String)localObject2);
          localObject2 = ((StringBuilder)localObject4).toString();
        }
      }
    }
    if (((List)localObject3).isEmpty())
      if (a(this.x))
        break label959;
    while (true)
    {
      if (!paramBoolean)
        if ((a(this.x)) && (((List)localObject3).isEmpty()))
        {
          this.m = 2;
          f.append("⊗ around wifi(s) & has access wifi");
          i1 = i2;
        }
      label871: 
      while (true)
      {
        localObject2 = String.format(Locale.US, "#%s#", new Object[] { "network" });
        if (i1 != 0)
        {
          localObject2 = (String)localObject2 + "wifi";
          break;
          if (((List)localObject3).size() != 1)
            break label871;
          this.m = 2;
          if (!a(this.x))
          {
            f.append("⊗ access wifi & around wifi 1");
            i1 = i2;
            continue;
          }
          localObject2 = ((ScanResult)((List)localObject3).get(0)).BSSID;
          if (!this.x.getBSSID().equals(localObject2))
            break label871;
          f.append("same access wifi & around wifi 1");
          i1 = i2;
          continue;
        }
        if (!"network".equals("network"))
          break;
        localObject2 = "";
        this.m = 2;
        f.append("is network & no wifi");
        break;
      }
      i1 = 0;
      continue;
      break;
      localObject3 = null;
      break label54;
      label888: switch (i1)
      {
      case 1:
      case 2:
      case 9:
      }
      break label224;
      label927: localObject2 = "cgiwifi";
      break label447;
      label935: localObject2 = "cgi";
      break label447;
      label943: localObject2 = "cgiwifi";
      break label616;
      label951: localObject2 = "cgi";
      break label616;
      label959: i1 = 1;
    }
  }

  // ERROR //
  public final void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 1340	com/loc/dz:a	I
    //   5: iconst_m1
    //   6: if_icmpne +24 -> 30
    //   9: ldc_w 851
    //   12: invokestatic 1454	com/loc/dp:a	(Ljava/lang/String;)Lcom/loc/eo;
    //   15: astore_2
    //   16: aload_0
    //   17: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   20: aload_2
    //   21: invokestatic 1457	com/loc/dz:b	(Landroid/content/Context;Lcom/loc/eo;)Z
    //   24: pop
    //   25: aload_1
    //   26: invokestatic 1458	com/loc/bv:a	(Landroid/content/Context;)Z
    //   29: pop
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: astore_1
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_1
    //   37: athrow
    //   38: astore_1
    //   39: goto -9 -> 30
    //
    // Exception table:
    //   from	to	target	type
    //   2	30	33	finally
    //   2	30	38	java/lang/Throwable
  }

  // ERROR //
  public final StringBuilder c(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 577	com/loc/ag:s	Lcom/loc/bc;
    //   8: astore 5
    //   10: aload_0
    //   11: getfield 135	com/loc/ag:B	Z
    //   14: ifeq +8 -> 22
    //   17: aload 5
    //   19: invokevirtual 1420	com/loc/bc:e	()V
    //   22: new 89	java/lang/StringBuilder
    //   25: dup
    //   26: sipush 700
    //   29: invokespecial 1460	java/lang/StringBuilder:<init>	(I)V
    //   32: astore 7
    //   34: aload 5
    //   36: getfield 581	com/loc/bc:a	I
    //   39: istore_2
    //   40: aload 5
    //   42: getfield 586	com/loc/bc:b	Ljava/util/ArrayList;
    //   45: astore 5
    //   47: iload_2
    //   48: tableswitch	default:+456 -> 504, 1:+459->507
    //   69: ifne +13 -> 82
    //   72: aload_0
    //   73: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   76: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   79: ifne +15 -> 94
    //   82: aload_0
    //   83: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   86: ldc 145
    //   88: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifeq +120 -> 211
    //   94: aload_0
    //   95: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   98: ifnull +113 -> 211
    //   101: aload_0
    //   102: aload_0
    //   103: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   106: invokevirtual 1463	android/net/wifi/WifiInfo:getMacAddress	()Ljava/lang/String;
    //   109: putfield 147	com/loc/ag:G	Ljava/lang/String;
    //   112: aload_0
    //   113: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   116: ifnull +79 -> 195
    //   119: aload_0
    //   120: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   123: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   126: ifne +69 -> 195
    //   129: aload_0
    //   130: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   133: ldc_w 378
    //   136: iconst_0
    //   137: invokevirtual 384	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   140: astore 8
    //   142: aconst_null
    //   143: astore 5
    //   145: aload_0
    //   146: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   149: ldc_w 408
    //   152: invokevirtual 412	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   155: invokestatic 417	com/loc/ej:a	([B)Ljava/lang/String;
    //   158: astore 6
    //   160: aload 6
    //   162: astore 5
    //   164: aload 5
    //   166: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifne +26 -> 195
    //   172: aload 8
    //   174: invokeinterface 423 1 0
    //   179: ldc_w 1201
    //   182: aload 5
    //   184: invokeinterface 431 3 0
    //   189: invokeinterface 983 1 0
    //   194: pop
    //   195: aload_0
    //   196: getfield 147	com/loc/ag:G	Ljava/lang/String;
    //   199: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   202: ifeq +9 -> 211
    //   205: aload_0
    //   206: ldc 145
    //   208: putfield 147	com/loc/ag:G	Ljava/lang/String;
    //   211: aload_0
    //   212: invokespecial 612	com/loc/ag:n	()Z
    //   215: ifeq +262 -> 477
    //   218: aload_0
    //   219: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   222: invokestatic 614	com/loc/ag:a	(Landroid/net/wifi/WifiInfo;)Z
    //   225: ifeq +271 -> 496
    //   228: aload_0
    //   229: getfield 123	com/loc/ag:x	Landroid/net/wifi/WifiInfo;
    //   232: invokevirtual 515	android/net/wifi/WifiInfo:getBSSID	()Ljava/lang/String;
    //   235: astore 5
    //   237: aload_0
    //   238: getfield 107	com/loc/ag:t	Ljava/util/ArrayList;
    //   241: astore 8
    //   243: aload 8
    //   245: invokeinterface 695 1 0
    //   250: istore 4
    //   252: iconst_0
    //   253: istore_2
    //   254: iload_2
    //   255: iload 4
    //   257: if_icmpge +165 -> 422
    //   260: aload 8
    //   262: iload_2
    //   263: invokeinterface 701 2 0
    //   268: checkcast 703	android/net/wifi/ScanResult
    //   271: getfield 706	android/net/wifi/ScanResult:BSSID	Ljava/lang/String;
    //   274: astore 9
    //   276: ldc_w 1465
    //   279: astore 6
    //   281: aload 5
    //   283: aload 9
    //   285: invokevirtual 243	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   288: ifeq +10 -> 298
    //   291: ldc_w 1467
    //   294: astore 6
    //   296: iconst_1
    //   297: istore_3
    //   298: aload 7
    //   300: getstatic 777	java/util/Locale:US	Ljava/util/Locale;
    //   303: ldc_w 1469
    //   306: iconst_2
    //   307: anewarray 4	java/lang/Object
    //   310: dup
    //   311: iconst_0
    //   312: aload 9
    //   314: aastore
    //   315: dup
    //   316: iconst_1
    //   317: aload 6
    //   319: aastore
    //   320: invokestatic 783	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   323: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: pop
    //   327: iload_2
    //   328: iconst_1
    //   329: iadd
    //   330: istore_2
    //   331: goto -77 -> 254
    //   334: iload_2
    //   335: aload 5
    //   337: invokevirtual 264	java/util/ArrayList:size	()I
    //   340: if_icmpge -272 -> 68
    //   343: aload 7
    //   345: ldc_w 1430
    //   348: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 5
    //   353: iload_2
    //   354: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   357: checkcast 714	com/loc/bb
    //   360: getfield 722	com/loc/bb:b	Ljava/lang/String;
    //   363: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: pop
    //   367: aload 7
    //   369: ldc_w 1471
    //   372: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: aload 5
    //   377: iload_2
    //   378: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   381: checkcast 714	com/loc/bb
    //   384: getfield 728	com/loc/bb:c	I
    //   387: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   390: pop
    //   391: aload 7
    //   393: ldc_w 1471
    //   396: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: aload 5
    //   401: iload_2
    //   402: invokevirtual 268	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   405: checkcast 714	com/loc/bb
    //   408: getfield 734	com/loc/bb:d	I
    //   411: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   414: pop
    //   415: iload_2
    //   416: iconst_1
    //   417: iadd
    //   418: istore_2
    //   419: goto -85 -> 334
    //   422: iload_3
    //   423: ifne +34 -> 457
    //   426: aload 5
    //   428: invokestatic 304	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   431: ifne +26 -> 457
    //   434: aload 7
    //   436: ldc_w 1430
    //   439: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: aload 5
    //   444: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: pop
    //   448: aload 7
    //   450: ldc_w 1473
    //   453: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: pop
    //   457: aload 7
    //   459: invokevirtual 432	java/lang/StringBuilder:length	()I
    //   462: ifle +10 -> 472
    //   465: aload 7
    //   467: iconst_0
    //   468: invokevirtual 405	java/lang/StringBuilder:deleteCharAt	(I)Ljava/lang/StringBuilder;
    //   471: pop
    //   472: aload_0
    //   473: monitorexit
    //   474: aload 7
    //   476: areturn
    //   477: aload_0
    //   478: invokespecial 526	com/loc/ag:l	()V
    //   481: goto -24 -> 457
    //   484: astore 5
    //   486: aload_0
    //   487: monitorexit
    //   488: aload 5
    //   490: athrow
    //   491: astore 6
    //   493: goto -329 -> 164
    //   496: ldc_w 531
    //   499: astore 5
    //   501: goto -264 -> 237
    //   504: goto -436 -> 68
    //   507: iconst_1
    //   508: istore_2
    //   509: goto -175 -> 334
    //
    // Exception table:
    //   from	to	target	type
    //   4	22	484	finally
    //   22	47	484	finally
    //   72	82	484	finally
    //   82	94	484	finally
    //   94	142	484	finally
    //   145	160	484	finally
    //   164	195	484	finally
    //   195	211	484	finally
    //   211	237	484	finally
    //   237	252	484	finally
    //   260	276	484	finally
    //   281	291	484	finally
    //   298	327	484	finally
    //   334	415	484	finally
    //   426	457	484	finally
    //   457	472	484	finally
    //   477	481	484	finally
    //   145	160	491	java/lang/Exception
  }

  final boolean c()
  {
    try
    {
      if (!o())
        return false;
      boolean bool = ce.d();
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  final void d()
  {
    if (!o());
    while (true)
    {
      return;
      if ((!o()) || (this.c.g() <= 0))
        try
        {
          if (o())
          {
            this.c.f();
            return;
          }
        }
        catch (Exception localException)
        {
        }
    }
  }

  final void e()
  {
    if (!c());
    while (true)
    {
      return;
      dp.m = 20;
      try
      {
        ce localce = this.c;
        if (localce.c)
        {
          localce.c();
          return;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  final void g()
  {
    if (!o())
      return;
    try
    {
      this.c.a();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  public final void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 143	com/loc/ag:F	I
    //   6: ifle +117 -> 123
    //   9: aload_0
    //   10: getfield 183	com/loc/ag:i	Z
    //   13: ifne +110 -> 123
    //   16: aload_0
    //   17: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   20: ifnonnull +75 -> 95
    //   23: aload_0
    //   24: new 1235	com/loc/al
    //   27: dup
    //   28: aload_0
    //   29: getfield 98	com/loc/ag:p	Landroid/content/Context;
    //   32: invokevirtual 1359	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   35: invokespecial 1483	com/loc/al:<init>	(Landroid/content/Context;)V
    //   38: putfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   41: aload_0
    //   42: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   45: astore_2
    //   46: aload_0
    //   47: getfield 220	com/loc/ag:o	Lcom/loc/aj;
    //   50: astore_3
    //   51: aload_2
    //   52: aload_3
    //   53: putfield 1285	com/loc/al:h	Lcom/loc/ao;
    //   56: aload_2
    //   57: getfield 1271	com/loc/al:d	Landroid/content/ServiceConnection;
    //   60: ifnonnull +16 -> 76
    //   63: aload_2
    //   64: new 1485	com/loc/am
    //   67: dup
    //   68: aload_2
    //   69: aload_3
    //   70: invokespecial 1488	com/loc/am:<init>	(Lcom/loc/al;Lcom/loc/ao;)V
    //   73: putfield 1271	com/loc/al:d	Landroid/content/ServiceConnection;
    //   76: aload_2
    //   77: getfield 1279	com/loc/al:e	Landroid/content/ServiceConnection;
    //   80: ifnonnull +15 -> 95
    //   83: aload_2
    //   84: new 1490	com/loc/an
    //   87: dup
    //   88: aload_2
    //   89: invokespecial 1493	com/loc/an:<init>	(Lcom/loc/al;)V
    //   92: putfield 1279	com/loc/al:e	Landroid/content/ServiceConnection;
    //   95: invokestatic 1495	com/loc/bv:p	()Z
    //   98: istore_1
    //   99: iload_1
    //   100: ifeq +52 -> 152
    //   103: aload_0
    //   104: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   107: ifnull +11 -> 118
    //   110: aload_0
    //   111: getfield 1233	com/loc/ag:g	Lcom/loc/al;
    //   114: invokevirtual 1497	com/loc/al:a	()Z
    //   117: pop
    //   118: aload_0
    //   119: iconst_1
    //   120: putfield 183	com/loc/ag:i	Z
    //   123: aload_0
    //   124: monitorexit
    //   125: return
    //   126: astore_2
    //   127: aload_2
    //   128: invokevirtual 1089	java/lang/Throwable:printStackTrace	()V
    //   131: goto -36 -> 95
    //   134: astore_2
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_2
    //   138: athrow
    //   139: astore_2
    //   140: aload_0
    //   141: iconst_1
    //   142: putfield 183	com/loc/ag:i	Z
    //   145: aload_2
    //   146: invokevirtual 1089	java/lang/Throwable:printStackTrace	()V
    //   149: goto -26 -> 123
    //   152: aload_0
    //   153: iconst_1
    //   154: putfield 183	com/loc/ag:i	Z
    //   157: goto -34 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   51	76	126	java/lang/Throwable
    //   76	95	126	java/lang/Throwable
    //   2	51	134	finally
    //   51	76	134	finally
    //   76	95	134	finally
    //   95	99	134	finally
    //   103	118	134	finally
    //   118	123	134	finally
    //   127	131	134	finally
    //   140	149	134	finally
    //   152	157	134	finally
    //   103	118	139	java/lang/Throwable
    //   118	123	139	java/lang/Throwable
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ag
 * JD-Core Version:    0.6.2
 */