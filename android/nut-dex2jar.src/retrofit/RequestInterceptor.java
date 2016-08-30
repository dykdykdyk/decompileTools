package retrofit;

public abstract interface RequestInterceptor
{
  public static final RequestInterceptor NONE = new RequestInterceptor.1();

  public abstract void intercept(RequestInterceptor.RequestFacade paramRequestFacade);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptor
 * JD-Core Version:    0.6.2
 */