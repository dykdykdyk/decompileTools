package android.support.v4.widget;

final class b
{
  int a;
  int b;
  float c;
  float d;
  long e = -9223372036854775808L;
  long f = 0L;
  int g = 0;
  int h = 0;
  long i = -1L;
  float j;
  int k;

  final float a(long paramLong)
  {
    if (paramLong < this.e)
      return 0.0F;
    if ((this.i < 0L) || (paramLong < this.i))
      return a.a((float)(paramLong - this.e) / this.a) * 0.5F;
    long l = this.i;
    float f1 = this.j;
    float f2 = this.j;
    return a.a((float)(paramLong - l) / this.k) * f2 + (1.0F - f1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.b
 * JD-Core Version:    0.6.2
 */