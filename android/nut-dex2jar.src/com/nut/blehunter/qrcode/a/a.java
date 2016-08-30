package com.nut.blehunter.qrcode.a;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.RejectedExecutionException;

final class a
  implements Camera.AutoFocusCallback
{
  private static final String a = a.class.getSimpleName();
  private static final Collection<String> b;
  private boolean c;
  private boolean d;
  private final boolean e;
  private final Camera f;
  private AsyncTask<?, ?, ?> g;

  static
  {
    ArrayList localArrayList = new ArrayList(2);
    b = localArrayList;
    localArrayList.add("auto");
    b.add("macro");
  }

  a(Camera paramCamera)
  {
    this.f = paramCamera;
    paramCamera = paramCamera.getParameters().getFocusMode();
    this.e = b.contains(paramCamera);
    Log.i(a, "Current focus mode '" + paramCamera + "'; use auto focus? " + this.e);
    a();
  }

  private void c()
  {
    try
    {
      b localb;
      if ((!this.c) && (this.g == null))
        localb = new b(this, (byte)0);
      try
      {
        localb.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        this.g = localb;
        return;
      }
      catch (RejectedExecutionException localRejectedExecutionException)
      {
        while (true)
          Log.w(a, "Could not request auto focus", localRejectedExecutionException);
      }
    }
    finally
    {
    }
  }

  private void d()
  {
    try
    {
      if (this.g != null)
      {
        if (this.g.getStatus() != AsyncTask.Status.FINISHED)
          this.g.cancel(true);
        this.g = null;
      }
      return;
    }
    finally
    {
    }
  }

  final void a()
  {
    try
    {
      if (this.e)
      {
        this.g = null;
        if (!this.c)
        {
          boolean bool = this.d;
          if (bool);
        }
      }
      try
      {
        this.f.autoFocus(this);
        this.d = true;
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        while (true)
        {
          Log.w(a, "Unexpected exception while focusing", localRuntimeException);
          c();
        }
      }
    }
    finally
    {
    }
  }

  final void b()
  {
    try
    {
      this.c = true;
      if (this.e)
        d();
      try
      {
        this.f.cancelAutoFocus();
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        while (true)
          Log.w(a, "Unexpected exception while cancelling focusing", localRuntimeException);
      }
    }
    finally
    {
    }
  }

  public final void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    try
    {
      this.d = false;
      c();
      return;
    }
    finally
    {
      paramCamera = finally;
    }
    throw paramCamera;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.a.a
 * JD-Core Version:    0.6.2
 */