package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

public final class bv
{
  private static Method A;
  private static Context a;
  private static String b = "提示信息";
  private static String c = "确认";
  private static String d = "取消";
  private static String e = "";
  private static String f = "";
  private static String g = "";
  private static boolean h = false;
  private static long i = 0L;
  private static long j = 0L;
  private static boolean k = false;
  private static int l = 0;
  private static boolean m = false;
  private static int n = 0;
  private static boolean o = false;
  private static String p = "1";
  private static String q = "1";
  private static int r = -1;
  private static long s = 0L;
  private static String t;
  private static String u;
  private static String v = "0";
  private static SharedPreferences w = null;
  private static SharedPreferences.Editor x = null;
  private static SharedPreferences y = null;
  private static SharedPreferences.Editor z = null;

  private static String a(JSONObject paramJSONObject, String paramString)
  {
    Object localObject;
    if (paramJSONObject == null)
      localObject = null;
    while (true)
    {
      return localObject;
      String str = "";
      localObject = str;
      try
      {
        if (paramJSONObject.has(paramString))
        {
          localObject = str;
          if (!paramJSONObject.getString(paramString).equals("[]"))
          {
            paramJSONObject = paramJSONObject.optString(paramString);
            return paramJSONObject;
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        paramJSONObject.printStackTrace();
      }
    }
    return "";
  }

  private static void a(Context paramContext, int paramInt)
  {
    try
    {
      if (y == null)
        y = paramContext.getSharedPreferences("pref", 0);
      if (z == null)
        z = y.edit();
      z.putInt("count", paramInt);
      a(z);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  private static void a(Context paramContext, long paramLong)
  {
    try
    {
      if (w == null)
        w = paramContext.getSharedPreferences("abcd", 0);
      if (x == null)
        x = w.edit();
      x.putLong("abc", paramLong);
      a(x);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  private static void a(SharedPreferences.Editor paramEditor)
  {
    if (paramEditor == null)
      return;
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        if (A == null)
          A = SharedPreferences.Editor.class.getDeclaredMethod("apply", new Class[0]);
        A.invoke(paramEditor, new Object[0]);
        return;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        paramEditor.commit();
        return;
      }
    paramEditor.commit();
  }

  public static void a(String paramString)
  {
    try
    {
      v = paramString;
      return;
    }
    finally
    {
      paramString = finally;
    }
    throw paramString;
  }

  public static boolean a()
  {
    return h;
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      a = paramContext;
      boolean bool2 = false;
      try
      {
        paramContext = eb.a(paramContext, dp.a("2.3.0"), "callamappro;fast;sdkupdate;sdkcoordinate;locate;opflag");
        bool1 = bool2;
        if (paramContext != null)
          bool1 = a(paramContext);
        return bool1;
      }
      catch (Throwable paramContext)
      {
        while (true)
        {
          paramContext = paramContext;
          paramContext.printStackTrace();
          boolean bool1 = bool2;
        }
      }
      finally
      {
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  // ERROR //
  private static boolean a(ec paramec)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 218	com/loc/ec:a	Lorg/json/JSONObject;
    //   4: astore 6
    //   6: aload 6
    //   8: ifnull +23 -> 31
    //   11: aload 6
    //   13: ldc 220
    //   15: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   18: ifeq +13 -> 31
    //   21: aload 6
    //   23: ldc 220
    //   25: invokevirtual 113	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   28: putstatic 81	com/loc/bv:p	Ljava/lang/String;
    //   31: aload_0
    //   32: getfield 222	com/loc/ec:b	Lorg/json/JSONObject;
    //   35: astore 6
    //   37: aload 6
    //   39: ifnull +101 -> 140
    //   42: aload 6
    //   44: ldc 224
    //   46: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   49: ifeq +13 -> 62
    //   52: aload 6
    //   54: ldc 224
    //   56: invokevirtual 113	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   59: putstatic 83	com/loc/bv:q	Ljava/lang/String;
    //   62: aload 6
    //   64: ldc 146
    //   66: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   69: ifeq +13 -> 82
    //   72: aload 6
    //   74: ldc 146
    //   76: invokevirtual 228	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   79: putstatic 85	com/loc/bv:r	I
    //   82: aload 6
    //   84: ldc 230
    //   86: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   89: ifeq +13 -> 102
    //   92: aload 6
    //   94: ldc 230
    //   96: invokevirtual 234	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   99: putstatic 87	com/loc/bv:s	J
    //   102: getstatic 85	com/loc/bv:r	I
    //   105: iconst_m1
    //   106: if_icmpeq +34 -> 140
    //   109: getstatic 87	com/loc/bv:s	J
    //   112: lconst_0
    //   113: lcmp
    //   114: ifeq +26 -> 140
    //   117: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   120: invokestatic 237	com/loc/bv:e	(Landroid/content/Context;)J
    //   123: lstore_1
    //   124: getstatic 87	com/loc/bv:s	J
    //   127: lload_1
    //   128: invokestatic 242	com/loc/by:a	(JJ)Z
    //   131: ifne +9 -> 140
    //   134: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   137: invokestatic 245	com/loc/bv:c	(Landroid/content/Context;)V
    //   140: aload_0
    //   141: getfield 247	com/loc/ec:e	Lorg/json/JSONObject;
    //   144: astore 6
    //   146: aload 6
    //   148: ifnull +272 -> 420
    //   151: aload 6
    //   153: ldc 248
    //   155: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   158: ifeq +91 -> 249
    //   161: aload 6
    //   163: ldc 248
    //   165: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   168: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   171: ldc 79
    //   173: getstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   176: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   179: ifeq +624 -> 803
    //   182: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   185: invokestatic 252	com/loc/bv:b	(Landroid/content/Context;)J
    //   188: lstore_1
    //   189: invokestatic 258	android/os/SystemClock:elapsedRealtime	()J
    //   192: lstore_3
    //   193: lload_3
    //   194: lload_1
    //   195: lsub
    //   196: ldc2_w 259
    //   199: lcmp
    //   200: ifle +10 -> 210
    //   203: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   206: lload_3
    //   207: invokestatic 262	com/loc/bv:a	(Landroid/content/Context;J)V
    //   210: lload_3
    //   211: lload_1
    //   212: lcmp
    //   213: ifle +18 -> 231
    //   216: lload_3
    //   217: lload_1
    //   218: lsub
    //   219: ldc2_w 259
    //   222: lcmp
    //   223: ifge +8 -> 231
    //   226: ldc 89
    //   228: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   231: lload_3
    //   232: lload_1
    //   233: lcmp
    //   234: ifge +15 -> 249
    //   237: ldc 89
    //   239: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   242: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   245: lload_3
    //   246: invokestatic 262	com/loc/bv:a	(Landroid/content/Context;J)V
    //   249: aload 6
    //   251: ldc_w 263
    //   254: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   257: ifeq +14 -> 271
    //   260: aload 6
    //   262: ldc_w 263
    //   265: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   268: putstatic 45	com/loc/bv:b	Ljava/lang/String;
    //   271: aload 6
    //   273: ldc_w 264
    //   276: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   279: ifeq +14 -> 293
    //   282: aload 6
    //   284: ldc_w 264
    //   287: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   290: putstatic 49	com/loc/bv:c	Ljava/lang/String;
    //   293: aload 6
    //   295: ldc_w 265
    //   298: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   301: ifeq +14 -> 315
    //   304: aload 6
    //   306: ldc_w 265
    //   309: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   312: putstatic 53	com/loc/bv:d	Ljava/lang/String;
    //   315: aload 6
    //   317: ldc_w 266
    //   320: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   323: ifeq +14 -> 337
    //   326: aload 6
    //   328: ldc_w 266
    //   331: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   334: putstatic 57	com/loc/bv:e	Ljava/lang/String;
    //   337: aload 6
    //   339: ldc_w 267
    //   342: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   345: ifeq +14 -> 359
    //   348: aload 6
    //   350: ldc_w 267
    //   353: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   356: putstatic 59	com/loc/bv:f	Ljava/lang/String;
    //   359: aload 6
    //   361: ldc_w 268
    //   364: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   367: ifeq +14 -> 381
    //   370: aload 6
    //   372: ldc_w 268
    //   375: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   378: putstatic 61	com/loc/bv:g	Ljava/lang/String;
    //   381: ldc 55
    //   383: getstatic 57	com/loc/bv:e	Ljava/lang/String;
    //   386: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   389: ifne +9 -> 398
    //   392: getstatic 57	com/loc/bv:e	Ljava/lang/String;
    //   395: ifnonnull +25 -> 420
    //   398: ldc 55
    //   400: getstatic 59	com/loc/bv:f	Ljava/lang/String;
    //   403: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   406: ifne +9 -> 415
    //   409: getstatic 59	com/loc/bv:f	Ljava/lang/String;
    //   412: ifnonnull +8 -> 420
    //   415: ldc 89
    //   417: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   420: ldc 196
    //   422: invokestatic 201	com/loc/dp:a	(Ljava/lang/String;)Lcom/loc/eo;
    //   425: astore 6
    //   427: aload_0
    //   428: getfield 271	com/loc/ec:g	Lcom/loc/ef;
    //   431: astore 9
    //   433: aload 9
    //   435: ifnull +423 -> 858
    //   438: aload 9
    //   440: getfield 274	com/loc/ef:b	Ljava/lang/String;
    //   443: astore 7
    //   445: aload 9
    //   447: getfield 276	com/loc/ef:a	Ljava/lang/String;
    //   450: astore 8
    //   452: aload 9
    //   454: getfield 277	com/loc/ef:c	Ljava/lang/String;
    //   457: astore 9
    //   459: aload 7
    //   461: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   464: ifne +19 -> 483
    //   467: aload 8
    //   469: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   472: ifne +11 -> 483
    //   475: aload 9
    //   477: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   480: ifeq +343 -> 823
    //   483: new 285	com/loc/i
    //   486: dup
    //   487: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   490: aconst_null
    //   491: aload 6
    //   493: invokespecial 289	com/loc/i:<init>	(Landroid/content/Context;Lcom/loc/j;Lcom/loc/eo;)V
    //   496: invokevirtual 291	com/loc/i:a	()V
    //   499: aload_0
    //   500: getfield 294	com/loc/ec:h	Lcom/loc/ee;
    //   503: astore 6
    //   505: aload 6
    //   507: ifnull +114 -> 621
    //   510: aload 6
    //   512: getfield 297	com/loc/ee:a	Ljava/lang/String;
    //   515: putstatic 299	com/loc/bv:t	Ljava/lang/String;
    //   518: aload 6
    //   520: getfield 300	com/loc/ee:b	Ljava/lang/String;
    //   523: putstatic 302	com/loc/bv:u	Ljava/lang/String;
    //   526: getstatic 299	com/loc/bv:t	Ljava/lang/String;
    //   529: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   532: ifne +89 -> 621
    //   535: getstatic 302	com/loc/bv:u	Ljava/lang/String;
    //   538: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   541: ifne +80 -> 621
    //   544: new 304	com/loc/em
    //   547: dup
    //   548: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   551: ldc_w 306
    //   554: getstatic 299	com/loc/bv:t	Ljava/lang/String;
    //   557: getstatic 302	com/loc/bv:u	Ljava/lang/String;
    //   560: invokespecial 309	com/loc/em:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   563: astore 6
    //   565: aload 6
    //   567: getfield 312	com/loc/em:a	Lcom/loc/en;
    //   570: ifnull +51 -> 621
    //   573: aload 6
    //   575: getfield 312	com/loc/em:a	Lcom/loc/en;
    //   578: getfield 315	com/loc/en:d	Ljava/lang/String;
    //   581: invokestatic 283	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   584: ifne +37 -> 621
    //   587: aload 6
    //   589: getfield 312	com/loc/em:a	Lcom/loc/en;
    //   592: getfield 315	com/loc/en:d	Ljava/lang/String;
    //   595: ldc_w 317
    //   598: invokevirtual 320	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   601: ifeq +20 -> 621
    //   604: aload 6
    //   606: getfield 312	com/loc/em:a	Lcom/loc/en;
    //   609: getfield 315	com/loc/en:d	Ljava/lang/String;
    //   612: getstatic 325	android/os/Build:CPU_ABI	Ljava/lang/String;
    //   615: invokevirtual 320	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   618: ifne +259 -> 877
    //   621: aload_0
    //   622: getfield 327	com/loc/ec:c	Lorg/json/JSONObject;
    //   625: astore_0
    //   626: aload_0
    //   627: ifnull +174 -> 801
    //   630: aload_0
    //   631: ldc_w 329
    //   634: invokestatic 332	com/loc/bv:b	(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bw;
    //   637: astore 6
    //   639: aload 6
    //   641: ifnull +35 -> 676
    //   644: aload 6
    //   646: getfield 335	com/loc/bw:c	Ljava/lang/String;
    //   649: ldc 79
    //   651: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   654: ifeq +249 -> 903
    //   657: iconst_1
    //   658: istore 5
    //   660: iload 5
    //   662: putstatic 69	com/loc/bv:k	Z
    //   665: aload 6
    //   667: getfield 336	com/loc/bw:b	Ljava/lang/String;
    //   670: invokestatic 341	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   673: putstatic 71	com/loc/bv:l	I
    //   676: aload_0
    //   677: ldc_w 343
    //   680: invokestatic 332	com/loc/bv:b	(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bw;
    //   683: astore 6
    //   685: aload 6
    //   687: ifnull +56 -> 743
    //   690: aload 6
    //   692: getfield 335	com/loc/bw:c	Ljava/lang/String;
    //   695: ldc 79
    //   697: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   700: ifeq +209 -> 909
    //   703: iconst_1
    //   704: istore 5
    //   706: iload 5
    //   708: putstatic 73	com/loc/bv:m	Z
    //   711: aload 6
    //   713: getfield 344	com/loc/bw:a	Ljava/lang/String;
    //   716: ldc 89
    //   718: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   721: ifeq +194 -> 915
    //   724: iconst_0
    //   725: istore 5
    //   727: iload 5
    //   729: putstatic 77	com/loc/bv:o	Z
    //   732: aload 6
    //   734: getfield 336	com/loc/bw:b	Ljava/lang/String;
    //   737: invokestatic 341	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   740: putstatic 75	com/loc/bv:n	I
    //   743: aload_0
    //   744: ldc_w 346
    //   747: invokestatic 332	com/loc/bv:b	(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bw;
    //   750: astore_0
    //   751: aload_0
    //   752: ifnull +49 -> 801
    //   755: aload_0
    //   756: getfield 335	com/loc/bw:c	Ljava/lang/String;
    //   759: ldc 79
    //   761: invokevirtual 121	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   764: ifeq +157 -> 921
    //   767: iconst_1
    //   768: istore 5
    //   770: iload 5
    //   772: putstatic 63	com/loc/bv:h	Z
    //   775: iload 5
    //   777: ifeq +9 -> 786
    //   780: invokestatic 348	com/loc/by:b	()J
    //   783: putstatic 67	com/loc/bv:j	J
    //   786: aload_0
    //   787: getfield 336	com/loc/bw:b	Ljava/lang/String;
    //   790: invokestatic 341	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   793: sipush 1000
    //   796: imul
    //   797: i2l
    //   798: putstatic 65	com/loc/bv:i	J
    //   801: iconst_1
    //   802: ireturn
    //   803: ldc 89
    //   805: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   808: goto -559 -> 249
    //   811: astore_0
    //   812: ldc 89
    //   814: putstatic 91	com/loc/bv:v	Ljava/lang/String;
    //   817: aload_0
    //   818: invokevirtual 156	java/lang/Throwable:printStackTrace	()V
    //   821: iconst_0
    //   822: ireturn
    //   823: new 350	com/loc/j
    //   826: dup
    //   827: aload 8
    //   829: aload 7
    //   831: aload 9
    //   833: invokespecial 353	com/loc/j:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   836: astore 7
    //   838: new 285	com/loc/i
    //   841: dup
    //   842: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   845: aload 7
    //   847: aload 6
    //   849: invokespecial 289	com/loc/i:<init>	(Landroid/content/Context;Lcom/loc/j;Lcom/loc/eo;)V
    //   852: invokevirtual 291	com/loc/i:a	()V
    //   855: goto -356 -> 499
    //   858: new 285	com/loc/i
    //   861: dup
    //   862: getstatic 194	com/loc/bv:a	Landroid/content/Context;
    //   865: aconst_null
    //   866: aload 6
    //   868: invokespecial 289	com/loc/i:<init>	(Landroid/content/Context;Lcom/loc/j;Lcom/loc/eo;)V
    //   871: invokevirtual 291	com/loc/i:a	()V
    //   874: goto -375 -> 499
    //   877: new 355	java/io/File
    //   880: dup
    //   881: aload 6
    //   883: getfield 356	com/loc/em:b	Ljava/lang/String;
    //   886: invokespecial 358	java/io/File:<init>	(Ljava/lang/String;)V
    //   889: invokevirtual 361	java/io/File:exists	()Z
    //   892: ifne -271 -> 621
    //   895: aload 6
    //   897: invokevirtual 364	com/loc/em:start	()V
    //   900: goto -279 -> 621
    //   903: iconst_0
    //   904: istore 5
    //   906: goto -246 -> 660
    //   909: iconst_0
    //   910: istore 5
    //   912: goto -206 -> 706
    //   915: iconst_1
    //   916: istore 5
    //   918: goto -191 -> 727
    //   921: iconst_0
    //   922: istore 5
    //   924: goto -154 -> 770
    //   927: astore_0
    //   928: iconst_1
    //   929: ireturn
    //   930: astore 6
    //   932: goto -189 -> 743
    //   935: astore 6
    //   937: goto -261 -> 676
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	811	java/lang/Throwable
    //   11	31	811	java/lang/Throwable
    //   31	37	811	java/lang/Throwable
    //   42	62	811	java/lang/Throwable
    //   62	82	811	java/lang/Throwable
    //   82	102	811	java/lang/Throwable
    //   102	140	811	java/lang/Throwable
    //   140	146	811	java/lang/Throwable
    //   151	193	811	java/lang/Throwable
    //   203	210	811	java/lang/Throwable
    //   226	231	811	java/lang/Throwable
    //   237	249	811	java/lang/Throwable
    //   249	271	811	java/lang/Throwable
    //   271	293	811	java/lang/Throwable
    //   293	315	811	java/lang/Throwable
    //   315	337	811	java/lang/Throwable
    //   337	359	811	java/lang/Throwable
    //   359	381	811	java/lang/Throwable
    //   381	398	811	java/lang/Throwable
    //   398	415	811	java/lang/Throwable
    //   415	420	811	java/lang/Throwable
    //   420	433	811	java/lang/Throwable
    //   438	483	811	java/lang/Throwable
    //   483	499	811	java/lang/Throwable
    //   499	505	811	java/lang/Throwable
    //   510	621	811	java/lang/Throwable
    //   621	626	811	java/lang/Throwable
    //   630	639	811	java/lang/Throwable
    //   644	657	811	java/lang/Throwable
    //   660	665	811	java/lang/Throwable
    //   665	676	811	java/lang/Throwable
    //   676	685	811	java/lang/Throwable
    //   690	703	811	java/lang/Throwable
    //   706	724	811	java/lang/Throwable
    //   727	732	811	java/lang/Throwable
    //   732	743	811	java/lang/Throwable
    //   743	751	811	java/lang/Throwable
    //   755	767	811	java/lang/Throwable
    //   770	775	811	java/lang/Throwable
    //   780	786	811	java/lang/Throwable
    //   786	801	811	java/lang/Throwable
    //   803	808	811	java/lang/Throwable
    //   823	855	811	java/lang/Throwable
    //   858	874	811	java/lang/Throwable
    //   877	900	811	java/lang/Throwable
    //   786	801	927	java/lang/Exception
    //   732	743	930	java/lang/Exception
    //   665	676	935	java/lang/Exception
  }

  public static long b()
  {
    return i;
  }

  private static long b(Context paramContext)
  {
    try
    {
      long l1 = paramContext.getSharedPreferences("abcd", 0).getLong("abc", 0L);
      return l1;
    }
    catch (Throwable paramContext)
    {
    }
    return 0L;
  }

  // ERROR //
  private static bw b(JSONObject paramJSONObject, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +100 -> 101
    //   4: aload_0
    //   5: aload_1
    //   6: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   9: ifeq +92 -> 101
    //   12: aload_0
    //   13: aload_1
    //   14: invokevirtual 371	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnull +82 -> 101
    //   22: new 334	com/loc/bw
    //   25: dup
    //   26: invokespecial 373	com/loc/bw:<init>	()V
    //   29: astore_0
    //   30: aload_1
    //   31: ldc_w 374
    //   34: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   37: ifeq +14 -> 51
    //   40: aload_0
    //   41: aload_1
    //   42: ldc_w 374
    //   45: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   48: putfield 344	com/loc/bw:a	Ljava/lang/String;
    //   51: aload_1
    //   52: ldc_w 268
    //   55: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   58: ifeq +14 -> 72
    //   61: aload_0
    //   62: aload_1
    //   63: ldc_w 268
    //   66: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   69: putfield 336	com/loc/bw:b	Ljava/lang/String;
    //   72: aload_1
    //   73: ldc_w 376
    //   76: invokevirtual 109	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   79: ifeq +14 -> 93
    //   82: aload_0
    //   83: aload_1
    //   84: ldc_w 376
    //   87: invokestatic 250	com/loc/bv:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   90: putfield 335	com/loc/bw:c	Ljava/lang/String;
    //   93: aload_0
    //   94: areturn
    //   95: astore_0
    //   96: aconst_null
    //   97: areturn
    //   98: astore_1
    //   99: aload_0
    //   100: areturn
    //   101: aconst_null
    //   102: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   4	18	95	org/json/JSONException
    //   22	30	95	org/json/JSONException
    //   30	51	98	org/json/JSONException
    //   51	72	98	org/json/JSONException
    //   72	93	98	org/json/JSONException
  }

  public static long c()
  {
    return j;
  }

  private static void c(Context paramContext)
  {
    while (true)
    {
      try
      {
        if (y == null)
          y = paramContext.getSharedPreferences("pref", 0);
        if (z == null)
          z = y.edit();
        if (s == 0L)
        {
          z.remove("nowtime");
          if (r == -1)
          {
            z.remove("count");
            a(z);
          }
        }
        else
        {
          try
          {
            z.putLong("nowtime", s);
          }
          catch (Throwable paramContext)
          {
            z.remove("nowtime");
          }
          continue;
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      z.putInt("count", 0);
    }
  }

  private static int d(Context paramContext)
  {
    try
    {
      if (y == null)
        y = paramContext.getSharedPreferences("pref", 0);
      int i1 = y.getInt("count", 0);
      return i1;
    }
    catch (Throwable paramContext)
    {
    }
    return 0;
  }

  public static boolean d()
  {
    return k;
  }

  public static int e()
  {
    return l;
  }

  private static long e(Context paramContext)
  {
    try
    {
      if (y == null)
        y = paramContext.getSharedPreferences("pref", 0);
      long l1 = y.getLong("nowtime", 0L);
      return l1;
    }
    catch (Throwable paramContext)
    {
    }
    return 0L;
  }

  public static boolean f()
  {
    return m;
  }

  public static int g()
  {
    return n;
  }

  public static boolean h()
  {
    return o;
  }

  public static boolean i()
  {
    boolean bool = "1".equals(p);
    at.a = bool;
    return bool;
  }

  public static String j()
  {
    return b;
  }

  public static String k()
  {
    return c;
  }

  public static String l()
  {
    return d;
  }

  public static String m()
  {
    return e;
  }

  public static String n()
  {
    return f;
  }

  public static String o()
  {
    return g;
  }

  public static boolean p()
  {
    if (!"1".equals(q));
    int i1;
    do
    {
      return false;
      if ((r == -1) || (s == 0L))
        return true;
      long l1 = e(a);
      if (!by.a(s, l1))
      {
        c(a);
        a(a, 1);
        return true;
      }
      i1 = d(a);
    }
    while (i1 >= r);
    a(a, i1 + 1);
    return true;
  }

  public static boolean q()
  {
    try
    {
      boolean bool = "1".equals(v);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bv
 * JD-Core Version:    0.6.2
 */