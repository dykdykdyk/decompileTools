package com.google.zxing;

public final class FormatException extends ReaderException
{
  private static final FormatException c;

  static
  {
    FormatException localFormatException = new FormatException();
    c = localFormatException;
    localFormatException.setStackTrace(b);
  }

  private FormatException()
  {
  }

  private FormatException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }

  public static FormatException a()
  {
    if (a)
      return new FormatException();
    return c;
  }

  public static FormatException a(Throwable paramThrowable)
  {
    if (a)
      return new FormatException(paramThrowable);
    return c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.FormatException
 * JD-Core Version:    0.6.2
 */