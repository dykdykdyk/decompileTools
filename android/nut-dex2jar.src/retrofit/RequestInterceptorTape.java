package retrofit;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class RequestInterceptorTape
  implements RequestInterceptor, RequestInterceptor.RequestFacade
{
  private final List<RequestInterceptorTape.CommandWithParams> tape = new ArrayList();

  public final void addEncodedPathParam(String paramString1, String paramString2)
  {
    this.tape.add(new RequestInterceptorTape.CommandWithParams(RequestInterceptorTape.Command.ADD_ENCODED_PATH_PARAM, paramString1, paramString2));
  }

  public final void addEncodedQueryParam(String paramString1, String paramString2)
  {
    this.tape.add(new RequestInterceptorTape.CommandWithParams(RequestInterceptorTape.Command.ADD_ENCODED_QUERY_PARAM, paramString1, paramString2));
  }

  public final void addHeader(String paramString1, String paramString2)
  {
    this.tape.add(new RequestInterceptorTape.CommandWithParams(RequestInterceptorTape.Command.ADD_HEADER, paramString1, paramString2));
  }

  public final void addPathParam(String paramString1, String paramString2)
  {
    this.tape.add(new RequestInterceptorTape.CommandWithParams(RequestInterceptorTape.Command.ADD_PATH_PARAM, paramString1, paramString2));
  }

  public final void addQueryParam(String paramString1, String paramString2)
  {
    this.tape.add(new RequestInterceptorTape.CommandWithParams(RequestInterceptorTape.Command.ADD_QUERY_PARAM, paramString1, paramString2));
  }

  public final void intercept(RequestInterceptor.RequestFacade paramRequestFacade)
  {
    Iterator localIterator = this.tape.iterator();
    while (localIterator.hasNext())
    {
      RequestInterceptorTape.CommandWithParams localCommandWithParams = (RequestInterceptorTape.CommandWithParams)localIterator.next();
      localCommandWithParams.command.intercept(paramRequestFacade, localCommandWithParams.name, localCommandWithParams.value);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptorTape
 * JD-Core Version:    0.6.2
 */