package retrofit2;

import okhttp3.ab;
import okhttp3.ap;
import okhttp3.au;
import okhttp3.az;
import okhttp3.ba;
import okhttp3.bb;

public final class Response<T>
{
  private final T body;
  private final bb errorBody;
  private final az rawResponse;

  private Response(az paramaz, T paramT, bb parambb)
  {
    this.rawResponse = paramaz;
    this.body = paramT;
    this.errorBody = parambb;
  }

  public static <T> Response<T> error(int paramInt, bb parambb)
  {
    if (paramInt < 400)
      throw new IllegalArgumentException("code < 400: " + paramInt);
    ba localba = new ba();
    localba.c = paramInt;
    localba.b = ap.b;
    localba.a = new au().a("http://localhost/").a();
    return error(parambb, localba.a());
  }

  public static <T> Response<T> error(bb parambb, az paramaz)
  {
    if (parambb == null)
      throw new NullPointerException("body == null");
    if (paramaz == null)
      throw new NullPointerException("rawResponse == null");
    if (paramaz.a())
      throw new IllegalArgumentException("rawResponse should not be successful response");
    return new Response(paramaz, null, parambb);
  }

  public static <T> Response<T> success(T paramT)
  {
    ba localba = new ba();
    localba.c = 200;
    localba.d = "OK";
    localba.b = ap.b;
    localba.a = new au().a("http://localhost/").a();
    return success(paramT, localba.a());
  }

  public static <T> Response<T> success(T paramT, ab paramab)
  {
    if (paramab == null)
      throw new NullPointerException("headers == null");
    ba localba = new ba();
    localba.c = 200;
    localba.d = "OK";
    localba.b = ap.b;
    paramab = localba.a(paramab);
    paramab.a = new au().a("http://localhost/").a();
    return success(paramT, paramab.a());
  }

  public static <T> Response<T> success(T paramT, az paramaz)
  {
    if (paramaz == null)
      throw new NullPointerException("rawResponse == null");
    if (!paramaz.a())
      throw new IllegalArgumentException("rawResponse must be successful response");
    return new Response(paramaz, paramT, null);
  }

  public final T body()
  {
    return this.body;
  }

  public final int code()
  {
    return this.rawResponse.b;
  }

  public final bb errorBody()
  {
    return this.errorBody;
  }

  public final ab headers()
  {
    return this.rawResponse.e;
  }

  public final boolean isSuccessful()
  {
    return this.rawResponse.a();
  }

  public final String message()
  {
    return this.rawResponse.c;
  }

  public final az raw()
  {
    return this.rawResponse;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Response
 * JD-Core Version:    0.6.2
 */