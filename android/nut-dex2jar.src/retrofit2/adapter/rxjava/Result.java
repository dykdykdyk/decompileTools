package retrofit2.adapter.rxjava;

import retrofit2.Response;

public final class Result<T>
{
  private final Throwable error;
  private final Response<T> response;

  private Result(Response<T> paramResponse, Throwable paramThrowable)
  {
    this.response = paramResponse;
    this.error = paramThrowable;
  }

  public static <T> Result<T> error(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      throw new NullPointerException("error == null");
    return new Result(null, paramThrowable);
  }

  public static <T> Result<T> response(Response<T> paramResponse)
  {
    if (paramResponse == null)
      throw new NullPointerException("response == null");
    return new Result(paramResponse, null);
  }

  public final Throwable error()
  {
    return this.error;
  }

  public final boolean isError()
  {
    return this.error != null;
  }

  public final Response<T> response()
  {
    return this.response;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.adapter.rxjava.Result
 * JD-Core Version:    0.6.2
 */