package com.crashlytics.android.core;

import java.io.File;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

final class bc
{
  private static final Charset a = Charset.forName("UTF-8");
  private final File b;

  public bc(File paramFile)
  {
    this.b = paramFile;
  }

  private static String a(JSONObject paramJSONObject, String paramString)
  {
    String str = null;
    if (!paramJSONObject.isNull(paramString))
      str = paramJSONObject.optString(paramString, null);
    return str;
  }

  private static Map<String, String> c(String paramString)
    throws JSONException
  {
    paramString = new JSONObject(paramString);
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramString.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, a(paramString, str));
    }
    return localHashMap;
  }

  // ERROR //
  public final cb a(String paramString)
  {
    // Byte code:
    //   0: new 80	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 27	com/crashlytics/android/core/bc:b	Ljava/io/File;
    //   8: new 82	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   15: aload_1
    //   16: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 89
    //   21: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokespecial 96	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   30: astore_1
    //   31: aload_1
    //   32: invokevirtual 99	java/io/File:exists	()Z
    //   35: ifne +7 -> 42
    //   38: getstatic 104	com/crashlytics/android/core/cb:a	Lcom/crashlytics/android/core/cb;
    //   41: areturn
    //   42: new 106	java/io/FileInputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 108	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: astore_2
    //   51: aload_2
    //   52: astore_1
    //   53: new 30	org/json/JSONObject
    //   56: dup
    //   57: aload_2
    //   58: invokestatic 113	io/fabric/sdk/android/services/b/l:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   61: invokespecial 45	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   64: astore_3
    //   65: aload_2
    //   66: astore_1
    //   67: new 101	com/crashlytics/android/core/cb
    //   70: dup
    //   71: aload_3
    //   72: ldc 115
    //   74: invokestatic 66	com/crashlytics/android/core/bc:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   77: aload_3
    //   78: ldc 117
    //   80: invokestatic 66	com/crashlytics/android/core/bc:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   83: aload_3
    //   84: ldc 119
    //   86: invokestatic 66	com/crashlytics/android/core/bc:a	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   89: invokespecial 122	com/crashlytics/android/core/cb:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   92: astore_3
    //   93: aload_2
    //   94: ldc 124
    //   96: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   99: aload_3
    //   100: areturn
    //   101: astore_3
    //   102: aconst_null
    //   103: astore_2
    //   104: aload_2
    //   105: astore_1
    //   106: invokestatic 132	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   109: ldc 134
    //   111: ldc 136
    //   113: aload_3
    //   114: invokeinterface 141 4 0
    //   119: aload_2
    //   120: ldc 124
    //   122: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   125: getstatic 104	com/crashlytics/android/core/cb:a	Lcom/crashlytics/android/core/cb;
    //   128: areturn
    //   129: astore_2
    //   130: aconst_null
    //   131: astore_1
    //   132: aload_1
    //   133: ldc 124
    //   135: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   138: aload_2
    //   139: athrow
    //   140: astore_2
    //   141: goto -9 -> 132
    //   144: astore_3
    //   145: goto -41 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   42	51	101	java/lang/Exception
    //   42	51	129	finally
    //   53	65	140	finally
    //   67	93	140	finally
    //   106	119	140	finally
    //   53	65	144	java/lang/Exception
    //   67	93	144	java/lang/Exception
  }

  // ERROR //
  public final Map<String, String> b(String paramString)
  {
    // Byte code:
    //   0: new 80	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 27	com/crashlytics/android/core/bc:b	Ljava/io/File;
    //   8: new 82	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   15: aload_1
    //   16: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 143
    //   21: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokespecial 96	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   30: astore_1
    //   31: aload_1
    //   32: invokevirtual 99	java/io/File:exists	()Z
    //   35: ifne +7 -> 42
    //   38: invokestatic 149	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   41: areturn
    //   42: new 106	java/io/FileInputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 108	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: astore_2
    //   51: aload_2
    //   52: astore_1
    //   53: aload_2
    //   54: invokestatic 113	io/fabric/sdk/android/services/b/l:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   57: invokestatic 151	com/crashlytics/android/core/bc:c	(Ljava/lang/String;)Ljava/util/Map;
    //   60: astore_3
    //   61: aload_2
    //   62: ldc 124
    //   64: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   67: aload_3
    //   68: areturn
    //   69: astore_3
    //   70: aconst_null
    //   71: astore_2
    //   72: aload_2
    //   73: astore_1
    //   74: invokestatic 132	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   77: ldc 134
    //   79: ldc 136
    //   81: aload_3
    //   82: invokeinterface 141 4 0
    //   87: aload_2
    //   88: ldc 124
    //   90: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   93: invokestatic 149	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   96: areturn
    //   97: astore_2
    //   98: aconst_null
    //   99: astore_1
    //   100: aload_1
    //   101: ldc 124
    //   103: invokestatic 127	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   106: aload_2
    //   107: athrow
    //   108: astore_2
    //   109: goto -9 -> 100
    //   112: astore_3
    //   113: goto -41 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   42	51	69	java/lang/Exception
    //   42	51	97	finally
    //   53	61	108	finally
    //   74	87	108	finally
    //   53	61	112	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bc
 * JD-Core Version:    0.6.2
 */