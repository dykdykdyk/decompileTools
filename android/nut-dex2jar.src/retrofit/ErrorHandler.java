package retrofit;

public abstract interface ErrorHandler
{
  public static final ErrorHandler DEFAULT = new ErrorHandler.1();

  public abstract Throwable handleError(RetrofitError paramRetrofitError);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.ErrorHandler
 * JD-Core Version:    0.6.2
 */