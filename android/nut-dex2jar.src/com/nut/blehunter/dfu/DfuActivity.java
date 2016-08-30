package com.nut.blehunter.dfu;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.MimeTypeMap;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.n;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.MainActivity;
import com.nut.blehunter.ui.widget.CircleImageView;
import java.io.File;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.NoSuchPaddingException;
import no.nordicsemi.android.dfu.DfuProgressListener;
import no.nordicsemi.android.dfu.DfuServiceInitiator;
import no.nordicsemi.android.dfu.DfuServiceListenerHelper;

public class DfuActivity extends com.nut.blehunter.ui.b
  implements com.nut.blehunter.ui.b.a.d
{
  private Nut m;
  private File n;
  private ProgressBar o;
  private TextView p;
  private TextView q;
  private h r;
  private int s = 0;
  private boolean t = false;
  private boolean u = false;
  private boolean v = false;
  private CountDownTimer w = new a(this);
  private final DfuProgressListener x = new b(this);
  private CountDownTimer y = new d(this);

  private void d(int paramInt)
  {
    android.support.v4.b.j localj = android.support.v4.b.j.a(this);
    Intent localIntent = new Intent("no.nordicsemi.android.dfu.broadcast.BROADCAST_ACTION");
    localIntent.putExtra("no.nordicsemi.android.dfu.extra.EXTRA_ACTION", paramInt);
    localj.a(localIntent);
  }

  private void h()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("device_id", this.m.j);
    a(29, localBundle);
  }

  private void t()
  {
    this.t = false;
    this.w.start();
  }

  private void u()
  {
    this.v = false;
    this.y.start();
    this.p.setText(2131099808);
    a(7, null);
  }

  private void v()
  {
    new com.nut.blehunter.ui.b.a.b(this).b(false).a(false).a(2131099869).b(getString(2131099824)).a(2131099795, this).b(2131099781, this).a().a(this, "dfu_failed");
    u.a("NTDFUEvent", "DFU_FAILED");
    com.umeng.analytics.b.a(this, "dfu_workflow_failed_alert");
  }

  private void w()
  {
    startActivity(new Intent(this, MainActivity.class));
  }

  public final void a(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    if (localBundle == null);
    do
    {
      do
      {
        String str;
        do
        {
          do
          {
            return;
            str = localBundle.getString("device_id");
          }
          while (!this.m.j.equals(str));
          switch (paramMessage.what)
          {
          default:
            return;
          case 9:
          case 30:
          }
        }
        while ((this.v) || (this.u) || (this.t));
        this.m = com.nut.blehunter.provider.i.b().c(str);
      }
      while (!localBundle.getBoolean("oauth_result", false));
      this.y.cancel();
      h();
      return;
    }
    while ((this.u) || (this.m.K == 7));
    this.m.K = 7;
    g();
  }

  public final void a(s params, int paramInt)
  {
    params = params.getTag();
    int i;
    switch (params.hashCode())
    {
    default:
      i = -1;
      label46: switch (i)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      break;
    case 1323597257:
    case 1596229623:
    case 1640075234:
    }
    label309: 
    do
    {
      do
      {
        do
        {
          return;
          if (!params.equals("dfu_failed"))
            break;
          i = 0;
          break label46;
          if (!params.equals("dfu_success"))
            break;
          i = 1;
          break label46;
          if (!params.equals("dfu_connect_overtime"))
            break;
          i = 2;
          break label46;
          if (paramInt == -1)
          {
            this.s = 0;
            this.o.setProgress(0);
            this.q.setText("0%");
            if (com.nut.blehunter.provider.j.b().a(this.m.p).d.a == 2)
              u();
            while (true)
            {
              u.a("NTDFUEvent", "RETRY_TAPPED");
              return;
              g();
              t();
            }
          }
        }
        while (paramInt != -2);
        if ((this.n != null) && (this.n.exists()))
          this.n.delete();
        w();
        return;
        w();
        return;
        this.m = com.nut.blehunter.provider.i.b().c(this.m.j);
        if (paramInt != -1)
          break label309;
        if (this.m.K == 1)
        {
          h();
          t();
          return;
        }
        if (this.m.K == 0)
        {
          u();
          return;
        }
      }
      while (this.m.K != 7);
      g();
      t();
      return;
    }
    while (paramInt != -2);
    if ((this.n != null) && (this.n.exists()))
      this.n.delete();
    w();
  }

  protected final void f()
  {
    if (this.u)
      return;
    if (this.m.K == 7)
    {
      g();
      t();
      return;
    }
    if (this.m.K != 1)
    {
      u();
      return;
    }
    h();
    t();
  }

  public final void g()
  {
    if (this.n == null)
    {
      v();
      return;
    }
    DfuServiceInitiator localDfuServiceInitiator = new DfuServiceInitiator(o.a(Long.parseLong(this.m.j))).setKeepBond(true);
    if (MimeTypeMap.getFileExtensionFromUrl(this.n.getAbsolutePath()).matches("(?i)HEX|BIN"))
      localDfuServiceInitiator.setBinOrHex(4, null, this.n.getAbsolutePath());
    while (true)
    {
      localDfuServiceInitiator.start(this, DfuService.class);
      return;
      localDfuServiceInitiator.setZip(this.n.getAbsolutePath());
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    this.s = 0;
    this.m = ((Nut)getIntent().getParcelableExtra("nut"));
    this.r = com.nut.blehunter.provider.j.b().a(this.m.p).c;
    if ((this.r == null) || ((!m.a().a(this)) && (TextUtils.isEmpty(this.r.d))))
    {
      finish();
      return;
    }
    if (MimeTypeMap.getFileExtensionFromUrl(this.r.d).matches("(?i)HEX|BIN"))
      paramBundle = "firmware_sys.hex";
    while (true)
    {
      this.n = new File(com.nut.blehunter.d.d.c(this), paramBundle);
      if (this.n.exists())
        this.n.delete();
      try
      {
        com.nut.blehunter.d.a.a("16e92d2456e3d7a5", this.r.d, this.n.getAbsolutePath());
        i();
        paramBundle = (CircleImageView)findViewById(2131558533);
        paramBundle.setImageResource(this.m.d());
        n.a(paramBundle, this.m);
        ((TextView)findViewById(2131558566)).setText(this.m.c);
        this.p = ((TextView)findViewById(2131558567));
        this.q = ((TextView)findViewById(2131558568));
        this.o = ((ProgressBar)findViewById(2131558569));
        this.p.setText(2131099809);
        this.q.setText("0%");
        com.umeng.analytics.b.a(this, "dfu_workflow_entered");
        return;
        paramBundle = "firmware_sys.zip";
      }
      catch (NoSuchPaddingException paramBundle)
      {
        while (true)
        {
          paramBundle.printStackTrace();
          finish();
        }
      }
      catch (NoSuchAlgorithmException paramBundle)
      {
        break label297;
      }
      catch (IOException paramBundle)
      {
        break label297;
      }
      catch (InvalidKeyException paramBundle)
      {
        label297: break label297;
      }
    }
  }

  protected void onDestroy()
  {
    d(2);
    if (this.w != null)
    {
      this.w.cancel();
      this.w = null;
    }
    if (this.y != null)
    {
      this.y.cancel();
      this.y = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    DfuServiceListenerHelper.unregisterProgressListener(this, this.x);
  }

  protected void onResume()
  {
    super.onResume();
    DfuServiceListenerHelper.registerProgressListener(this, this.x);
  }

  protected void onStart()
  {
    super.onStart();
    j();
    d(1);
  }

  protected void onStop()
  {
    k();
    d(0);
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.dfu.DfuActivity
 * JD-Core Version:    0.6.2
 */