package com.loc;

public final class ep
{
  String a;
  String b;
  String c;
  boolean d = true;
  String e = "standard";
  String[] f = null;

  public ep(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString2;
    this.c = paramString3;
    this.b = paramString1;
  }

  public final eo a()
    throws l
  {
    if (this.f == null)
      throw new l("sdk packages is null");
    return new eo(this, (byte)0);
  }

  public final ep a(String[] paramArrayOfString)
  {
    this.f = ((String[])paramArrayOfString.clone());
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ep
 * JD-Core Version:    0.6.2
 */