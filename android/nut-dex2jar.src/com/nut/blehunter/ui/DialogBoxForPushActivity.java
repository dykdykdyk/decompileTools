package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ac;
import android.support.v4.app.an;
import android.support.v7.a.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import com.nut.blehunter.entity.CommonPushMsg;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.service.NutTrackerService;
import com.nut.blehunter.ui.b.a.a;
import com.nut.blehunter.ui.b.a.b;
import com.nut.blehunter.ui.b.a.e;
import com.nut.blehunter.ui.b.a.f;
import com.nut.blehunter.ui.b.a.i;

public class DialogBoxForPushActivity extends s
  implements e
{
  public final void d_()
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = getIntent().getIntExtra("type", 0);
    paramBundle = (CommonPushMsg)getIntent().getParcelableExtra("push_msg");
    if ((i == 0) || (paramBundle == null))
    {
      finish();
      return;
    }
    Object localObject;
    switch (i)
    {
    default:
      return;
    case 1:
      paramBundle = getString(2131099853, new Object[] { paramBundle.e, paramBundle.g });
      localObject = new b(this);
      ((b)localObject).a(2131099874);
      ((b)localObject).b(paramBundle);
      ((b)localObject).a(this);
      ((b)localObject).b(false);
      ((b)localObject).a(true);
      ((b)localObject).b(2131099792, null);
      ((b)localObject).a().a(d(), "baseDialog");
      return;
    case 2:
      paramBundle = getString(2131099855, new Object[] { paramBundle.g, paramBundle.e });
      localObject = new b(this);
      ((b)localObject).a(2131099882);
      ((b)localObject).b(paramBundle);
      ((b)localObject).a(this);
      ((b)localObject).b(false);
      ((b)localObject).a(true);
      ((b)localObject).b(2131099792, null);
      ((b)localObject).a().a(d(), "baseDialog");
      return;
    case 3:
      paramBundle = getString(2131099836, new Object[] { paramBundle.g, paramBundle.e });
      localObject = new b(this);
      ((b)localObject).a(2131099862);
      ((b)localObject).b(paramBundle);
      ((b)localObject).a(this);
      ((b)localObject).b(false);
      ((b)localObject).a(true);
      ((b)localObject).b(2131099792, null);
      ((b)localObject).a().a(d(), "baseDialog");
      return;
    case 4:
      paramBundle = getString(2131099856, new Object[] { paramBundle.e, paramBundle.g });
      localObject = new b(this);
      ((b)localObject).a(2131099862);
      ((b)localObject).b(paramBundle);
      ((b)localObject).a(this);
      ((b)localObject).b(false);
      ((b)localObject).a(true);
      ((b)localObject).b(2131099792, null);
      ((b)localObject).a().a(d(), "baseDialog");
      return;
    case 5:
      new StringBuilder("声明丢失 Nut:").append(paramBundle.e);
      return;
    case 6:
      new StringBuilder("取消声明丢失 Nut:").append(paramBundle.e);
      return;
    case 7:
      try
      {
        paramBundle = m.a().b();
        localObject = new b(this);
        ((b)localObject).a(false);
        ((b)localObject).b(false);
        ((b)localObject).a(getLayoutInflater().inflate(2130903127, null));
        ((b)localObject).a(2131099783, new x(this));
        paramBundle = f.a(paramBundle.e, getString(2131099859), "", (b)localObject);
        localObject = (f)d().a("userAccessTokenExpire");
        if (localObject != null)
          d().a().a((Fragment)localObject).b();
        while (true)
        {
          paramBundle = new Intent(this, NutTrackerService.class);
          paramBundle.setAction("com.nutspace.action.logout");
          startService(paramBundle);
          return;
          paramBundle.a(this, "userAccessTokenExpire");
        }
      }
      catch (Exception paramBundle)
      {
        break label584;
      }
    case 8:
      label584: String str = getIntent().getStringExtra("downloadUrl");
      localObject = getIntent().getStringExtra("description");
      paramBundle = (Bundle)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject))
        paramBundle = getString(2131099833);
      localObject = new b(this);
      ((b)localObject).a(2131099873);
      ((b)localObject).b(paramBundle);
      ((b)localObject).b(false);
      ((b)localObject).a(false);
      ((b)localObject).a(this);
      ((b)localObject).a(2131099799, new y(this, str));
      paramBundle = new i();
      paramBundle.a((b)localObject);
      paramBundle.a(d(), "baseDialog");
      return;
    case 9:
    }
    paramBundle = new b(this);
    paramBundle.b(2131099759);
    paramBundle.a(this);
    paramBundle.b(false);
    paramBundle.a(true);
    paramBundle.b(2131099792, null);
    paramBundle.a().a(d(), "baseDialog");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.DialogBoxForPushActivity
 * JD-Core Version:    0.6.2
 */