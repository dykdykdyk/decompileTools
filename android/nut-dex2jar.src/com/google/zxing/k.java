package com.google.zxing;

public final class k extends g
{
  public final byte[] c;
  public final int d;
  public final int e;
  public final int f;
  private final int g;

  public k(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2))
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    this.c = paramArrayOfByte;
    this.d = paramInt1;
    this.g = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
  }

  public final byte[] a()
  {
    int i = 0;
    int k = this.a;
    int m = this.b;
    Object localObject;
    if ((k == this.d) && (m == this.g))
    {
      localObject = this.c;
      return localObject;
    }
    int n = k * m;
    byte[] arrayOfByte1 = new byte[n];
    int j = this.f * this.d + this.e;
    if (k == this.d)
    {
      System.arraycopy(this.c, j, arrayOfByte1, 0, n);
      return arrayOfByte1;
    }
    byte[] arrayOfByte2 = this.c;
    while (true)
    {
      localObject = arrayOfByte1;
      if (i >= m)
        break;
      System.arraycopy(arrayOfByte2, j, arrayOfByte1, i * k, k);
      j += this.d;
      i += 1;
    }
  }

  public final byte[] a(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= this.b))
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    int i = this.a;
    byte[] arrayOfByte;
    if (paramArrayOfByte != null)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte.length >= i);
    }
    else
    {
      arrayOfByte = new byte[i];
    }
    int j = this.f;
    int k = this.d;
    int m = this.e;
    System.arraycopy(this.c, (j + paramInt) * k + m, arrayOfByte, 0, i);
    return arrayOfByte;
  }

  public final int[] b()
  {
    int m = this.a / 2;
    int n = this.b / 2;
    int[] arrayOfInt = new int[m * n];
    byte[] arrayOfByte = this.c;
    int j = this.f;
    int k = this.d;
    int i1 = this.e;
    int i = 0;
    j = j * k + i1;
    while (i < n)
    {
      k = 0;
      while (k < m)
      {
        arrayOfInt[(i * m + k)] = ((arrayOfByte[(k * 2 + j)] & 0xFF) * 65793 | 0xFF000000);
        k += 1;
      }
      j += this.d * 2;
      i += 1;
    }
    return arrayOfInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.k
 * JD-Core Version:    0.6.2
 */