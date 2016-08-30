package com.tencent.open.a;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.text.format.Time;
import android.util.Log;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class a extends k
  implements Handler.Callback
{
  HandlerThread a;
  private b c;
  private FileWriter d;
  private File e;
  private char[] f;
  private volatile i g;
  private volatile i h;
  private volatile i i;
  private volatile i j;
  private volatile boolean k = false;
  private Handler l;

  private a(int paramInt, j paramj, b paramb)
  {
    super(paramInt, paramj);
    this.c = paramb;
    this.g = new i();
    this.h = new i();
    this.i = this.g;
    this.j = this.h;
    this.f = new char[paramb.b];
    c();
    this.a = new HandlerThread(paramb.a, paramb.c);
    if (this.a != null)
      this.a.start();
    if ((this.a.isAlive()) && (this.a.getLooper() != null))
      this.l = new Handler(this.a.getLooper(), this);
  }

  public a(b paramb)
  {
    this(c.b, j.a, paramb);
  }

  private Writer c()
  {
    File localFile = this.c.a(System.currentTimeMillis());
    if (((localFile != null) && (!localFile.equals(this.e))) || ((this.d == null) && (localFile != null)))
    {
      this.e = localFile;
      b();
    }
    try
    {
      this.d = new FileWriter(this.e, true);
      return this.d;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final void a()
  {
    if (this.l.hasMessages(1024))
      this.l.removeMessages(1024);
    this.l.sendEmptyMessage(1024);
  }

  protected final void a(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    long l1 = paramLong % 1000L;
    Time localTime = new Time();
    localTime.set(paramLong);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(j.a(paramInt)).append('/').append(localTime.format("%Y-%m-%d %H:%M:%S")).append('.');
    if (l1 < 10L)
    {
      localStringBuilder.append("00");
      localStringBuilder.append(l1).append(' ').append('[');
      if (paramThread != null)
        break label254;
      localStringBuilder.append("N/A");
    }
    while (true)
    {
      localStringBuilder.append(']').append('[').append(paramString1).append(']').append(' ').append(paramString2).append('\n');
      if (paramThrowable != null)
        localStringBuilder.append("* Exception : \n").append(Log.getStackTraceString(paramThrowable)).append('\n');
      paramThread = localStringBuilder.toString();
      paramString1 = this.i;
      paramInt = paramThread.length();
      paramString1.a.add(paramThread);
      paramString1.b.addAndGet(paramInt);
      if (this.i.b.get() >= this.c.b)
        a();
      return;
      if (l1 >= 100L)
        break;
      localStringBuilder.append('0');
      break;
      label254: localStringBuilder.append(paramThread.getName());
    }
  }

  final void b()
  {
    try
    {
      if (this.d != null)
      {
        this.d.flush();
        this.d.close();
      }
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  // ERROR //
  public final boolean handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 240	android/os/Message:what	I
    //   4: tableswitch	default:+20 -> 24, 1024:+22->26
    //   25: ireturn
    //   26: invokestatic 244	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   29: aload_0
    //   30: getfield 70	com/tencent/open/a/a:a	Landroid/os/HandlerThread;
    //   33: if_acmpne -9 -> 24
    //   36: aload_0
    //   37: getfield 32	com/tencent/open/a/a:k	Z
    //   40: ifne -16 -> 24
    //   43: aload_0
    //   44: iconst_1
    //   45: putfield 32	com/tencent/open/a/a:k	Z
    //   48: aload_0
    //   49: monitorenter
    //   50: aload_0
    //   51: getfield 45	com/tencent/open/a/a:i	Lcom/tencent/open/a/i;
    //   54: aload_0
    //   55: getfield 41	com/tencent/open/a/a:g	Lcom/tencent/open/a/i;
    //   58: if_acmpne +69 -> 127
    //   61: aload_0
    //   62: aload_0
    //   63: getfield 43	com/tencent/open/a/a:h	Lcom/tencent/open/a/i;
    //   66: putfield 45	com/tencent/open/a/a:i	Lcom/tencent/open/a/i;
    //   69: aload_0
    //   70: aload_0
    //   71: getfield 41	com/tencent/open/a/a:g	Lcom/tencent/open/a/i;
    //   74: putfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_0
    //   80: getfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   83: astore 10
    //   85: aload_0
    //   86: invokespecial 58	com/tencent/open/a/a:c	()Ljava/io/Writer;
    //   89: astore_1
    //   90: aload_0
    //   91: getfield 55	com/tencent/open/a/a:f	[C
    //   94: astore 9
    //   96: aload_1
    //   97: ifnull +16 -> 113
    //   100: aload 9
    //   102: ifnull +11 -> 113
    //   105: aload 9
    //   107: arraylength
    //   108: istore_2
    //   109: iload_2
    //   110: ifne +41 -> 151
    //   113: aload_0
    //   114: getfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   117: invokevirtual 245	com/tencent/open/a/i:a	()V
    //   120: aload_0
    //   121: iconst_0
    //   122: putfield 32	com/tencent/open/a/a:k	Z
    //   125: iconst_1
    //   126: ireturn
    //   127: aload_0
    //   128: aload_0
    //   129: getfield 41	com/tencent/open/a/a:g	Lcom/tencent/open/a/i;
    //   132: putfield 45	com/tencent/open/a/a:i	Lcom/tencent/open/a/i;
    //   135: aload_0
    //   136: aload_0
    //   137: getfield 43	com/tencent/open/a/a:h	Lcom/tencent/open/a/i;
    //   140: putfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   143: goto -66 -> 77
    //   146: astore_1
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_1
    //   150: athrow
    //   151: aload 9
    //   153: arraylength
    //   154: istore 6
    //   156: aload 10
    //   158: invokevirtual 249	com/tencent/open/a/i:iterator	()Ljava/util/Iterator;
    //   161: astore 10
    //   163: iconst_0
    //   164: istore 8
    //   166: iload 6
    //   168: istore 7
    //   170: aload 10
    //   172: invokeinterface 254 1 0
    //   177: ifeq +94 -> 271
    //   180: aload 10
    //   182: invokeinterface 258 1 0
    //   187: checkcast 191	java/lang/String
    //   190: astore 11
    //   192: aload 11
    //   194: invokevirtual 195	java/lang/String:length	()I
    //   197: istore 4
    //   199: iconst_0
    //   200: istore 5
    //   202: iload 8
    //   204: istore_3
    //   205: iload 7
    //   207: istore_2
    //   208: goto +105 -> 313
    //   211: aload 11
    //   213: iload 5
    //   215: iload 5
    //   217: iload 7
    //   219: iadd
    //   220: aload 9
    //   222: iload_3
    //   223: invokevirtual 262	java/lang/String:getChars	(II[CI)V
    //   226: iload_2
    //   227: iload 7
    //   229: isub
    //   230: istore_2
    //   231: iload_3
    //   232: iload 7
    //   234: iadd
    //   235: istore_3
    //   236: iload 4
    //   238: iload 7
    //   240: isub
    //   241: istore 4
    //   243: iload 7
    //   245: iload 5
    //   247: iadd
    //   248: istore 5
    //   250: iload_2
    //   251: ifne +62 -> 313
    //   254: aload_1
    //   255: aload 9
    //   257: iconst_0
    //   258: iload 6
    //   260: invokevirtual 268	java/io/Writer:write	([CII)V
    //   263: iconst_0
    //   264: istore_3
    //   265: iload 6
    //   267: istore_2
    //   268: goto +45 -> 313
    //   271: iload 8
    //   273: ifle +12 -> 285
    //   276: aload_1
    //   277: aload 9
    //   279: iconst_0
    //   280: iload 8
    //   282: invokevirtual 268	java/io/Writer:write	([CII)V
    //   285: aload_1
    //   286: invokevirtual 269	java/io/Writer:flush	()V
    //   289: goto -176 -> 113
    //   292: astore_1
    //   293: aload_0
    //   294: getfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   297: invokevirtual 245	com/tencent/open/a/i:a	()V
    //   300: goto -180 -> 120
    //   303: astore_1
    //   304: aload_0
    //   305: getfield 47	com/tencent/open/a/a:j	Lcom/tencent/open/a/i;
    //   308: invokevirtual 245	com/tencent/open/a/i:a	()V
    //   311: aload_1
    //   312: athrow
    //   313: iload_3
    //   314: istore 8
    //   316: iload_2
    //   317: istore 7
    //   319: iload 4
    //   321: ifle -151 -> 170
    //   324: iload_2
    //   325: iload 4
    //   327: if_icmple +10 -> 337
    //   330: iload 4
    //   332: istore 7
    //   334: goto -123 -> 211
    //   337: iload_2
    //   338: istore 7
    //   340: goto -129 -> 211
    //
    // Exception table:
    //   from	to	target	type
    //   50	77	146	finally
    //   77	79	146	finally
    //   127	143	146	finally
    //   147	149	146	finally
    //   79	96	292	java/io/IOException
    //   105	109	292	java/io/IOException
    //   151	163	292	java/io/IOException
    //   170	199	292	java/io/IOException
    //   211	226	292	java/io/IOException
    //   254	263	292	java/io/IOException
    //   276	285	292	java/io/IOException
    //   285	289	292	java/io/IOException
    //   79	96	303	finally
    //   105	109	303	finally
    //   151	163	303	finally
    //   170	199	303	finally
    //   211	226	303	finally
    //   254	263	303	finally
    //   276	285	303	finally
    //   285	289	303	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a.a
 * JD-Core Version:    0.6.2
 */