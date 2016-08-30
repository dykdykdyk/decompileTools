package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cr;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.astuetz.PagerSlidingTabStrip;
import com.bingerz.android.countrycodepicker.CountryCode;
import com.bingerz.android.countrycodepicker.g;
import com.nut.blehunter.d.i;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.model.RegisterRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.widget.ClearEditText;
import java.util.ArrayList;
import retrofit2.Call;
import rx.schedulers.Schedulers;

public class RegisterActivity extends b
  implements TextWatcher, View.OnClickListener
{
  private final String A = "NUT_REGISTER_ACCOUNT";
  private boolean B = true;
  cr m = new cz(this);
  CountDownTimer n = new de(this);
  private Button o;
  private TextView p;
  private ClearEditText q;
  private EditText r;
  private EditText s;
  private EditText t;
  private EditText u;
  private TextView v;
  private ViewPager w;
  private dg x;
  private boolean y = false;
  private int z = 0;

  private void a(rx.h<String> paramh)
  {
    k.a(this);
    paramh.b(Schedulers.io()).a(new dc(this)).a(rx.a.b.a.a()).a(new db(this));
  }

  private void g()
  {
    if (this.p.getText().toString().equals("+86"))
      e.c(this);
    while (true)
    {
      u.a("NTUIEventAuthCode", "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED");
      return;
      e.a(this, this.p.getText().toString().trim(), this.q.getText().toString().trim());
    }
  }

  public void afterTextChanged(Editable paramEditable)
  {
    invalidateOptionsMenu();
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 604:
    }
    do
    {
      do
        return;
      while (paramIntent == null);
      paramIntent = (CountryCode)paramIntent.getParcelableExtra(g.a);
    }
    while ((this.p == null) || (paramIntent == null));
    this.p.setText(paramIntent.a());
  }

  public void onBackPressed()
  {
    if (this.n != null)
    {
      this.n.cancel();
      this.n = null;
    }
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558826:
      do
      {
        return;
        this.v.setVisibility(0);
        if ((!this.y) && (this.z != 1))
        {
          paramView = this.p.getText().toString().trim();
          String str = this.q.getText().toString().trim();
          k.a(this);
          com.nut.blehunter.rxApi.a.a().getCaptcha("captcha", GetCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(paramView, str, "NUT_REGISTER_ACCOUNT")).enqueue(new da(this));
          u.a("NTUIEventAuthCode", "RESEND_BUTTON_TAPPED");
        }
        while (this.z == 0)
        {
          com.umeng.analytics.b.a(this, "register_acquire_captcha");
          return;
          this.z += 1;
          g();
          com.umeng.analytics.b.a(this, "register_acquire_captcha_error");
        }
      }
      while (this.z <= 0);
      com.umeng.analytics.b.a(this, "register_reacquire_captcha");
      return;
    case 2131558818:
      new g();
      g.a(this);
      return;
    case 2131558816:
    }
    g();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903096);
    b(2131100082);
    this.w = ((ViewPager)findViewById(2131558587));
    Object localObject = getLayoutInflater();
    paramBundle = new ArrayList();
    View localView = ((LayoutInflater)localObject).inflate(2130903198, null);
    localObject = ((LayoutInflater)localObject).inflate(2130903197, null);
    paramBundle.add(localView);
    paramBundle.add(localObject);
    this.x = new dg(this, paramBundle);
    this.w.setAdapter(this.x);
    paramBundle = (PagerSlidingTabStrip)findViewById(2131558586);
    paramBundle.setViewPager(this.w);
    paramBundle.setOnPageChangeListener(this.m);
    this.w.a(this.m);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = false;
    getMenuInflater().inflate(2131623942, paramMenu);
    String str1 = this.r.getText().toString().trim();
    String str2 = this.s.getText().toString().trim();
    String str3 = this.u.getText().toString().trim();
    String str4 = this.t.getText().toString().trim();
    boolean bool1;
    if (this.w.getCurrentItem() == 0)
    {
      bool1 = bool2;
      if (i.a(this.p, this.q))
      {
        bool1 = bool2;
        if (!TextUtils.isEmpty(str1))
        {
          bool1 = bool2;
          if (!TextUtils.isEmpty(str2))
            bool1 = true;
        }
      }
    }
    while (true)
    {
      paramMenu.findItem(2131558915).setEnabled(bool1);
      return true;
      bool1 = bool2;
      if (!TextUtils.isEmpty(str3))
      {
        bool1 = bool2;
        if (!TextUtils.isEmpty(str4))
          bool1 = true;
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 2131558915:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      String str1;
      String str2;
      if (this.w.getCurrentItem() == 0)
      {
        str1 = this.p.getText().toString().trim();
        str2 = this.q.getText().toString().trim();
        String str3 = this.r.getText().toString().trim();
        String str4 = this.s.getText().toString().trim();
        if (TextUtils.isEmpty(str3))
        {
          e.a(this);
          return false;
        }
        if ((TextUtils.isEmpty(str4)) || (!com.nut.blehunter.d.h.a(str4)))
        {
          e.d(this);
          return false;
        }
        a(com.nut.blehunter.rxApi.a.a().register("mobile", RegisterRequestBody.createWithMobile(str1, str2, str3, str4)));
      }
      else
      {
        str1 = this.u.getText().toString().trim();
        str2 = this.t.getText().toString().trim();
        if (!com.nut.blehunter.d.h.b(str1))
        {
          n.a(this, 2131100099);
          return false;
        }
        if ((TextUtils.isEmpty(str2)) || (!com.nut.blehunter.d.h.a(str2)))
        {
          e.d(this);
          return false;
        }
        a(com.nut.blehunter.rxApi.a.a().register("email", RegisterRequestBody.createWithEmail(str1, str2)));
      }
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.RegisterActivity
 * JD-Core Version:    0.6.2
 */