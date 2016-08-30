package com.facebook;

public class FacebookOperationCanceledException extends FacebookException
{
  static final long serialVersionUID = 1L;

  public FacebookOperationCanceledException()
  {
  }

  public FacebookOperationCanceledException(String paramString)
  {
    super(paramString);
  }

  public FacebookOperationCanceledException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public FacebookOperationCanceledException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.FacebookOperationCanceledException
 * JD-Core Version:    0.6.2
 */