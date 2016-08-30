package u.aly;

public final class cv
{
  int a = -1;
  private short[] b = new short[15];

  public final short a()
  {
    short[] arrayOfShort = this.b;
    int i = this.a;
    this.a = (i - 1);
    return arrayOfShort[i];
  }

  public final void a(short paramShort)
  {
    if (this.b.length == this.a + 1)
    {
      arrayOfShort = new short[this.b.length * 2];
      System.arraycopy(this.b, 0, arrayOfShort, 0, this.b.length);
      this.b = arrayOfShort;
    }
    short[] arrayOfShort = this.b;
    int i = this.a + 1;
    this.a = i;
    arrayOfShort[i] = paramShort;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<ShortStack vector:[");
    int i = 0;
    while (i < this.b.length)
    {
      if (i != 0)
        localStringBuilder.append(" ");
      if (i == this.a)
        localStringBuilder.append(">>");
      localStringBuilder.append(this.b[i]);
      if (i == this.a)
        localStringBuilder.append("<<");
      i += 1;
    }
    localStringBuilder.append("]>");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cv
 * JD-Core Version:    0.6.2
 */