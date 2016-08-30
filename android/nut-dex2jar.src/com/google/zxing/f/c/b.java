package com.google.zxing.f.c;

final class b
{
  final byte[] a;
  private int b;

  b(int paramInt)
  {
    this.a = new byte[paramInt];
    this.b = 0;
  }

  final void a(boolean paramBoolean, int paramInt)
  {
    int i = 0;
    if (i < paramInt)
    {
      int k = this.b;
      this.b = (k + 1);
      byte[] arrayOfByte = this.a;
      if (paramBoolean);
      for (int j = 1; ; j = 0)
      {
        arrayOfByte[k] = ((byte)j);
        i += 1;
        break;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.c.b
 * JD-Core Version:    0.6.2
 */