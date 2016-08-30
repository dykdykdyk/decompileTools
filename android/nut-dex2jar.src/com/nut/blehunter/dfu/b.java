package com.nut.blehunter.dfu;

import android.os.CountDownTimer;
import android.os.Handler;
import android.widget.ProgressBar;
import android.widget.TextView;
import b.a.a;
import no.nordicsemi.android.dfu.DfuProgressListenerAdapter;

final class b extends DfuProgressListenerAdapter
{
  b(DfuActivity paramDfuActivity)
  {
  }

  private void a()
  {
    DfuActivity.m(this.a);
    DfuActivity.n(this.a).cancel();
    DfuActivity.o(this.a);
  }

  public final void onDeviceConnecting(String paramString)
  {
  }

  public final void onDeviceDisconnecting(String paramString)
  {
  }

  public final void onDfuAborted(String paramString)
  {
  }

  public final void onDfuCompleted(String paramString)
  {
    new Handler().postDelayed(new c(this), 200L);
  }

  public final void onDfuProcessStarting(String paramString)
  {
  }

  public final void onEnablingDfuMode(String paramString)
  {
  }

  public final void onError(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    a.b("upload error error code %s error type %s message %s", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), paramString2 });
    if ((DfuActivity.p(this.a) < 5) && ((paramInt1 == 4102) || (paramInt1 == 133) || (paramInt1 == 19) || (paramInt1 == 129)))
    {
      DfuActivity.q(this.a);
      this.a.g();
      return;
    }
    a();
    DfuActivity.c(this.a);
  }

  public final void onFirmwareValidating(String paramString)
  {
  }

  public final void onProgressChanged(String paramString, int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, int paramInt3)
  {
    if (!DfuActivity.a(this.a))
      a();
    DfuActivity.j(this.a).setText(2131099809);
    DfuActivity.h(this.a).setProgress(paramInt1);
    DfuActivity.i(this.a).setText(paramInt1 + "%");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.b
 * JD-Core Version:    0.6.2
 */