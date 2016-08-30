package com.loc;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class bc
{
  int a = 9;
  ArrayList<bb> b = new ArrayList();
  int c = -113;
  TelephonyManager d;
  Object e;
  JSONObject f;
  PhoneStateListener g;
  CellLocation h;
  private Context i;
  private long j = 0L;

  public bc(Context paramContext, JSONObject paramJSONObject)
  {
    d();
    this.d = ((TelephonyManager)by.a(paramContext, "phone"));
    this.f = paramJSONObject;
    this.i = paramContext;
    try
    {
      this.a = by.a(this.d.getCellLocation(), paramContext);
      this.g = new bd(this);
      k = 0;
      if (by.c() >= 7);
    }
    catch (Exception paramContext)
    {
      try
      {
        m = bx.b("android.telephony.PhoneStateListener", "LISTEN_SIGNAL_STRENGTH");
        k = m;
        if (k == 0)
          this.d.listen(this.g, 16);
      }
      catch (Exception paramContext)
      {
        try
        {
          while (true)
          {
            int m;
            int k = i();
            switch (k)
            {
            default:
              return;
              paramContext = paramContext;
              this.a = 9;
              break;
            case 1:
            case 2:
            case 0:
              try
              {
                m = bx.b("android.telephony.PhoneStateListener", "LISTEN_SIGNAL_STRENGTHS");
                k = m;
                continue;
                try
                {
                  this.d.listen(this.g, k | 0x10);
                }
                catch (Exception paramContext)
                {
                }
                continue;
                this.e = by.a(this.i, "phone_msim");
                return;
                this.e = by.a(this.i, "phone2");
                return;
                this.e = by.a(this.i, "phone2");
                return;
                paramContext = paramContext;
              }
              catch (Exception paramContext)
              {
              }
            }
          }
        }
        catch (Throwable paramContext)
        {
        }
      }
    }
  }

  // ERROR //
  private static CellLocation a(List<?> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +12 -> 13
    //   4: aload_0
    //   5: invokeinterface 109 1 0
    //   10: ifeq +7 -> 17
    //   13: aconst_null
    //   14: astore_0
    //   15: aload_0
    //   16: areturn
    //   17: invokestatic 115	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
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
    //   34: invokeinterface 118 1 0
    //   39: if_icmpge +466 -> 505
    //   42: aload_0
    //   43: iload_2
    //   44: invokeinterface 122 2 0
    //   49: astore 12
    //   51: aload 12
    //   53: ifnull +449 -> 502
    //   56: aload 11
    //   58: ldc 124
    //   60: invokevirtual 128	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   63: astore 14
    //   65: aload 11
    //   67: ldc 130
    //   69: invokevirtual 128	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   72: astore 15
    //   74: aload 11
    //   76: ldc 132
    //   78: invokevirtual 128	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   81: astore 16
    //   83: aload 11
    //   85: ldc 134
    //   87: invokevirtual 128	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   90: astore 13
    //   92: aload 14
    //   94: aload 12
    //   96: invokevirtual 140	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   99: istore 7
    //   101: iload 7
    //   103: ifeq +51 -> 154
    //   106: iconst_1
    //   107: istore_1
    //   108: iload_1
    //   109: ifle +366 -> 475
    //   112: aconst_null
    //   113: astore 10
    //   115: iload_1
    //   116: iconst_1
    //   117: if_icmpne +91 -> 208
    //   120: aload 14
    //   122: aload 12
    //   124: invokevirtual 144	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   127: astore 10
    //   129: aload 10
    //   131: ldc 146
    //   133: iconst_0
    //   134: anewarray 4	java/lang/Object
    //   137: invokestatic 149	com/loc/bx:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   140: astore 12
    //   142: aload 12
    //   144: ifnonnull +115 -> 259
    //   147: iload_2
    //   148: iconst_1
    //   149: iadd
    //   150: istore_2
    //   151: goto -119 -> 32
    //   154: aload 15
    //   156: aload 12
    //   158: invokevirtual 140	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   161: ifeq +8 -> 169
    //   164: iconst_2
    //   165: istore_1
    //   166: goto -58 -> 108
    //   169: aload 16
    //   171: aload 12
    //   173: invokevirtual 140	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   176: ifeq +8 -> 184
    //   179: iconst_3
    //   180: istore_1
    //   181: goto -73 -> 108
    //   184: aload 13
    //   186: aload 12
    //   188: invokevirtual 140	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   191: istore 7
    //   193: iload 7
    //   195: ifeq +8 -> 203
    //   198: iconst_4
    //   199: istore_1
    //   200: goto -92 -> 108
    //   203: iconst_0
    //   204: istore_1
    //   205: goto -97 -> 108
    //   208: iload_1
    //   209: iconst_2
    //   210: if_icmpne +15 -> 225
    //   213: aload 15
    //   215: aload 12
    //   217: invokevirtual 144	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   220: astore 10
    //   222: goto -93 -> 129
    //   225: iload_1
    //   226: iconst_3
    //   227: if_icmpne +15 -> 242
    //   230: aload 16
    //   232: aload 12
    //   234: invokevirtual 144	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   237: astore 10
    //   239: goto -110 -> 129
    //   242: iload_1
    //   243: iconst_4
    //   244: if_icmpne -115 -> 129
    //   247: aload 13
    //   249: aload 12
    //   251: invokevirtual 144	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   254: astore 10
    //   256: goto -127 -> 129
    //   259: iload_1
    //   260: iconst_4
    //   261: if_icmpne +97 -> 358
    //   264: new 151	android/telephony/cdma/CdmaCellLocation
    //   267: dup
    //   268: invokespecial 152	android/telephony/cdma/CdmaCellLocation:<init>	()V
    //   271: astore 10
    //   273: aload 12
    //   275: ldc 154
    //   277: iconst_0
    //   278: anewarray 4	java/lang/Object
    //   281: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   284: istore_3
    //   285: aload 12
    //   287: ldc 159
    //   289: iconst_0
    //   290: anewarray 4	java/lang/Object
    //   293: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   296: istore 4
    //   298: aload 12
    //   300: ldc 161
    //   302: iconst_0
    //   303: anewarray 4	java/lang/Object
    //   306: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   309: istore 5
    //   311: aload 12
    //   313: ldc 163
    //   315: iconst_0
    //   316: anewarray 4	java/lang/Object
    //   319: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   322: istore 6
    //   324: aload 10
    //   326: iload 5
    //   328: aload 12
    //   330: ldc 165
    //   332: iconst_0
    //   333: anewarray 4	java/lang/Object
    //   336: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   339: iload 6
    //   341: iload_3
    //   342: iload 4
    //   344: invokevirtual 169	android/telephony/cdma/CdmaCellLocation:setCellLocationData	(IIIII)V
    //   347: aload 10
    //   349: astore_0
    //   350: iload_1
    //   351: iconst_4
    //   352: if_icmpeq -337 -> 15
    //   355: aload 8
    //   357: areturn
    //   358: iload_1
    //   359: iconst_3
    //   360: if_icmpne +59 -> 419
    //   363: aload 12
    //   365: ldc 171
    //   367: iconst_0
    //   368: anewarray 4	java/lang/Object
    //   371: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   374: istore_3
    //   375: aload 12
    //   377: ldc 173
    //   379: iconst_0
    //   380: anewarray 4	java/lang/Object
    //   383: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   386: istore 4
    //   388: new 175	android/telephony/gsm/GsmCellLocation
    //   391: dup
    //   392: invokespecial 176	android/telephony/gsm/GsmCellLocation:<init>	()V
    //   395: astore 10
    //   397: aload 10
    //   399: astore 8
    //   401: aload 10
    //   403: iload_3
    //   404: iload 4
    //   406: invokevirtual 180	android/telephony/gsm/GsmCellLocation:setLacAndCid	(II)V
    //   409: aload 9
    //   411: astore_0
    //   412: aload 10
    //   414: astore 8
    //   416: goto -66 -> 350
    //   419: aload 12
    //   421: ldc 182
    //   423: iconst_0
    //   424: anewarray 4	java/lang/Object
    //   427: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   430: istore_3
    //   431: aload 12
    //   433: ldc 184
    //   435: iconst_0
    //   436: anewarray 4	java/lang/Object
    //   439: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   442: istore 4
    //   444: new 175	android/telephony/gsm/GsmCellLocation
    //   447: dup
    //   448: invokespecial 176	android/telephony/gsm/GsmCellLocation:<init>	()V
    //   451: astore 10
    //   453: aload 10
    //   455: astore 8
    //   457: aload 10
    //   459: iload_3
    //   460: iload 4
    //   462: invokevirtual 180	android/telephony/gsm/GsmCellLocation:setLacAndCid	(II)V
    //   465: aload 9
    //   467: astore_0
    //   468: aload 10
    //   470: astore 8
    //   472: goto -122 -> 350
    //   475: goto -328 -> 147
    //   478: astore 10
    //   480: goto -333 -> 147
    //   483: astore 10
    //   485: goto -338 -> 147
    //   488: astore 9
    //   490: aload 10
    //   492: astore 9
    //   494: goto -347 -> 147
    //   497: astore 10
    //   499: goto -352 -> 147
    //   502: goto -355 -> 147
    //   505: aload 9
    //   507: astore_0
    //   508: goto -158 -> 350
    //
    // Exception table:
    //   from	to	target	type
    //   56	101	478	java/lang/Exception
    //   154	164	478	java/lang/Exception
    //   169	179	478	java/lang/Exception
    //   184	193	478	java/lang/Exception
    //   120	129	483	java/lang/Exception
    //   129	142	483	java/lang/Exception
    //   213	222	483	java/lang/Exception
    //   230	239	483	java/lang/Exception
    //   247	256	483	java/lang/Exception
    //   264	273	483	java/lang/Exception
    //   363	397	483	java/lang/Exception
    //   419	453	483	java/lang/Exception
    //   273	347	488	java/lang/Exception
    //   401	409	497	java/lang/Exception
    //   457	465	497	java/lang/Exception
  }

  private bb a(NeighboringCellInfo paramNeighboringCellInfo)
  {
    if (by.c() < 5)
      return null;
    try
    {
      bb localbb = new bb(1);
      String[] arrayOfString = by.a(this.d);
      localbb.a = arrayOfString[0];
      localbb.b = arrayOfString[1];
      localbb.c = bx.b(paramNeighboringCellInfo, "getLac", new Object[0]);
      localbb.d = paramNeighboringCellInfo.getCid();
      localbb.j = by.a(paramNeighboringCellInfo.getRssi());
      return localbb;
    }
    catch (Exception paramNeighboringCellInfo)
    {
    }
    return null;
  }

  private void b(CellLocation paramCellLocation)
  {
    if ((paramCellLocation == null) || (this.d == null));
    Object localObject;
    do
    {
      do
      {
        return;
        this.b.clear();
      }
      while (!a(paramCellLocation));
      this.a = 1;
      localObject = this.b;
      paramCellLocation = (GsmCellLocation)paramCellLocation;
      bb localbb = new bb(1);
      String[] arrayOfString = by.a(this.d);
      localbb.a = arrayOfString[0];
      localbb.b = arrayOfString[1];
      localbb.c = paramCellLocation.getLac();
      localbb.d = paramCellLocation.getCid();
      localbb.j = this.c;
      ((ArrayList)localObject).add(localbb);
      paramCellLocation = this.d.getNeighboringCellInfo();
    }
    while ((paramCellLocation == null) || (paramCellLocation.isEmpty()));
    paramCellLocation = paramCellLocation.iterator();
    label141: label299: 
    while (true)
    {
      int k;
      if (paramCellLocation.hasNext())
      {
        localObject = (NeighboringCellInfo)paramCellLocation.next();
        if (localObject != null)
          break label203;
        k = 0;
      }
      while (true)
      {
        if (k == 0)
          break label299;
        localObject = a((NeighboringCellInfo)localObject);
        if ((localObject == null) || (this.b.contains(localObject)))
          break label141;
        this.b.add(localObject);
        break label141;
        break;
        label203: if (((NeighboringCellInfo)localObject).getLac() == -1)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getLac() == 0)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getLac() > 65535)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getCid() == -1)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getCid() == 0)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getCid() == 65535)
          k = 0;
        else if (((NeighboringCellInfo)localObject).getCid() >= 268435455)
          k = 0;
        else
          k = 1;
      }
    }
  }

  private CellLocation f()
  {
    TelephonyManager localTelephonyManager = this.d;
    Object localObject3;
    if (localTelephonyManager == null)
      localObject3 = null;
    while (true)
    {
      return localObject3;
      try
      {
        localObject1 = localTelephonyManager.getCellLocation();
        localObject3 = localObject1;
        if (a((CellLocation)localObject1))
          continue;
      }
      catch (Exception localException1)
      {
        try
        {
          localObject3 = a((List)bx.a(localTelephonyManager, "getAllCellInfo", new Object[0]));
          Object localObject1 = localObject3;
          label48: localObject3 = localObject1;
          if (a((CellLocation)localObject1))
            continue;
          try
          {
            localObject3 = bx.a(localTelephonyManager, "getCellLocationExt", new Object[] { Integer.valueOf(1) });
            if (localObject3 != null)
            {
              localObject3 = (CellLocation)localObject3;
              localObject1 = localObject3;
              label88: localObject3 = localObject1;
              if (a((CellLocation)localObject1))
                continue;
              try
              {
                localObject3 = bx.a(localTelephonyManager, "getCellLocationGemini", new Object[] { Integer.valueOf(1) });
                if (localObject3 != null)
                {
                  localObject3 = (CellLocation)localObject3;
                  localObject1 = localObject3;
                  label128: localObject3 = localObject1;
                  if (!a((CellLocation)localObject1))
                    continue;
                  return localObject1;
                  localException1 = localException1;
                  Object localObject2 = null;
                }
              }
              catch (Exception localException2)
              {
                break label128;
              }
              catch (NoSuchMethodException localNoSuchMethodException1)
              {
                break label128;
              }
            }
          }
          catch (Exception localException3)
          {
            break label88;
          }
          catch (NoSuchMethodException localNoSuchMethodException2)
          {
            break label88;
          }
        }
        catch (Exception localException4)
        {
          break label48;
        }
        catch (NoSuchMethodException localNoSuchMethodException3)
        {
          while (true)
            continue;
        }
      }
    }
  }

  // ERROR //
  private CellLocation g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 99	com/loc/bc:e	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: invokestatic 277	com/loc/bc:h	()Ljava/lang/Class;
    //   14: astore_2
    //   15: aload_2
    //   16: aload_1
    //   17: invokevirtual 140	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   20: ifeq +162 -> 182
    //   23: aload_2
    //   24: aload_1
    //   25: invokevirtual 144	java/lang/Class:cast	(Ljava/lang/Object;)Ljava/lang/Object;
    //   28: astore_3
    //   29: aload_3
    //   30: ldc_w 278
    //   33: iconst_0
    //   34: anewarray 4	java/lang/Object
    //   37: invokestatic 149	com/loc/bx:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   40: astore_1
    //   41: aload_1
    //   42: astore_2
    //   43: aload_1
    //   44: ifnonnull +22 -> 66
    //   47: aload_3
    //   48: ldc_w 278
    //   51: iconst_1
    //   52: anewarray 4	java/lang/Object
    //   55: dup
    //   56: iconst_0
    //   57: iconst_1
    //   58: invokestatic 270	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   61: aastore
    //   62: invokestatic 149	com/loc/bx:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   65: astore_2
    //   66: aload_2
    //   67: astore_1
    //   68: aload_2
    //   69: ifnonnull +22 -> 91
    //   72: aload_3
    //   73: ldc_w 274
    //   76: iconst_1
    //   77: anewarray 4	java/lang/Object
    //   80: dup
    //   81: iconst_0
    //   82: iconst_1
    //   83: invokestatic 270	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   86: aastore
    //   87: invokestatic 149	com/loc/bx:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   90: astore_1
    //   91: aload_1
    //   92: astore_2
    //   93: aload_1
    //   94: ifnonnull +23 -> 117
    //   97: aload_3
    //   98: ldc_w 260
    //   101: iconst_0
    //   102: anewarray 4	java/lang/Object
    //   105: invokestatic 149	com/loc/bx:a	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    //   108: checkcast 105	java/util/List
    //   111: astore_1
    //   112: aload_1
    //   113: invokestatic 262	com/loc/bc:a	(Ljava/util/List;)Landroid/telephony/CellLocation;
    //   116: astore_2
    //   117: aload_2
    //   118: ifnull +35 -> 153
    //   121: aload_2
    //   122: checkcast 272	android/telephony/CellLocation
    //   125: astore_1
    //   126: aload_1
    //   127: areturn
    //   128: astore_1
    //   129: aconst_null
    //   130: astore_1
    //   131: goto -90 -> 41
    //   134: astore_1
    //   135: aconst_null
    //   136: astore_1
    //   137: goto -96 -> 41
    //   140: astore_1
    //   141: aconst_null
    //   142: astore_1
    //   143: goto -31 -> 112
    //   146: astore_1
    //   147: aconst_null
    //   148: astore_1
    //   149: goto -37 -> 112
    //   152: astore_1
    //   153: aconst_null
    //   154: astore_1
    //   155: goto -29 -> 126
    //   158: astore_1
    //   159: aload_2
    //   160: astore_1
    //   161: goto -70 -> 91
    //   164: astore_1
    //   165: aload_2
    //   166: astore_1
    //   167: goto -76 -> 91
    //   170: astore_2
    //   171: aload_1
    //   172: astore_2
    //   173: goto -107 -> 66
    //   176: astore_2
    //   177: aload_1
    //   178: astore_2
    //   179: goto -113 -> 66
    //   182: aconst_null
    //   183: astore_2
    //   184: goto -67 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   29	41	128	java/lang/NoSuchMethodException
    //   29	41	134	java/lang/Exception
    //   97	112	140	java/lang/NoSuchMethodException
    //   97	112	146	java/lang/Exception
    //   11	29	152	java/lang/Exception
    //   112	117	152	java/lang/Exception
    //   121	126	152	java/lang/Exception
    //   72	91	158	java/lang/Exception
    //   72	91	164	java/lang/NoSuchMethodException
    //   47	66	170	java/lang/Exception
    //   47	66	176	java/lang/NoSuchMethodException
  }

  private static Class<?> h()
  {
    ClassLoader localClassLoader = ClassLoader.getSystemClassLoader();
    Object localObject;
    switch (i())
    {
    default:
      localObject = null;
    case 1:
    case 2:
    case 0:
    }
    try
    {
      while (true)
      {
        localObject = localClassLoader.loadClass((String)localObject);
        return localObject;
        localObject = "android.telephony.MSimTelephonyManager";
        continue;
        localObject = "android.telephony.TelephonyManager2";
        continue;
        localObject = "android.telephony.TelephonyManager";
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static int i()
  {
    int k = 0;
    try
    {
      Class.forName("android.telephony.MSimTelephonyManager");
      k = 1;
      label11: int m = k;
      if (k == 0);
      try
      {
        Class.forName("android.telephony.TelephonyManager2");
        m = 2;
        return m;
      }
      catch (Exception localException1)
      {
        return k;
      }
    }
    catch (Exception localException2)
    {
      break label11;
    }
  }

  public final bb a()
  {
    ArrayList localArrayList = this.b;
    if (localArrayList.size() > 0)
      return (bb)localArrayList.get(0);
    return null;
  }

  public final boolean a(CellLocation paramCellLocation)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (paramCellLocation == null)
    {
      bool2 = bool1;
      return bool2;
    }
    switch (by.a(paramCellLocation, this.i))
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      label44: bool1 = true;
      while (true)
      {
        label46: bool2 = bool1;
        if (bool1)
          break;
        this.a = 9;
        return bool1;
        paramCellLocation = (GsmCellLocation)paramCellLocation;
        bool1 = bool2;
        if (paramCellLocation.getLac() != -1)
        {
          bool1 = bool2;
          if (paramCellLocation.getLac() != 0)
          {
            bool1 = bool2;
            if (paramCellLocation.getLac() <= 65535)
            {
              bool1 = bool2;
              if (paramCellLocation.getCid() != -1)
              {
                bool1 = bool2;
                if (paramCellLocation.getCid() != 0)
                {
                  bool1 = bool2;
                  if (paramCellLocation.getCid() != 65535)
                  {
                    if (paramCellLocation.getCid() < 268435455)
                      break label44;
                    bool1 = bool2;
                  }
                }
              }
            }
          }
        }
      }
      bool1 = bool2;
      try
      {
        if (bx.b(paramCellLocation, "getSystemId", new Object[0]) <= 0)
          break label46;
        bool1 = bool2;
        if (bx.b(paramCellLocation, "getNetworkId", new Object[0]) < 0)
          break label46;
        int k = bx.b(paramCellLocation, "getBaseStationId", new Object[0]);
        if (k < 0)
          bool1 = bool2;
      }
      catch (Exception paramCellLocation)
      {
      }
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    if ((paramBoolean) || (this.j == 0L));
    while (by.b() - this.j < 30000L)
      return false;
    return true;
  }

  public final CellLocation b()
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (this.d != null);
    try
    {
      CellLocation localCellLocation = this.d.getCellLocation();
      localObject1 = localCellLocation;
      localObject2 = localCellLocation;
      if (a(localCellLocation))
      {
        localObject2 = localCellLocation;
        this.h = localCellLocation;
        localObject1 = localCellLocation;
      }
      return localObject1;
    }
    catch (Exception localException)
    {
    }
    return localObject2;
  }

  // ERROR //
  final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 61	com/loc/bc:i	Landroid/content/Context;
    //   6: invokestatic 303	com/loc/by:a	(Landroid/content/Context;)Z
    //   9: ifne +46 -> 55
    //   12: aload_0
    //   13: getfield 57	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   16: ifnull +39 -> 55
    //   19: aload_0
    //   20: invokespecial 305	com/loc/bc:f	()Landroid/telephony/CellLocation;
    //   23: astore 4
    //   25: aload 4
    //   27: astore_3
    //   28: aload_0
    //   29: aload 4
    //   31: invokevirtual 225	com/loc/bc:a	(Landroid/telephony/CellLocation;)Z
    //   34: ifne +8 -> 42
    //   37: aload_0
    //   38: invokespecial 307	com/loc/bc:g	()Landroid/telephony/CellLocation;
    //   41: astore_3
    //   42: aload_0
    //   43: aload_3
    //   44: invokevirtual 225	com/loc/bc:a	(Landroid/telephony/CellLocation;)Z
    //   47: ifeq +8 -> 55
    //   50: aload_0
    //   51: aload_3
    //   52: putfield 300	com/loc/bc:h	Landroid/telephony/CellLocation;
    //   55: aload_0
    //   56: aload_0
    //   57: getfield 300	com/loc/bc:h	Landroid/telephony/CellLocation;
    //   60: invokevirtual 225	com/loc/bc:a	(Landroid/telephony/CellLocation;)Z
    //   63: istore_2
    //   64: iload_2
    //   65: ifne +6 -> 71
    //   68: aload_0
    //   69: monitorexit
    //   70: return
    //   71: aload_0
    //   72: getfield 300	com/loc/bc:h	Landroid/telephony/CellLocation;
    //   75: aload_0
    //   76: getfield 61	com/loc/bc:i	Landroid/content/Context;
    //   79: invokestatic 68	com/loc/by:a	(Landroid/telephony/CellLocation;Landroid/content/Context;)I
    //   82: tableswitch	default:+415 -> 497, 1:+22->104, 2:+38->120
    //   105: aload_0
    //   106: getfield 300	com/loc/bc:h	Landroid/telephony/CellLocation;
    //   109: invokespecial 309	com/loc/bc:b	(Landroid/telephony/CellLocation;)V
    //   112: goto -44 -> 68
    //   115: astore_3
    //   116: aload_0
    //   117: monitorexit
    //   118: aload_3
    //   119: athrow
    //   120: aload_0
    //   121: getfield 300	com/loc/bc:h	Landroid/telephony/CellLocation;
    //   124: astore_3
    //   125: aload_3
    //   126: ifnull -58 -> 68
    //   129: aload_0
    //   130: getfield 40	com/loc/bc:b	Ljava/util/ArrayList;
    //   133: invokevirtual 222	java/util/ArrayList:clear	()V
    //   136: invokestatic 78	com/loc/by:c	()I
    //   139: istore_1
    //   140: iload_1
    //   141: iconst_5
    //   142: if_icmplt -74 -> 68
    //   145: aload_0
    //   146: getfield 99	com/loc/bc:e	Ljava/lang/Object;
    //   149: astore 4
    //   151: aload 4
    //   153: ifnull +66 -> 219
    //   156: aload_3
    //   157: invokevirtual 312	java/lang/Object:getClass	()Ljava/lang/Class;
    //   160: ldc_w 314
    //   163: invokevirtual 318	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   166: astore 4
    //   168: aload 4
    //   170: invokevirtual 323	java/lang/reflect/Field:isAccessible	()Z
    //   173: ifne +9 -> 182
    //   176: aload 4
    //   178: iconst_1
    //   179: invokevirtual 327	java/lang/reflect/Field:setAccessible	(Z)V
    //   182: aload 4
    //   184: aload_3
    //   185: invokevirtual 329	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   188: checkcast 175	android/telephony/gsm/GsmCellLocation
    //   191: astore 4
    //   193: aload 4
    //   195: ifnull +311 -> 506
    //   198: aload_0
    //   199: aload 4
    //   201: invokevirtual 225	com/loc/bc:a	(Landroid/telephony/CellLocation;)Z
    //   204: ifeq +302 -> 506
    //   207: aload_0
    //   208: aload 4
    //   210: invokespecial 309	com/loc/bc:b	(Landroid/telephony/CellLocation;)V
    //   213: iconst_1
    //   214: istore_1
    //   215: iload_1
    //   216: ifne -148 -> 68
    //   219: aload_0
    //   220: aload_3
    //   221: invokevirtual 225	com/loc/bc:a	(Landroid/telephony/CellLocation;)Z
    //   224: ifeq -156 -> 68
    //   227: aload_0
    //   228: iconst_2
    //   229: putfield 35	com/loc/bc:a	I
    //   232: aload_0
    //   233: getfield 57	com/loc/bc:d	Landroid/telephony/TelephonyManager;
    //   236: invokestatic 195	com/loc/by:a	(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    //   239: astore 4
    //   241: new 189	com/loc/bb
    //   244: dup
    //   245: iconst_2
    //   246: invokespecial 192	com/loc/bb:<init>	(I)V
    //   249: astore 5
    //   251: aload 5
    //   253: aload 4
    //   255: iconst_0
    //   256: aaload
    //   257: putfield 198	com/loc/bb:a	Ljava/lang/String;
    //   260: aload 5
    //   262: aload 4
    //   264: iconst_1
    //   265: aaload
    //   266: putfield 200	com/loc/bb:b	Ljava/lang/String;
    //   269: aload 5
    //   271: aload_3
    //   272: ldc 154
    //   274: iconst_0
    //   275: anewarray 4	java/lang/Object
    //   278: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   281: putfield 331	com/loc/bb:g	I
    //   284: aload 5
    //   286: aload_3
    //   287: ldc 159
    //   289: iconst_0
    //   290: anewarray 4	java/lang/Object
    //   293: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   296: putfield 333	com/loc/bb:h	I
    //   299: aload 5
    //   301: aload_3
    //   302: ldc_w 292
    //   305: iconst_0
    //   306: anewarray 4	java/lang/Object
    //   309: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   312: putfield 335	com/loc/bb:i	I
    //   315: aload 5
    //   317: aload_0
    //   318: getfield 42	com/loc/bc:c	I
    //   321: putfield 215	com/loc/bb:j	I
    //   324: aload 5
    //   326: aload_3
    //   327: ldc_w 337
    //   330: iconst_0
    //   331: anewarray 4	java/lang/Object
    //   334: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   337: putfield 339	com/loc/bb:e	I
    //   340: aload 5
    //   342: aload_3
    //   343: ldc_w 341
    //   346: iconst_0
    //   347: anewarray 4	java/lang/Object
    //   350: invokestatic 157	com/loc/bx:b	(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I
    //   353: putfield 343	com/loc/bb:f	I
    //   356: aload 5
    //   358: getfield 339	com/loc/bb:e	I
    //   361: iflt +11 -> 372
    //   364: aload 5
    //   366: getfield 343	com/loc/bb:f	I
    //   369: ifge +40 -> 409
    //   372: aload 5
    //   374: iconst_0
    //   375: putfield 339	com/loc/bb:e	I
    //   378: aload 5
    //   380: iconst_0
    //   381: putfield 343	com/loc/bb:f	I
    //   384: aload_0
    //   385: getfield 40	com/loc/bc:b	Ljava/util/ArrayList;
    //   388: aload 5
    //   390: invokevirtual 253	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   393: ifne -325 -> 68
    //   396: aload_0
    //   397: getfield 40	com/loc/bc:b	Ljava/util/ArrayList;
    //   400: aload 5
    //   402: invokevirtual 231	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   405: pop
    //   406: goto -338 -> 68
    //   409: aload 5
    //   411: getfield 339	com/loc/bb:e	I
    //   414: ldc_w 344
    //   417: if_icmpne +18 -> 435
    //   420: aload 5
    //   422: iconst_0
    //   423: putfield 339	com/loc/bb:e	I
    //   426: aload 5
    //   428: iconst_0
    //   429: putfield 343	com/loc/bb:f	I
    //   432: goto -48 -> 384
    //   435: aload 5
    //   437: getfield 343	com/loc/bb:f	I
    //   440: ldc_w 344
    //   443: if_icmpne +18 -> 461
    //   446: aload 5
    //   448: iconst_0
    //   449: putfield 339	com/loc/bb:e	I
    //   452: aload 5
    //   454: iconst_0
    //   455: putfield 343	com/loc/bb:f	I
    //   458: goto -74 -> 384
    //   461: aload 5
    //   463: getfield 339	com/loc/bb:e	I
    //   466: aload 5
    //   468: getfield 343	com/loc/bb:f	I
    //   471: if_icmpne -87 -> 384
    //   474: aload 5
    //   476: getfield 339	com/loc/bb:e	I
    //   479: ifle -95 -> 384
    //   482: aload 5
    //   484: iconst_0
    //   485: putfield 339	com/loc/bb:e	I
    //   488: aload 5
    //   490: iconst_0
    //   491: putfield 343	com/loc/bb:f	I
    //   494: goto -110 -> 384
    //   497: goto -429 -> 68
    //   500: astore_3
    //   501: goto -433 -> 68
    //   504: astore 4
    //   506: iconst_0
    //   507: istore_1
    //   508: goto -293 -> 215
    //
    // Exception table:
    //   from	to	target	type
    //   2	25	115	finally
    //   28	42	115	finally
    //   42	55	115	finally
    //   55	64	115	finally
    //   71	104	115	finally
    //   104	112	115	finally
    //   120	125	115	finally
    //   129	140	115	finally
    //   145	151	115	finally
    //   156	182	115	finally
    //   182	193	115	finally
    //   198	213	115	finally
    //   219	372	115	finally
    //   372	384	115	finally
    //   384	406	115	finally
    //   409	432	115	finally
    //   435	458	115	finally
    //   461	494	115	finally
    //   145	151	500	java/lang/Exception
    //   219	372	500	java/lang/Exception
    //   372	384	500	java/lang/Exception
    //   384	406	500	java/lang/Exception
    //   409	432	500	java/lang/Exception
    //   435	458	500	java/lang/Exception
    //   461	494	500	java/lang/Exception
    //   156	182	504	java/lang/Exception
    //   182	193	504	java/lang/Exception
    //   198	213	504	java/lang/Exception
  }

  final void d()
  {
    int m = 1;
    JSONObject localJSONObject = this.f;
    int k = m;
    if (localJSONObject != null);
    try
    {
      boolean bool = localJSONObject.getString("cellupdate").equals("0");
      k = m;
      if (bool)
        k = 0;
      if (k != 0);
      try
      {
        CellLocation.requestLocationUpdate();
        label45: this.j = by.b();
        return;
      }
      catch (Exception localException1)
      {
        break label45;
      }
    }
    catch (Exception localException2)
    {
      while (true)
        k = m;
    }
  }

  final void e()
  {
    this.h = null;
    this.a = 9;
    this.b.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bc
 * JD-Core Version:    0.6.2
 */