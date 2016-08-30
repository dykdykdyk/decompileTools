package com.nut.blehunter.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.nut.blehunter.dfu.DfuActivity;
import com.nut.blehunter.dfu.e;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.rxApi.model.CheckFirmwareVersionRequestBody;
import com.nut.blehunter.rxApi.model.UpdateNutRequestBody;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.aa;
import com.nut.blehunter.ui.b.a.g;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.b.a.x;
import com.nut.blehunter.ui.b.a.y;
import com.nut.blehunter.ui.b.a.z;
import com.nut.blehunter.ui.widget.ShadowCircleImageView;
import java.io.File;
import java.io.IOException;
import java.util.List;
import retrofit2.Call;
import rx.schedulers.Schedulers;

public class NutSettingActivity extends b
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, com.nut.blehunter.ui.b.a.d, z
{
  private LinearLayout m;
  private View n;
  private View o;
  private Nut p;
  private CountDownTimer q = new cw(this);

  private void b(boolean paramBoolean)
  {
    int j = 8;
    boolean bool2 = true;
    int i;
    Object localObject;
    if (paramBoolean)
    {
      i = 0;
      if (!paramBoolean)
        j = 0;
      findViewById(2131558869).setVisibility(j);
      findViewById(2131558870).setVisibility(j);
      findViewById(2131558871).setVisibility(j);
      findViewById(2131558874).setVisibility(j);
      findViewById(2131558867).setVisibility(i);
      findViewById(2131558868).setVisibility(i);
      if (!paramBoolean)
        break label145;
      findViewById(2131558868).setOnClickListener(this);
      localObject = new Bundle();
      ((Bundle)localObject).putString("device_id", this.p.j);
      if (paramBoolean)
        break label202;
    }
    label145: label202: for (paramBoolean = bool2; ; paramBoolean = false)
    {
      ((Bundle)localObject).putBoolean("open_disconnect_alert", paramBoolean);
      a(22, (Bundle)localObject);
      return;
      i = 8;
      break;
      findViewById(2131558869).setOnClickListener(this);
      localObject = (CheckBox)findViewById(2131558873);
      if (this.p.n == 1);
      for (boolean bool1 = true; ; bool1 = false)
      {
        ((CheckBox)localObject).setChecked(bool1);
        ((CheckBox)localObject).setOnCheckedChangeListener(this);
        break;
      }
    }
  }

  private void g()
  {
    Intent localIntent = new Intent(this, MainActivity.class);
    localIntent.addFlags(67108864);
    startActivity(localIntent);
  }

  private void h()
  {
    boolean bool = true;
    int i = 0;
    if ((this.p.K == 2) || (this.p.K == 6))
    {
      if (this.n != null)
      {
        this.m.removeView(this.n);
        this.n = null;
      }
      if (this.o == null)
        this.o = getLayoutInflater().inflate(2130903174, null);
      this.m.addView(this.o);
      findViewById(2131558861).setOnClickListener(this);
      findViewById(2131558862).setOnClickListener(this);
      return;
    }
    if (this.o != null)
    {
      this.m.removeView(this.o);
      this.o = null;
    }
    if (this.n == null)
      this.n = getLayoutInflater().inflate(2130903175, null);
    this.m.addView(this.n);
    Object localObject = (CheckBox)findViewById(2131558866);
    if (this.p.y == 1)
    {
      ((CheckBox)localObject).setChecked(bool);
      ((CheckBox)localObject).setOnCheckedChangeListener(this);
      b(((CheckBox)localObject).isChecked());
      if (!this.p.g())
        break label254;
      findViewById(2131558876).setOnClickListener(this);
      localObject = findViewById(2131558878);
      if (!com.nut.blehunter.provider.j.b().a(this.p))
        break label248;
    }
    while (true)
    {
      ((View)localObject).setVisibility(i);
      return;
      bool = false;
      break;
      label248: i = 8;
    }
    label254: findViewById(2131558876).setVisibility(8);
    findViewById(2131558875).setVisibility(8);
  }

  private void t()
  {
    Intent localIntent = new Intent(this, ShareManageActivity.class);
    localIntent.putExtra("nut", this.p);
    startActivityForResult(localIntent, 12);
  }

  private void u()
  {
    i.b().a(this.p, true);
  }

  public final void a(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 18:
    }
    this.q.cancel();
    aa.b(this);
    if (paramMessage.getData().getBoolean("delete_result", false))
    {
      switch (this.p.K)
      {
      case 3:
      case 4:
      case 5:
      default:
      case 1:
      case 0:
      case 2:
      case 6:
      }
      while (true)
      {
        g();
        return;
        com.umeng.analytics.b.a(this, "item_deleted_normal");
        continue;
        com.umeng.analytics.b.a(this, "item_deleted_disconnected");
        continue;
        com.umeng.analytics.b.a(this, "item_deleted_lost");
      }
    }
    com.nut.blehunter.d.n.a(this, 2131100031);
  }

  public final void a(s params, int paramInt)
  {
    String str = params.getTag();
    paramInt = -1;
    switch (str.hashCode())
    {
    default:
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
      break;
    case -1335458389:
    case 1386673282:
    case 99379:
    case 156934100:
    case -1219284908:
    case -1654674222:
    case 934258268:
    }
    do
    {
      return;
      if (!str.equals("delete"))
        break;
      paramInt = 0;
      break;
      if (!str.equals("input_text"))
        break;
      paramInt = 1;
      break;
      if (!str.equals("dfu"))
        break;
      paramInt = 2;
      break;
      if (!str.equals("download_failed"))
        break;
      paramInt = 3;
      break;
      if (!str.equals("undo_declare_lost"))
        break;
      paramInt = 4;
      break;
      if (!str.equals("change_mode"))
        break;
      paramInt = 5;
      break;
      if (!str.equals("master_delete_shared"))
        break;
      paramInt = 6;
      break;
      params = new Bundle();
      params.putString("device_id", this.p.j);
      if (this.p.K == 1)
      {
        params.putBoolean("is_reset", true);
        a(17, params);
        aa.a(this, getString(2131100039), false);
        this.q.start();
        return;
      }
      this.p.J = 1;
      i.b().a(this.p, true);
      params.putBoolean("is_reset", false);
      a(17, params);
      g();
      return;
      params = ((com.nut.blehunter.ui.b.a.j)params).o;
      if (i.b().b(params))
      {
        com.nut.blehunter.d.n.b(this, 2131099752);
        return;
      }
      this.p.c = params;
      ((TextView)findViewById(2131558551)).setText(params);
      u();
      return;
      params = new Intent(this, DfuActivity.class);
      params.putExtra("nut", this.p);
      startActivity(params);
      return;
      params = com.nut.blehunter.provider.j.b().a(this.p.p);
    }
    while ((params == null) || (params.c == null));
    e.a(this, params.a, params.c, this);
    return;
    k.a(this);
    this.p.K = 0;
    com.nut.blehunter.rxApi.a.c().bindNut("v3", "update", new UpdateNutRequestBody(this.p)).b(Schedulers.io()).a(rx.a.b.a.a()).a(new cy(this));
    return;
    t();
  }

  public final void d(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    }
    Object localObject;
    do
    {
      Intent localIntent;
      do
      {
        do
        {
          return;
          localObject = com.nut.blehunter.d.d.b(this);
        }
        while (localObject == null);
        localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
        localIntent.putExtra("output", Uri.fromFile((File)localObject));
      }
      while (localIntent.resolveActivity(getPackageManager()) == null);
      startActivityForResult(localIntent, 2);
      return;
      localObject = new Intent("android.intent.action.PICK");
      ((Intent)localObject).setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
    }
    while (((Intent)localObject).resolveActivity(getPackageManager()) == null);
    startActivityForResult((Intent)localObject, 3);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1);
    do
    {
      do
      {
        return;
        switch (paramInt1)
        {
        default:
          return;
        case 2:
          com.nut.blehunter.d.j.a(this);
          return;
        case 3:
          if (com.nut.blehunter.d.j.a(this, paramIntent))
          {
            com.nut.blehunter.d.j.a(this);
            return;
          }
          b.a.a.d("take picture from camera error", new Object[0]);
          return;
        case 6709:
          if (paramIntent == null)
          {
            b.a.a.d("crop image error", new Object[0]);
            return;
          }
          this.p.i = com.nut.blehunter.d.j.a(paramIntent);
          com.nut.blehunter.n.a((ShadowCircleImageView)findViewById(2131558533), this.p);
          u();
          return;
        case 11:
        case 12:
        }
      }
      while ((paramIntent == null) || (isFinishing()));
      this.p = ((Nut)paramIntent.getParcelableExtra("nut"));
      u();
      return;
    }
    while ((paramIntent == null) || (isFinishing()));
    this.p = ((Nut)paramIntent.getParcelableExtra("nut"));
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    boolean bool = true;
    int i = 1;
    switch (paramCompoundButton.getId())
    {
    default:
      return;
    case 2131558866:
      if ((!paramBoolean) && (this.p.A != null) && (!this.p.A.isEmpty()))
      {
        paramCompoundButton = getString(2131099816);
        getString(2131099864);
        new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).b(paramCompoundButton).a(2131099792, this).b(2131099781, null).a().a(this, "change_mode");
        return;
      }
      paramCompoundButton = this.p;
      if (paramBoolean)
      {
        paramCompoundButton.y = i;
        u();
        b(paramBoolean);
        if (!paramBoolean)
          break label169;
      }
      label169: for (paramCompoundButton = "item_settings_mode_find_on"; ; paramCompoundButton = "item_settings_mode_find_off")
      {
        com.umeng.analytics.b.a(this, paramCompoundButton);
        return;
        i = 0;
        break;
      }
    case 2131558873:
    }
    paramCompoundButton = this.p;
    if (paramBoolean)
    {
      i = 1;
      paramCompoundButton.n = i;
      paramCompoundButton = new Bundle();
      paramCompoundButton.putString("device_id", this.p.j);
      if ((!paramBoolean) || (!this.p.a(this)))
        break label298;
      label228: paramCompoundButton.putBoolean("open_disconnect_alert", bool);
      a(22, paramCompoundButton);
      u();
      if (!paramBoolean)
        break label304;
    }
    label298: label304: for (paramCompoundButton = "item_settings_nut_alert_on"; ; paramCompoundButton = "item_settings_nut_alert_off")
    {
      com.umeng.analytics.b.a(this, paramCompoundButton);
      u.a("NTNutEvent", "NUT_SETTINGS_CHANGED", "NUT_ALERT", this.p.n);
      return;
      i = 0;
      break;
      bool = false;
      break label228;
    }
  }

  public void onClick(View paramView)
  {
    com.nut.blehunter.ui.b.a.b localb;
    switch (paramView.getId())
    {
    default:
    case 2131558533:
    case 2131558677:
    case 2131558869:
    case 2131558864:
    case 2131558876:
      do
      {
        do
        {
          do
            return;
          while ((this.p.K == 2) || (this.p.K == 6) || (!this.p.E));
          y.a().show(getFragmentManager(), "pick_photo");
          return;
        }
        while ((this.p.K == 2) || (this.p.K == 6) || (!this.p.E));
        com.nut.blehunter.ui.b.a.j.a(this, this.p.c, this).a(this, "input_text");
        return;
        paramView = new Intent(this, PhoneAlertSettingActivity.class);
        paramView.putExtra("nut", this.p);
        startActivityForResult(paramView, 11);
        return;
        paramView = i.b().f(this.p.j);
        if ((this.p.y == 1) && (paramView != null) && (paramView.size() > 0))
        {
          paramView = getString(2131099819, new Object[] { this.p.c });
          localb = new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).a(2131099792, this).b(2131099782, null);
          g.a(this.p, paramView, localb).a(this, "master_delete_shared");
          return;
        }
        if (this.p.K == 1)
        {
          paramView = getString(2131099818, new Object[] { this.p.c });
          getString(2131099865);
          localb = new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).a(2131099784, this).b(2131099781, null);
          g.a(this.p, paramView, localb).a(this, "delete");
          return;
        }
        paramView = getString(2131099817, new Object[] { this.p.c });
        getString(2131099865);
        localb = new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).a(2131099784, this).b(2131099781, null);
        g.a(this.p, paramView, localb).a(this, "delete");
        return;
      }
      while ((this.p.K != 1) && (this.p.K != 0));
      paramView = com.nut.blehunter.provider.j.b().a(this.p.p);
      if ((paramView == null) || (paramView.c == null));
      while (true)
      {
        u.a("NTDFUEvent", "ENTRY_TAPPED");
        return;
        try
        {
          if (Integer.parseInt(paramView.c.b) <= Integer.parseInt(this.p.v))
            break label676;
          if ((!TextUtils.isEmpty(paramView.c.d)) && (new File(paramView.c.d).exists()))
            e.a(this, paramView.c.c, this);
        }
        catch (NumberFormatException paramView)
        {
          b.a.a.a(paramView, "format firmware version exception", new Object[0]);
          continue;
          e.a(this, paramView.a, paramView.c, this);
        }
        catch (IOException paramView)
        {
          b.a.a.a(paramView, "open asset directory error", new Object[0]);
        }
        continue;
        k.a(this);
        com.nut.blehunter.rxApi.a.c().checkFirmwareVersion(new CheckFirmwareVersionRequestBody(this.p.p, this.p.v)).enqueue(new cx(this));
      }
    case 2131558868:
      t();
      com.umeng.analytics.b.a(this, "find_mode_share_management");
      return;
    case 2131558861:
      paramView = new Intent(this, FindRegionActivity.class);
      paramView.putExtra("nut", this.p);
      startActivity(paramView);
      return;
    case 2131558862:
      paramView = getString(2131099857, new Object[] { this.p.c });
      getString(2131099883);
      localb = new com.nut.blehunter.ui.b.a.b(this).a(true).b(false).a(2131099798, this).b(2131099781, null);
      x.b(this.p, paramView, localb).a(this, "undo_declare_lost");
      return;
    case 2131558863:
      label676: paramView = new Intent(this, JumpWebViewActivity.class);
      paramView.putExtra("URL", com.nut.blehunter.a.o + "?pid=" + this.p.p);
      startActivity(paramView);
      com.umeng.analytics.b.a(this, "hot_questions");
      return;
    case 2131558879:
    }
    paramView = new Intent(this, NutConfigActivity.class);
    paramView.putExtra("nut", this.p);
    startActivity(paramView);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    setContentView(2130903094);
    b(2131099716);
    if (getIntent() != null)
      this.p = ((Nut)getIntent().getParcelableExtra("nut"));
    this.m = ((LinearLayout)findViewById(2131558676));
    paramBundle = (ShadowCircleImageView)findViewById(2131558533);
    com.nut.blehunter.n.a(paramBundle, this.p);
    ((TextView)findViewById(2131558551)).setText(this.p.c);
    findViewById(2131558677).setOnClickListener(this);
    paramBundle.setOnClickListener(this);
    h();
    findViewById(2131558863).setOnClickListener(this);
    findViewById(2131558864).setOnClickListener(this);
  }

  protected void onDestroy()
  {
    this.q.cancel();
    this.q = null;
    super.onDestroy();
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
 * Qualified Name:     com.nut.blehunter.ui.NutSettingActivity
 * JD-Core Version:    0.6.2
 */