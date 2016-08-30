package com.nut.blehunter.ui;

import android.content.Intent;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.nut.blehunter.d.c;
import com.nut.blehunter.d.p;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.Position;
import com.nut.blehunter.entity.PositionRecord;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.service.NutTrackerService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.y;
import com.nut.blehunter.ui.b.a.z;
import com.nut.blehunter.ui.widget.CircleImageView;
import com.nut.blehunter.ui.widget.ShadowCircleImageView;
import java.io.File;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class BindDeviceActivity extends b
  implements View.OnClickListener, z, com.nut.blehunter.ui.b.o
{
  private String m;
  private int n;
  private Nut o;
  private String p;
  private Position q;
  private com.nut.blehunter.i r;
  private CountDownTimer s = new j(this);

  private void e(int paramInt)
  {
    boolean bool2 = true;
    View localView = findViewById(2131558539);
    if (paramInt == 2131558539)
    {
      bool1 = true;
      localView.setSelected(bool1);
      localView = findViewById(2131558540);
      if (paramInt != 2131558540)
        break label140;
      bool1 = true;
      label40: localView.setSelected(bool1);
      localView = findViewById(2131558541);
      if (paramInt != 2131558541)
        break label145;
      bool1 = true;
      label62: localView.setSelected(bool1);
      localView = findViewById(2131558542);
      if (paramInt != 2131558542)
        break label150;
      bool1 = true;
      label84: localView.setSelected(bool1);
      localView = findViewById(2131558543);
      if (paramInt != 2131558543)
        break label155;
      bool1 = true;
      label106: localView.setSelected(bool1);
      localView = findViewById(2131558544);
      if (paramInt != 2131558544)
        break label160;
    }
    label140: label145: label150: label155: label160: for (boolean bool1 = bool2; ; bool1 = false)
    {
      localView.setSelected(bool1);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label40;
      bool1 = false;
      break label62;
      bool1 = false;
      break label84;
      bool1 = false;
      break label106;
    }
  }

  public final void a(Message paramMessage)
  {
    if (isFinishing());
    Object localObject2;
    do
    {
      do
      {
        return;
        localObject1 = paramMessage.getData();
      }
      while (localObject1 == null);
      localObject2 = ((Bundle)localObject1).getString("device_id", null);
    }
    while (!this.m.equals(localObject2));
    PositionRecord localPositionRecord;
    switch (paramMessage.what)
    {
    default:
      return;
    case 9:
      if (((Bundle)localObject1).getBoolean("oauth_result", false))
      {
        paramMessage = new Bundle();
        paramMessage.putString("device_id", this.m);
        a(10, paramMessage);
        return;
      }
      break;
    case 11:
      this.s.cancel();
      com.nut.blehunter.ui.b.a.k.b(this);
      if (((Bundle)localObject1).getBoolean("bind_result", false))
      {
        com.nut.blehunter.d.n.a(this, 2131100096);
        String str1 = ((Bundle)localObject1).getString("hardware_version", null);
        String str2 = ((Bundle)localObject1).getString("firmware_version", null);
        String str3 = ((Bundle)localObject1).getString("manufacture_name", null);
        int j = ((Bundle)localObject1).getInt("device_name");
        int k = ((Bundle)localObject1).getInt("battery", 0);
        localPositionRecord = new PositionRecord();
        localPositionRecord.b = c.a();
        localPositionRecord.c = "BINDING";
        int i;
        if (this.q != null)
        {
          paramMessage = this.q;
          if ((paramMessage.d != 0.0D) && (paramMessage.c != 0.0D))
          {
            i = 1;
            if (i == 0)
              break label641;
            localPositionRecord.e = this.q.d;
          }
        }
        for (localPositionRecord.d = this.q.c; ; localPositionRecord.d = this.q.c)
        {
          if (k != 0)
            this.o.C = k;
          this.o.r = localPositionRecord;
          this.o.p = j;
          this.o.w = str1;
          this.o.v = str2;
          this.o.x = str3;
          this.o.H = m.a().b().a;
          this.o.a = (System.currentTimeMillis() / 1000L);
          this.o.b = this.o.a;
          this.o.K = 1;
          this.o.d = m.a().b().g;
          this.o.e = m.a().b().h;
          this.o.k = (m.a().b().a + "_" + UUID.randomUUID());
          this.o.J = 3;
          this.o.s = 1;
          this.o.t = 0;
          this.o.u = 5;
          this.o.E = true;
          this.o.y = 0;
          com.nut.blehunter.provider.i.b().a(this.o);
          r();
          paramMessage = this.m;
          localObject1 = new Intent(this, NutTrackerService.class);
          ((Intent)localObject1).setAction("com.nutspace.action.check_new_nut_firmware_version");
          ((Intent)localObject1).putExtra("deviceId", paramMessage);
          startService((Intent)localObject1);
          if (!this.o.c())
            break label809;
          paramMessage = new com.nut.blehunter.ui.b.a.b(this);
          paramMessage.a(2131099872);
          paramMessage.b(2131099831);
          paramMessage.a(2131099790, new k(this));
          paramMessage.a().a(this, "baseDialog");
          label628: com.umeng.analytics.b.a(this, "bind_succeeded");
          return;
          i = 0;
          break;
          label641: if (!com.nut.blehunter.o.a().b())
            break label690;
          this.q = com.nut.blehunter.d.k.a(com.nut.blehunter.o.a().b);
          localPositionRecord.e = this.q.d;
        }
        label690: LocationManager localLocationManager = (LocationManager)getSystemService("location");
        localObject1 = localLocationManager.getProviders(true);
        paramMessage = null;
        Iterator localIterator = ((List)localObject1).iterator();
        while (true)
          label721: if (localIterator.hasNext())
          {
            localObject2 = localLocationManager.getLastKnownLocation((String)localIterator.next());
            if (localObject2 != null)
            {
              localObject1 = localObject2;
              if (paramMessage != null)
                if (((Location)localObject2).getAccuracy() >= paramMessage.getAccuracy())
                  break label889;
            }
          }
      }
      break;
    case 19:
    }
    label809: label889: for (Object localObject1 = localObject2; ; localObject1 = paramMessage)
    {
      paramMessage = (Message)localObject1;
      break label721;
      if (paramMessage == null)
        break;
      localPositionRecord.e = paramMessage.getLatitude();
      localPositionRecord.d = paramMessage.getLongitude();
      break;
      setResult(-1);
      finish();
      break label628;
      com.nut.blehunter.d.n.a(this, 0, getString(2131099753));
      return;
      this.s.cancel();
      com.nut.blehunter.ui.b.a.k.b(this);
      com.nut.blehunter.d.n.a(this, 0, getString(2131099753));
      return;
      this.s.cancel();
      com.nut.blehunter.ui.b.a.k.b(this);
      com.nut.blehunter.d.n.a(this, 0, getString(2131099753));
      com.umeng.analytics.b.a(this, "bind_disconnected_with_finish_button_tapped");
      return;
    }
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    this.q = new Position(new Date().getTime() / 1000L, paramb.a, paramb.b);
  }

  public final void d(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
      do
      {
        return;
        localObject = com.nut.blehunter.d.d.b(this);
      }
      while (localObject == null);
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      localIntent.putExtra("output", Uri.fromFile((File)localObject));
      startActivityForResult(localIntent, 2);
      return;
    case 2:
    }
    Object localObject = new Intent("android.intent.action.PICK");
    ((Intent)localObject).setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*");
    startActivityForResult((Intent)localObject, 3);
  }

  protected final int m()
  {
    return 2130837974;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1)
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
    }
    if (paramInt2 == -1)
    {
      this.p = com.nut.blehunter.d.j.a(paramIntent);
      if (this.o != null)
        this.o.i = this.p;
      com.nut.blehunter.n.a((CircleImageView)findViewById(2131558533), this.o);
      findViewById(2131558535).setVisibility(8);
    }
    u.a("NTUIEventPair", "SETUP_ITEM_AVATAR");
  }

  public void onBackPressed()
  {
    u.a("NTUIEventPair", "BACK_BUTTON_TAPPED", "DEVICEID", this.o.j);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("shutdown", true);
    a(23, localBundle);
    r();
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    EditText localEditText = (EditText)findViewById(2131558536);
    switch (paramView.getId())
    {
    case 2131558534:
    case 2131558535:
    case 2131558536:
    case 2131558537:
    case 2131558538:
    default:
      return;
    case 2131558533:
      y.a().show(getFragmentManager(), "pick_photo");
      return;
    case 2131558539:
      e(paramView.getId());
      localEditText.setText(2131099740);
      return;
    case 2131558540:
      e(paramView.getId());
      localEditText.setText(2131099745);
      return;
    case 2131558541:
      e(paramView.getId());
      localEditText.setText(2131099741);
      return;
    case 2131558542:
      e(paramView.getId());
      localEditText.setText(2131099744);
      return;
    case 2131558543:
      e(paramView.getId());
      localEditText.setText(2131099743);
      return;
    case 2131558544:
    }
    e(paramView.getId());
    localEditText.setText(2131099742);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
      this.o = new Nut();
    while (true)
    {
      i();
      this.r = new com.nut.blehunter.i(this, BindDeviceActivity.class.getSimpleName());
      setContentView(2130903073);
      b(2131100087);
      this.m = getIntent().getStringExtra("deviceId");
      this.n = getIntent().getIntExtra("productId", 0);
      this.o.j = this.m;
      this.o.p = this.n;
      findViewById(2131558533).setOnClickListener(this);
      findViewById(2131558539).setOnClickListener(this);
      findViewById(2131558540).setOnClickListener(this);
      findViewById(2131558541).setOnClickListener(this);
      findViewById(2131558542).setOnClickListener(this);
      findViewById(2131558543).setOnClickListener(this);
      findViewById(2131558544).setOnClickListener(this);
      paramBundle = (ShadowCircleImageView)findViewById(2131558533);
      paramBundle.setImageResource(this.o.d());
      com.nut.blehunter.n.a(paramBundle, this.o);
      try
      {
        r localr = com.nut.blehunter.provider.j.b().a(this.o.p);
        int i = localr.i;
        switch (i)
        {
        default:
          return;
          this.o = ((Nut)paramBundle.getParcelable("nut"));
          this.p = paramBundle.getString("pic_url");
          if (!TextUtils.isEmpty(this.p))
            this.o.i = this.p;
          break;
        case 0:
          findViewById(2131558538).setVisibility(0);
          return;
        case 1:
          EditText localEditText = (EditText)findViewById(2131558536);
          i = 1;
          paramBundle = localr.b.a;
          while (com.nut.blehunter.provider.i.b().b(paramBundle))
          {
            paramBundle = localr.b.a + i;
            i += 1;
          }
          localEditText.setText(paramBundle);
          findViewById(2131558538).setVisibility(8);
          return;
        }
      }
      catch (Exception paramBundle)
      {
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623937, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    this.s.cancel();
    this.s = null;
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558915)
    {
      u.a("NTUIEventPair", "FINISH_BUTTON_TAPPED", "DEVICEID", this.o.j);
      paramMenuItem = ((EditText)findViewById(2131558536)).getText().toString().trim();
      if (TextUtils.isEmpty(paramMenuItem))
      {
        com.nut.blehunter.d.n.b(this, 2131099754);
        return true;
      }
      o();
      if (p.a(paramMenuItem) > 20)
      {
        com.nut.blehunter.d.n.a(this, 2130838104, getString(2131099755, new Object[] { Integer.valueOf(20) }));
        return true;
      }
      if (com.nut.blehunter.provider.i.b().b(paramMenuItem))
      {
        com.nut.blehunter.d.n.b(this, 2131099752);
        return true;
      }
      com.nut.blehunter.ui.b.a.k.a(this);
      this.o.c = paramMenuItem;
      Bundle localBundle = new Bundle();
      localBundle.putString("device_id", this.m);
      a(10, localBundle);
      this.s.start();
      if (paramMenuItem.equals(getString(2131099740)))
        com.umeng.analytics.b.a(this, "bind_finish_with_name_key");
      while (true)
      {
        return true;
        if (paramMenuItem.equals(getString(2131099745)))
          com.umeng.analytics.b.a(this, "bind_finish_with_name_wallet");
        else if (paramMenuItem.equals(getString(2131099741)))
          com.umeng.analytics.b.a(this, "bind_finish_with_name_laptop");
        else if (paramMenuItem.equals(getString(2131099744)))
          com.umeng.analytics.b.a(this, "bind_finish_with_name_suitcase");
        else if (paramMenuItem.equals(getString(2131099743)))
          com.umeng.analytics.b.a(this, "bind_finish_with_name_satchel");
        else if (paramMenuItem.equals(getString(2131099742)))
          com.umeng.analytics.b.a(this, "bind_finish_with_name_other");
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("nut", this.o);
    paramBundle.putString("pic_url", this.p);
    super.onSaveInstanceState(paramBundle);
  }

  protected void onStart()
  {
    super.onStart();
    j();
    com.nut.blehunter.o.a().a(this);
    this.r.a();
  }

  protected void onStop()
  {
    k();
    com.nut.blehunter.o.a().a(null);
    this.r.b();
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.BindDeviceActivity
 * JD-Core Version:    0.6.2
 */