package okhttp3;

public final class al
{
  private final ab a;
  private final av b;

  private al(ab paramab, av paramav)
  {
    this.a = paramab;
    this.b = paramav;
  }

  public static al a(String paramString1, String paramString2, av paramav)
  {
    StringBuilder localStringBuilder = new StringBuilder("form-data; name=");
    aj.a(localStringBuilder, paramString1);
    if (paramString2 != null)
    {
      localStringBuilder.append("; filename=");
      aj.a(localStringBuilder, paramString2);
    }
    return a(ab.a(new String[] { "Content-Disposition", localStringBuilder.toString() }), paramav);
  }

  public static al a(ab paramab, av paramav)
  {
    if (paramav == null)
      throw new NullPointerException("body == null");
    if ((paramab != null) && (paramab.a("Content-Type") != null))
      throw new IllegalArgumentException("Unexpected header: Content-Type");
    if ((paramab != null) && (paramab.a("Content-Length") != null))
      throw new IllegalArgumentException("Unexpected header: Content-Length");
    return new al(paramab, paramav);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.al
 * JD-Core Version:    0.6.2
 */