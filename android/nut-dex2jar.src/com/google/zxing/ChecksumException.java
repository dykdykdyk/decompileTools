package com.google.zxing;

public final class ChecksumException extends ReaderException
{
  private static final ChecksumException c;

  static
  {
    ChecksumException localChecksumException = new ChecksumException();
    c = localChecksumException;
    localChecksumException.setStackTrace(b);
  }

  public static ChecksumException a()
  {
    if (a)
      return new ChecksumException();
    return c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.ChecksumException
 * JD-Core Version:    0.6.2
 */