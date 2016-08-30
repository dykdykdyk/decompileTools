package com.nut.blehunter.ui;

import android.app.AlarmManager;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.Loader;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.dt;
import android.support.v7.widget.du;
import android.support.v7.widget.fy;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.baidu.android.pushservice.PushManager;
import com.nut.blehunter.d.f;
import com.nut.blehunter.d.g;
import com.nut.blehunter.d.k;
import com.nut.blehunter.d.l;
import com.nut.blehunter.d.n;
import com.nut.blehunter.dfu.DfuActivity;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.o;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.service.NutTrackerService;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import retrofit2.Call;

public class MainActivity extends b
  implements LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, com.nut.blehunter.ui.b.a.d, com.nut.blehunter.ui.b.a.s
{
  private int m = 0;
  private LinearLayout n;
  private ImageView o;
  private bp p;
  private RecyclerView q;
  private IntentFilter r;
  private com.nut.blehunter.i s;
  private ArrayList<Nut> t = new ArrayList();
  private BroadcastReceiver u = new bk(this);

  private void b(String paramString)
  {
    Object localObject = e().a();
    if (localObject == null)
      return;
    localObject = ((android.support.v7.a.a)localObject).c();
    ((TextView)((View)localObject).findViewById(2131558514)).setText(paramString);
    ((TextView)((View)localObject).findViewById(2131558514)).setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }

  private void b(boolean paramBoolean)
  {
    Object localObject = com.nut.blehunter.provider.i.b().h();
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Nut localNut = (Nut)((Iterator)localObject).next();
        if (localNut.K == 1)
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("device_id", localNut.j);
          if ((paramBoolean) && (localNut.a(this)));
          for (boolean bool = true; ; bool = false)
          {
            localBundle.putBoolean("open_disconnect_alert", bool);
            a(22, localBundle);
            break;
          }
        }
      }
    }
  }

  private void g()
  {
    Intent localIntent = new Intent(this, NutTrackerService.class);
    localIntent.setAction("com.nutspace.action.start.service");
    localIntent.putExtra("is_active", true);
    startService(localIntent);
  }

  private void h()
  {
    if (!m.a().c());
    TextView localTextView;
    do
    {
      return;
      localObject = (RelativeLayout)findViewById(2131558604);
      localTextView = (TextView)findViewById(2131558605);
    }
    while ((localObject == null) || (localTextView == null));
    Object localObject = null;
    int i1 = 0;
    int k = 8;
    int j = 0;
    int i = 0;
    long l1;
    long l2;
    if (k.c(this))
    {
      long l3 = k.b(this) / 1000L;
      l1 = 0L;
      l2 = l3;
      if (l3 / 3600L > 0L)
      {
        l1 = l3 / 3600L;
        l2 = l3 - l3 / 3600L * 3600L;
      }
      if (l2 / 60L <= 0L)
        break label569;
    }
    label150: label409: label548: label560: label562: label569: for (l2 /= 60L; ; l2 = 0L)
    {
      if (l2 == 59L)
      {
        l1 = 1L + l1;
        l2 = 0L;
        StringBuilder localStringBuilder = new StringBuilder();
        if (l1 > 9L)
          break label399;
        localObject = "0" + l1;
        label187: localStringBuilder = localStringBuilder.append((String)localObject).append(":");
        if (l2 > 9L)
          break label409;
        localObject = "0" + l2;
        label229: localObject = getString(2131099937, new Object[] { (String)localObject });
        j = 2131427351;
        i = 2131427407;
        i1 = 2130838053;
        k = 0;
        if (k != 0)
          break label548;
        findViewById(2131558604).setVisibility(0);
        findViewById(2131558604).setBackgroundColor(android.support.v4.b.a.b(this, i));
        if (!TextUtils.isEmpty((CharSequence)localObject))
          localTextView.setText((CharSequence)localObject);
        localTextView.setTextColor(android.support.v4.b.a.b(this, j));
        if (i1 == 0)
          break label536;
        localObject = android.support.v4.b.a.a(this, i1);
        ((Drawable)localObject).setBounds(0, 0, ((Drawable)localObject).getMinimumWidth(), ((Drawable)localObject).getMinimumHeight());
        localTextView.setCompoundDrawables((Drawable)localObject, null, null, null);
        label359: if (this.o == null)
          break label560;
        localObject = this.o;
        if (!k.c(this))
          break label562;
      }
      for (i = 2130837980; ; i = 2130837979)
      {
        ((ImageView)localObject).setImageResource(i);
        return;
        l2 += 1L;
        break label150;
        localObject = String.valueOf(l1);
        break label187;
        localObject = String.valueOf(l2);
        break label229;
        if (m.a().e())
        {
          k = 0;
          i1 = 2130838051;
          localObject = getString(2131099936);
          j = 2131427351;
          i = 2131427407;
          break label266;
        }
        if ((g.a(this)) && (m.a().b().g()))
        {
          k = 0;
          i1 = 2130838050;
          localObject = getString(2131099938);
          j = 2131427351;
          i = 2131427407;
          break label266;
        }
        if (!m.a().b().k())
          break label266;
        k = 0;
        i1 = 2130838052;
        localObject = getString(2131099920);
        j = 2131427348;
        i = 2131427406;
        break label266;
        localTextView.setCompoundDrawables(null, null, null, null);
        break label359;
        findViewById(2131558604).setVisibility(8);
        break label359;
        break;
      }
    }
  }

  public final void a(Message paramMessage)
  {
    Object localObject2 = paramMessage.getData();
    Object localObject1 = ((Bundle)localObject2).getString("device_id", null);
    if (isFinishing());
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        return;
      case 12:
      }
      int j = ((Bundle)localObject2).getInt("rssi", -1);
      int k;
      int i;
      if (!this.t.isEmpty())
      {
        k = this.t.size();
        i = 0;
        if (i < k)
        {
          paramMessage = (Nut)this.t.get(i);
          if ((!paramMessage.j.equals(localObject1)) || (paramMessage.K != 1))
            break label271;
          paramMessage.M = l.a(j);
          this.p.b(i);
        }
      }
      if ((!this.t.isEmpty()) && (k.b(this, "is_show_dfu", true)))
      {
        paramMessage = new SparseArray();
        localObject1 = this.t.iterator();
        while (true)
        {
          if (!((Iterator)localObject1).hasNext())
            break label314;
          localObject2 = (Nut)((Iterator)localObject1).next();
          if ((((Nut)localObject2).g()) && (com.nut.blehunter.provider.j.b().a((Nut)localObject2)) && (((Nut)localObject2).K == 1))
          {
            if (paramMessage.indexOfKey(((Nut)localObject2).p) >= 0)
            {
              ((StringBuilder)paramMessage.get(((Nut)localObject2).p)).append("、\"").append(((Nut)localObject2).c).append("\"");
              continue;
              label271: i += 1;
              break;
            }
            paramMessage.put(((Nut)localObject2).p, new StringBuilder("\"").append(((Nut)localObject2).c).append("\""));
          }
        }
        label314: if (paramMessage.size() > 0)
        {
          k.a(this, "is_show_dfu", false);
          j = paramMessage.size();
          i = 0;
          while (i < j)
          {
            k = paramMessage.keyAt(i);
            localObject1 = com.nut.blehunter.provider.j.b().a(k);
            if (((com.nut.blehunter.entity.r)localObject1).c != null)
            {
              localObject1 = ((com.nut.blehunter.entity.r)localObject1).c;
              localObject2 = ((StringBuilder)paramMessage.get(k)).toString();
              new com.nut.blehunter.ui.b.a.b(this).a(2131099866).b(getString(2131099827, new Object[] { localObject2, ((h)localObject1).c })).b(false).a(true).a(2131099790, null).a().a(this, "baseDialog");
            }
            i += 1;
          }
        }
      }
    }
  }

  public final void a(android.support.v4.app.s params, int paramInt)
  {
    Nut localNut = (Nut)this.t.get(this.m);
    if (localNut == null);
    com.nut.blehunter.entity.r localr;
    do
    {
      return;
      localr = com.nut.blehunter.provider.j.b().a(localNut.p);
    }
    while ((localr == null) || (localr.c == null));
    params = params.getTag();
    paramInt = -1;
    switch (params.hashCode())
    {
    default:
    case 99379:
    case 156934100:
    }
    while (true)
      switch (paramInt)
      {
      default:
        return;
      case 0:
        params = new Intent(this, DfuActivity.class);
        params.putExtra("nut", localNut);
        startActivity(params);
        return;
        if (params.equals("dfu"))
        {
          paramInt = 0;
          continue;
          if (params.equals("download_failed"))
            paramInt = 1;
        }
        break;
      case 1:
      }
    com.nut.blehunter.dfu.e.a(this, localr.a, localr.c, this);
  }

  public final void d(int paramInt)
  {
    switch (paramInt)
    {
    default:
      paramInt = 0;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      b(false);
      long l = paramInt;
      AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
      Object localObject = new Intent(this, NutTrackerService.class);
      ((Intent)localObject).setAction("com.nutspace.action.temp_not_disturb");
      localObject = PendingIntent.getService(this, 1000, (Intent)localObject, 268435456);
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(System.currentTimeMillis() + l);
      b.a.a.b("set not disturb time is %s", new Object[] { Long.valueOf(l) });
      localAlarmManager.set(0, localCalendar.getTimeInMillis(), (PendingIntent)localObject);
      k.a(this, paramInt);
      h();
      n.a(this, 0, getString(2131099940));
      com.nut.blehunter.u.a("NTStatsAppLifeCycle", "TEMPORARY_SILENT", "NTAccountEvent", String.valueOf(paramInt));
      return;
      com.umeng.analytics.b.a(this, "interim_silent_30min");
      paramInt = 1800000;
      continue;
      com.umeng.analytics.b.a(this, "interim_silent_60min");
      paramInt = 3600000;
      continue;
      com.umeng.analytics.b.a(this, "interim_silent_120min");
      paramInt = 7200000;
      continue;
      com.umeng.analytics.b.a(this, "interim_silent_240min");
      paramInt = 14400000;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 102)
      if (this.p != null)
        this.p.a.b();
    do
    {
      return;
      if (paramInt1 == 100)
      {
        if (m.a().c())
        {
          g();
          getLoaderManager().restartLoader(1, null, this);
          com.nut.blehunter.d.b.a(this);
          return;
        }
        finish();
        return;
      }
    }
    while (paramInt1 != 101);
    o.a().a(null);
  }

  public void onBackPressed()
  {
    android.support.v4.b.j.a(this).a(new Intent("com.nutspace.action.app.background"));
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    switch (paramView.getId())
    {
    default:
    case 2131558809:
    case 2131558806:
    case 2131558807:
    case 2131558913:
    case 2131558604:
    }
    do
    {
      do
      {
        return;
        paramView = new Intent(this, JumpWebViewActivity.class);
        paramView.putExtra("URL", com.nut.blehunter.a.r);
        startActivity(paramView);
        com.umeng.analytics.b.a(this, "mainpage_bind_help");
        return;
      }
      while (!n());
      localIntent.setClass(this, ScanDeviceActivity.class);
      startActivity(localIntent);
      return;
      localIntent.setClass(this, JumpWebViewActivity.class);
      Object localObject = com.nut.blehunter.a.p;
      User localUser = m.a().b();
      paramView = (View)localObject;
      if (localUser != null)
      {
        paramView = (View)localObject;
        if (!TextUtils.isEmpty(localUser.i))
          paramView = (String)localObject + "?accessToken=" + localUser.i;
      }
      localIntent.putExtra("URL", paramView);
      startActivity(localIntent);
      com.umeng.analytics.b.a(this, "mainpage_official_store");
      return;
      if (k.c(this))
      {
        b(true);
        paramView = (AlarmManager)getSystemService("alarm");
        localObject = new Intent(this, NutTrackerService.class);
        ((Intent)localObject).setAction("com.nutspace.action.temp_not_disturb");
        localObject = PendingIntent.getService(this, 1000, (Intent)localObject, 536870912);
        if (localObject != null)
          paramView.cancel((PendingIntent)localObject);
        k.a(this, 0L);
        n.a(this, 0, getString(2131099939));
        com.umeng.analytics.b.a(this, "interim_silent_off");
      }
      while (true)
      {
        h();
        return;
        com.nut.blehunter.ui.b.a.r.a().show(getFragmentManager(), "not_disturb_time_pick");
      }
      paramView = (TextView)findViewById(2131558605);
    }
    while ((paramView == null) || (!paramView.getText().toString().equals(getString(2131099920))));
    paramView = new Intent();
    paramView.setClass(this, BindEmailActivity.class);
    paramView.putExtra("bind_type", 102);
    startActivity(paramView);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ("com.nutspace.action.back.launcher".equals(getIntent().getAction()))
      finish();
    label288: label600: label756: label764: 
    while (true)
    {
      return;
      android.support.v4.b.j.a(this).a(new Intent("com.nutspace.action.app.foreground"));
      this.s = new com.nut.blehunter.i(this, MainActivity.class.getSimpleName());
      i();
      setContentView(2130903086);
      this.r = new IntentFilter();
      this.r.addAction("android.intent.action.TIME_TICK");
      int i;
      if (m.a().c())
      {
        g();
        paramBundle = (AlarmManager)getSystemService("alarm");
        localObject1 = new Intent(this, NutTrackerService.class);
        ((Intent)localObject1).setAction("com.nutspace.action.sync.server");
        localObject1 = PendingIntent.getService(this, 0, (Intent)localObject1, 536870912);
        if (localObject1 != null)
        {
          b.a.a.b("old sync alarm is exist", new Object[0]);
          paramBundle.cancel((PendingIntent)localObject1);
        }
        paramBundle = new Intent(this, NutTrackerService.class);
        paramBundle.setAction("com.nutspace.action.sync.server");
        if (PendingIntent.getService(this, 1000, paramBundle, 134217728) != null)
        {
          i = 1;
          if (i != 0)
            break label255;
          com.nut.blehunter.d.b.a(this);
        }
      }
      while (true)
      {
        paramBundle = l();
        localObject1 = getLayoutInflater().inflate(2130903065, null);
        localObject2 = e().a();
        if (localObject2 != null)
          break label288;
        throw new RuntimeException("actionbar not found, have you called setSupportActionBar method");
        i = 0;
        break;
        label255: b.a.a.b("sync alarm is exist", new Object[0]);
        continue;
        startActivityForResult(new Intent(this, LoginActivity.class), 100);
      }
      ((android.support.v7.a.a)localObject2).a((View)localObject1, new android.support.v7.a.b((byte)0));
      paramBundle.setNavigationIcon(2130837975);
      paramBundle.setNavigationOnClickListener(new bl(this));
      Object localObject1 = getLayoutInflater().inflate(2130903201, null);
      this.o = ((ImageView)((View)localObject1).findViewById(2131558913));
      this.o.setOnClickListener(this);
      Object localObject2 = new fy();
      ((fy)localObject2).a = 5;
      paramBundle.addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      h();
      this.n = ((LinearLayout)findViewById(2131558606));
      findViewById(2131558809).setOnClickListener(this);
      findViewById(2131558806).setOnClickListener(this);
      findViewById(2131558807).setOnClickListener(this);
      findViewById(2131558604).setOnClickListener(this);
      this.q = ((RecyclerView)findViewById(2131558607));
      this.p = new bp(this);
      this.p.a();
      paramBundle = new LinearLayoutManager(this);
      paramBundle.a(1);
      this.q.setLayoutManager(paramBundle);
      this.q.a(new com.nut.blehunter.ui.widget.b(getResources().getDrawable(2130837732), true));
      this.q.setItemAnimator(null);
      this.q.setHasFixedSize(true);
      this.q.setAdapter(this.p);
      this.q.a(new com.nut.blehunter.ui.widget.e(this, new bm(this)));
      getLoaderManager().initLoader(1, null, this);
      n();
      if ((f.a(this)) || (f.b(this)))
      {
        i = 1;
        if (i != 0)
          break label756;
        if (!isFinishing())
        {
          paramBundle = new com.nut.blehunter.ui.b.a.b(this);
          paramBundle.a(2131099730);
          paramBundle.a(false);
          paramBundle.b(false);
          paramBundle.b(2131100023);
          paramBundle.a(2131099783, new bn(this));
          paramBundle.b(2131099781, new bo(this));
          paramBundle.a().a(this, "baseDialog");
        }
      }
      while (true)
      {
        if (!g.c(this))
          break label764;
        i = k.d(this).getInt("update_new_version_time", 0);
        if (Math.abs(Calendar.getInstance().get(6) - i) < 5)
          break;
        com.nut.blehunter.rxApi.a.a().version().enqueue(new e(this));
        return;
        i = 0;
        break label600;
        o.a().a(null);
      }
    }
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    paramBundle = m.a().b();
    if (paramBundle == null);
    for (paramBundle = ""; ; paramBundle = paramBundle.a)
      return new CursorLoader(this, com.nut.blehunter.provider.d.a, com.nut.blehunter.provider.i.b, "sync_server_state != ? AND user_id = ?", new String[] { "1", paramBundle }, "create_time DESC");
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    paramIntent = paramIntent.getAction();
    if ("com.nutspace.action.logout".equals(paramIntent))
    {
      getLoaderManager().restartLoader(1, null, this);
      startActivityForResult(new Intent(this, LoginActivity.class), 100);
    }
    while (!"com.nutspace.action.back.launcher".equals(paramIntent))
      return;
    onBackPressed();
  }

  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(this.u);
  }

  protected void onResume()
  {
    super.onResume();
    registerReceiver(this.u, this.r);
    h();
    Toolbar localToolbar;
    if (!m.a().c())
    {
      if (PushManager.isPushEnabled(this))
        PushManager.stopWork(this);
      User localUser = m.a().b();
      if (localUser != null)
      {
        localToolbar = l();
        if (localUser.q <= 0)
          break label92;
      }
    }
    label92: for (int i = 2130838108; ; i = 2130837975)
    {
      localToolbar.setNavigationIcon(i);
      return;
      PushManager.startWork(getApplicationContext(), 0, getString(2131100170));
      break;
    }
  }

  protected void onStart()
  {
    super.onStart();
    j();
    this.s.a();
  }

  protected void onStop()
  {
    k();
    this.s.b();
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.MainActivity
 * JD-Core Version:    0.6.2
 */