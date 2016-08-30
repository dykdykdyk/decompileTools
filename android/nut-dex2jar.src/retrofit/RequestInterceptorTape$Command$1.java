package retrofit;

 enum RequestInterceptorTape$Command$1
{
  RequestInterceptorTape$Command$1()
  {
    super(str, i, null);
  }

  public final void intercept(RequestInterceptor.RequestFacade paramRequestFacade, String paramString1, String paramString2)
  {
    paramRequestFacade.addHeader(paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptorTape.Command.1
 * JD-Core Version:    0.6.2
 */