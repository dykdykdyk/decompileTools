package com.nut.blehunter.ui;

import android.animation.ValueAnimator;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.gson.JsonSyntaxException;
import com.nut.blehunter.d.l;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.FindLocation;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.WechatIdentifier;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.n;
import com.nut.blehunter.provider.c;
import com.nut.blehunter.provider.h;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.rxApi.model.DeleteSharedRequestBody;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.ui.b.a.g;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.widget.CircleImageView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.squareup.picasso.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import retrofit2.Call;

public class NutDetailActivity extends b
  implements LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, com.nut.blehunter.ui.b.a.d
{
  private Menu A;
  private boolean B = false;
  private boolean C = false;
  private String D;
  private Target E = new cm(this);
  private Nut m;
  private CircleImageView n;
  private TextView o;
  private ImageButton p;
  private TextView q;
  private ImageView r;
  private Animation s;
  private boolean t = false;
  private CountDownTimer u;
  private ImageView v;
  private ValueAnimator w;
  private LinearLayout x;
  private TextView y;
  private com.nut.blehunter.entity.e z;

  private static void a(com.nut.blehunter.entity.e parame, CircleImageView paramCircleImageView)
  {
    try
    {
      int i = Color.parseColor("#" + parame.c);
      paramCircleImageView.setBorderWidth(2);
      paramCircleImageView.setBorderColor(i);
      return;
    }
    catch (IllegalArgumentException parame)
    {
      parame.printStackTrace();
    }
  }

  private ImageView d(int paramInt)
  {
    CircleImageView localCircleImageView = (CircleImageView)getLayoutInflater().inflate(paramInt, this.x, false);
    localCircleImageView.setOnClickListener(new ct(this, paramInt));
    if ((this.z != null) && (this.B))
      a(this.z, localCircleImageView);
    return localCircleImageView;
  }

  private void g()
  {
    int i;
    if ((this.A != null) && (this.z != null))
    {
      if (!this.m.E)
        break label81;
      i = 2131558922;
    }
    while (true)
    {
      com.nut.blehunter.entity.e locale = this.z;
      MenuItem localMenuItem = this.A.findItem(i);
      try
      {
        i = Color.parseColor("#" + locale.c);
        localMenuItem.getIcon().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        return;
        label81: i = 2131558918;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
      }
    }
  }

  private String h()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Mac Address:").append(o.a(Long.parseLong(this.m.j))).append("\r\nDeviceId:").append(this.m.j).append("\r\nDevice Info:").append(this.m.w).append("-").append(this.m.v).append("-").append(this.m.x).append("\r\nProductId:").append(this.m.p).append("\r\n");
    if (this.m.q != null)
      localStringBuilder.append("UUID:").append(this.m.q.a).append("\r\nMajor:").append(this.m.q.b).append("\r\nMinor:").append(this.m.q.c).append("\r\n");
    if (this.m.C > 0)
      localStringBuilder.append("battery:").append(this.m.C).append("\r\n");
    int i = 15;
    r localr = j.b().a(this.m.p);
    if (localr != null)
      i = localr.j;
    localStringBuilder.append("AD:").append(i).append("\r\n");
    return localStringBuilder.toString();
  }

  private void t()
  {
    Intent localIntent = new Intent(this, MapLocationActivity.class);
    localIntent.putExtra("nut", this.m);
    startActivity(localIntent);
    overridePendingTransition(2130968591, 0);
  }

  private void u()
  {
    a(this.m.c);
    n.a(this.n, this.m);
  }

  private void v()
  {
    Object localObject = new ArrayList();
    if (this.m.y == 1)
    {
      ((List)localObject).add(d(2130903148));
      if (!this.m.E)
        break label221;
      if ((this.m.A != null) && (!this.m.A.isEmpty()))
        ((List)localObject).add(d(2130903149));
    }
    if ((this.m.g()) && (j.b().a(this.m)))
      ((List)localObject).add(d(2130903151));
    switch (this.m.K)
    {
    case 3:
    case 4:
    case 5:
    default:
    case 1:
    case 2:
    case 6:
    case 0:
    }
    while (true)
    {
      this.x.removeAllViews();
      if (((List)localObject).isEmpty())
        return;
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        ImageView localImageView = (ImageView)((Iterator)localObject).next();
        this.x.addView(localImageView);
      }
      label221: ((List)localObject).add(d(2130903150));
      break;
      runOnUiThread(new cq(this));
      this.o.setText(2131099929);
      this.w.cancel();
      this.v.setVisibility(8);
      this.w.cancel();
      this.p.setVisibility(0);
      this.q.setText(2131099918);
      if (this.t)
      {
        this.r.setVisibility(0);
        this.r.startAnimation(this.s);
        this.q.setText(2131099919);
        continue;
        ((List)localObject).add(d(2130903146));
        runOnUiThread(new cr(this));
        this.o.setText(2131099926);
        this.v.setVisibility(0);
        this.p.setVisibility(4);
        this.r.setVisibility(8);
        this.s.cancel();
        this.q.setText(2131100011);
        this.v.postDelayed(new cs(this), 500L);
      }
    }
  }

  private void w()
  {
    if (!this.t);
    for (boolean bool = true; ; bool = false)
    {
      this.t = bool;
      bool = this.t;
      Bundle localBundle = new Bundle();
      localBundle.putString("device_id", this.m.j);
      localBundle.putBoolean("call", bool);
      a(14, localBundle);
      if (!this.t)
        break;
      if (this.u == null)
        this.u = new cu(this, j.b().b(this.m.p) * 1000);
      this.u.start();
      this.r.setVisibility(0);
      this.r.startAnimation(this.s);
      this.q.setText(2131099919);
      return;
    }
    if (this.u != null)
      this.u.cancel();
    this.s.cancel();
    this.r.clearAnimation();
    this.r.setVisibility(4);
    this.q.setText(2131099918);
  }

  private void x()
  {
    Intent localIntent = new Intent(this, NutSettingActivity.class);
    localIntent.putExtra("nut", this.m);
    startActivity(localIntent);
  }

  public final void a(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    String str = localBundle.getString("device_id", null);
    if ((isFinishing()) || (!this.m.j.equals(str)))
      return;
    switch (paramMessage.what)
    {
    default:
      return;
    case 12:
    }
    int i = localBundle.getInt("rssi", -1);
    int j = l.a(i);
    if (j > 2)
      this.o.setText(2131099929);
    while (true)
    {
      this.n.setHighlightBorderSweepAngle(j * 60.0F);
      if (!m.a().a(this))
        break;
      if (TextUtils.isEmpty(this.D))
        this.D = h();
      this.y.setText(this.D + "rssi:" + i);
      return;
      if (j > 0)
        this.o.setText(2131099927);
    }
  }

  public final void a(s params, int paramInt)
  {
    params = params.getTag();
    paramInt = -1;
    switch (params.hashCode())
    {
    default:
      switch (paramInt)
      {
      default:
      case 0:
      }
      break;
    case -2022892102:
    }
    do
    {
      return;
      if (!params.equals("sub_delete_shared"))
        break;
      paramInt = 0;
      break;
      params = this.m;
    }
    while (params == null);
    k.a(this);
    com.nut.blehunter.rxApi.a.b().deleteShared(new DeleteSharedRequestBody(params.f, "")).enqueue(new cv(this, params));
  }

  public void onBackPressed()
  {
    if (this.t)
      w();
    this.w.cancel();
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558533:
      do
        return;
      while (!this.m.E);
      x();
      return;
    case 2131558669:
      w();
      return;
    case 2131558675:
    }
    t();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    i();
    this.m = ((Nut)getIntent().getParcelableExtra("nut"));
    if (paramBundle != null)
      this.t = paramBundle.getBoolean("ring", false);
    this.n = ((CircleImageView)findViewById(2131558533));
    this.n.setOnClickListener(this);
    this.o = ((TextView)findViewById(2131558667));
    this.p = ((ImageButton)findViewById(2131558669));
    this.q = ((TextView)findViewById(2131558671));
    this.r = ((ImageView)findViewById(2131558668));
    this.p.setOnClickListener(this);
    this.v = ((ImageView)findViewById(2131558670));
    this.v.getDrawable().clearColorFilter();
    this.r.getDrawable().clearColorFilter();
    this.x = ((LinearLayout)findViewById(2131558673));
    this.y = ((TextView)findViewById(2131558674));
    paramBundle = "";
    if ((this.m != null) && (this.m.K == 6))
      paramBundle = h.b().b(this.m.k).c;
    while (true)
    {
      if (!TextUtils.isEmpty(paramBundle))
        ((TextView)findViewById(2131558672)).setText(paramBundle);
      findViewById(2131558675).setOnClickListener(this);
      this.s = AnimationUtils.loadAnimation(this, 2130968588);
      this.s.setAnimationListener(new co(this));
      this.w = ValueAnimator.ofFloat(new float[] { 0.0F, 226.19467F });
      this.w.setRepeatMode(1);
      this.w.setRepeatCount(-1);
      this.w.setInterpolator(new LinearInterpolator());
      this.w.setDuration(24000L);
      this.w.addUpdateListener(new cp(this));
      u();
      v();
      paramBundle = j.b().a(this.m.p);
      if ((paramBundle != null) && (paramBundle.b != null) && (!TextUtils.isEmpty(paramBundle.b.f)));
      try
      {
        this.z = ((com.nut.blehunter.entity.e)com.nut.blehunter.e.a(paramBundle.b.f, com.nut.blehunter.entity.e.class));
        if (this.z != null)
        {
          if (!TextUtils.isEmpty(this.z.a))
          {
            b.a.a.b("background image url is %s", new Object[] { this.z.a });
            Picasso.with(this).load(this.z.a).into(this.E);
          }
        }
        else
        {
          getLoaderManager().initLoader(1, null, this);
          if ((this.m.K == 0) || (this.m.K == 2) || (this.m.K == 6))
            t();
          if (!m.a().a(this))
            break label638;
          this.D = h();
          this.y.setText(this.D);
          return;
          com.nut.blehunter.b.a locala = com.nut.blehunter.b.d.a(this, this.m.j);
          if (locala != null)
          {
            paramBundle = locala.b();
            b.a.a.b("getNutLocation:" + locala, new Object[0]);
          }
        }
      }
      catch (JsonSyntaxException paramBundle)
      {
        while (true)
        {
          paramBundle.printStackTrace();
          continue;
          this.B = false;
        }
        label638: this.D = null;
        this.y.setText("");
      }
    }
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1)
      return new CursorLoader(this, com.nut.blehunter.provider.d.a, i.b, "tag_id = ? ", new String[] { this.m.k }, null);
    if (this.m == null);
    for (paramBundle = ""; ; paramBundle = this.m.k)
      return new CursorLoader(this, c.a, h.b, "tag_id = ?", new String[] { paramBundle }, "find_time DESC");
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.A = paramMenu;
    if (this.m.E);
    for (int i = 2131623945; ; i = 2131623940)
    {
      getMenuInflater().inflate(i, paramMenu);
      if (!this.B)
        break;
      g();
      return true;
    }
    if (this.m.E);
    for (i = 2131558922; ; i = 2131558918)
    {
      paramMenu.findItem(i).getIcon().clearColorFilter();
      break;
    }
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131558922:
    case 2131558918:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      x();
      continue;
      String str = getString(2131099820, new Object[] { this.m.c });
      getString(2131099865);
      com.nut.blehunter.ui.b.a.b localb = new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).a(2131099783, this).b(2131099781, null);
      g.a(this.m, str, localb).a(this, "sub_delete_shared");
      com.umeng.analytics.b.a(this, "item_accepted_deleted");
    }
  }

  protected void onPause()
  {
    k();
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    j();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("ring", this.t);
    super.onSaveInstanceState(paramBundle);
  }

  protected void onStart()
  {
    super.onStart();
    if (this.C)
    {
      if (this.z != null)
        runOnUiThread(new cn(this));
      this.C = false;
    }
  }

  protected void onStop()
  {
    this.C = true;
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.NutDetailActivity
 * JD-Core Version:    0.6.2
 */