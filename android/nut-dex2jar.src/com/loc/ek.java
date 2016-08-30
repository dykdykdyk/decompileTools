package com.loc;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ek
{
  // ERROR //
  public static String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 16	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 18	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 22	java/io/File:<init>	(Ljava/lang/String;)V
    //   17: astore_0
    //   18: aload_0
    //   19: invokevirtual 26	java/io/File:isFile	()Z
    //   22: ifeq +137 -> 159
    //   25: aload_0
    //   26: invokevirtual 29	java/io/File:exists	()Z
    //   29: ifeq +130 -> 159
    //   32: sipush 2048
    //   35: newarray byte
    //   37: astore_3
    //   38: ldc 31
    //   40: invokestatic 37	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   43: astore 4
    //   45: new 39	java/io/FileInputStream
    //   48: dup
    //   49: aload_0
    //   50: invokespecial 42	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   53: astore_2
    //   54: aload_2
    //   55: astore_0
    //   56: aload_2
    //   57: aload_3
    //   58: invokevirtual 46	java/io/FileInputStream:read	([B)I
    //   61: istore_1
    //   62: iload_1
    //   63: iconst_m1
    //   64: if_icmpeq +40 -> 104
    //   67: aload_2
    //   68: astore_0
    //   69: aload 4
    //   71: aload_3
    //   72: iconst_0
    //   73: iload_1
    //   74: invokevirtual 50	java/security/MessageDigest:update	([BII)V
    //   77: goto -23 -> 54
    //   80: astore_3
    //   81: aload_2
    //   82: astore_0
    //   83: aload_3
    //   84: invokevirtual 54	java/lang/Throwable:printStackTrace	()V
    //   87: aload_2
    //   88: ifnull +71 -> 159
    //   91: aload_2
    //   92: invokevirtual 57	java/io/FileInputStream:close	()V
    //   95: aconst_null
    //   96: areturn
    //   97: astore_0
    //   98: aload_0
    //   99: invokevirtual 54	java/lang/Throwable:printStackTrace	()V
    //   102: aconst_null
    //   103: areturn
    //   104: aload_2
    //   105: astore_0
    //   106: aload 4
    //   108: invokevirtual 61	java/security/MessageDigest:digest	()[B
    //   111: invokestatic 67	com/loc/eq:b	([B)Ljava/lang/String;
    //   114: astore_3
    //   115: aload_2
    //   116: invokevirtual 57	java/io/FileInputStream:close	()V
    //   119: aload_3
    //   120: areturn
    //   121: astore_0
    //   122: aload_0
    //   123: invokevirtual 54	java/lang/Throwable:printStackTrace	()V
    //   126: aload_3
    //   127: areturn
    //   128: astore_2
    //   129: aconst_null
    //   130: astore_0
    //   131: aload_0
    //   132: ifnull +7 -> 139
    //   135: aload_0
    //   136: invokevirtual 57	java/io/FileInputStream:close	()V
    //   139: aload_2
    //   140: athrow
    //   141: astore_0
    //   142: aload_0
    //   143: invokevirtual 54	java/lang/Throwable:printStackTrace	()V
    //   146: goto -7 -> 139
    //   149: astore_2
    //   150: goto -19 -> 131
    //   153: astore_3
    //   154: aconst_null
    //   155: astore_2
    //   156: goto -75 -> 81
    //   159: aconst_null
    //   160: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   56	62	80	java/lang/Throwable
    //   69	77	80	java/lang/Throwable
    //   106	115	80	java/lang/Throwable
    //   91	95	97	java/io/IOException
    //   115	119	121	java/io/IOException
    //   0	7	128	finally
    //   9	54	128	finally
    //   135	139	141	java/io/IOException
    //   56	62	149	finally
    //   69	77	149	finally
    //   83	87	149	finally
    //   106	115	149	finally
    //   0	7	153	java/lang/Throwable
    //   9	54	153	java/lang/Throwable
  }

  public static byte[] a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      paramString.update(paramArrayOfByte);
      paramArrayOfByte = paramString.digest();
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      return null;
    }
    catch (Throwable paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }

  public static String b(String paramString)
  {
    if (paramString == null)
      return null;
    return eq.b(c(paramString));
  }

  private static byte[] c(String paramString)
  {
    if (paramString == null)
      return null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes("UTF-8"));
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
      return new byte[0];
    }
    catch (UnsupportedEncodingException paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
    catch (Throwable paramString)
    {
      while (true)
        paramString.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ek
 * JD-Core Version:    0.6.2
 */