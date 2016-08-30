package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.Writer;

final class ax
{
  // ERROR //
  public static void a(Throwable paramThrowable, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +25 -> 26
    //   4: new 10	java/io/PrintWriter
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 14	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   12: astore_2
    //   13: aload_2
    //   14: astore_1
    //   15: aload_0
    //   16: aload_2
    //   17: invokestatic 17	com/crashlytics/android/core/ax:a	(Ljava/lang/Throwable;Ljava/io/Writer;)V
    //   20: aload_2
    //   21: ldc 19
    //   23: invokestatic 24	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   26: return
    //   27: astore_3
    //   28: aconst_null
    //   29: astore_0
    //   30: aload_0
    //   31: astore_1
    //   32: invokestatic 30	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   35: ldc 32
    //   37: ldc 34
    //   39: aload_3
    //   40: invokeinterface 40 4 0
    //   45: aload_0
    //   46: ldc 19
    //   48: invokestatic 24	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   51: return
    //   52: astore_0
    //   53: aconst_null
    //   54: astore_1
    //   55: aload_1
    //   56: ldc 19
    //   58: invokestatic 24	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   61: aload_0
    //   62: athrow
    //   63: astore_0
    //   64: goto -9 -> 55
    //   67: astore_3
    //   68: aload_2
    //   69: astore_0
    //   70: goto -40 -> 30
    //
    // Exception table:
    //   from	to	target	type
    //   4	13	27	java/lang/Exception
    //   4	13	52	finally
    //   15	20	63	finally
    //   32	45	63	finally
    //   15	20	67	java/lang/Exception
  }

  private static void a(Throwable paramThrowable, Writer paramWriter)
  {
    int i = 1;
    Throwable localThrowable = paramThrowable;
    if (localThrowable != null);
    while (true)
    {
      try
      {
        paramThrowable = localThrowable.getLocalizedMessage();
        if (paramThrowable == null)
        {
          paramThrowable = null;
          break label165;
          paramWriter.write(str + localThrowable.getClass().getName() + ": " + paramThrowable + "\n");
          paramThrowable = localThrowable.getStackTrace();
          int j = paramThrowable.length;
          i = 0;
          if (i < j)
          {
            str = paramThrowable[i];
            paramWriter.write("\tat " + str.toString() + "\n");
            i += 1;
            continue;
          }
        }
        else
        {
          paramThrowable = paramThrowable.replaceAll("(\r\n|\n|\f)", " ");
          break label165;
        }
        localThrowable = localThrowable.getCause();
        i = 0;
      }
      catch (Exception paramThrowable)
      {
        f.b().c("CrashlyticsCore", "Could not write stack trace", paramThrowable);
      }
      return;
      label165: if (paramThrowable != null);
      while (true)
      {
        if (i == 0)
          break label186;
        str = "";
        break;
        paramThrowable = "";
      }
      label186: String str = "Caused by: ";
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.ax
 * JD-Core Version:    0.6.2
 */