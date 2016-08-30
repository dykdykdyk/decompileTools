package okhttp3;

public final class r
{
  boolean a;
  String[] b;
  String[] c;
  boolean d;

  public r(q paramq)
  {
    this.a = q.a(paramq);
    this.b = q.b(paramq);
    this.c = q.c(paramq);
    this.d = q.d(paramq);
  }

  r(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public final r a()
  {
    if (!this.a)
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    this.d = true;
    return this;
  }

  public final r a(String[] paramArrayOfString)
  {
    if (!this.a)
      throw new IllegalStateException("no cipher suites for cleartext connections");
    if (paramArrayOfString.length == 0)
      throw new IllegalArgumentException("At least one cipher suite is required");
    this.b = ((String[])paramArrayOfString.clone());
    return this;
  }

  public final r a(be[] paramArrayOfbe)
  {
    if (!this.a)
      throw new IllegalStateException("no TLS versions for cleartext connections");
    String[] arrayOfString = new String[paramArrayOfbe.length];
    int i = 0;
    while (i < paramArrayOfbe.length)
    {
      arrayOfString[i] = paramArrayOfbe[i].e;
      i += 1;
    }
    return b(arrayOfString);
  }

  public final q b()
  {
    return new q(this, (byte)0);
  }

  public final r b(String[] paramArrayOfString)
  {
    if (!this.a)
      throw new IllegalStateException("no TLS versions for cleartext connections");
    if (paramArrayOfString.length == 0)
      throw new IllegalArgumentException("At least one TLS version is required");
    this.c = ((String[])paramArrayOfString.clone());
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.r
 * JD-Core Version:    0.6.2
 */