package android.support.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

final class c
{
  private static Method a;

  static
  {
    try
    {
      a = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      a = null;
    }
  }

  private static SharedPreferences a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11);
    for (int i = 0; ; i = 4)
      return paramContext.getSharedPreferences("multidex.version", i);
  }

  static List<File> a(Context paramContext, ApplicationInfo paramApplicationInfo, File paramFile, boolean paramBoolean)
    throws IOException
  {
    Log.i("MultiDex", "MultiDexExtractor.load(" + paramApplicationInfo.sourceDir + ", " + paramBoolean + ")");
    File localFile = new File(paramApplicationInfo.sourceDir);
    long l2 = e.a(localFile);
    long l1 = l2;
    if (l2 == -1L)
      l1 = l2 - 1L;
    int i;
    if (!paramBoolean)
    {
      paramApplicationInfo = a(paramContext);
      if ((paramApplicationInfo.getLong("timestamp", -1L) != b(localFile)) || (paramApplicationInfo.getLong("crc", -1L) != l1))
      {
        i = 1;
        if (i != 0)
          break label223;
      }
    }
    while (true)
    {
      try
      {
        paramApplicationInfo = a(paramContext, localFile, paramFile);
        paramContext = paramApplicationInfo;
        Log.i("MultiDex", "load found " + paramContext.size() + " secondary dex files");
        return paramContext;
        i = 0;
      }
      catch (IOException paramApplicationInfo)
      {
        Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", paramApplicationInfo);
        paramApplicationInfo = a(localFile, paramFile);
        a(paramContext, b(localFile), l1, paramApplicationInfo.size() + 1);
        paramContext = paramApplicationInfo;
        continue;
      }
      label223: Log.i("MultiDex", "Detected that extraction must be performed.");
      paramApplicationInfo = a(localFile, paramFile);
      a(paramContext, b(localFile), l1, paramApplicationInfo.size() + 1);
      paramContext = paramApplicationInfo;
    }
  }

  private static List<File> a(Context paramContext, File paramFile1, File paramFile2)
    throws IOException
  {
    Log.i("MultiDex", "loading existing secondary dex files");
    paramFile1 = paramFile1.getName() + ".classes";
    int j = a(paramContext).getInt("dex.number", 1);
    paramContext = new ArrayList(j);
    int i = 2;
    while (i <= j)
    {
      File localFile = new File(paramFile2, paramFile1 + i + ".zip");
      if (localFile.isFile())
      {
        paramContext.add(localFile);
        if (!a(localFile))
        {
          Log.i("MultiDex", "Invalid zip file: " + localFile);
          throw new IOException("Invalid ZIP file.");
        }
      }
      else
      {
        throw new IOException("Missing extracted secondary dex file '" + localFile.getPath() + "'");
      }
      i += 1;
    }
    return paramContext;
  }

  private static List<File> a(File paramFile1, File paramFile2)
    throws IOException
  {
    String str2 = paramFile1.getName() + ".classes";
    a(paramFile2, str2);
    ArrayList localArrayList = new ArrayList();
    ZipFile localZipFile = new ZipFile(paramFile1);
    try
    {
      paramFile1 = localZipFile.getEntry("classes2.dex");
      j = 2;
      if (paramFile1 != null)
      {
        File localFile = new File(paramFile2, str2 + j + ".zip");
        localArrayList.add(localFile);
        Log.i("MultiDex", "Extraction is needed for file " + localFile);
        boolean bool = false;
        int i = 0;
        while ((i < 3) && (!bool))
        {
          i += 1;
          a(localZipFile, paramFile1, localFile, str2);
          bool = a(localFile);
          StringBuilder localStringBuilder = new StringBuilder("Extraction ");
          if (!bool)
            break label407;
          str1 = "success";
          Log.i("MultiDex", str1 + " - length " + localFile.getAbsolutePath() + ": " + localFile.length());
          if (bool)
            break label404;
          localFile.delete();
          if (!localFile.exists())
            break label404;
          Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + localFile.getPath() + "'");
        }
        if (!bool)
          throw new IOException("Could not create zip file " + localFile.getAbsolutePath() + " for secondary dex (" + j + ")");
      }
    }
    finally
    {
      while (true)
      {
        try
        {
          int j;
          localZipFile.close();
          throw paramFile1;
          j += 1;
          paramFile1 = localZipFile.getEntry("classes" + j + ".dex");
          continue;
          try
          {
            localZipFile.close();
            return localArrayList;
          }
          catch (IOException paramFile1)
          {
            Log.w("MultiDex", "Failed to close resource", paramFile1);
            return localArrayList;
          }
        }
        catch (IOException paramFile2)
        {
          Log.w("MultiDex", "Failed to close resource", paramFile2);
          continue;
        }
        label404: continue;
        label407: String str1 = "failed";
      }
    }
  }

  private static void a(Context paramContext, long paramLong1, long paramLong2, int paramInt)
  {
    paramContext = a(paramContext).edit();
    paramContext.putLong("timestamp", paramLong1);
    paramContext.putLong("crc", paramLong2);
    paramContext.putInt("dex.number", paramInt);
    if (a != null);
    try
    {
      a.invoke(paramContext, new Object[0]);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramContext.commit();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label62: break label62;
    }
  }

  private static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      Log.w("MultiDex", "Failed to close resource", paramCloseable);
    }
  }

  private static void a(File paramFile, String paramString)
    throws IOException
  {
    c(paramFile.getParentFile());
    c(paramFile);
    paramString = paramFile.listFiles(new d(paramString));
    if (paramString == null)
    {
      Log.w("MultiDex", "Failed to list secondary dex dir content (" + paramFile.getPath() + ").");
      return;
    }
    int j = paramString.length;
    int i = 0;
    label66: if (i < j)
    {
      paramFile = paramString[i];
      Log.i("MultiDex", "Trying to delete old file " + paramFile.getPath() + " of size " + paramFile.length());
      if (paramFile.delete())
        break label154;
      Log.w("MultiDex", "Failed to delete old file " + paramFile.getPath());
    }
    while (true)
    {
      i += 1;
      break label66;
      break;
      label154: Log.i("MultiDex", "Deleted old file " + paramFile.getPath());
    }
  }

  // ERROR //
  private static void a(ZipFile paramZipFile, java.util.zip.ZipEntry paramZipEntry, File paramFile, String paramString)
    throws IOException, java.io.FileNotFoundException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 312	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   5: astore_0
    //   6: aload_3
    //   7: ldc 158
    //   9: aload_2
    //   10: invokevirtual 284	java/io/File:getParentFile	()Ljava/io/File;
    //   13: invokestatic 316	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   16: astore_3
    //   17: ldc 43
    //   19: new 45	java/lang/StringBuilder
    //   22: dup
    //   23: ldc_w 318
    //   26: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   29: aload_3
    //   30: invokevirtual 185	java/io/File:getPath	()Ljava/lang/String;
    //   33: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 78	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   42: pop
    //   43: new 320	java/util/zip/ZipOutputStream
    //   46: dup
    //   47: new 322	java/io/BufferedOutputStream
    //   50: dup
    //   51: new 324	java/io/FileOutputStream
    //   54: dup
    //   55: aload_3
    //   56: invokespecial 325	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   59: invokespecial 328	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   62: invokespecial 329	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   65: astore 5
    //   67: new 331	java/util/zip/ZipEntry
    //   70: dup
    //   71: ldc_w 333
    //   74: invokespecial 334	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   77: astore 6
    //   79: aload 6
    //   81: aload_1
    //   82: invokevirtual 337	java/util/zip/ZipEntry:getTime	()J
    //   85: invokevirtual 341	java/util/zip/ZipEntry:setTime	(J)V
    //   88: aload 5
    //   90: aload 6
    //   92: invokevirtual 345	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   95: sipush 16384
    //   98: newarray byte
    //   100: astore_1
    //   101: aload_0
    //   102: aload_1
    //   103: invokevirtual 351	java/io/InputStream:read	([B)I
    //   106: istore 4
    //   108: iload 4
    //   110: iconst_m1
    //   111: if_icmpeq +22 -> 133
    //   114: aload 5
    //   116: aload_1
    //   117: iconst_0
    //   118: iload 4
    //   120: invokevirtual 355	java/util/zip/ZipOutputStream:write	([BII)V
    //   123: aload_0
    //   124: aload_1
    //   125: invokevirtual 351	java/io/InputStream:read	([B)I
    //   128: istore 4
    //   130: goto -22 -> 108
    //   133: aload 5
    //   135: invokevirtual 358	java/util/zip/ZipOutputStream:closeEntry	()V
    //   138: aload 5
    //   140: invokevirtual 359	java/util/zip/ZipOutputStream:close	()V
    //   143: ldc 43
    //   145: new 45	java/lang/StringBuilder
    //   148: dup
    //   149: ldc_w 361
    //   152: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   155: aload_2
    //   156: invokevirtual 185	java/io/File:getPath	()Ljava/lang/String;
    //   159: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 78	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   168: pop
    //   169: aload_3
    //   170: aload_2
    //   171: invokevirtual 364	java/io/File:renameTo	(Ljava/io/File;)Z
    //   174: ifne +70 -> 244
    //   177: new 41	java/io/IOException
    //   180: dup
    //   181: new 45	java/lang/StringBuilder
    //   184: dup
    //   185: ldc_w 366
    //   188: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_3
    //   192: invokevirtual 216	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   195: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc_w 368
    //   201: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload_2
    //   205: invokevirtual 216	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   208: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: ldc_w 370
    //   214: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 72	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: invokespecial 180	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: astore_1
    //   225: aload_0
    //   226: invokestatic 372	android/support/b/c:a	(Ljava/io/Closeable;)V
    //   229: aload_3
    //   230: invokevirtual 228	java/io/File:delete	()Z
    //   233: pop
    //   234: aload_1
    //   235: athrow
    //   236: astore_1
    //   237: aload 5
    //   239: invokevirtual 359	java/util/zip/ZipOutputStream:close	()V
    //   242: aload_1
    //   243: athrow
    //   244: aload_0
    //   245: invokestatic 372	android/support/b/c:a	(Ljava/io/Closeable;)V
    //   248: aload_3
    //   249: invokevirtual 228	java/io/File:delete	()Z
    //   252: pop
    //   253: return
    //
    // Exception table:
    //   from	to	target	type
    //   43	67	224	finally
    //   138	224	224	finally
    //   237	244	224	finally
    //   67	108	236	finally
    //   114	130	236	finally
    //   133	138	236	finally
  }

  static boolean a(File paramFile)
  {
    try
    {
      ZipFile localZipFile = new ZipFile(paramFile);
      try
      {
        localZipFile.close();
        return true;
      }
      catch (IOException localIOException1)
      {
        Log.w("MultiDex", "Failed to close zip file: " + paramFile.getAbsolutePath());
      }
      return false;
    }
    catch (ZipException localZipException)
    {
      while (true)
        Log.w("MultiDex", "File " + paramFile.getAbsolutePath() + " is not a valid zip file.", localZipException);
    }
    catch (IOException localIOException2)
    {
      while (true)
        Log.w("MultiDex", "Got an IOException trying to open zip file: " + paramFile.getAbsolutePath(), localIOException2);
    }
  }

  private static long b(File paramFile)
  {
    long l2 = paramFile.lastModified();
    long l1 = l2;
    if (l2 == -1L)
      l1 = l2 - 1L;
    return l1;
  }

  private static void c(File paramFile)
    throws IOException
  {
    paramFile.mkdir();
    if (!paramFile.isDirectory())
    {
      File localFile = paramFile.getParentFile();
      if (localFile == null)
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". Parent file is null.");
      while (true)
      {
        throw new IOException("Failed to create cache directory " + paramFile.getPath());
        Log.e("MultiDex", "Failed to create dir " + paramFile.getPath() + ". parent file is a dir " + localFile.isDirectory() + ", a file " + localFile.isFile() + ", exists " + localFile.exists() + ", readable " + localFile.canRead() + ", writable " + localFile.canWrite());
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.b.c
 * JD-Core Version:    0.6.2
 */