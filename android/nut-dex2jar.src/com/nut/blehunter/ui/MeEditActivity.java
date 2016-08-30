package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.nut.blehunter.c.g;
import com.nut.blehunter.d.e;
import com.nut.blehunter.entity.Email;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.Wechat;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.n;
import com.nut.blehunter.ui.b.a.ab;
import com.nut.blehunter.ui.b.a.ad;
import com.nut.blehunter.ui.b.a.y;
import com.nut.blehunter.ui.b.a.z;
import com.nut.blehunter.ui.widget.CircleImageView;
import java.io.File;

public class MeEditActivity extends b
  implements View.OnClickListener, ad, com.nut.blehunter.ui.b.a.d, z
{
  private final int m = 4;
  private final int n = 5;
  private CircleImageView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private TextView t;

  public final void a(s params, int paramInt)
  {
    Object localObject = params.getTag();
    paramInt = -1;
    switch (((String)localObject).hashCode())
    {
    default:
    case 1386673282:
    }
    while (true)
      switch (paramInt)
      {
      default:
        return;
        if (((String)localObject).equals("input_text"))
          paramInt = 0;
        break;
      case 0:
      }
    localObject = m.a().b();
    params = ((com.nut.blehunter.ui.b.a.j)params).o;
    ((User)localObject).b = params;
    this.p.setText(params);
    m.a().a(this, (User)localObject);
  }

  public final void a(ab paramab, int paramInt)
  {
    paramab.a();
    User localUser = m.a().b();
    localUser.j = paramInt;
    m.a().a(this, localUser);
    if (!TextUtils.isEmpty(localUser.b))
    {
      if (localUser.j != 1)
        break label57;
      this.q.setText(2131100048);
    }
    while (true)
    {
      paramab.o = null;
      return;
      label57: if (localUser.j == 2)
        this.q.setText(2131100049);
    }
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

  public final void g()
  {
    User localUser = m.a().b();
    if (localUser == null)
      return;
    n.a(this.o, localUser.e);
    if (!TextUtils.isEmpty(localUser.b))
      this.p.setText(localUser.b);
    if (!TextUtils.isEmpty(localUser.b))
    {
      if (localUser.j == 1)
        this.q.setText(2131100048);
    }
    else
    {
      if (TextUtils.isEmpty(localUser.b()))
        break label208;
      this.r.setText(e.c(localUser.b()));
      this.r.setTextColor(getResources().getColor(2131427355));
    }
    while (true)
    {
      if (!localUser.j())
        break label236;
      this.s.setText(2131099978);
      this.s.setTextColor(getResources().getColor(2131427351));
      if (!localUser.i())
        break label308;
      this.t.setText(2131099977);
      this.t.setTextColor(getResources().getColor(2131427355));
      return;
      if (localUser.j != 2)
        break;
      this.q.setText(2131100049);
      break;
      label208: this.r.setText(2131099978);
      this.r.setTextColor(getResources().getColor(2131427351));
    }
    label236: boolean bool = localUser.l();
    String str;
    if (bool)
    {
      str = e.d(localUser.c.a);
      label258: if (!bool)
        break label301;
    }
    label301: for (int i = 2131427355; ; i = 2131427349)
    {
      this.s.setText(str);
      this.s.setTextColor(getResources().getColor(i));
      break;
      str = getString(2131099979);
      break label258;
    }
    label308: this.t.setText(2131099978);
    this.t.setTextColor(getResources().getColor(2131427351));
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
    case 4:
      g();
      return;
    case 5:
      g();
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
    User localUser = m.a().b();
    localUser.e = com.nut.blehunter.d.j.a(paramIntent);
    n.a(this.o, localUser.e);
    m.a().a(this, localUser);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558623:
    case 2131558625:
    case 2131558628:
    case 2131558631:
    case 2131558634:
    case 2131558637:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
                y.a().show(getFragmentManager(), "pick_photo");
                return;
                paramView = m.a().b();
              }
              while (paramView == null);
              com.nut.blehunter.ui.b.a.j.a(this, paramView.b, this, 20).a(d(), "input_text");
              return;
              paramView = m.a().b();
            }
            while (paramView == null);
            ab.a(this, paramView.j).a(d(), "selectGender");
            return;
            paramView = m.a().b();
          }
          while (paramView == null);
          localObject = new Intent();
          ((Intent)localObject).setClass(this, BindPhoneActivity.class);
          if (TextUtils.isEmpty(paramView.b()))
            ((Intent)localObject).putExtra("bind_type", 100);
          while (true)
          {
            startActivityForResult((Intent)localObject, 4);
            return;
            ((Intent)localObject).putExtra("bind_type", 101);
          }
          paramView = m.a().b();
        }
        while (paramView == null);
        localObject = new Intent();
        ((Intent)localObject).setClass(this, BindEmailActivity.class);
        if (paramView.j())
          ((Intent)localObject).putExtra("bind_type", 100);
        while (true)
        {
          startActivityForResult((Intent)localObject, 5);
          return;
          if (paramView.k())
            ((Intent)localObject).putExtra("bind_type", 102);
          else if (paramView.l())
            ((Intent)localObject).putExtra("bind_type", 101);
        }
        paramView = m.a().b();
      }
      while (paramView == null);
      if (!paramView.i())
        break;
      paramView = paramView.f.a;
    }
    while (isFinishing());
    Object localObject = getString(2131099973);
    com.nut.blehunter.ui.b.a.b localb = new com.nut.blehunter.ui.b.a.b(this);
    localb.a(2131099981);
    localb.b(getString(2131099980, new Object[] { localObject }));
    localb.a(2131099783, new cf(this, paramView));
    localb.b(2131099781, new cg(this));
    localb.a().a(this, "baseDialog");
    return;
    new com.nut.blehunter.c.b();
    com.nut.blehunter.c.b.a(this, 1).a(new cc(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903089);
    b(2131100093);
    this.o = ((CircleImageView)findViewById(2131558624));
    this.p = ((TextView)findViewById(2131558627));
    this.q = ((TextView)findViewById(2131558630));
    this.r = ((TextView)findViewById(2131558633));
    this.s = ((TextView)findViewById(2131558636));
    this.t = ((TextView)findViewById(2131558639));
    findViewById(2131558623).setOnClickListener(this);
    findViewById(2131558625).setOnClickListener(this);
    findViewById(2131558628).setOnClickListener(this);
    findViewById(2131558631).setOnClickListener(this);
    findViewById(2131558634).setOnClickListener(this);
    findViewById(2131558637).setOnClickListener(this);
    paramBundle = m.a().b();
    if ((paramBundle != null) && (paramBundle.a(this)))
      findViewById(2131558637).setVisibility(8);
    g();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.MeEditActivity
 * JD-Core Version:    0.6.2
 */