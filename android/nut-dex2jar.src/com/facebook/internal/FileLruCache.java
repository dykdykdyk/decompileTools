package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.Settings;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

public final class FileLruCache
{
  private static final String HEADER_CACHEKEY_KEY = "key";
  private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
  static final String TAG = FileLruCache.class.getSimpleName();
  private static final AtomicLong bufferIndex = new AtomicLong();
  private final File directory;
  private boolean isTrimInProgress;
  private boolean isTrimPending;
  private AtomicLong lastClearCacheTime = new AtomicLong(0L);
  private final FileLruCache.Limits limits;
  private final Object lock;
  private final String tag;

  public FileLruCache(Context paramContext, String paramString, FileLruCache.Limits paramLimits)
  {
    this.tag = paramString;
    this.limits = paramLimits;
    this.directory = new File(paramContext.getCacheDir(), paramString);
    this.lock = new Object();
    if ((this.directory.mkdirs()) || (this.directory.isDirectory()))
      FileLruCache.BufferFile.deleteAll(this.directory);
  }

  private void postTrim()
  {
    synchronized (this.lock)
    {
      if (!this.isTrimPending)
      {
        this.isTrimPending = true;
        Settings.getExecutor().execute(new FileLruCache.3(this));
      }
      return;
    }
  }

  private void renameToTargetAndTrim(String paramString, File paramFile)
  {
    if (!paramFile.renameTo(new File(this.directory, Utility.md5hash(paramString))))
      paramFile.delete();
    postTrim();
  }

