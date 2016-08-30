package com.loc;

import java.util.LinkedHashMap;

public class bp<K, V>
{
  private final LinkedHashMap<K, V> a = new LinkedHashMap(0, 0.75F, true);
  private int b;
  private int c = 1048576;

  private int b(K paramK, V paramV)
  {
    int i = a(paramV);
    if (i < 0)
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    return i;
  }

  protected int a(V paramV)
  {
    return 1;
  }

  public final V a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.b += b(paramK, paramV);
      Object localObject = this.a.put(paramK, paramV);
      if (localObject != null)
        this.b -= b(paramK, localObject);
      if (localObject != null)
        a(false, paramK, localObject, paramV);
      a(this.c);
      return localObject;
    }
    finally
    {
    }
    throw paramK;
  }

  // ERROR //
  final void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 65	com/loc/bp:b	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 26	com/loc/bp:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 81	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 65	com/loc/bp:b	I
    //   23: ifeq +41 -> 64
    //   26: new 33	java/lang/IllegalStateException
    //   29: dup
    //   30: new 35	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 86	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 91	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 93
    //   49: invokevirtual 49	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 54	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 65	com/loc/bp:b	I
    //   68: iload_1
    //   69: if_icmpgt +6 -> 75
    //   72: aload_0
    //   73: monitorexit
    //   74: return
    //   75: aload_0
    //   76: getfield 26	com/loc/bp:a	Ljava/util/LinkedHashMap;
    //   79: invokevirtual 97	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   82: invokeinterface 103 1 0
    //   87: astore_3
    //   88: aconst_null
    //   89: astore_2
    //   90: aload_3
    //   91: invokeinterface 108 1 0
    //   96: ifeq +16 -> 112
    //   99: aload_3
    //   100: invokeinterface 112 1 0
    //   105: checkcast 114	java/util/Map$Entry
    //   108: astore_2
    //   109: goto -19 -> 90
    //   112: aload_2
    //   113: ifnonnull +6 -> 119
    //   116: aload_0
    //   117: monitorexit
    //   118: return
    //   119: aload_2
    //   120: invokeinterface 117 1 0
    //   125: astore_3
    //   126: aload_2
    //   127: invokeinterface 120 1 0
    //   132: astore_2
    //   133: aload_0
    //   134: getfield 26	com/loc/bp:a	Ljava/util/LinkedHashMap;
    //   137: aload_3
    //   138: invokevirtual 124	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   141: pop
    //   142: aload_0
    //   143: aload_0
    //   144: getfield 65	com/loc/bp:b	I
    //   147: aload_0
    //   148: aload_3
    //   149: aload_2
    //   150: invokespecial 67	com/loc/bp:b	(Ljava/lang/Object;Ljava/lang/Object;)I
    //   153: isub
    //   154: putfield 65	com/loc/bp:b	I
    //   157: aload_0
    //   158: monitorexit
    //   159: aload_0
    //   160: iconst_1
    //   161: aload_3
    //   162: aload_2
    //   163: aconst_null
    //   164: invokevirtual 73	com/loc/bp:a	(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   167: goto -167 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   60	62	59	finally
    //   64	74	59	finally
    //   75	88	59	finally
    //   90	109	59	finally
    //   116	118	59	finally
    //   119	159	59	finally
  }

  protected void a(boolean paramBoolean, K paramK, V paramV1, V paramV2)
  {
  }

  public final V b(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      paramK = this.a.get(paramK);
      if (paramK != null)
        return paramK;
      return null;
    }
    finally
    {
    }
    throw paramK;
  }

  public final V c(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      Object localObject = this.a.remove(paramK);
      if (localObject != null)
        this.b -= b(paramK, localObject);
      if (localObject != null)
        a(false, paramK, localObject, null);
      return localObject;
    }
    finally
    {
    }
    throw paramK;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bp
 * JD-Core Version:    0.6.2
 */