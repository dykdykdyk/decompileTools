package retrofit2.adapter.rxjava;

import retrofit2.Response;

public final class HttpException extends Exception
{
  private final int code;
  private final String message;
  private final transient Response<?> response;

  public HttpException(Response<?> paramResponse)
  {
    super("HTTP " + paramResponse.code() + " " + paramResponse.message());
    this.code = paramResponse.code();
    this.message = paramResponse.message();
    this.response = paramResponse;
  }

  public final int code()
  {
    return this.code;
  }

  public final String message()
  {
    return this.message;
  }

  public final Response<?> response()
  {
    return this.response;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.HttpException
 * JD-Core Version:    0.6.2
 */