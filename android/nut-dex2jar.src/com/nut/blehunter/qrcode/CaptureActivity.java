package com.nut.blehunter.qrcode;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.Window;
import android.view.WindowManager;
import com.nut.blehunter.qrcode.a.f;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b;
import java.io.IOException;
import java.util.Collection;
import java.util.Map;

public final class CaptureActivity extends b
  implements SurfaceHolder.Callback
{
  private static final String q = CaptureActivity.class.getSimpleName();
  f m;
  d n;
  k o;
  ScanOverlayView p;
  private boolean r;
  private int s;
  private Collection<com.google.zxing.a> t;
  private Map<com.google.zxing.d, ?> u;
  private String v;
  private a w;

  private void a(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null)
      throw new IllegalStateException("No SurfaceHolder provided");
    if (this.m.a())
      Log.w(q, "initCamera() while already open -- late SurfaceView callback?");
    while (true)
    {
      return;
      try
      {
        this.m.a(paramSurfaceHolder);
        if (this.n == null)
        {
          this.n = new d(this, this.t, this.u, this.v, this.m);
          return;
        }
      }
      catch (IOException paramSurfaceHolder)
      {
        Log.w(q, paramSurfaceHolder);
        return;
      }
      catch (RuntimeException paramSurfaceHolder)
      {
        Log.w(q, "Unexpected error initializing camera", paramSurfaceHolder);
      }
    }
  }

  private boolean a(ApiError paramApiError)
  {
    if (paramApiError == null)
      return false;
    g();
    h();
    u.a("NTGroupControlEvent", "ACCEPT_VIA_QRCODE", "SUCCEEDED", "0");
    return true;
  }

  public final void g()
  {
    if (this.n != null)
      this.n.sendEmptyMessageDelayed(2131558413, 1000L);
  }

  public final void h()
  {
    ScanOverlayView localScanOverlayView = this.p;
    localScanOverlayView.b = true;
    localScanOverlayView.a = 0;
    localScanOverlayView.invalidate();
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    getWindow().addFlags(128);
    setContentView(2130903076);
    l().setBackgroundColor(getResources().getColor(2131427354));
    b(2131100084);
    this.r = false;
    this.o = new k(this);
    this.w = new a(this);
  }

  protected final void onDestroy()
  {
    this.o.d();
    super.onDestroy();
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default:
      bool = super.onKeyDown(paramInt, paramKeyEvent);
    case 27:
    case 80:
      return bool;
    case 4:
      setResult(0);
      finish();
      return true;
    case 25:
      this.m.a(false);
      return true;
    case 24:
    }
    this.m.a(true);
    return true;
  }

  protected final void onPause()
  {
    Object localObject;
    if (this.n != null)
    {
      localObject = this.n;
      ((d)localObject).b = e.c;
      ((d)localObject).c.d();
      Message.obtain(((d)localObject).a.a(), 2131558412).sendToTarget();
    }
    try
    {
      ((d)localObject).a.join(500L);
      label51: ((d)localObject).removeMessages(2131558406);
      ((d)localObject).removeMessages(2131558405);
      this.n = null;
      this.o.b();
      localObject = this.w;
      if (((a)localObject).c != null)
      {
        ((SensorManager)((a)localObject).a.getSystemService("sensor")).unregisterListener((SensorEventListener)localObject);
        ((a)localObject).b = null;
        ((a)localObject).c = null;
      }
      this.m.b();
      if (!this.r)
        ((SurfaceView)findViewById(2131558545)).getHolder().removeCallback(this);
      super.onPause();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label51;
    }
  }

  protected final void onResume()
  {
    super.onResume();
    Object localObject = ((WindowManager)getSystemService("window")).getDefaultDisplay();
    this.m = new f(getApplication());
    this.m.a((Display)localObject);
    this.p = ((ScanOverlayView)findViewById(2131558546));
    this.p.setCameraManager(this.m);
    this.n = null;
    int i = ((Display)localObject).getRotation();
    if ((i == 0) || (i == 3));
    for (i = 1; ; i = 9)
    {
      setRequestedOrientation(i);
      this.p.setVisibility(0);
      localObject = this.w;
      ((a)localObject).b = this.m;
      PreferenceManager.getDefaultSharedPreferences(((a)localObject).a);
      if (com.nut.blehunter.qrcode.a.g.a() == com.nut.blehunter.qrcode.a.g.b)
      {
        SensorManager localSensorManager = (SensorManager)((a)localObject).a.getSystemService("sensor");
        ((a)localObject).c = localSensorManager.getDefaultSensor(5);
        if (((a)localObject).c != null)
          localSensorManager.registerListener((SensorEventListener)localObject, ((a)localObject).c, 3);
      }
      this.o.c();
      localObject = getIntent();
      this.s = n.d;
      this.t = null;
      this.v = null;
      if (localObject != null)
      {
        if ("com.google.zxing.client.android.SCAN".equals(((Intent)localObject).getAction()))
        {
          this.s = n.a;
          this.t = g.a((Intent)localObject);
          this.u = i.a((Intent)localObject);
          if ((((Intent)localObject).hasExtra("SCAN_WIDTH")) && (((Intent)localObject).hasExtra("SCAN_HEIGHT")))
          {
            i = ((Intent)localObject).getIntExtra("SCAN_WIDTH", 0);
            int j = ((Intent)localObject).getIntExtra("SCAN_HEIGHT", 0);
            if ((i > 0) && (j > 0))
              this.m.a(i, j);
          }
          if (((Intent)localObject).hasExtra("SCAN_CAMERA_ID"))
          {
            i = ((Intent)localObject).getIntExtra("SCAN_CAMERA_ID", -1);
            if (i >= 0)
              this.m.a(i);
          }
        }
        this.v = ((Intent)localObject).getStringExtra("CHARACTER_SET");
      }
      localObject = ((SurfaceView)findViewById(2131558545)).getHolder();
      if (!this.r)
        break;
      a((SurfaceHolder)localObject);
      return;
    }
    ((SurfaceHolder)localObject).addCallback(this);
  }

  protected final void onStart()
  {
    super.onStart();
    j();
  }

  protected final void onStop()
  {
    k();
    super.onStop();
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (paramSurfaceHolder == null)
      Log.e(q, "*** WARNING *** surfaceCreated() gave us a null surface!");
    if (!this.r)
    {
      this.r = true;
      a(paramSurfaceHolder);
    }
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.r = false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.CaptureActivity
 * JD-Core Version:    0.6.2
 */