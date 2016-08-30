package android.support.v4.f;

import java.util.LinkedHashMap;

public class g<K, V>
{
  private final LinkedHashMap<K, V> a = new LinkedHashMap(0, 0.75F, true);
  private int b;
  private int c = 6;
  private int d;
  private int e;
  private int f;
  private int g;

  // ERROR //
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 33	android/support/v4/f/g:b	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 29	android/support/v4/f/g:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 37	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 33	android/support/v4/f/g:b	I
    //   23: ifeq +41 -> 64
    //   26: new 39	java/lang/IllegalStateException
    //   29: dup
    //   30: new 41	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 42	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 46	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 52	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 58
    //   49: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 64	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 33	android/support/v4/f/g:b	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 29	android/support/v4/f/g:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 37	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 29	android/support/v4/f/g:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 68	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 74 1 0
    //   97: invokeinterface 80 1 0
    //   102: checkcast 82	java/util/Map$Entry
    //   105: astore_2
    //   106: aload_2
    //   107: invokeinterface 85 1 0
    //   112: astore_3
    //   113: aload_2
    //   114: invokeinterface 88 1 0
    //   119: pop
    //   120: aload_0
    //   121: getfield 29	android/support/v4/f/g:a	Ljava/util/LinkedHashMap;
    //   124: aload_3
    //   125: invokevirtual 92	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   128: pop
    //   129: aload_0
    //   130: aload_0
    //   131: getfield 33	android/support/v4/f/g:b	I
    //   134: iconst_1
    //   135: isub
    //   136: putfield 33	android/support/v4/f/g:b	I
    //   139: aload_0
    //   140: aload_0
    //   141: getfield 94	android/support/v4/f/g:e	I
    //   144: iconst_1
    //   145: iadd
    //   146: putfield 94	android/support/v4/f/g:e	I
    //   149: aload_0
    //   150: monitorexit
    //   151: goto -151 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   60	62	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	151	59	finally
  }

  public final V a(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      paramK = this.a.get(paramK);
      if (paramK != null)
      {
        this.f += 1;
        return paramK;
      }
      this.g += 1;
      return null;
    }
    finally
    {
    }
    throw paramK;
  }

  public final V a(K paramK, V paramV)
  {
    if (paramK == null)
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.d += 1;
      this.b += 1;
      paramK = this.a.put(paramK, paramV);
      if (paramK != null)
        this.b -= 1;
      a(this.c);
      return paramK;
    }
    finally
    {
    }
    throw paramK;
  }

  public final String toString()
  {
    int i = 0;
    try
    {
      int j = this.f + this.g;
      if (j != 0)
        i = this.f * 100 / j;
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(this.c), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(i) });
      return str;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.g
 * JD-Core Version:    0.6.2
 */