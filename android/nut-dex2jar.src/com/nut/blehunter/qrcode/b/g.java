package com.nut.blehunter.qrcode.b;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import com.google.zxing.WriterException;
import com.google.zxing.common.b;
import com.google.zxing.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

public final class g
{
  private static final String a = g.class.getSimpleName();
  private final Context b;
  private String c;
  private String d;
  private com.google.zxing.a e;
  private final int f;
  private final boolean g;

  public g(Context paramContext, Intent paramIntent, int paramInt)
    throws WriterException
  {
    this.b = paramContext;
    this.f = paramInt;
    this.g = true;
    paramContext = paramIntent.getAction();
    if (paramContext.equals("com.google.zxing.client.android.ENCODE"))
      a(paramIntent);
    while (!paramContext.equals("android.intent.action.SEND"))
      return;
    if (paramIntent.hasExtra("android.intent.extra.STREAM"))
    {
      b(paramIntent);
      return;
    }
    String str = a.a(paramIntent.getStringExtra("android.intent.extra.TEXT"));
    paramContext = str;
    if (str == null)
    {
      str = a.a(paramIntent.getStringExtra("android.intent.extra.HTML_TEXT"));
      paramContext = str;
      if (str == null)
      {
        str = a.a(paramIntent.getStringExtra("android.intent.extra.SUBJECT"));
        paramContext = str;
        if (str == null)
        {
          paramContext = paramIntent.getStringArrayExtra("android.intent.extra.EMAIL");
          if (paramContext == null)
            break label160;
        }
      }
    }
    label160: for (paramContext = a.a(paramContext[0]); (paramContext == null) || (paramContext.isEmpty()); paramContext = "?")
      throw new WriterException("Empty EXTRA_TEXT");
    this.c = paramContext;
    this.e = com.google.zxing.a.l;
    if (paramIntent.hasExtra("android.intent.extra.SUBJECT"))
    {
      this.d = paramIntent.getStringExtra("android.intent.extra.SUBJECT");
      return;
    }
    if (paramIntent.hasExtra("android.intent.extra.TITLE"))
    {
      this.d = paramIntent.getStringExtra("android.intent.extra.TITLE");
      return;
    }
    this.d = this.c;
  }

  private static List<String> a(Bundle paramBundle, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList(paramArrayOfString.length);
    int j = paramArrayOfString.length;
    int i = 0;
    if (i < j)
    {
      Object localObject = paramBundle.get(paramArrayOfString[i]);
      if (localObject == null);
      for (localObject = null; ; localObject = localObject.toString())
      {
        localArrayList.add(localObject);
        i += 1;
        break;
      }
    }
    return localArrayList;
  }

