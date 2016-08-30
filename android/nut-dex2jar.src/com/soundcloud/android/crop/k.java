package com.soundcloud.android.crop;

import android.app.ProgressDialog;
import android.media.ExifInterface;
import android.os.Handler;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;

final class k
{
  public static int a(File paramFile)
  {
    if (paramFile == null)
      return 0;
    try
    {
      int i = new ExifInterface(paramFile.getAbsolutePath()).getAttributeInt("Orientation", 0);
      switch (i)
      {
      case 4:
      case 5:
      case 7:
      default:
        return 0;
      case 3:
        return 180;
      case 6:
        return 90;
      case 8:
      }
      return 270;
    }
    catch (IOException paramFile)
    {
      u.a("Error getting Exif data", paramFile);
    }
    return 0;
  }

  // ERROR //
  public static File a(android.content.Context paramContext, android.content.ContentResolver paramContentResolver, android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_2
    //   4: ifnonnull +7 -> 11
    //   7: aconst_null
    //   8: astore_0
    //   9: aload_0
    //   10: areturn
    //   11: ldc 41
    //   13: aload_2
    //   14: invokevirtual 46	android/net/Uri:getScheme	()Ljava/lang/String;
    //   17: invokevirtual 52	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   20: ifeq +15 -> 35
    //   23: new 12	java/io/File
    //   26: dup
    //   27: aload_2
    //   28: invokevirtual 55	android/net/Uri:getPath	()Ljava/lang/String;
    //   31: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: areturn
    //   35: ldc 58
    //   37: aload_2
    //   38: invokevirtual 46	android/net/Uri:getScheme	()Ljava/lang/String;
    //   41: invokevirtual 52	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   44: ifeq +145 -> 189
    //   47: aload_1
    //   48: aload_2
    //   49: iconst_2
    //   50: anewarray 48	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: ldc 60
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: ldc 62
    //   62: aastore
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 68	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 5
    //   71: aload 5
    //   73: astore 4
    //   75: aload 4
    //   77: ifnull +100 -> 177
    //   80: aload 4
    //   82: invokeinterface 74 1 0
    //   87: ifeq +90 -> 177
    //   90: aload_2
    //   91: invokevirtual 77	android/net/Uri:toString	()Ljava/lang/String;
    //   94: ldc 79
    //   96: invokevirtual 83	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   99: ifeq +65 -> 164
    //   102: aload 4
    //   104: ldc 62
    //   106: invokeinterface 87 2 0
    //   111: istore_3
    //   112: iload_3
    //   113: iconst_m1
    //   114: if_icmpeq +63 -> 177
    //   117: aload 4
    //   119: iload_3
    //   120: invokeinterface 91 2 0
    //   125: astore 5
    //   127: aload 5
    //   129: invokestatic 97	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   132: ifne +45 -> 177
    //   135: new 12	java/io/File
    //   138: dup
    //   139: aload 5
    //   141: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   144: astore 5
    //   146: aload 5
    //   148: astore_0
    //   149: aload 4
    //   151: ifnull -142 -> 9
    //   154: aload 4
    //   156: invokeinterface 101 1 0
    //   161: aload 5
    //   163: areturn
    //   164: aload 4
    //   166: ldc 60
    //   168: invokeinterface 87 2 0
    //   173: istore_3
    //   174: goto -62 -> 112
    //   177: aload 4
    //   179: ifnull +10 -> 189
    //   182: aload 4
    //   184: invokeinterface 101 1 0
    //   189: aconst_null
    //   190: areturn
    //   191: astore 5
    //   193: aload_0
    //   194: aload_1
    //   195: aload_2
    //   196: invokestatic 104	com/soundcloud/android/crop/k:b	(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    //   199: astore_1
    //   200: aload_1
    //   201: astore_0
    //   202: aload 4
    //   204: ifnull -195 -> 9
    //   207: aload 4
    //   209: invokeinterface 101 1 0
    //   214: aload_1
    //   215: areturn
    //   216: astore_0
    //   217: aconst_null
    //   218: astore 4
    //   220: aload 4
    //   222: ifnull -33 -> 189
    //   225: aload 4
    //   227: invokeinterface 101 1 0
    //   232: goto -43 -> 189
    //   235: astore_0
    //   236: aconst_null
    //   237: astore 4
    //   239: aload 4
    //   241: ifnull +10 -> 251
    //   244: aload 4
    //   246: invokeinterface 101 1 0
    //   251: aload_0
    //   252: athrow
    //   253: astore_0
    //   254: goto -15 -> 239
    //   257: astore_0
    //   258: goto -19 -> 239
    //   261: astore_0
    //   262: goto -42 -> 220
    //   265: astore 5
    //   267: goto -74 -> 193
    //
    // Exception table:
    //   from	to	target	type
    //   47	71	191	java/lang/IllegalArgumentException
    //   47	71	216	java/lang/SecurityException
    //   47	71	235	finally
    //   80	112	253	finally
    //   117	146	253	finally
    //   164	174	253	finally
    //   193	200	257	finally
    //   80	112	261	java/lang/SecurityException
    //   117	146	261	java/lang/SecurityException
    //   164	174	261	java/lang/SecurityException
    //   80	112	265	java/lang/IllegalArgumentException
    //   117	146	265	java/lang/IllegalArgumentException
    //   164	174	265	java/lang/IllegalArgumentException
  }