  // ERROR //
  private void trim()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 68	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   4: astore 11
    //   6: aload 11
    //   8: monitorenter
    //   9: aload_0
    //   10: iconst_0
    //   11: putfield 99	com/facebook/internal/FileLruCache:isTrimPending	Z
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 132	com/facebook/internal/FileLruCache:isTrimInProgress	Z
    //   19: aload 11
    //   21: monitorexit
    //   22: getstatic 138	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   25: getstatic 34	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   28: ldc 140
    //   30: invokestatic 146	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   33: new 148	java/util/PriorityQueue
    //   36: dup
    //   37: invokespecial 149	java/util/PriorityQueue:<init>	()V
    //   40: astore 11
    //   42: lconst_0
    //   43: lstore_3
    //   44: lconst_0
    //   45: lstore 7
    //   47: aload_0
    //   48: getfield 66	com/facebook/internal/FileLruCache:directory	Ljava/io/File;
    //   51: invokestatic 153	com/facebook/internal/FileLruCache$BufferFile:excludeBufferFiles	()Ljava/io/FilenameFilter;
    //   54: invokevirtual 157	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   57: astore 12
    //   59: lload 7
    //   61: lstore 5
    //   63: lload_3
    //   64: lstore 9
    //   66: aload 12
    //   68: ifnull +289 -> 357
    //   71: aload 12
    //   73: arraylength
    //   74: istore_2
    //   75: iconst_0
    //   76: istore_1
    //   77: lload 7
    //   79: lstore 5
    //   81: lload_3
    //   82: lstore 9
    //   84: iload_1
    //   85: iload_2
    //   86: if_icmpge +271 -> 357
    //   89: aload 12
    //   91: iload_1
    //   92: aaload
    //   93: astore 13
    //   95: new 159	com/facebook/internal/FileLruCache$ModifiedFile
    //   98: dup
    //   99: aload 13
    //   101: invokespecial 161	com/facebook/internal/FileLruCache$ModifiedFile:<init>	(Ljava/io/File;)V
    //   104: astore 14
    //   106: aload 11
    //   108: aload 14
    //   110: invokevirtual 165	java/util/PriorityQueue:add	(Ljava/lang/Object;)Z
    //   113: pop
    //   114: getstatic 138	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   117: getstatic 34	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   120: new 167	java/lang/StringBuilder
    //   123: dup
    //   124: ldc 169
    //   126: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: aload 14
    //   131: invokevirtual 176	com/facebook/internal/FileLruCache$ModifiedFile:getModified	()J
    //   134: invokestatic 182	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   137: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: ldc 188
    //   142: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload 14
    //   147: invokevirtual 194	com/facebook/internal/FileLruCache$ModifiedFile:getFile	()Ljava/io/File;
    //   150: invokevirtual 197	java/io/File:getName	()Ljava/lang/String;
    //   153: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 146	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload 13
    //   164: invokevirtual 203	java/io/File:length	()J
    //   167: lstore 5
    //   169: iload_1
    //   170: iconst_1
    //   171: iadd
    //   172: istore_1
    //   173: lconst_1
    //   174: lload 7
    //   176: ladd
    //   177: lstore 7
    //   179: lload 5
    //   181: lload_3
    //   182: ladd
    //   183: lstore_3
    //   184: goto -107 -> 77
    //   187: astore 12
    //   189: aload 11
    //   191: monitorexit
    //   192: aload 12
    //   194: athrow
    //   195: lload 9
    //   197: aload_0
    //   198: getfield 53	com/facebook/internal/FileLruCache:limits	Lcom/facebook/internal/FileLruCache$Limits;
    //   201: invokevirtual 209	com/facebook/internal/FileLruCache$Limits:getByteCount	()I
    //   204: i2l
    //   205: lcmp
    //   206: ifgt +16 -> 222
    //   209: lload_3
    //   210: aload_0
    //   211: getfield 53	com/facebook/internal/FileLruCache:limits	Lcom/facebook/internal/FileLruCache$Limits;
    //   214: invokevirtual 212	com/facebook/internal/FileLruCache$Limits:getFileCount	()I
    //   217: i2l
    //   218: lcmp
    //   219: ifle +68 -> 287
    //   222: aload 11
    //   224: invokevirtual 216	java/util/PriorityQueue:remove	()Ljava/lang/Object;
    //   227: checkcast 159	com/facebook/internal/FileLruCache$ModifiedFile
    //   230: invokevirtual 194	com/facebook/internal/FileLruCache$ModifiedFile:getFile	()Ljava/io/File;
    //   233: astore 12
    //   235: getstatic 138	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   238: getstatic 34	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   241: new 167	java/lang/StringBuilder
    //   244: dup
    //   245: ldc 218
    //   247: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: aload 12
    //   252: invokevirtual 197	java/io/File:getName	()Ljava/lang/String;
    //   255: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 146	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    //   264: lload 9
    //   266: aload 12
    //   268: invokevirtual 203	java/io/File:length	()J
    //   271: lsub
    //   272: lstore 9
    //   274: aload 12
    //   276: invokevirtual 128	java/io/File:delete	()Z
    //   279: pop
    //   280: lload_3
    //   281: lconst_1
    //   282: lsub
    //   283: lstore_3
    //   284: goto -89 -> 195
    //   287: aload_0
    //   288: getfield 68	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   291: astore 11
    //   293: aload 11
    //   295: monitorenter
    //   296: aload_0
    //   297: iconst_0
    //   298: putfield 132	com/facebook/internal/FileLruCache:isTrimInProgress	Z
    //   301: aload_0
    //   302: getfield 68	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   305: invokevirtual 221	java/lang/Object:notifyAll	()V
    //   308: aload 11
    //   310: monitorexit
    //   311: return
    //   312: astore 12
    //   314: aload 11
    //   316: monitorexit
    //   317: aload 12
    //   319: athrow
    //   320: astore 12
    //   322: aload_0
    //   323: getfield 68	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   326: astore 11
    //   328: aload 11
    //   330: monitorenter
    //   331: aload_0
    //   332: iconst_0
    //   333: putfield 132	com/facebook/internal/FileLruCache:isTrimInProgress	Z
    //   336: aload_0
    //   337: getfield 68	com/facebook/internal/FileLruCache:lock	Ljava/lang/Object;
    //   340: invokevirtual 221	java/lang/Object:notifyAll	()V
    //   343: aload 11
    //   345: monitorexit
    //   346: aload 12
    //   348: athrow
    //   349: astore 12
    //   351: aload 11
    //   353: monitorexit
    //   354: aload 12
    //   356: athrow
    //   357: lload 5
    //   359: lstore_3
    //   360: goto -165 -> 195
    //
    // Exception table:
    //   from	to	target	type
    //   9	22	187	finally
    //   189	192	187	finally
    //   296	311	312	finally
    //   314	317	312	finally
    //   22	42	320	finally
    //   47	59	320	finally
    //   71	75	320	finally
    //   95	169	320	finally
    //   195	222	320	finally
    //   222	280	320	finally
    //   331	346	349	finally
    //   351	354	349	finally
  }

  public final void clearCache()
  {
    File[] arrayOfFile = this.directory.listFiles(FileLruCache.BufferFile.excludeBufferFiles());
    this.lastClearCacheTime.set(System.currentTimeMillis());
    if (arrayOfFile != null)
      Settings.getExecutor().execute(new FileLruCache.2(this, arrayOfFile));
  }

  public final InputStream get(String paramString)
    throws IOException
  {
    return get(paramString, null);
  }

  public final InputStream get(String paramString1, String paramString2)
    throws IOException
  {
    File localFile = new File(this.directory, Utility.md5hash(paramString1));
    try
    {
      Object localObject = new FileInputStream(localFile);
      localObject = new BufferedInputStream((InputStream)localObject, 8192);
      try
      {
        JSONObject localJSONObject = FileLruCache.StreamHeader.readHeader((InputStream)localObject);
        if (localJSONObject == null)
          return null;
        String str = localJSONObject.optString("key");
        boolean bool;
        if (str != null)
        {
          bool = str.equals(paramString1);
          if (bool);
        }
        else
        {
          return null;
        }
        paramString1 = localJSONObject.optString("tag", null);
        if ((paramString2 != null) || (paramString1 == null))
        {
          if (paramString2 != null)
          {
            bool = paramString2.equals(paramString1);
            if (bool);
          }
        }
        else
          return null;
        long l = new Date().getTime();
        Logger.log(LoggingBehavior.CACHE, TAG, "Setting lastModified to " + Long.valueOf(l) + " for " + localFile.getName());
        localFile.setLastModified(l);
        return localObject;
      }
      finally
      {
        ((BufferedInputStream)localObject).close();
      }
    }
    catch (IOException paramString1)
    {
    }
    return null;
  }

  public final InputStream interceptAndPut(String paramString, InputStream paramInputStream)
    throws IOException
  {
    return new FileLruCache.CopyingInputStream(paramInputStream, openPutStream(paramString));
  }

  final OutputStream openPutStream(String paramString)
    throws IOException
  {
    return openPutStream(paramString, null);
  }

  // ERROR //
  public final OutputStream openPutStream(String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 66	com/facebook/internal/FileLruCache:directory	Ljava/io/File;
    //   4: invokestatic 309	com/facebook/internal/FileLruCache$BufferFile:newFile	(Ljava/io/File;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 128	java/io/File:delete	()Z
    //   12: pop
    //   13: aload_3
    //   14: invokevirtual 312	java/io/File:createNewFile	()Z
    //   17: ifne +31 -> 48
    //   20: new 239	java/io/IOException
    //   23: dup
    //   24: new 167	java/lang/StringBuilder
    //   27: dup
    //   28: ldc_w 314
    //   31: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   34: aload_3
    //   35: invokevirtual 317	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 318	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: new 320	java/io/FileOutputStream
    //   51: dup
    //   52: aload_3
    //   53: invokespecial 321	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   56: astore 4
    //   58: new 323	java/io/BufferedOutputStream
    //   61: dup
    //   62: new 325	com/facebook/internal/FileLruCache$CloseCallbackOutputStream
    //   65: dup
    //   66: aload 4
    //   68: new 327	com/facebook/internal/FileLruCache$1
    //   71: dup
    //   72: aload_0
    //   73: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   76: aload_3
    //   77: aload_1
    //   78: invokespecial 330	com/facebook/internal/FileLruCache$1:<init>	(Lcom/facebook/internal/FileLruCache;JLjava/io/File;Ljava/lang/String;)V
    //   81: invokespecial 333	com/facebook/internal/FileLruCache$CloseCallbackOutputStream:<init>	(Ljava/io/OutputStream;Lcom/facebook/internal/FileLruCache$StreamCloseCallback;)V
    //   84: sipush 8192
    //   87: invokespecial 336	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   90: astore_3
    //   91: new 262	org/json/JSONObject
    //   94: dup
    //   95: invokespecial 337	org/json/JSONObject:<init>	()V
    //   98: astore 4
    //   100: aload 4
    //   102: ldc 8
    //   104: aload_1
    //   105: invokevirtual 341	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   108: pop
    //   109: aload_2
    //   110: invokestatic 345	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   113: ifne +12 -> 125
    //   116: aload 4
    //   118: ldc 11
    //   120: aload_2
    //   121: invokevirtual 341	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   124: pop
    //   125: aload_3
    //   126: aload 4
    //   128: invokestatic 349	com/facebook/internal/FileLruCache$StreamHeader:writeHeader	(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    //   131: aload_3
    //   132: areturn
    //   133: astore_1
    //   134: getstatic 138	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   137: iconst_5
    //   138: getstatic 34	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   141: new 167	java/lang/StringBuilder
    //   144: dup
    //   145: ldc_w 351
    //   148: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   151: aload_1
    //   152: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokestatic 354	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   161: new 239	java/io/IOException
    //   164: dup
    //   165: aload_1
    //   166: invokevirtual 357	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   169: invokespecial 318	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   172: athrow
    //   173: astore_1
    //   174: getstatic 138	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   177: iconst_5
    //   178: getstatic 34	com/facebook/internal/FileLruCache:TAG	Ljava/lang/String;
    //   181: new 167	java/lang/StringBuilder
    //   184: dup
    //   185: ldc_w 359
    //   188: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_1
    //   192: invokevirtual 186	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   195: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokestatic 354	com/facebook/internal/Logger:log	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   201: new 239	java/io/IOException
    //   204: dup
    //   205: aload_1
    //   206: invokevirtual 360	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   209: invokespecial 318	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   212: athrow
    //   213: astore_1
    //   214: aload_3
    //   215: invokevirtual 361	java/io/BufferedOutputStream:close	()V
    //   218: aload_1
    //   219: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   48	58	133	java/io/FileNotFoundException
    //   91	125	173	org/json/JSONException
    //   125	131	173	org/json/JSONException
    //   91	125	213	finally
    //   125	131	213	finally
    //   174	213	213	finally
  }

  final long sizeInBytesForTest()
  {
    long l2;
    synchronized (this.lock)
    {
      while (true)
      {
        if (!this.isTrimPending)
        {
          boolean bool = this.isTrimInProgress;
          if (!bool)
            break;
        }
        try
        {
          this.lock.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      ??? = this.directory.listFiles();
      long l1 = 0L;
      l2 = l1;
      if (??? != null)
      {
        int j = ???.length;
        int i = 0;
        l2 = l1;
        if (i < j)
        {
          l2 = ???[i].length();
          i += 1;
          l1 = l2 + l1;
        }
      }
    }
    return l2;
  }

  public final String toString()
  {
    return "{FileLruCache: tag:" + this.tag + " file:" + this.directory.getName() + "}";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache
 * JD-Core Version:    0.6.2
 */