package com.google.zxing;

public abstract class ReaderException extends Exception
{
  protected static final boolean a;
  protected static final StackTraceElement[] b;

  static
  {
    if (System.getProperty("surefire.test.class.path") != null);
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      b = new StackTraceElement[0];
      return;
    }
  }

  ReaderException()
  {
  }

  ReaderException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }

  public final Throwable fillInStackTrace()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.ReaderException
 * JD-Core Version:    0.6.2
 */