  public static void a(v paramv, String paramString, Runnable paramRunnable, Handler paramHandler)
  {
    new Thread(new l(paramv, paramRunnable, ProgressDialog.show(paramv, null, paramString, true, false), paramHandler)).start();
  }

  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable == null)
      return;
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable)
    {
    }
  }

  // ERROR //
  private static File b(android.content.Context paramContext, android.content.ContentResolver paramContentResolver, android.net.Uri paramUri)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 132	java/io/FileInputStream
    //   9: dup
    //   10: aload_1
    //   11: aload_2
    //   12: ldc 134
    //   14: invokevirtual 138	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    //   17: invokevirtual 144	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   20: invokespecial 147	java/io/FileInputStream:<init>	(Ljava/io/FileDescriptor;)V
    //   23: astore_1
    //   24: ldc 149
    //   26: ldc 151
    //   28: aload_0
    //   29: invokevirtual 157	android/content/Context:getCacheDir	()Ljava/io/File;
    //   32: invokestatic 161	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   35: invokevirtual 16	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: astore_0
    //   39: new 163	java/io/FileOutputStream
    //   42: dup
    //   43: aload_0
    //   44: invokespecial 164	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   47: astore_2
    //   48: sipush 4096
    //   51: newarray byte
    //   53: astore 4
    //   55: aload_1
    //   56: aload 4
    //   58: invokevirtual 168	java/io/FileInputStream:read	([B)I
    //   61: istore_3
    //   62: iload_3
    //   63: iconst_m1
    //   64: if_icmpeq +27 -> 91
    //   67: aload_2
    //   68: aload 4
    //   70: iconst_0
    //   71: iload_3
    //   72: invokevirtual 172	java/io/FileOutputStream:write	([BII)V
    //   75: goto -20 -> 55
    //   78: astore_0
    //   79: aload_2
    //   80: astore_0
    //   81: aload_1
    //   82: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   85: aload_0
    //   86: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   89: aconst_null
    //   90: areturn
    //   91: new 12	java/io/File
    //   94: dup
    //   95: aload_0
    //   96: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   99: astore_0
    //   100: aload_1
    //   101: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   104: aload_2
    //   105: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   108: aload_0
    //   109: areturn
    //   110: astore_0
    //   111: aconst_null
    //   112: astore_2
    //   113: aconst_null
    //   114: astore_1
    //   115: aload_1
    //   116: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   119: aload_2
    //   120: invokestatic 174	com/soundcloud/android/crop/k:a	(Ljava/io/Closeable;)V
    //   123: aload_0
    //   124: athrow
    //   125: astore_0
    //   126: aconst_null
    //   127: astore_2
    //   128: goto -13 -> 115
    //   131: astore_0
    //   132: goto -17 -> 115
    //   135: astore_0
    //   136: aconst_null
    //   137: astore_0
    //   138: aconst_null
    //   139: astore_1
    //   140: goto -59 -> 81
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_0
    //   146: goto -65 -> 81
    //
    // Exception table:
    //   from	to	target	type
    //   48	55	78	java/io/IOException
    //   55	62	78	java/io/IOException
    //   67	75	78	java/io/IOException
    //   91	100	78	java/io/IOException
    //   6	24	110	finally
    //   24	48	125	finally
    //   48	55	131	finally
    //   55	62	131	finally
    //   67	75	131	finally
    //   91	100	131	finally
    //   6	24	135	java/io/IOException
    //   24	48	143	java/io/IOException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.k
 * JD-Core Version:    0.6.2
 */