package com.tencent.open.utils;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

public final class j
  implements X509TrustManager
{
  X509TrustManager a;

  // ERROR //
  j()
    throws java.lang.Exception
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 14	java/lang/Object:<init>	()V
    //   4: ldc 16
    //   6: invokestatic 22	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   9: astore_2
    //   10: aload_2
    //   11: ifnull +95 -> 106
    //   14: new 24	java/io/FileInputStream
    //   17: dup
    //   18: ldc 26
    //   20: invokespecial 29	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   23: astore_3
    //   24: aload_2
    //   25: aload_3
    //   26: ldc 31
    //   28: invokevirtual 37	java/lang/String:toCharArray	()[C
    //   31: invokevirtual 41	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   34: ldc 43
    //   36: ldc 45
    //   38: invokestatic 50	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   41: astore 4
    //   43: aload 4
    //   45: aload_2
    //   46: invokevirtual 54	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   49: aload 4
    //   51: invokevirtual 58	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   54: astore_2
    //   55: aload_3
    //   56: invokevirtual 61	java/io/FileInputStream:close	()V
    //   59: iconst_0
    //   60: istore_1
    //   61: iload_1
    //   62: aload_2
    //   63: arraylength
    //   64: if_icmpge +69 -> 133
    //   67: aload_2
    //   68: iload_1
    //   69: aaload
    //   70: instanceof 6
    //   73: ifeq +53 -> 126
    //   76: aload_0
    //   77: aload_2
    //   78: iload_1
    //   79: aaload
    //   80: checkcast 6	javax/net/ssl/X509TrustManager
    //   83: putfield 63	com/tencent/open/utils/j:a	Ljavax/net/ssl/X509TrustManager;
    //   86: return
    //   87: astore_2
    //   88: aconst_null
    //   89: astore_2
    //   90: goto -80 -> 10
    //   93: astore_2
    //   94: aconst_null
    //   95: astore_3
    //   96: aload_3
    //   97: ifnull +7 -> 104
    //   100: aload_3
    //   101: invokevirtual 61	java/io/FileInputStream:close	()V
    //   104: aload_2
    //   105: athrow
    //   106: invokestatic 67	javax/net/ssl/TrustManagerFactory:getDefaultAlgorithm	()Ljava/lang/String;
    //   109: invokestatic 70	javax/net/ssl/TrustManagerFactory:getInstance	(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    //   112: astore_2
    //   113: aload_2
    //   114: aconst_null
    //   115: invokevirtual 54	javax/net/ssl/TrustManagerFactory:init	(Ljava/security/KeyStore;)V
    //   118: aload_2
    //   119: invokevirtual 58	javax/net/ssl/TrustManagerFactory:getTrustManagers	()[Ljavax/net/ssl/TrustManager;
    //   122: astore_2
    //   123: goto -64 -> 59
    //   126: iload_1
    //   127: iconst_1
    //   128: iadd
    //   129: istore_1
    //   130: goto -69 -> 61
    //   133: new 12	java/lang/Exception
    //   136: dup
    //   137: ldc 72
    //   139: invokespecial 73	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   142: athrow
    //   143: astore_2
    //   144: goto -48 -> 96
    //
    // Exception table:
    //   from	to	target	type
    //   4	10	87	java/lang/Exception
    //   14	24	93	finally
    //   24	55	143	finally
  }

  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    this.a.checkClientTrusted(paramArrayOfX509Certificate, paramString);
  }

  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    this.a.checkServerTrusted(paramArrayOfX509Certificate, paramString);
  }

  public final X509Certificate[] getAcceptedIssuers()
  {
    return this.a.getAcceptedIssuers();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.j
 * JD-Core Version:    0.6.2
 */