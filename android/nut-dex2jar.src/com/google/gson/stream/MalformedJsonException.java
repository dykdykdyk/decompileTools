package com.google.gson.stream;

import java.io.IOException;

public final class MalformedJsonException extends IOException
{
  private static final long serialVersionUID = 1L;

  public MalformedJsonException(String paramString)
  {
    super(paramString);
  }

  public MalformedJsonException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }

  public MalformedJsonException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.stream.MalformedJsonException
 * JD-Core Version:    0.6.2
 */