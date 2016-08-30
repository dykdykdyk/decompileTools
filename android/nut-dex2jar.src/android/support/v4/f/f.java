package android.support.v4.f;

public final class f<E>
  implements Cloneable
{
  public static final Object a = new Object();
  public boolean b = false;
  public long[] c;
  public Object[] d;
  public int e;

  public f()
  {
    this((byte)0);
  }

  private f(byte paramByte)
  {
    paramByte = c.b(10);
    this.c = new long[paramByte];
    this.d = new Object[paramByte];
    this.e = 0;
  }

  private long b(int paramInt)
  {
    if (this.b)
      c();
    return this.c[paramInt];
  }

  // ERROR //
  private f<E> b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 51	java/lang/Object:clone	()Ljava/lang/Object;
    //   4: checkcast 2	android/support/v4/f/f
    //   7: astore_1
    //   8: aload_1
    //   9: aload_0
    //   10: getfield 37	android/support/v4/f/f:c	[J
    //   13: invokevirtual 53	[J:clone	()Ljava/lang/Object;
    //   16: checkcast 52	[J
    //   19: putfield 37	android/support/v4/f/f:c	[J
    //   22: aload_1
    //   23: aload_0
    //   24: getfield 39	android/support/v4/f/f:d	[Ljava/lang/Object;
    //   27: invokevirtual 55	[Ljava/lang/Object;:clone	()Ljava/lang/Object;
    //   30: checkcast 54	[Ljava/lang/Object;
    //   33: putfield 39	android/support/v4/f/f:d	[Ljava/lang/Object;
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: aconst_null
    //   40: areturn
    //   41: astore_2
    //   42: aload_1
    //   43: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	8	38	java/lang/CloneNotSupportedException
    //   8	36	41	java/lang/CloneNotSupportedException
  }

  private void c()
  {
    int m = this.e;
    long[] arrayOfLong = this.c;
    Object[] arrayOfObject = this.d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != a)
      {
        if (i != j)
        {
          arrayOfLong[j] = arrayOfLong[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    this.b = false;
    this.e = j;
  }

  public final int a()
  {
    if (this.b)
      c();
    return this.e;
  }

  public final E a(int paramInt)
  {
    if (this.b)
      c();
    return this.d[paramInt];
  }

  public final E a(long paramLong)
  {
    int i = c.a(this.c, this.e, paramLong);
    if ((i < 0) || (this.d[i] == a))
      return null;
    return this.d[i];
  }

  public final void a(long paramLong, E paramE)
  {
    int i = c.a(this.c, this.e, paramLong);
    if (i >= 0)
    {
      this.d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.e) && (this.d[j] == a))
    {
      this.c[j] = paramLong;
      this.d[j] = paramE;
      return;
    }
    i = j;
    if (this.b)
    {
      i = j;
      if (this.e >= this.c.length)
      {
        c();
        i = c.a(this.c, this.e, paramLong) ^ 0xFFFFFFFF;
      }
    }
    if (this.e >= this.c.length)
    {
      j = c.b(this.e + 1);
      long[] arrayOfLong = new long[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.c, 0, arrayOfLong, 0, this.c.length);
      System.arraycopy(this.d, 0, arrayOfObject, 0, this.d.length);
      this.c = arrayOfLong;
      this.d = arrayOfObject;
    }
    if (this.e - i != 0)
    {
      System.arraycopy(this.c, i, this.c, i + 1, this.e - i);
      System.arraycopy(this.d, i, this.d, i + 1, this.e - i);
    }
    this.c[i] = paramLong;
    this.d[i] = paramE;
    this.e += 1;
  }

  public final String toString()
  {
    if (a() <= 0)
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder(this.e * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < this.e)
    {
      if (i > 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(b(i));
      localStringBuilder.append('=');
      Object localObject = a(i);
      if (localObject != this)
        localStringBuilder.append(localObject);
      while (true)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.f
 * JD-Core Version:    0.6.2
 */