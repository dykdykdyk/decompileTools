package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.nut.blehunter.d.n;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.ui.b.a.aa;
import java.util.ArrayList;
import java.util.Iterator;

public class ScanDeviceActivity extends b
  implements View.OnClickListener
{
  private com.nut.blehunter.i A;
  private Menu B;
  private int C;
  CountDownTimer m = new dr(this);
  private ValueAnimator n;
  private AnimationDrawable o;
  private long p = 0L;
  private int q = 0;
  private Handler r;
  private boolean s = false;
  private RecyclerView t;
  private ea u;
  private int v = 1;
  private com.nut.blehunter.entity.u w;
  private Runnable x;
  private Runnable y;
  private Runnable z;

  public static Bitmap a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    ColorMatrix localColorMatrix = new ColorMatrix();
    localColorMatrix.setSaturation(0.0F);
    localPaint.setColorFilter(new ColorMatrixColorFilter(localColorMatrix));
    localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, localPaint);
    return localBitmap;
  }

  private void a(com.nut.blehunter.entity.u paramu)
  {
    if (paramu == null)
      return;
    this.w = paramu;
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("device", paramu.e);
    localBundle.putInt("device_name", paramu.c);
    a(24, localBundle);
  }

  private void a(String paramString, int paramInt)
  {
    Intent localIntent = new Intent(this, BindDeviceActivity.class);
    localIntent.putExtra("deviceId", paramString);
    localIntent.putExtra("productId", paramInt);
    startActivityForResult(localIntent, 1);
  }

  private void b(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("close_manually_scan", false);
    if (paramBoolean)
      localBundle.putBoolean("shutdown", true);
    a(23, localBundle);
  }

  private void c(boolean paramBoolean)
  {
    if (this.n == null)
      return;
    if (paramBoolean)
    {
      this.n.start();
      return;
    }
    this.n.cancel();
  }

  private void d(int paramInt)
  {
    int j = 0;
    this.v = paramInt;
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968594);
    View localView1 = findViewById(2131558686);
    View localView2 = findViewById(2131558692);
    View localView3 = findViewById(2131558693);
    View localView4 = findViewById(2131558699);
    View localView5 = findViewById(2131558700);
    boolean bool;
    switch (paramInt)
    {
    default:
      if (paramInt == 1)
      {
        bool = true;
        label104: if (this.B != null)
          this.B.findItem(2131558920).setVisible(bool);
        if (paramInt != 1)
          break label430;
        i = 0;
        label138: localView1.setVisibility(i);
        if (paramInt != 2)
          break label436;
        i = 0;
        label151: localView2.setVisibility(i);
        if (paramInt != 3)
          break label442;
        i = 0;
        label164: localView3.setVisibility(i);
        if (paramInt != 4)
          break label448;
        i = 0;
        label177: localView4.setVisibility(i);
        if (paramInt != 5)
          break label454;
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    label430: label436: label442: label448: label454: for (int i = j; ; i = 8)
    {
      localView5.setVisibility(i);
      localAnimation.setAnimationListener(new dv(this, paramInt));
      return;
      b(2131100087);
      l().setNavigationIcon(2130837974);
      localView1.setVisibility(0);
      localView1.startAnimation(localAnimation);
      break;
      b(2131100087);
      l().setNavigationIcon(2130838061);
      localView2.setVisibility(0);
      localView2.startAnimation(localAnimation);
      break;
      b(2131100087);
      l().setNavigationIcon(2130838061);
      ((TextView)findViewById(2131558694)).setText(2131099777);
      ((TextView)findViewById(2131558695)).setText(getString(2131099776, new Object[] { Integer.valueOf(60) }));
      localView3.setVisibility(0);
      localView3.startAnimation(localAnimation);
      break;
      b(2131100095);
      l().setNavigationIcon(2130837974);
      localView4.setVisibility(0);
      localView4.startAnimation(localAnimation);
      break;
      b(2131100088);
      l().setNavigationIcon(2130838061);
      localView5.setVisibility(0);
      localView5.startAnimation(localAnimation);
      break;
      bool = false;
      break label104;
      i = 8;
      break label138;
      i = 8;
      break label151;
      i = 8;
      break label164;
      i = 8;
      break label177;
    }
  }

  private void g()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("scan_period", 120000);
    localBundle.putInt("bind_type", 1);
    a(4, localBundle);
  }

  private void h()
  {
    if (this.s)
      return;
    t();
    b.a.a.a("scan timeout start", new Object[0]);
    this.r.postDelayed(this.x, 120000L);
  }

  private void t()
  {
    if (this.r != null)
    {
      b.a.a.a("remove scan timeout", new Object[0]);
      this.r.removeCallbacks(this.x);
    }
  }

  private void u()
  {
    if (this.r != null)
    {
      b.a.a.a("remove connect timeout", new Object[0]);
      this.r.removeCallbacks(this.y);
    }
  }

  private void v()
  {
    c(false);
    if (this.n != null)
      this.n.removeAllUpdateListeners();
    w();
  }

  private void w()
  {
    if ((this.o != null) && ((this.o.isRunning()) || (this.o.isVisible())))
      this.o.stop();
  }

  public final void a(Message paramMessage)
  {
    int k = 0;
    b.a.a.a("client receive message %s", new Object[] { Integer.valueOf(paramMessage.what) });
    Object localObject2 = paramMessage.getData();
    Object localObject1 = ((Bundle)localObject2).getString("device_id", null);
    if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (com.nut.blehunter.provider.i.b().a((String)localObject1)));
    label470: 
    do
    {
      int j;
      do
      {
        do
        {
          return;
          switch (paramMessage.what)
          {
          default:
            return;
          case 5:
          case 16:
          case 8:
          case 19:
          case 9:
          case 26:
          }
        }
        while (!((Bundle)localObject2).getBoolean("scan_timeout"));
        if ((this.v == 1) && (this.u.b() > 0))
        {
          g();
          return;
        }
        com.nut.blehunter.u.a("NTUIEventPair", "SCAN_TIMEOUT");
        com.umeng.analytics.b.a(this, "bind_search_timeout");
        return;
        i = ((Bundle)localObject2).getInt("rssi");
        j = ((Bundle)localObject2).getInt("device_name");
        localObject1 = (BluetoothDevice)((Bundle)localObject2).getParcelable("device");
      }
      while (localObject1 == null);
      if ((this.u.b() == 0) && (i >= -65))
      {
        paramMessage = AnimationUtils.loadAnimation(this, 2130968593);
        findViewById(2131558690).setVisibility(0);
        findViewById(2131558690).startAnimation(paramMessage);
        paramMessage.setAnimationListener(new dw(this));
      }
      paramMessage = this.u;
      localObject1 = new com.nut.blehunter.entity.u((BluetoothDevice)localObject1, j, i);
      localObject2 = paramMessage.c.iterator();
      while (true)
        if (((Iterator)localObject2).hasNext())
        {
          com.nut.blehunter.entity.u localu = (com.nut.blehunter.entity.u)((Iterator)localObject2).next();
          if (((com.nut.blehunter.entity.u)localObject1).equals(localu))
          {
            i = paramMessage.c.indexOf(localu);
            if (i < 0)
              break label470;
            localObject2 = paramMessage.c.iterator();
            do
            {
              j = k;
              if (!((Iterator)localObject2).hasNext())
                break;
              localu = (com.nut.blehunter.entity.u)((Iterator)localObject2).next();
            }
            while (!localu.equals(localObject1));
            long l = localu.d;
            localu.b = ((com.nut.blehunter.entity.u)localObject1).b;
            localu.c = ((com.nut.blehunter.entity.u)localObject1).c;
            localu.d = ((com.nut.blehunter.entity.u)localObject1).d;
            j = k;
            if (localu.d - l > 1000L)
              j = 1;
            if (j != 0)
              paramMessage.b(i);
          }
        }
      while (true)
      {
        paramMessage.c();
        do
        {
          this.s = true;
          t();
          return;
          i = -1;
          break;
        }
        while (((com.nut.blehunter.entity.u)localObject1).b < -65);
        paramMessage.c.add(localObject1);
        i = paramMessage.c.size();
        paramMessage.a.b(i);
        com.nut.blehunter.u.a("NTBindEvent", "DEVICE_SCANNED", "PID", ((com.nut.blehunter.entity.u)localObject1).c);
        com.nut.blehunter.u.a("NTBindEvent", "DEVICE_SCANNED", "DEVICE_ID", o.a(((com.nut.blehunter.entity.u)localObject1).e.getAddress()));
      }
      t();
      return;
      if ((this.v == 2) && (this.w != null))
      {
        a(this.w);
        return;
      }
      if (this.v == 6)
      {
        aa.b(this);
        d(1);
        return;
      }
    }
    while (this.v != 3);
    n.a(this, 0, getString(2131099753));
    d(1);
    return;
    System.currentTimeMillis();
    boolean bool1 = ((Bundle)localObject2).getBoolean("oauth_result", false);
    boolean bool2 = ((Bundle)localObject2).getBoolean("new_oauth", true);
    this.C = ((Bundle)localObject2).getInt("device_name");
    int i = this.C;
    paramMessage = j.b().a(i);
    if (paramMessage != null);
    for (i = paramMessage.e; ; i = 0)
    {
      u();
      if (bool1)
      {
        if (this.v != 2)
          break;
        switch (i)
        {
        default:
          return;
        case 0:
          a((String)localObject1, this.C);
          return;
        case 1:
        }
        if (bool2)
        {
          d(3);
          return;
        }
        a((String)localObject1, this.C);
        return;
      }
      if (this.v != 1)
      {
        this.w = null;
        n.a(this, 2131099749);
        d(1);
      }
      com.nut.blehunter.u.a("NTBindEvent", "CONNECTION_FAILED", "TYPE", "2");
      com.umeng.analytics.b.a(this, "bind_connect_password_error");
      return;
      a((String)localObject1, this.C);
      return;
    }
  }

  protected final void f()
  {
    g();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    do
    {
      return;
      if (paramInt2 == -1)
        setResult(-1);
      finish();
      return;
    }
    while (paramInt2 != 0);
    v();
    r();
    finish();
  }

  public void onBackPressed()
  {
    switch (this.v)
    {
    default:
      return;
    case 1:
    case 4:
      v();
      a(23, null);
      r();
      super.onBackPressed();
      return;
    case 2:
      u();
      b(false);
      d(1);
      return;
    case 3:
      aa.a(this, getString(2131099757), true);
      b(true);
      this.v = 6;
      return;
    case 5:
      d(1);
      return;
    case 6:
    }
    aa.b(this);
    d(1);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558689:
      paramView = new Intent(this, JumpWebViewActivity.class);
      paramView.putExtra("URL", com.nut.blehunter.a.r);
      startActivity(paramView);
      com.umeng.analytics.b.a(this, "bind_search_no_tracker_help");
      return;
    case 2131558797:
      d(1);
      return;
    case 2131558796:
      a(this.w);
      d(2);
      return;
    case 2131558698:
    }
    paramView = new com.nut.blehunter.ui.b.a.b(this);
    paramView.a(2131099769);
    paramView.b(2131099758);
    paramView.a(2131099750, new dz(this));
    paramView.b(2131099781, null);
    paramView.a().a(this, "baseDialog");
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    this.A = new com.nut.blehunter.i(this, ScanDeviceActivity.class.getSimpleName());
    setContentView(2130903099);
    b(2131100087);
    this.r = new Handler();
    this.x = new dq(this);
    this.y = new ds(this);
    this.z = new dt(this);
    paramBundle = findViewById(2131558670);
    this.n = ValueAnimator.ofFloat(new float[] { -10.0F, 10.0F });
    this.n.setDuration(15000L);
    this.n.setRepeatCount(-1);
    this.n.addUpdateListener(new du(this, paramBundle));
    this.t = ((RecyclerView)findViewById(2131558691));
    this.u = new ea(this);
    this.u.a();
    paramBundle = new LinearLayoutManager(this);
    paramBundle.a(1);
    this.t.setLayoutManager(paramBundle);
    this.t.setItemAnimator(null);
    this.t.setAdapter(this.u);
    findViewById(2131558689).setOnClickListener(this);
    findViewById(2131558797).setOnClickListener(this);
    findViewById(2131558796).setOnClickListener(this);
    findViewById(2131558698).setOnClickListener(this);
    c(true);
    h();
    com.nut.blehunter.u.a("NTBindEvent", "ENTRY_TAPPED");
    com.umeng.analytics.b.a(this, "bind_button_tapped_and_scan_view_appearred");
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.B = paramMenu;
    getMenuInflater().inflate(2131623943, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.m != null)
    {
      this.m.cancel();
      this.m = null;
    }
    if (this.r != null)
    {
      this.r.removeCallbacks(this.x);
      this.r.removeCallbacks(this.y);
      this.r.removeCallbacks(this.z);
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558920)
    {
      Intent localIntent = new Intent(this, JumpWebViewActivity.class);
      localIntent.putExtra("URL", com.nut.blehunter.a.r);
      startActivity(localIntent);
      com.umeng.analytics.b.a(this, "bind_search_help");
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }

  protected void onStart()
  {
    super.onStart();
    j();
    this.A.a();
  }

  protected void onStop()
  {
    k();
    this.A.b();
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ScanDeviceActivity
 * JD-Core Version:    0.6.2
 */