  private static List<String> a(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null)
      return null;
    return Arrays.asList(paramArrayOfString);
  }

  private boolean a(Intent paramIntent)
  {
    Object localObject1 = null;
    String str1 = paramIntent.getStringExtra("ENCODE_FORMAT");
    this.e = null;
    if (str1 != null);
    try
    {
      this.e = com.google.zxing.a.valueOf(str1);
      label30: int i;
      if ((this.e == null) || (this.e == com.google.zxing.a.l))
      {
        str1 = paramIntent.getStringExtra("ENCODE_TYPE");
        if ((str1 == null) || (str1.isEmpty()))
          return false;
        this.e = com.google.zxing.a.l;
        i = -1;
        switch (str1.hashCode())
        {
        default:
          switch (i)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          break;
        case 1778595596:
        case 1833351709:
        case -1309271157:
        case 709220992:
        case -670199783:
        case 1349204356:
        }
      }
      while (true)
      {
        if ((this.c == null) || (this.c.isEmpty()))
          break label778;
        return true;
        if (!str1.equals("TEXT_TYPE"))
          break;
        i = 0;
        break;
        if (!str1.equals("EMAIL_TYPE"))
          break;
        i = 1;
        break;
        if (!str1.equals("PHONE_TYPE"))
          break;
        i = 2;
        break;
        if (!str1.equals("SMS_TYPE"))
          break;
        i = 3;
        break;
        if (!str1.equals("CONTACT_TYPE"))
          break;
        i = 4;
        break;
        if (!str1.equals("LOCATION_TYPE"))
          break;
        i = 5;
        break;
        paramIntent = paramIntent.getStringExtra("ENCODE_DATA");
        if ((paramIntent != null) && (!paramIntent.isEmpty()))
        {
          this.c = paramIntent;
          this.d = paramIntent;
          continue;
          paramIntent = a.a(paramIntent.getStringExtra("ENCODE_DATA"));
          if (paramIntent != null)
          {
            this.c = ("mailto:" + paramIntent);
            this.d = paramIntent;
            continue;
            paramIntent = a.a(paramIntent.getStringExtra("ENCODE_DATA"));
            if (paramIntent != null)
            {
              this.c = ("tel:" + paramIntent);
              this.d = PhoneNumberUtils.formatNumber(paramIntent);
              continue;
              paramIntent = a.a(paramIntent.getStringExtra("ENCODE_DATA"));
              if (paramIntent != null)
              {
                this.c = ("sms:" + paramIntent);
                this.d = PhoneNumberUtils.formatNumber(paramIntent);
                continue;
                Object localObject2 = paramIntent.getBundleExtra("ENCODE_DATA");
                if (localObject2 != null)
                {
                  str1 = ((Bundle)localObject2).getString("name");
                  String str2 = ((Bundle)localObject2).getString("company");
                  String str3 = ((Bundle)localObject2).getString("postal");
                  List localList1 = a((Bundle)localObject2, com.nut.blehunter.qrcode.f.a);
                  List localList2 = a((Bundle)localObject2, com.nut.blehunter.qrcode.f.b);
                  List localList3 = a((Bundle)localObject2, com.nut.blehunter.qrcode.f.c);
                  paramIntent = ((Bundle)localObject2).getString("URL_KEY");
                  if (paramIntent == null)
                  {
                    paramIntent = (Intent)localObject1;
                    label547: localObject2 = ((Bundle)localObject2).getString("NOTE_KEY");
                    if (!this.g)
                      break label633;
                  }
                  label633: for (localObject1 = new h(); ; localObject1 = new c())
                  {
                    paramIntent = ((a)localObject1).a(Collections.singletonList(str1), str2, Collections.singletonList(str3), localList1, localList2, localList3, paramIntent, (String)localObject2);
                    if (paramIntent[1].isEmpty())
                      break;
                    this.c = paramIntent[0];
                    this.d = paramIntent[1];
                    break;
                    paramIntent = Collections.singletonList(paramIntent);
                    break label547;
                  }
                  paramIntent = paramIntent.getBundleExtra("ENCODE_DATA");
                  if (paramIntent != null)
                  {
                    float f1 = paramIntent.getFloat("LAT", 3.4028235E+38F);
                    float f2 = paramIntent.getFloat("LONG", 3.4028235E+38F);
                    if ((f1 != 3.4028235E+38F) && (f2 != 3.4028235E+38F))
                    {
                      this.c = ("geo:" + f1 + ',' + f2);
                      this.d = (f1 + "," + f2);
                      continue;
                      paramIntent = paramIntent.getStringExtra("ENCODE_DATA");
                      if ((paramIntent != null) && (!paramIntent.isEmpty()))
                      {
                        this.c = paramIntent;
                        this.d = paramIntent;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      label778: return false;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label30;
    }
  }

  // ERROR //
  private void b(Intent paramIntent)
    throws WriterException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getstatic 104	com/google/zxing/a:l	Lcom/google/zxing/a;
    //   7: putfield 106	com/nut/blehunter/qrcode/b/g:e	Lcom/google/zxing/a;
    //   10: aload_1
    //   11: invokevirtual 257	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   14: astore_1
    //   15: aload_1
    //   16: ifnonnull +14 -> 30
    //   19: new 31	com/google/zxing/WriterException
    //   22: dup
    //   23: ldc_w 259
    //   26: invokespecial 95	com/google/zxing/WriterException:<init>	(Ljava/lang/String;)V
    //   29: athrow
    //   30: aload_1
    //   31: ldc 59
    //   33: invokevirtual 263	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   36: checkcast 265	android/net/Uri
    //   39: astore_3
    //   40: aload_3
    //   41: ifnonnull +14 -> 55
    //   44: new 31	com/google/zxing/WriterException
    //   47: dup
    //   48: ldc_w 267
    //   51: invokespecial 95	com/google/zxing/WriterException:<init>	(Ljava/lang/String;)V
    //   54: athrow
    //   55: aload_0
    //   56: getfield 35	com/nut/blehunter/qrcode/b/g:b	Landroid/content/Context;
    //   59: invokevirtual 273	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   62: aload_3
    //   63: invokevirtual 279	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   66: astore_1
    //   67: aload_1
    //   68: ifnonnull +49 -> 117
    //   71: new 31	com/google/zxing/WriterException
    //   74: dup
    //   75: new 171	java/lang/StringBuilder
    //   78: dup
    //   79: ldc_w 281
    //   82: invokespecial 174	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload_3
    //   86: invokevirtual 284	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 179	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokespecial 95	com/google/zxing/WriterException:<init>	(Ljava/lang/String;)V
    //   95: athrow
    //   96: astore_3
    //   97: new 31	com/google/zxing/WriterException
    //   100: dup
    //   101: aload_3
    //   102: invokespecial 287	com/google/zxing/WriterException:<init>	(Ljava/lang/Throwable;)V
    //   105: athrow
    //   106: astore_3
    //   107: aload_1
    //   108: ifnull +7 -> 115
    //   111: aload_1
    //   112: invokevirtual 292	java/io/InputStream:close	()V
    //   115: aload_3
    //   116: athrow
    //   117: new 294	java/io/ByteArrayOutputStream
    //   120: dup
    //   121: invokespecial 295	java/io/ByteArrayOutputStream:<init>	()V
    //   124: astore_3
    //   125: sipush 2048
    //   128: newarray byte
    //   130: astore 4
    //   132: aload_1
    //   133: aload 4
    //   135: invokevirtual 299	java/io/InputStream:read	([B)I
    //   138: istore_2
    //   139: iload_2
    //   140: ifle +14 -> 154
    //   143: aload_3
    //   144: aload 4
    //   146: iconst_0
    //   147: iload_2
    //   148: invokevirtual 303	java/io/ByteArrayOutputStream:write	([BII)V
    //   151: goto -19 -> 132
    //   154: aload_3
    //   155: invokevirtual 307	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   158: astore_3
    //   159: new 48	java/lang/String
    //   162: dup
    //   163: aload_3
    //   164: iconst_0
    //   165: aload_3
    //   166: arraylength
    //   167: ldc_w 309
    //   170: invokespecial 312	java/lang/String:<init>	([BIILjava/lang/String;)V
    //   173: astore 4
    //   175: aload_1
    //   176: ifnull +7 -> 183
    //   179: aload_1
    //   180: invokevirtual 292	java/io/InputStream:close	()V
    //   183: getstatic 26	com/nut/blehunter/qrcode/b/g:a	Ljava/lang/String;
    //   186: ldc_w 314
    //   189: invokestatic 319	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   192: pop
    //   193: getstatic 26	com/nut/blehunter/qrcode/b/g:a	Ljava/lang/String;
    //   196: aload 4
    //   198: invokestatic 319	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   201: pop
    //   202: new 321	com/google/zxing/m
    //   205: dup
    //   206: aload 4
    //   208: aload_3
    //   209: aconst_null
    //   210: getstatic 104	com/google/zxing/a:l	Lcom/google/zxing/a;
    //   213: invokespecial 324	com/google/zxing/m:<init>	(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
    //   216: invokestatic 329	com/google/zxing/b/a/u:c	(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    //   219: astore_1
    //   220: aload_1
    //   221: instanceof 331
    //   224: ifne +14 -> 238
    //   227: new 31	com/google/zxing/WriterException
    //   230: dup
    //   231: ldc_w 333
    //   234: invokespecial 95	com/google/zxing/WriterException:<init>	(Ljava/lang/String;)V
    //   237: athrow
    //   238: aload_1
    //   239: checkcast 331	com/google/zxing/b/a/d
    //   242: astore_3
    //   243: aload_0
    //   244: getfield 39	com/nut/blehunter/qrcode/b/g:g	Z
    //   247: ifeq +108 -> 355
    //   250: new 218	com/nut/blehunter/qrcode/b/h
    //   253: dup
    //   254: invokespecial 219	com/nut/blehunter/qrcode/b/h:<init>	()V
    //   257: astore_1
    //   258: aload_1
    //   259: aload_3
    //   260: getfield 334	com/google/zxing/b/a/d:a	[Ljava/lang/String;
    //   263: invokestatic 336	com/nut/blehunter/qrcode/b/g:a	([Ljava/lang/String;)Ljava/util/List;
    //   266: aload_3
    //   267: getfield 338	com/google/zxing/b/a/d:e	Ljava/lang/String;
    //   270: aload_3
    //   271: getfield 340	com/google/zxing/b/a/d:d	[Ljava/lang/String;
    //   274: invokestatic 336	com/nut/blehunter/qrcode/b/g:a	([Ljava/lang/String;)Ljava/util/List;
    //   277: aload_3
    //   278: getfield 341	com/google/zxing/b/a/d:b	[Ljava/lang/String;
    //   281: invokestatic 336	com/nut/blehunter/qrcode/b/g:a	([Ljava/lang/String;)Ljava/util/List;
    //   284: aconst_null
    //   285: aload_3
    //   286: getfield 342	com/google/zxing/b/a/d:c	[Ljava/lang/String;
    //   289: invokestatic 336	com/nut/blehunter/qrcode/b/g:a	([Ljava/lang/String;)Ljava/util/List;
    //   292: aload_3
    //   293: getfield 344	com/google/zxing/b/a/d:f	[Ljava/lang/String;
    //   296: invokestatic 336	com/nut/blehunter/qrcode/b/g:a	([Ljava/lang/String;)Ljava/util/List;
    //   299: aconst_null
    //   300: invokevirtual 228	com/nut/blehunter/qrcode/b/a:a	(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    //   303: astore_1
    //   304: aload_1
    //   305: iconst_1
    //   306: aaload
    //   307: invokevirtual 90	java/lang/String:isEmpty	()Z
    //   310: ifne +17 -> 327
    //   313: aload_0
    //   314: aload_1
    //   315: iconst_0
    //   316: aaload
    //   317: putfield 99	com/nut/blehunter/qrcode/b/g:c	Ljava/lang/String;
    //   320: aload_0
    //   321: aload_1
    //   322: iconst_1
    //   323: aaload
    //   324: putfield 108	com/nut/blehunter/qrcode/b/g:d	Ljava/lang/String;
    //   327: aload_0
    //   328: getfield 99	com/nut/blehunter/qrcode/b/g:c	Ljava/lang/String;
    //   331: ifnull +13 -> 344
    //   334: aload_0
    //   335: getfield 99	com/nut/blehunter/qrcode/b/g:c	Ljava/lang/String;
    //   338: invokevirtual 90	java/lang/String:isEmpty	()Z
    //   341: ifeq +33 -> 374
    //   344: new 31	com/google/zxing/WriterException
    //   347: dup
    //   348: ldc_w 346
    //   351: invokespecial 95	com/google/zxing/WriterException:<init>	(Ljava/lang/String;)V
    //   354: athrow
    //   355: new 230	com/nut/blehunter/qrcode/b/c
    //   358: dup
    //   359: invokespecial 231	com/nut/blehunter/qrcode/b/c:<init>	()V
    //   362: astore_1
    //   363: goto -105 -> 258
    //   366: astore_1
    //   367: goto -184 -> 183
    //   370: astore_1
    //   371: goto -256 -> 115
    //   374: return
    //   375: astore_3
    //   376: aconst_null
    //   377: astore_1
    //   378: goto -271 -> 107
    //   381: astore_3
    //   382: aload 4
    //   384: astore_1
    //   385: goto -288 -> 97
    //   388: astore_3
    //   389: goto -282 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   71	96	96	java/io/IOException
    //   117	132	96	java/io/IOException
    //   132	139	96	java/io/IOException
    //   143	151	96	java/io/IOException
    //   154	175	96	java/io/IOException
    //   97	106	106	finally
    //   179	183	366	java/io/IOException
    //   111	115	370	java/io/IOException
    //   55	67	375	finally
    //   55	67	381	java/io/IOException
    //   71	96	388	finally
    //   117	132	388	finally
    //   132	139	388	finally
    //   143	151	388	finally
    //   154	175	388	finally
  }

  public final Bitmap a()
    throws WriterException
  {
    String str = this.c;
    if (str == null)
      return null;
    int i = 0;
    Object localObject3;
    if (i < str.length())
      if (str.charAt(i) > 'ÿ')
      {
        localObject1 = "UTF-8";
        if (localObject1 == null)
          break label237;
        localObject3 = new EnumMap(com.google.zxing.f.class);
        ((Map)localObject3).put(com.google.zxing.f.b, localObject1);
      }
    label199: label206: label237: Object localObject2;
    for (Object localObject1 = localObject3; ; localObject2 = null)
    {
      int m;
      int n;
      while (true)
      {
        try
        {
          localObject3 = new i().a(str, this.e, this.f, this.f, (Map)localObject1);
          m = ((b)localObject3).a;
          n = ((b)localObject3).b;
          localObject1 = new int[m * n];
          i = 0;
          if (i >= n)
            break label206;
          int j = 0;
          if (j >= m)
            break label199;
          if (((b)localObject3).a(j, i))
          {
            k = -16777216;
            localObject1[(i * m + j)] = k;
            j += 1;
            continue;
            i += 1;
            break;
            localObject1 = null;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          return null;
        }
        int k = -1;
        continue;
        i += 1;
      }
      localObject3 = Bitmap.createBitmap(m, n, Bitmap.Config.ARGB_8888);
      ((Bitmap)localObject3).setPixels(localIllegalArgumentException, 0, m, 0, 0, m, n);
      return localObject3;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.g
 * JD-Core Version:    0.6.2
 */