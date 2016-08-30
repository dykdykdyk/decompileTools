package com.tencent.open.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.open.a.h;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public final class o
{
  public static int a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) && (paramString2 == null))
      return 0;
    if ((paramString1 != null) && (paramString2 == null))
      return 1;
    if ((paramString1 == null) && (paramString2 != null))
      return -1;
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    int i = 0;
    while (true)
    {
      int j;
      int k;
      try
      {
        if ((i < arrayOfString1.length) && (i < arrayOfString2.length))
        {
          j = Integer.parseInt(arrayOfString1[i]);
          k = Integer.parseInt(arrayOfString2[i]);
          if (j < k)
            return -1;
        }
        else
        {
          if (arrayOfString1.length > i)
            return 1;
          j = arrayOfString2.length;
          if (j <= i)
            break;
          return -1;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        return paramString1.compareTo(paramString2);
      }
      if (j > k)
        return 1;
      i += 1;
    }
  }

  private static long a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    long l = 0L;
    byte[] arrayOfByte = new byte[8192];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte, 0, 8192);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
      l += i;
    }
    h.c("openSDK_LOG.SystemUtils", "-->copy, copyed size is: " + l);
    return l;
  }

  public static String a(int paramInt)
  {
    if (paramInt == 10103)
      return "shareToQQ";
    if (paramInt == 10104)
      return "shareToQzone";
    if (paramInt == 10105)
      return "addToQQFavorites";
    if (paramInt == 10106)
      return "sendToMyComputer";
    if (paramInt == 10107)
      return "shareToTroopBar";
    if (paramInt == 11101)
      return "action_login";
    if (paramInt == 10100)
      return "action_request";
    return null;
  }

  public static String a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo(paramString, 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return null;
  }

  public static boolean a(Context paramContext, Intent paramIntent)
  {
    if (paramContext == null);
    while (paramContext.getPackageManager().queryIntentActivities(paramIntent, 0).size() == 0)
      return false;
    return true;
  }

  // ERROR //
  public static String b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 43
    //   2: ldc 118
    //   4: invokestatic 120	com/tencent/open/a/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: invokevirtual 123	android/content/Context:getPackageName	()Ljava/lang/String;
    //   11: astore_3
    //   12: aload_0
    //   13: invokevirtual 90	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   16: aload_3
    //   17: bipush 64
    //   19: invokevirtual 96	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   22: getfield 127	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   25: astore_0
    //   26: ldc 129
    //   28: invokestatic 135	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   31: astore_2
    //   32: aload_2
    //   33: aload_0
    //   34: iconst_0
    //   35: aaload
    //   36: invokevirtual 141	android/content/pm/Signature:toByteArray	()[B
    //   39: invokevirtual 145	java/security/MessageDigest:update	([B)V
    //   42: aload_2
    //   43: invokevirtual 148	java/security/MessageDigest:digest	()[B
    //   46: invokestatic 153	com/tencent/open/utils/s:a	([B)Ljava/lang/String;
    //   49: astore_0
    //   50: aload_2
    //   51: invokevirtual 157	java/security/MessageDigest:reset	()V
    //   54: ldc 43
    //   56: new 45	java/lang/StringBuilder
    //   59: dup
    //   60: ldc 159
    //   62: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   65: aload_0
    //   66: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokestatic 120	com/tencent/open/a/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   75: aload_2
    //   76: new 45	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 164	java/lang/StringBuilder:<init>	()V
    //   83: aload_3
    //   84: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: ldc 166
    //   89: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_0
    //   93: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: ldc 166
    //   98: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: aload_1
    //   102: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokestatic 170	com/tencent/open/utils/s:h	(Ljava/lang/String;)[B
    //   111: invokevirtual 145	java/security/MessageDigest:update	([B)V
    //   114: aload_2
    //   115: invokevirtual 148	java/security/MessageDigest:digest	()[B
    //   118: invokestatic 153	com/tencent/open/utils/s:a	([B)Ljava/lang/String;
    //   121: astore_0
    //   122: aload_2
    //   123: invokevirtual 157	java/security/MessageDigest:reset	()V
    //   126: ldc 43
    //   128: new 45	java/lang/StringBuilder
    //   131: dup
    //   132: ldc 172
    //   134: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   137: aload_0
    //   138: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 120	com/tencent/open/a/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   147: aload_0
    //   148: areturn
    //   149: astore_1
    //   150: ldc 174
    //   152: astore_0
    //   153: aload_1
    //   154: invokevirtual 177	java/lang/Exception:printStackTrace	()V
    //   157: ldc 43
    //   159: ldc 179
    //   161: aload_1
    //   162: invokestatic 182	com/tencent/open/a/h:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   165: aload_0
    //   166: areturn
    //   167: astore_1
    //   168: goto -15 -> 153
    //
    // Exception table:
    //   from	to	target	type
    //   7	122	149	java/lang/Exception
    //   122	147	167	java/lang/Exception
  }

  // ERROR //
  @android.annotation.SuppressLint({"SdCardPath"})
  public static boolean b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 5
    //   9: aconst_null
    //   10: astore_3
    //   11: ldc 43
    //   13: new 45	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 188
    //   19: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokestatic 65	com/tencent/open/a/h:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   32: invokestatic 193	com/tencent/open/utils/g:a	()Landroid/content/Context;
    //   35: astore 8
    //   37: aload 8
    //   39: ifnonnull +12 -> 51
    //   42: ldc 43
    //   44: ldc 195
    //   46: invokestatic 65	com/tencent/open/a/h:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: iconst_0
    //   50: ireturn
    //   51: aload 8
    //   53: ldc 197
    //   55: iconst_0
    //   56: invokevirtual 201	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   59: astore 7
    //   61: new 203	java/io/File
    //   64: dup
    //   65: aload 8
    //   67: invokevirtual 207	android/content/Context:getFilesDir	()Ljava/io/File;
    //   70: aload_1
    //   71: invokespecial 210	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   74: astore 9
    //   76: aload 9
    //   78: invokevirtual 214	java/io/File:exists	()Z
    //   81: ifne +153 -> 234
    //   84: aload 9
    //   86: invokevirtual 217	java/io/File:getParentFile	()Ljava/io/File;
    //   89: astore 10
    //   91: aload 10
    //   93: ifnull +17 -> 110
    //   96: aload 10
    //   98: invokevirtual 220	java/io/File:mkdirs	()Z
    //   101: ifeq +9 -> 110
    //   104: aload 9
    //   106: invokevirtual 223	java/io/File:createNewFile	()Z
    //   109: pop
    //   110: aload 8
    //   112: invokevirtual 227	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   115: aload_0
    //   116: invokevirtual 233	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   119: astore_0
    //   120: aload_0
    //   121: astore 4
    //   123: aload 4
    //   125: astore_3
    //   126: aload 6
    //   128: astore_0
    //   129: aload 8
    //   131: aload_1
    //   132: iconst_0
    //   133: invokevirtual 237	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   136: astore_1
    //   137: aload 4
    //   139: astore_3
    //   140: aload_1
    //   141: astore_0
    //   142: aload_1
    //   143: astore 5
    //   145: aload 4
    //   147: aload_1
    //   148: invokestatic 239	com/tencent/open/utils/o:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    //   151: pop2
    //   152: aload 4
    //   154: astore_3
    //   155: aload_1
    //   156: astore_0
    //   157: aload_1
    //   158: astore 5
    //   160: aload 7
    //   162: invokeinterface 245 1 0
    //   167: astore 6
    //   169: aload 4
    //   171: astore_3
    //   172: aload_1
    //   173: astore_0
    //   174: aload_1
    //   175: astore 5
    //   177: aload 6
    //   179: ldc 247
    //   181: iconst_3
    //   182: invokeinterface 253 3 0
    //   187: pop
    //   188: aload 4
    //   190: astore_3
    //   191: aload_1
    //   192: astore_0
    //   193: aload_1
    //   194: astore 5
    //   196: aload 6
    //   198: invokeinterface 256 1 0
    //   203: pop
    //   204: aload 4
    //   206: ifnull +8 -> 214
    //   209: aload 4
    //   211: invokevirtual 259	java/io/InputStream:close	()V
    //   214: aload_1
    //   215: ifnull +7 -> 222
    //   218: aload_1
    //   219: invokevirtual 260	java/io/OutputStream:close	()V
    //   222: iconst_1
    //   223: ireturn
    //   224: astore 9
    //   226: aload 9
    //   228: invokevirtual 261	java/io/IOException:printStackTrace	()V
    //   231: goto -121 -> 110
    //   234: aload 7
    //   236: ldc 247
    //   238: iconst_0
    //   239: invokeinterface 265 3 0
    //   244: istore_2
    //   245: ldc 43
    //   247: new 45	java/lang/StringBuilder
    //   250: dup
    //   251: ldc_w 267
    //   254: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: iload_2
    //   258: invokevirtual 270	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   261: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokestatic 65	com/tencent/open/a/h:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   267: iconst_3
    //   268: iload_2
    //   269: if_icmpne -159 -> 110
    //   272: iconst_1
    //   273: ireturn
    //   274: astore_1
    //   275: aconst_null
    //   276: astore 4
    //   278: aload_3
    //   279: astore 5
    //   281: aload 4
    //   283: astore_3
    //   284: aload 5
    //   286: astore_0
    //   287: ldc 43
    //   289: ldc_w 272
    //   292: aload_1
    //   293: invokestatic 182	com/tencent/open/a/h:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   296: aload 4
    //   298: ifnull +8 -> 306
    //   301: aload 4
    //   303: invokevirtual 259	java/io/InputStream:close	()V
    //   306: aload 5
    //   308: ifnull -259 -> 49
    //   311: aload 5
    //   313: invokevirtual 260	java/io/OutputStream:close	()V
    //   316: iconst_0
    //   317: ireturn
    //   318: astore_0
    //   319: iconst_0
    //   320: ireturn
    //   321: astore_1
    //   322: aconst_null
    //   323: astore_3
    //   324: aload 4
    //   326: astore_0
    //   327: aload_3
    //   328: ifnull +7 -> 335
    //   331: aload_3
    //   332: invokevirtual 259	java/io/InputStream:close	()V
    //   335: aload_0
    //   336: ifnull +7 -> 343
    //   339: aload_0
    //   340: invokevirtual 260	java/io/OutputStream:close	()V
    //   343: aload_1
    //   344: athrow
    //   345: astore_0
    //   346: goto -132 -> 214
    //   349: astore_0
    //   350: goto -128 -> 222
    //   353: astore_0
    //   354: goto -48 -> 306
    //   357: astore_3
    //   358: goto -23 -> 335
    //   361: astore_0
    //   362: goto -19 -> 343
    //   365: astore_1
    //   366: goto -39 -> 327
    //   369: astore_1
    //   370: goto -89 -> 281
    //
    // Exception table:
    //   from	to	target	type
    //   104	110	224	java/io/IOException
    //   110	120	274	java/lang/Exception
    //   311	316	318	java/io/IOException
    //   110	120	321	finally
    //   209	214	345	java/io/IOException
    //   218	222	349	java/io/IOException
    //   301	306	353	java/io/IOException
    //   331	335	357	java/io/IOException
    //   339	343	361	java/io/IOException
    //   129	137	365	finally
    //   145	152	365	finally
    //   160	169	365	finally
    //   177	188	365	finally
    //   196	204	365	finally
    //   287	296	365	finally
    //   129	137	369	java/lang/Exception
    //   145	152	369	java/lang/Exception
    //   160	169	369	java/lang/Exception
    //   177	188	369	java/lang/Exception
    //   196	204	369	java/lang/Exception
  }

  public static int c(Context paramContext, String paramString)
  {
    return a(a(paramContext, "com.tencent.mobileqq"), paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.o
 * JD-Core Version:    0.6.2
 */