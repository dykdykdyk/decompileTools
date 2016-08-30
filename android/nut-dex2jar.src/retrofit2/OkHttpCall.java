package retrofit2;

import java.io.IOException;
import okhttp3.at;
import okhttp3.az;
import okhttp3.ba;
import okhttp3.bb;
import okhttp3.g;
import okhttp3.h;

final class OkHttpCall<T>
  implements Call<T>
{
  private final Object[] args;
  private volatile boolean canceled;
  private Throwable creationFailure;
  private boolean executed;
  private g rawCall;
  private final ServiceMethod<T> serviceMethod;

  OkHttpCall(ServiceMethod<T> paramServiceMethod, Object[] paramArrayOfObject)
  {
    this.serviceMethod = paramServiceMethod;
    this.args = paramArrayOfObject;
  }

  private g createRawCall()
    throws IOException
  {
    at localat = this.serviceMethod.toRequest(this.args);
    return this.serviceMethod.callFactory.a(localat);
  }

  public final void cancel()
  {
    this.canceled = true;
    try
    {
      g localg = this.rawCall;
      if (localg != null)
        localg.c();
      return;
    }
    finally
    {
    }
  }

  public final OkHttpCall<T> clone()
  {
    return new OkHttpCall(this.serviceMethod, this.args);
  }

  public final void enqueue(Callback<T> paramCallback)
  {
    if (paramCallback == null)
      throw new NullPointerException("callback == null");
    try
    {
      if (this.executed)
        throw new IllegalStateException("Already executed.");
    }
    finally
    {
    }
    this.executed = true;
    Object localObject = this.rawCall;
    Throwable localThrowable1 = this.creationFailure;
    if ((localObject == null) && (localThrowable1 == null));
    while (true)
      try
      {
        g localg = createRawCall();
        this.rawCall = localg;
        localObject = localg;
        if (localThrowable1 != null)
        {
          paramCallback.onFailure(this, localThrowable1);
          return;
        }
      }
      catch (Throwable localThrowable2)
      {
        this.creationFailure = localThrowable2;
        continue;
        if (this.canceled)
          ((g)localObject).c();
        ((g)localObject).a(new OkHttpCall.1(this, paramCallback));
        return;
      }
  }

  public final Response<T> execute()
    throws IOException
  {
    try
    {
      if (this.executed)
        throw new IllegalStateException("Already executed.");
    }
    finally
    {
    }
    this.executed = true;
    if (this.creationFailure != null)
    {
      if ((this.creationFailure instanceof IOException))
        throw ((IOException)this.creationFailure);
      throw ((RuntimeException)this.creationFailure);
    }
    g localg = this.rawCall;
    Object localObject2 = localg;
    if (localg == null);
    try
    {
      localObject2 = createRawCall();
      this.rawCall = ((g)localObject2);
      if (this.canceled)
        ((g)localObject2).c();
      return parseResponse(((g)localObject2).b());
    }
    catch (RuntimeException localRuntimeException)
    {
      this.creationFailure = localRuntimeException;
      throw localRuntimeException;
    }
    catch (IOException localIOException)
    {
      label110: break label110;
    }
  }

  public final boolean isCanceled()
  {
    return this.canceled;
  }

  public final boolean isExecuted()
  {
    try
    {
      boolean bool = this.executed;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final Response<T> parseResponse(az paramaz)
    throws IOException
  {
    Object localObject = paramaz.f;
    paramaz = paramaz.b();
    paramaz.g = new OkHttpCall.NoContentResponseBody(((bb)localObject).contentType(), ((bb)localObject).contentLength());
    az localaz = paramaz.a();
    int i = localaz.b;
    if ((i < 200) || (i >= 300))
      try
      {
        paramaz = Response.error(Utils.buffer((bb)localObject), localaz);
        return paramaz;
      }
      finally
      {
        ((bb)localObject).close();
      }
    if ((i == 204) || (i == 205))
      return Response.success(null, localaz);
    paramaz = new OkHttpCall.ExceptionCatchingRequestBody((bb)localObject);
    try
    {
      localObject = Response.success(this.serviceMethod.toResponse(paramaz), localaz);
      return localObject;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramaz.throwIfCaught();
      throw localRuntimeException;
    }
  }

  public final at request()
  {
    while (true)
    {
      try
      {
        Object localObject1 = this.rawCall;
        if (localObject1 != null)
        {
          localObject1 = ((g)localObject1).a();
          return localObject1;
        }
        if (this.creationFailure == null)
          break label66;
        if ((this.creationFailure instanceof IOException))
          throw new RuntimeException("Unable to create request.", this.creationFailure);
      }
      finally
      {
      }
      throw ((RuntimeException)this.creationFailure);
      try
      {
        label66: Object localObject3 = createRawCall();
        this.rawCall = ((g)localObject3);
        localObject3 = ((g)localObject3).a();
      }
      catch (RuntimeException localRuntimeException)
      {
        this.creationFailure = localRuntimeException;
        throw localRuntimeException;
      }
      catch (IOException localIOException)
      {
        this.creationFailure = localIOException;
        throw new RuntimeException("Unable to create request.", localIOException);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.OkHttpCall
 * JD-Core Version:    0.6.2
 */