package rx.c.a;

import rx.c.b.a;
import rx.f.f;
import rx.q;
import rx.z;

final class u extends z<T>
{
  long a;
  private boolean g;

  u(s params, z paramz, a parama, f paramf)
  {
  }

  public final void a()
  {
    if (this.g)
      return;
    this.g = true;
    this.b.a();
  }

  public final void a(T paramT)
  {
    if (this.g)
      return;
    this.a += 1L;
    this.b.a(paramT);
  }

  // ERROR //
  public final void a(java.lang.Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 33	rx/c/a/u:g	Z
    //   4: ifeq +15 -> 19
    //   7: aload_1
    //   8: invokestatic 49	rx/exceptions/e:a	(Ljava/lang/Throwable;)V
    //   11: invokestatic 54	rx/e/d:a	()Lrx/e/d;
    //   14: invokevirtual 57	rx/e/d:b	()Lrx/e/a;
    //   17: pop
    //   18: return
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 33	rx/c/a/u:g	Z
    //   24: aload_0
    //   25: getfield 61	rx/z:c	Lrx/c/d/s;
    //   28: invokevirtual 66	rx/c/d/s:n_	()V
    //   31: new 68	rx/c/a/v
    //   34: dup
    //   35: aload_0
    //   36: invokespecial 71	rx/c/a/v:<init>	(Lrx/c/a/u;)V
    //   39: astore 7
    //   41: aload_0
    //   42: getfield 27	rx/c/a/u:e	Lrx/f/f;
    //   45: aload 7
    //   47: invokevirtual 76	rx/f/f:a	(Lrx/aa;)V
    //   50: aload_0
    //   51: getfield 38	rx/c/a/u:a	J
    //   54: lstore_2
    //   55: lload_2
    //   56: lconst_0
    //   57: lcmp
    //   58: ifeq +61 -> 119
    //   61: aload_0
    //   62: getfield 25	rx/c/a/u:d	Lrx/c/b/a;
    //   65: astore 6
    //   67: lload_2
    //   68: lconst_0
    //   69: lcmp
    //   70: ifgt +23 -> 93
    //   73: new 78	java/lang/IllegalArgumentException
    //   76: dup
    //   77: ldc 80
    //   79: invokespecial 83	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   82: athrow
    //   83: astore_1
    //   84: aload_1
    //   85: aload_0
    //   86: getfield 23	rx/c/a/u:b	Lrx/z;
    //   89: invokestatic 86	rx/exceptions/e:a	(Ljava/lang/Throwable;Lrx/p;)V
    //   92: return
    //   93: aload 6
    //   95: monitorenter
    //   96: aload 6
    //   98: getfield 90	rx/c/b/a:c	Z
    //   101: ifeq +41 -> 142
    //   104: aload 6
    //   106: lload_2
    //   107: aload 6
    //   109: getfield 92	rx/c/b/a:e	J
    //   112: ladd
    //   113: putfield 92	rx/c/b/a:e	J
    //   116: aload 6
    //   118: monitorexit
    //   119: aload_0
    //   120: getfield 21	rx/c/a/u:f	Lrx/c/a/s;
    //   123: getfield 97	rx/c/a/s:a	Lrx/b/d;
    //   126: aload_1
    //   127: invokeinterface 103 2 0
    //   132: checkcast 105	rx/h
    //   135: aload 7
    //   137: invokevirtual 108	rx/h:a	(Lrx/z;)Lrx/aa;
    //   140: pop
    //   141: return
    //   142: aload 6
    //   144: iconst_1
    //   145: putfield 90	rx/c/b/a:c	Z
    //   148: aload 6
    //   150: monitorexit
    //   151: aload 6
    //   153: getfield 109	rx/c/b/a:a	J
    //   156: lstore 4
    //   158: lload 4
    //   160: ldc2_w 110
    //   163: lcmp
    //   164: ifeq +51 -> 215
    //   167: lload 4
    //   169: lload_2
    //   170: lsub
    //   171: lstore_2
    //   172: lload_2
    //   173: lconst_0
    //   174: lcmp
    //   175: ifge +34 -> 209
    //   178: new 113	java/lang/IllegalStateException
    //   181: dup
    //   182: ldc 115
    //   184: invokespecial 116	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   187: athrow
    //   188: astore_1
    //   189: aload 6
    //   191: monitorenter
    //   192: aload 6
    //   194: iconst_0
    //   195: putfield 90	rx/c/b/a:c	Z
    //   198: aload 6
    //   200: monitorexit
    //   201: aload_1
    //   202: athrow
    //   203: astore_1
    //   204: aload 6
    //   206: monitorexit
    //   207: aload_1
    //   208: athrow
    //   209: aload 6
    //   211: lload_2
    //   212: putfield 109	rx/c/b/a:a	J
    //   215: aload 6
    //   217: invokevirtual 117	rx/c/b/a:a	()V
    //   220: goto -101 -> 119
    //   223: astore_1
    //   224: aload 6
    //   226: monitorexit
    //   227: aload_1
    //   228: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   24	55	83	java/lang/Throwable
    //   61	67	83	java/lang/Throwable
    //   73	83	83	java/lang/Throwable
    //   93	96	83	java/lang/Throwable
    //   119	141	83	java/lang/Throwable
    //   189	192	83	java/lang/Throwable
    //   201	203	83	java/lang/Throwable
    //   207	209	83	java/lang/Throwable
    //   227	229	83	java/lang/Throwable
    //   151	158	188	finally
    //   178	188	188	finally
    //   209	215	188	finally
    //   215	220	188	finally
    //   96	119	203	finally
    //   142	151	203	finally
    //   204	207	203	finally
    //   192	201	223	finally
    //   224	227	223	finally
  }

  public final void a(q paramq)
  {
    this.d.a(paramq);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.u
 * JD-Core Version:    0.6.2
 */