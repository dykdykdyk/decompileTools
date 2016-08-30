package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import com.nut.blehunter.a;
import com.nut.blehunter.d.k;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.entity.x;
import com.nut.blehunter.n;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.qrcode.CaptureActivity;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.f;
import com.nut.blehunter.ui.widget.CircleImageView;
import java.util.Iterator;
import java.util.List;

public class MoreActivity extends b
  implements View.OnClickListener
{
  private CircleImageView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private User q;

  private void b(boolean paramBoolean)
  {
    View localView = findViewById(2131558646);
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }

  private void g()
  {
    if (this.q == null)
      return;
    if (!TextUtils.isEmpty(this.q.e))
    {
      String str = this.q.e.replace("https://", "http://");
      n.a(this.m, str);
    }
    if (!TextUtils.isEmpty(this.q.b))
      this.n.setText(this.q.b);
    if (this.q.q > 0);
    for (boolean bool = true; ; bool = false)
    {
      b(bool);
      return;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 2131100072;
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.q = m.a().b();
    switch (paramInt1)
    {
    case 13:
    case 15:
    case 17:
    default:
    case 11:
    case 12:
    case 14:
      do
      {
        do
        {
          return;
          g();
          return;
        }
        while (paramInt2 != -1);
        finish();
        return;
      }
      while (this.q == null);
      paramIntent = this.o;
      if (this.q.g());
      while (true)
      {
        paramIntent.setText(i);
        return;
        i = 2131100071;
      }
    case 16:
      paramIntent = this.p;
      if ((this.q.r != null) && (this.q.r.a == 1));
      while (true)
      {
        paramIntent.setText(i);
        paramIntent = i.b().h();
        if ((paramIntent == null) || (paramIntent.isEmpty()))
          break;
        paramIntent = paramIntent.iterator();
        while (paramIntent.hasNext())
        {
          Nut localNut = (Nut)paramIntent.next();
          if (localNut.K == 1)
          {
            Bundle localBundle = new Bundle();
            localBundle.putString("device_id", localNut.j);
            localBundle.putBoolean("open_disconnect_alert", localNut.a(this));
            a(22, localBundle);
          }
        }
        i = 2131100071;
      }
    case 18:
    }
    this.q.q = 0;
    m.a().a(this.q);
  }

  public void onClick(View paramView)
  {
    int i;
    switch (paramView.getId())
    {
    case 2131558643:
    case 2131558646:
    case 2131558647:
    case 2131558648:
    case 2131558650:
    case 2131558652:
    default:
      i = -1;
      paramView = null;
      if (paramView != null)
      {
        paramView = new Intent(this, paramView);
        if ((15 != i) || (this.q == null))
          break label477;
        paramView.setClass(this, JumpWebViewActivity.class);
        paramView.putExtra("URL", a.p + "?accessToken=" + this.q.i);
      }
      break;
    case 2131558640:
    case 2131558641:
    case 2131558649:
    case 2131558651:
    case 2131558653:
    case 2131558654:
    case 2131558642:
    case 2131558644:
    case 2131558645:
    case 2131558655:
    case 2131558657:
    case 2131558656:
    }
    while (true)
    {
      startActivityForResult(paramView, i);
      return;
      paramView = MeEditActivity.class;
      i = 11;
      break;
      paramView = NotDisturbActivity.class;
      i = 14;
      break;
      paramView = SilencesActivity.class;
      i = 16;
      break;
      paramView = JumpWebViewActivity.class;
      i = 19;
      break;
      paramView = AboutNutActivity.class;
      i = 13;
      break;
      paramView = ScanDeviceActivity.class;
      i = 12;
      u.a("NTUIEventPair", "PAIR_BUTTON_TAPPED");
      break;
      com.umeng.analytics.b.a(this, "app_settings_official_store");
      paramView = JumpWebViewActivity.class;
      i = 15;
      break;
      b(false);
      i = 18;
      paramView = NotificationCenterActivity.class;
      break;
      if (this.q == null)
      {
        q();
        i = -1;
        paramView = null;
        break;
      }
      Object localObject = i.b().f();
      if (TextUtils.isEmpty((CharSequence)localObject))
        paramView = getString(2131099845);
      for (i = 2131099791; ; i = 2131099788)
      {
        com.nut.blehunter.ui.b.a.b localb = new com.nut.blehunter.ui.b.a.b(this);
        localb.a(false);
        localb.b(false);
        localb.a(getLayoutInflater().inflate(2130903127, null));
        localb.a(i, new ci(this, (String)localObject));
        localb.b(2131099781, null);
        f.a(this.q.e, paramView, "", localb).a(this, "showLogoutDialog");
        i = -1;
        paramView = null;
        break;
        paramView = getString(2131099832, new Object[] { localObject });
      }
      paramView = k.a(this);
      localObject = new Intent(this, LocationTestActivity.class);
      ((Intent)localObject).putExtra("position", paramView);
      startActivity((Intent)localObject);
      i = -1;
      paramView = null;
      break;
      paramView = AppConfigActivity.class;
      i = 17;
      break;
      label477: if (19 == i)
      {
        paramView.setClass(this, JumpWebViewActivity.class);
        paramView.putExtra("URL", a.o);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    int k = 2131100072;
    int i1 = 8;
    super.onCreate(paramBundle);
    i();
    setContentView(2130903090);
    b(2131100092);
    this.q = m.a().b();
    findViewById(2131558640).setOnClickListener(this);
    findViewById(2131558641).setOnClickListener(this);
    findViewById(2131558649).setOnClickListener(this);
    findViewById(2131558651).setOnClickListener(this);
    findViewById(2131558653).setOnClickListener(this);
    findViewById(2131558654).setOnClickListener(this);
    findViewById(2131558642).setOnClickListener(this);
    findViewById(2131558644).setOnClickListener(this);
    findViewById(2131558645).setOnClickListener(this);
    findViewById(2131558655).setOnClickListener(this);
    findViewById(2131558657).setOnClickListener(this);
    findViewById(2131558656).setOnClickListener(this);
    paramBundle = i.b().h();
    int j;
    if ((paramBundle != null) && (!paramBundle.isEmpty()))
    {
      paramBundle = paramBundle.iterator();
      i = 0;
      if (paramBundle.hasNext())
      {
        Nut localNut = (Nut)paramBundle.next();
        if (j.b().a(localNut.p).l == 1);
        for (j = 1; ; j = 0)
        {
          i = j | i;
          break;
        }
      }
      paramBundle = findViewById(2131558643);
      if (i != 0)
      {
        j = 0;
        paramBundle.setVisibility(j);
        paramBundle = findViewById(2131558644);
        j = i1;
        if (i != 0)
          j = 0;
        paramBundle.setVisibility(j);
      }
    }
    else
    {
      this.o = ((TextView)findViewById(2131558650));
      this.p = ((TextView)findViewById(2131558652));
      this.m = ((CircleImageView)findViewById(2131558640));
      this.n = ((TextView)findViewById(2131558641));
      paramBundle = (CheckBox)findViewById(2131558648);
      paramBundle.setChecked(k.b(this, "notification_status_switch", false));
      paramBundle.setOnCheckedChangeListener(new ch(this));
      g();
      if (this.q != null)
      {
        paramBundle = this.o;
        if (!this.q.g())
          break label464;
        i = 2131100072;
        label415: paramBundle.setText(i);
        paramBundle = this.p;
        if ((this.q.r == null) || (this.q.r.a != 1))
          break label470;
      }
    }
    label464: label470: for (int i = k; ; i = 2131100071)
    {
      paramBundle.setText(i);
      return;
      j = 8;
      break;
      i = 2131100071;
      break label415;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623944, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558921)
    {
      if (new Intent("android.media.action.IMAGE_CAPTURE").resolveActivity(getPackageManager()) != null)
        startActivityForResult(new Intent(this, CaptureActivity.class), 1000);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }

  protected void onResume()
  {
    super.onResume();
    this.q = m.a().b();
    if (this.q != null)
      if (this.q.q <= 0)
        break label39;
    label39: for (boolean bool = true; ; bool = false)
    {
      b(bool);
      return;
    }
  }

  protected void onStart()
  {
    super.onStart();
    j();
  }

  protected void onStop()
  {
    k();
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.MoreActivity
 * JD-Core Version:    0.6.2
 */