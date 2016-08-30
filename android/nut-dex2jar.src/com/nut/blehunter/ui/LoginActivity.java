package com.nut.blehunter.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cr;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.astuetz.PagerSlidingTabStrip;
import com.bingerz.android.countrycodepicker.CountryCode;
import com.facebook.Session;
import com.facebook.Session.OpenRequest;
import com.facebook.Session.StatusCallback;
import com.facebook.UiLifecycleHelper;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.model.LoginRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.ui.widget.ClearEditText;
import com.nut.blehunter.ui.widget.SlidingDrawer;
import com.sina.weibo.sdk.a.a.d;
import com.sina.weibo.sdk.exception.WeiboDialogException;
import com.sina.weibo.sdk.exception.WeiboException;
import com.tencent.connect.b.u;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.identity.p;
import io.fabric.sdk.android.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.schedulers.Schedulers;

public class LoginActivity extends b
  implements View.OnClickListener
{
  private ViewPager A;
  private ba B;
  cr m = new as(this);
  private TextView n;
  private ClearEditText o;
  private EditText p;
  private EditText q;
  private EditText r;
  private com.twitter.sdk.android.core.identity.n s;
  private Session.StatusCallback t;
  private UiLifecycleHelper u;
  private com.tencent.tauth.c v;
  private be w;
  private com.sina.weibo.sdk.a.a.a x;
  private com.sina.weibo.sdk.a.a y;
  private int z = 0;

  private void a(rx.h<String> paramh)
  {
    if (!com.nut.blehunter.d.g.b(this))
    {
      com.nut.blehunter.d.n.b(this, 2131099885);
      return;
    }
    com.nut.blehunter.ui.b.a.k.a(this);
    paramh = paramh.b(Schedulers.io()).a(new az(this)).a(new ay(this));
    paramh.a(new rx.c.a.g(new rx.i(paramh, new ax(this)))).a(rx.a.b.a.a()).a(new aw(this));
  }

  protected final int m()
  {
    return 0;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int j = 0;
    boolean bool2 = false;
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (this.z)
    {
    default:
      if ((paramInt1 == 1) && (paramInt2 == -1))
      {
        setResult(-1);
        finish();
      }
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    }
    label421: label636: 
    do
    {
      do
      {
        return;
        this.u.onActivityResult(paramInt1, paramInt2, paramIntent);
        break;
        Object localObject1 = this.s;
        io.fabric.sdk.android.f.b().a("Twitter", "onActivityResult called with " + paramInt1 + " " + paramInt2);
        if (!((com.twitter.sdk.android.core.identity.n)localObject1).a.a())
        {
          io.fabric.sdk.android.f.b().c("Twitter", "Authorize not in progress", null);
          break;
        }
        Object localObject2 = (com.twitter.sdk.android.core.identity.a)((com.twitter.sdk.android.core.identity.n)localObject1).a.a.get();
        if ((localObject2 == null) || (!((com.twitter.sdk.android.core.identity.a)localObject2).a(paramInt1, paramInt2, paramIntent)))
          break;
        ((com.twitter.sdk.android.core.identity.n)localObject1).a.a.set(null);
        break;
        localObject1 = this.w;
        localObject2 = new StringBuilder("onActivityResultData() reqcode = ").append(paramInt1).append(", resultcode = ").append(paramInt2).append(", data = null ? ");
        if (paramIntent == null);
        for (boolean bool1 = true; ; bool1 = false)
        {
          localObject2 = ((StringBuilder)localObject2).append(bool1).append(", listener = null ? ");
          bool1 = bool2;
          if (localObject1 == null)
            bool1 = true;
          com.tencent.open.a.h.c("openSDK_LOG.Tencent", bool1);
          com.tencent.connect.common.c.a().a(paramInt1, paramInt2, paramIntent, (com.tencent.tauth.b)localObject1);
          break;
        }
        com.sina.weibo.sdk.a.a.a locala = this.x;
        com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "requestCode: " + paramInt1 + ", resultCode: " + paramInt2 + ", data: " + paramIntent);
        if (paramInt1 == locala.d)
        {
          if (paramInt2 == -1)
          {
            localObject2 = locala.c;
            localObject1 = locala.e;
            if (((localObject1 == null) || (((com.sina.weibo.sdk.c)localObject1).b > 10352)) && (localObject1 != null))
              if (paramIntent != null)
              {
                localObject1 = paramIntent.getStringExtra("_weibo_appPackage");
                i = j;
                if (localObject1 != null)
                {
                  i = j;
                  if (paramIntent.getStringExtra("_weibo_transaction") != null)
                    if (com.sina.weibo.sdk.a.a((Context)localObject2, (String)localObject1))
                      break label535;
                }
              }
            for (int i = j; ; i = 1)
            {
              if (i == 0)
                break label539;
              localObject2 = paramIntent.getStringExtra("error");
              localObject1 = localObject2;
              if (localObject2 == null)
                localObject1 = paramIntent.getStringExtra("error_type");
              if (localObject1 == null)
                break label636;
              if ((!((String)localObject1).equals("access_denied")) && (!((String)localObject1).equals("OAuthAccessDeniedException")))
                break label541;
              com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login canceled by user.");
              break;
              localObject1 = null;
              break label421;
            }
            break;
            String str = paramIntent.getStringExtra("error_description");
            localObject2 = localObject1;
            if (str != null)
              localObject2 = localObject1 + ":" + str;
            com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login failed: " + (String)localObject2);
            locala.b.a(new WeiboDialogException((String)localObject2, paramInt2, str));
            break;
            localObject1 = paramIntent.getExtras();
            localObject2 = com.sina.weibo.sdk.a.b.a((Bundle)localObject1);
            if ((localObject2 != null) && (((com.sina.weibo.sdk.a.b)localObject2).a()))
            {
              com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login Success! " + ((com.sina.weibo.sdk.a.b)localObject2).toString());
              locala.b.a((Bundle)localObject1);
              break;
            }
            com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Failed to receive access token by SSO");
            locala.a.a(locala.b);
            break;
          }
          if (paramInt2 != 0)
            break;
          if (paramIntent != null)
          {
            com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login failed: " + paramIntent.getStringExtra("error"));
            locala.b.a(new WeiboDialogException(paramIntent.getStringExtra("error"), paramIntent.getIntExtra("error_code", -1), paramIntent.getStringExtra("failing_url")));
            break;
          }
          com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login canceled by user.");
          break;
        }
        if (paramInt1 != 40000)
          break;
        if (paramInt2 == -1)
        {
          localObject1 = paramIntent.getExtras();
          localObject2 = com.sina.weibo.sdk.a.b.a((Bundle)localObject1);
          if ((localObject2 == null) || (!((com.sina.weibo.sdk.a.b)localObject2).a()))
            break;
          com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login Success! " + ((com.sina.weibo.sdk.a.b)localObject2).toString());
          locala.b.a((Bundle)localObject1);
          break;
        }
        if (paramInt2 != 0)
          break;
        if (paramIntent != null)
        {
          com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login failed: " + paramIntent.getStringExtra("error"));
          localObject2 = paramIntent.getStringExtra("error");
          localObject1 = localObject2;
          if (localObject2 == null)
            localObject1 = paramIntent.getStringExtra("error_type");
          if (localObject1 == null)
            break;
          locala.b.a(new WeiboDialogException(paramIntent.getStringExtra("error"), paramIntent.getIntExtra("error_code", -1), paramIntent.getStringExtra("error_description")));
          break;
        }
        com.sina.weibo.sdk.d.i.a("Weibo_SSO_login", "Login canceled by user.");
        break;
      }
      while ((paramInt1 != 604) || (paramInt2 != -1) || (paramIntent == null));
      paramIntent = (CountryCode)paramIntent.getParcelableExtra(com.bingerz.android.countrycodepicker.g.a);
    }
    while (paramIntent == null);
    label535: label539: label541: this.n.setText(paramIntent.a());
    if (com.nut.blehunter.d.i.a(this.n, this.o))
    {
      this.o.setTextColor(getResources().getColor(2131427348));
      return;
    }
    this.o.setTextColor(getResources().getColor(17170454));
  }

  public void onClick(View paramView)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    Object localObject1;
    Object localObject2;
    switch (paramView.getId())
    {
    default:
    case 2131558589:
    case 2131558590:
    case 2131558588:
    case 2131558595:
    case 2131558596:
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              paramView = new Intent();
              paramView.setClass(this, ResetPasswordActivity.class);
              startActivity(paramView);
              return;
              startActivityForResult(new Intent(this, RegisterActivity.class), 1);
              return;
              com.umeng.analytics.b.a(this, "login_phone_number");
              if (this.A.getCurrentItem() == 0)
              {
                this.z = 1;
                paramView = this.q.getText().toString().trim();
                if (TextUtils.isEmpty(this.o.getText().toString().trim()))
                {
                  com.nut.blehunter.d.n.b(this, 2131099943);
                  return;
                }
                if (!com.nut.blehunter.d.i.a(this.n, this.o))
                {
                  a(getString(2131099945), getString(2131099947), getString(2131099790));
                  return;
                }
                if (TextUtils.isEmpty(paramView))
                {
                  com.nut.blehunter.d.n.b(this, 2131099944);
                  return;
                }
                o();
                localObject1 = this.n.getText().toString().trim();
                localObject2 = this.o.getText().toString().trim();
                a(com.nut.blehunter.rxApi.a.a().login("mobile", LoginRequestBody.createWithMobile((String)localObject1, (String)localObject2, paramView)));
                return;
              }
            }
            while (this.A.getCurrentItem() != 1);
            this.z = 2;
            paramView = this.p.getText().toString().trim();
            localObject1 = this.r.getText().toString().trim();
            if (TextUtils.isEmpty(paramView))
            {
              com.nut.blehunter.d.n.a(this, 2131099891);
              return;
            }
            if (!com.nut.blehunter.d.h.b(paramView))
            {
              com.nut.blehunter.d.n.a(this, 2131100099);
              return;
            }
            if (TextUtils.isEmpty((CharSequence)localObject1))
            {
              com.nut.blehunter.d.n.b(this, 2131099944);
              return;
            }
            o();
            a(com.nut.blehunter.rxApi.a.a().login("email", LoginRequestBody.createWithEmail(paramView, (String)localObject1)));
            return;
            com.umeng.analytics.b.a(this, "login_facebook");
            m.a().a(this, true);
            this.z = 3;
            paramView = Session.getActiveSession();
          }
          while (paramView == null);
          if ((!paramView.isOpened()) && (!paramView.isClosed()))
          {
            paramView.openForRead(new Session.OpenRequest(this).setPermissions(Arrays.asList(new String[] { "public_profile" })).setCallback(this.t));
            return;
          }
          Session.openActiveSession(this, true, this.t);
          return;
          com.umeng.analytics.b.a(this, "login_twitter");
          m.a().a(this, true);
          this.z = 4;
          if (this.s == null)
            this.s = new com.twitter.sdk.android.core.identity.n();
          paramView = this.s;
          localObject1 = new av(this);
          if (this == null)
            throw new IllegalArgumentException("Activity must not be null.");
          if (isFinishing())
          {
            io.fabric.sdk.android.f.b().c("Twitter", "Cannot authorize, activity is finishing.", null);
            return;
          }
          com.twitter.sdk.android.core.identity.n.a();
          localObject1 = new p(paramView.b, (com.twitter.sdk.android.core.f)localObject1);
          if (com.twitter.sdk.android.core.identity.k.a(this))
          {
            io.fabric.sdk.android.f.b().a("Twitter", "Using SSO");
            bool1 = paramView.a.a(this, new com.twitter.sdk.android.core.identity.k(paramView.c, (com.twitter.sdk.android.core.f)localObject1, TwitterAuthConfig.a()));
          }
        }
        while (bool1);
        io.fabric.sdk.android.f.b().a("Twitter", "Using OAuth");
      }
      while (paramView.a.a(this, new com.twitter.sdk.android.core.identity.g(paramView.c, (com.twitter.sdk.android.core.f)localObject1, TwitterAuthConfig.a())));
      ((p)localObject1).a(new TwitterAuthException("Authorize failed."));
      return;
    case 2131558597:
      com.umeng.analytics.b.a(this, "login_qq");
      this.z = 5;
      if (this.v == null)
        this.v = com.tencent.tauth.c.a(getString(2131100172), getApplicationContext());
      if (this.w == null)
        this.w = new be(this, (byte)0);
      localObject1 = this.v;
      paramView = this.w;
      com.tencent.open.a.h.c("openSDK_LOG.Tencent", "login() with activity, scope is " + "");
      localObject1 = ((com.tencent.tauth.c)localObject1).a;
      com.tencent.open.a.h.c("openSDK_LOG.QQAuth", "login()");
      com.tencent.open.a.h.c("openSDK_LOG.QQAuth", "-->login activity: " + this);
      ((u)localObject1).a(this, "", paramView);
      return;
    case 2131558598:
      com.umeng.analytics.b.a(this, "login_weibo");
      this.z = 6;
      paramView = getString(2131100175);
      if (this.y == null)
        this.y = new com.sina.weibo.sdk.a.a(this, paramView, "http://www.nutspace.com/weibo/callback", "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read,follow_app_official_microblog,invitation_write");
      if (this.x == null)
        this.x = new com.sina.weibo.sdk.a.a.a(this, this.y);
      paramView = this.x;
      localObject1 = new bf(this);
      localObject2 = com.sina.weibo.sdk.a.a.c.a;
      paramView.d = 32973;
      paramView.b = ((com.sina.weibo.sdk.a.c)localObject1);
      if (localObject2 != com.sina.weibo.sdk.a.a.c.b)
        break;
    case 2131558818:
    }
    for (int i = 1; ; i = 0)
    {
      if (localObject2 == com.sina.weibo.sdk.a.a.c.c)
        paramView.a.a((com.sina.weibo.sdk.a.c)localObject1);
      while (true)
      {
        com.sina.weibo.sdk.b.i.a(paramView.c, paramView.f.a).a();
        return;
        localObject1 = paramView.c.getApplicationContext();
        int j;
        if ((paramView.e != null) && (paramView.e.a()))
        {
          j = 1;
          label1042: if (j != 0)
            break label1093;
        }
        label1093: Intent localIntent;
        for (bool1 = bool2; ; bool1 = ((Context)localObject1).bindService(localIntent, paramView.g, 1))
        {
          if (bool1)
            break label1137;
          if (i == 0)
            break label1139;
          if (paramView.b == null)
            break;
          paramView.b.a(new WeiboException("not install weibo client!!!!!"));
          break;
          j = 0;
          break label1042;
          localObject2 = paramView.e.a;
          localIntent = new Intent("com.sina.weibo.remotessoservice");
          localIntent.setPackage((String)localObject2);
        }
        label1137: continue;
        label1139: paramView.a.a(paramView.b);
      }
      new com.bingerz.android.countrycodepicker.g();
      com.bingerz.android.countrycodepicker.g.a(this);
      return;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i();
    setContentView(2130903084);
    b(2131100078);
    this.A = ((ViewPager)findViewById(2131558587));
    Object localObject2 = getLayoutInflater();
    Object localObject1 = new ArrayList();
    View localView = ((LayoutInflater)localObject2).inflate(2130903196, null);
    localObject2 = ((LayoutInflater)localObject2).inflate(2130903195, null);
    ((ArrayList)localObject1).add(localView);
    ((ArrayList)localObject1).add(localObject2);
    this.B = new ba(this, (List)localObject1);
    this.A.setAdapter(this.B);
    localObject1 = (PagerSlidingTabStrip)findViewById(2131558586);
    ((PagerSlidingTabStrip)localObject1).setViewPager(this.A);
    ((PagerSlidingTabStrip)localObject1).setOnPageChangeListener(this.m);
    this.A.a(this.m);
    findViewById(2131558589).setOnClickListener(this);
    findViewById(2131558590).setOnClickListener(this);
    findViewById(2131558588).setOnClickListener(this);
    findViewById(2131558595).setOnClickListener(this);
    findViewById(2131558596).setOnClickListener(this);
    findViewById(2131558597).setOnClickListener(this);
    findViewById(2131558598).setOnClickListener(this);
    ((SlidingDrawer)findViewById(2131558591)).setOnDrawerOpenListener(new at(this));
    ((SlidingDrawer)findViewById(2131558591)).setOnDrawerCloseListener(new au(this));
    this.t = new bd(this, (byte)0);
    this.u = new UiLifecycleHelper(this, this.t);
    this.u.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.u.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    this.u.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.u.onResume();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    this.u.onSaveInstanceState(paramBundle);
  }

  protected void onStart()
  {
    super.onStart();
  }

  protected void onStop()
  {
    k();
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.LoginActivity
 * JD-Core Version:    0.6.2
 */