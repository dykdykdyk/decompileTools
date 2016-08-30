package retrofit;

 enum RequestInterceptorTape$Command$4
{
  RequestInterceptorTape$Command$4()
  {
    super(str, i, null);
  }

  public final void intercept(RequestInterceptor.RequestFacade paramRequestFacade, String paramString1, String paramString2)
  {
    paramRequestFacade.addQueryParam(paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptorTape.Command.4
 * JD-Core Version:    0.6.2
 */