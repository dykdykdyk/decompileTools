package com.google.zxing;

public final class NotFoundException extends ReaderException
{
  private static final NotFoundException c;

  static
  {
    NotFoundException localNotFoundException = new NotFoundException();
    c = localNotFoundException;
    localNotFoundException.setStackTrace(b);
  }

  public static NotFoundException a()
  {
    return c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.NotFoundException
 * JD-Core Version:    0.6.2
 */