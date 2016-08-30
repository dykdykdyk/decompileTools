package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

public class RequestAsyncTask extends AsyncTask<Void, Void, List<Response>>
{
  private static final String TAG = RequestAsyncTask.class.getCanonicalName();
  private static Method executeOnExecutorMethod;
  private final HttpURLConnection connection;
  private Exception exception;
  private final RequestBatch requests;

  static
  {
    Method[] arrayOfMethod = AsyncTask.class.getMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    while (true)
    {
      if (i < j)
      {
        Method localMethod = arrayOfMethod[i];
        if ("executeOnExecutor".equals(localMethod.getName()))
        {
          Class[] arrayOfClass = localMethod.getParameterTypes();
          if ((arrayOfClass.length == 2) && (arrayOfClass[0] == Executor.class) && (arrayOfClass[1].isArray()))
            executeOnExecutorMethod = localMethod;
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }

  public RequestAsyncTask(RequestBatch paramRequestBatch)
  {
    this(null, paramRequestBatch);
  }

  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, RequestBatch paramRequestBatch)
  {
    this.requests = paramRequestBatch;
    this.connection = paramHttpURLConnection;
  }

  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, Collection<Request> paramCollection)
  {
    this(paramHttpURLConnection, new RequestBatch(paramCollection));
  }

  public RequestAsyncTask(HttpURLConnection paramHttpURLConnection, Request[] paramArrayOfRequest)
  {
    this(paramHttpURLConnection, new RequestBatch(paramArrayOfRequest));
  }

  public RequestAsyncTask(Collection<Request> paramCollection)
  {
    this(null, new RequestBatch(paramCollection));
  }

  public RequestAsyncTask(Request[] paramArrayOfRequest)
  {
    this(null, new RequestBatch(paramArrayOfRequest));
  }

  protected List<Response> doInBackground(Void[] paramArrayOfVoid)
  {
    try
    {
      if (this.connection == null)
        return this.requests.executeAndWait();
      paramArrayOfVoid = Request.executeConnectionAndWait(this.connection, this.requests);
      return paramArrayOfVoid;
    }
    catch (Exception paramArrayOfVoid)
    {
      this.exception = paramArrayOfVoid;
    }
    return null;
  }

  RequestAsyncTask executeOnSettingsExecutor()
  {
    if (executeOnExecutorMethod != null);
    try
    {
      executeOnExecutorMethod.invoke(this, new Object[] { Settings.getExecutor(), null });
      return this;
      execute(new Void[0]);
      return this;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return this;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
    }
    return this;
  }

  protected final Exception getException()
  {
    return this.exception;
  }

  protected final RequestBatch getRequests()
  {
    return this.requests;
  }

  protected void onPostExecute(List<Response> paramList)
  {
    super.onPostExecute(paramList);
    if (this.exception != null)
      Log.d(TAG, String.format("onPostExecute: exception encountered during request: %s", new Object[] { this.exception.getMessage() }));
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
    if (this.requests.getCallbackHandler() == null)
      this.requests.setCallbackHandler(new Handler());
  }

  public String toString()
  {
    return "{RequestAsyncTask:  connection: " + this.connection + ", requests: " + this.requests + "}";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.RequestAsyncTask
 * JD-Core Version:    0.6.2
 */