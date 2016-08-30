package rx.exceptions;

public class OnErrorFailedException extends RuntimeException
{
  public OnErrorFailedException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public OnErrorFailedException(Throwable paramThrowable)
  {
    super(paramThrowable.getMessage(), paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.exceptions.OnErrorFailedException
 * JD-Core Version:    0.6.2
 */