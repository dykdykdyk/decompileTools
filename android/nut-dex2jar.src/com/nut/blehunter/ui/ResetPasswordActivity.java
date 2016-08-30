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
import com.nut.blehunter.d.h;
import com.nut.blehunter.d.i;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.model.ResetPasswordRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.widget.ClearEditText;
import java.util.ArrayList;
import retrofit2.Call;

public class ResetPasswordActivity extends b
  implements TextWatcher, View.OnClickListener
{
  cr m = new di(this);
  CountDownTimer n = new dj(this);
  private Button o;
  private TextView p;
  private ClearEditText q;
  private EditText r;
  private EditText s;
  private EditText t;
  private TextView u;
  private ViewPager v;
  private do w;
  private boolean x = false;
  private int y = 0;
  private final String z = "NUT_RESET_PASSWORD";

  private void g()
  {
    if (((TextView)findViewById(2131558818)).getText().toString().equals("+86"))
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
        this.u.setVisibility(0);
        if ((!this.x) && (this.y != 1))
        {
          paramView = this.p.getText().toString().trim();
          String str = this.q.getText().toString().trim();
          k.a(this);
          a.a().getCaptcha("captcha", GetCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(paramView, str, "NUT_RESET_PASSWORD")).enqueue(new dk(this));
          u.a("NTUIEventAuthCode", "RESEND_BUTTON_TAPPED");
        }
        while (this.y == 0)
        {
          com.umeng.analytics.b.a(this, "register_acquire_captcha");
          return;
          this.y += 1;
          g();
          com.umeng.analytics.b.a(this, "register_acquire_captcha_error");
        }
      }
      while (this.y <= 0);
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
    setContentView(2130903098);
    b(2131100094);
    this.v = ((ViewPager)findViewById(2131558587));
    Object localObject = getLayoutInflater();
    paramBundle = new ArrayList();
    View localView = ((LayoutInflater)localObject).inflate(2130903200, null);
    localObject = ((LayoutInflater)localObject).inflate(2130903199, null);
    paramBundle.add(localView);
    paramBundle.add(localObject);
    this.w = new do(this, paramBundle);
    this.v.setAdapter(this.w);
    paramBundle = (PagerSlidingTabStrip)findViewById(2131558586);
    paramBundle.setViewPager(this.v);
    paramBundle.setOnPageChangeListener(this.m);
    this.v.a(this.m);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = false;
    getMenuInflater().inflate(2131623948, paramMenu);
    boolean bool1;
    if (this.v.getCurrentItem() == 0)
    {
      String str1 = this.r.getText().toString().trim();
      String str2 = this.s.getText().toString().trim();
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
      paramMenu.findItem(2131558925).setEnabled(bool1);
      return true;
      bool1 = bool2;
      if (this.v.getCurrentItem() == 1)
      {
        bool1 = bool2;
        if (!TextUtils.isEmpty(this.t.getText().toString().trim()))
          bool1 = true;
      }
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    String str1;
    if (paramMenuItem.getItemId() == 2131558925)
    {
      if (this.v.getCurrentItem() != 0)
        break label159;
      str1 = this.p.getText().toString().trim();
      String str2 = this.q.getText().toString().trim();
      String str3 = this.r.getText().toString().trim();
      String str4 = this.s.getText().toString().trim();
      if (TextUtils.isEmpty(str3))
      {
        e.a(this);
        return false;
      }
      if ((TextUtils.isEmpty(str4)) || (!h.a(str4)))
      {
        e.d(this);
        return false;
      }
      a.a().resetPassword(new ResetPasswordRequestBody(str1, str2, str3, str4, null)).enqueue(new dl(this));
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      label159: if (this.v.getCurrentItem() == 1)
      {
        str1 = this.t.getText().toString().trim();
        k.a(this);
        a.a().modifyPasswordByEmail(a.a("email", str1)).enqueue(new dm(this));
      }
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ResetPasswordActivity
 * JD-Core Version:    0.6.2
 */