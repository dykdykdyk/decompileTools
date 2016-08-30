package android.support.v4.f;

public final class s<E>
  implements Cloneable
{
  private static final Object d = new Object();
  public boolean a = false;
  public int[] b;
  public int c;
  private Object[] e;

  public s()
  {
    this(10);
  }

  public s(int paramInt)
  {
    if (paramInt == 0)
      this.b = c.a;
    for (this.e = c.c; ; this.e = new Object[paramInt])
    {
      this.c = 0;
      return;
      paramInt = c.a(paramInt);
      this.b = new int[paramInt];
    }
  }

  // ERROR //
  private s<E> d()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 52	java/lang/Object:clone	()Ljava/lang/Object;
    //   4: checkcast 2	android/support/v4/f/s
    //   7: astore_1
    //   8: aload_1
    //   9: aload_0
    //   10: getfield 36	android/support/v4/f/s:b	[I
    //   13: invokevirtual 54	[I:clone	()Ljava/lang/Object;
    //   16: checkcast 53	[I
    //   19: putfield 36	android/support/v4/f/s:b	[I
    //   22: aload_1
    //   23: aload_0
    //   24: getfield 40	android/support/v4/f/s:e	[Ljava/lang/Object;
    //   27: invokevirtual 56	[Ljava/lang/Object;:clone	()Ljava/lang/Object;
    //   30: checkcast 55	[Ljava/lang/Object;
    //   33: putfield 40	android/support/v4/f/s:e	[Ljava/lang/Object;
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

  public final E a(int paramInt)
  {
    paramInt = c.a(this.b, this.c, paramInt);
    if ((paramInt < 0) || (this.e[paramInt] == d))
      return null;
    return this.e[paramInt];
  }

  public final void a()
  {
    int m = this.c;
    int[] arrayOfInt = this.b;
    Object[] arrayOfObject = this.e;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != d)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    this.a = false;
    this.c = j;
  }

  public final void a(int paramInt, E paramE)
  {
    int i = c.a(this.b, this.c, paramInt);
    if (i >= 0)
    {
      this.e[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.c) && (this.e[j] == d))
    {
      this.b[j] = paramInt;
      this.e[j] = paramE;
      return;
    }
    i = j;
    if (this.a)
    {
      i = j;
      if (this.c >= this.b.length)
      {
        a();
        i = c.a(this.b, this.c, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (this.c >= this.b.length)
    {
      j = c.a(this.c + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.b, 0, arrayOfInt, 0, this.b.length);
      System.arraycopy(this.e, 0, arrayOfObject, 0, this.e.length);
      this.b = arrayOfInt;
      this.e = arrayOfObject;
    }
    if (this.c - i != 0)
    {
      System.arraycopy(this.b, i, this.b, i + 1, this.c - i);
      System.arraycopy(this.e, i, this.e, i + 1, this.c - i);
    }
    this.b[i] = paramInt;
    this.e[i] = paramE;
    this.c += 1;
  }

  public final int b()
  {
    if (this.a)
      a();
    return this.c;
  }

  public final void b(int paramInt)
  {
    paramInt = c.a(this.b, this.c, paramInt);
    if ((paramInt >= 0) && (this.e[paramInt] != d))
    {
      this.e[paramInt] = d;
      this.a = true;
    }
  }

  public final int c(int paramInt)
  {
    if (this.a)
      a();
    return this.b[paramInt];
  }

  public final void c()
  {
    int j = this.c;
    Object[] arrayOfObject = this.e;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    this.c = 0;
    this.a = false;
  }

  public final E d(int paramInt)
  {
    if (this.a)
      a();
    return this.e[paramInt];
  }

  public final String toString()
  {
    if (b() <= 0)
      return "{}";
    StringBuilder localStringBuilder = new StringBuilder(this.c * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < this.c)
    {
      if (i > 0)
        localStringBuilder.append(", ");
      localStringBuilder.append(c(i));
      localStringBuilder.append('=');
      Object localObject = d(i);
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
 * Qualified Name:     android.support.v4.f.s
 * JD-Core Version:    0.6.2
 */