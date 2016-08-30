package rx.c.b;

import rx.q;

public final class a
  implements q
{
  static final q g = new b();
  public long a;
  q b;
  public boolean c;
  long d;
  public long e;
  q f;

  public final void a()
  {
    while (true)
    {
      long l3;
      long l1;
      while (true)
      {
        long l4;
        try
        {
          l3 = this.d;
          l4 = this.e;
          q localq1 = this.f;
          if ((l3 == 0L) && (l4 == 0L) && (localq1 == null))
          {
            this.c = false;
            return;
          }
          this.d = 0L;
          this.e = 0L;
          this.f = null;
          long l2 = this.a;
          l1 = l2;
          if (l2 != 9223372036854775807L)
          {
            l1 = l2 + l3;
            if ((l1 < 0L) || (l1 == 9223372036854775807L))
            {
              this.a = 9223372036854775807L;
              l1 = 9223372036854775807L;
            }
          }
          else
          {
            if (localq1 == null)
              break label183;
            if (localq1 != g)
              break label166;
            this.b = null;
            break;
          }
        }
        finally
        {
        }
        l1 -= l4;
        if (l1 < 0L)
          throw new IllegalStateException("more produced than requested");
        this.a = l1;
      }
      label166: this.b = localObject;
      localObject.a(l1);
      continue;
      label183: q localq2 = this.b;
      if ((localq2 != null) && (l3 != 0L))
        localq2.a(l3);
    }
  }

  // ERROR //
  public final void a(long paramLong)
  {
    // Byte code:
    //   0: lload_1
    //   1: lconst_0
    //   2: lcmp
    //   3: ifge +13 -> 16
    //   6: new 53	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc 55
    //   12: invokespecial 56	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: lload_1
    //   17: lconst_0
    //   18: lcmp
    //   19: ifne +4 -> 23
    //   22: return
    //   23: aload_0
    //   24: monitorenter
    //   25: aload_0
    //   26: getfield 35	rx/c/b/a:c	Z
    //   29: ifeq +23 -> 52
    //   32: aload_0
    //   33: aload_0
    //   34: getfield 29	rx/c/b/a:d	J
    //   37: lload_1
    //   38: ladd
    //   39: putfield 29	rx/c/b/a:d	J
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: astore 7
    //   47: aload_0
    //   48: monitorexit
    //   49: aload 7
    //   51: athrow
    //   52: aload_0
    //   53: iconst_1
    //   54: putfield 35	rx/c/b/a:c	Z
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_0
    //   60: getfield 37	rx/c/b/a:a	J
    //   63: lload_1
    //   64: ladd
    //   65: lstore 5
    //   67: lload 5
    //   69: lstore_3
    //   70: lload 5
    //   72: lconst_0
    //   73: lcmp
    //   74: ifge +7 -> 81
    //   77: ldc2_w 38
    //   80: lstore_3
    //   81: aload_0
    //   82: lload_3
    //   83: putfield 37	rx/c/b/a:a	J
    //   86: aload_0
    //   87: getfield 41	rx/c/b/a:b	Lrx/q;
    //   90: astore 7
    //   92: aload 7
    //   94: ifnull +11 -> 105
    //   97: aload 7
    //   99: lload_1
    //   100: invokeinterface 51 3 0
    //   105: aload_0
    //   106: invokevirtual 58	rx/c/b/a:a	()V
    //   109: return
    //   110: astore 7
    //   112: aload_0
    //   113: monitorenter
    //   114: aload_0
    //   115: iconst_0
    //   116: putfield 35	rx/c/b/a:c	Z
    //   119: aload_0
    //   120: monitorexit
    //   121: aload 7
    //   123: athrow
    //   124: astore 7
    //   126: aload_0
    //   127: monitorexit
    //   128: aload 7
    //   130: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   25	44	45	finally
    //   47	49	45	finally
    //   52	59	45	finally
    //   59	67	110	finally
    //   81	92	110	finally
    //   97	105	110	finally
    //   105	109	110	finally
    //   114	121	124	finally
    //   126	128	124	finally
  }

  // ERROR //
  public final void a(q paramq)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	rx/c/b/a:c	Z
    //   6: ifeq +21 -> 27
    //   9: aload_1
    //   10: astore_2
    //   11: aload_1
    //   12: ifnonnull +7 -> 19
    //   15: getstatic 25	rx/c/b/a:g	Lrx/q;
    //   18: astore_2
    //   19: aload_0
    //   20: aload_2
    //   21: putfield 33	rx/c/b/a:f	Lrx/q;
    //   24: aload_0
    //   25: monitorexit
    //   26: return
    //   27: aload_0
    //   28: iconst_1
    //   29: putfield 35	rx/c/b/a:c	Z
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_0
    //   35: aload_1
    //   36: putfield 41	rx/c/b/a:b	Lrx/q;
    //   39: aload_1
    //   40: ifnull +13 -> 53
    //   43: aload_1
    //   44: aload_0
    //   45: getfield 37	rx/c/b/a:a	J
    //   48: invokeinterface 51 3 0
    //   53: aload_0
    //   54: invokevirtual 58	rx/c/b/a:a	()V
    //   57: return
    //   58: astore_1
    //   59: aload_0
    //   60: monitorenter
    //   61: aload_0
    //   62: iconst_0
    //   63: putfield 35	rx/c/b/a:c	Z
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    //   70: astore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_1
    //   74: athrow
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   34	39	58	finally
    //   43	53	58	finally
    //   53	57	58	finally
    //   2	9	70	finally
    //   15	19	70	finally
    //   19	26	70	finally
    //   27	34	70	finally
    //   71	73	70	finally
    //   61	68	75	finally
    //   76	78	75	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.b.a
 * JD-Core Version:    0.6.2
 */