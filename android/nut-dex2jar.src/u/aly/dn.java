package u.aly;

public final class dn
{
  public final String a;
  public final byte b;
  public final short c;

  public dn()
  {
    this("", (byte)0, (short)0);
  }

  public dn(String paramString, byte paramByte, short paramShort)
  {
    this.a = paramString;
    this.b = paramByte;
    this.c = paramShort;
  }

  public final String toString()
  {
    return "<TField name:'" + this.a + "' type:" + this.b + " field-id:" + this.c + ">";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.dn
 * JD-Core Version:    0.6.2
 */