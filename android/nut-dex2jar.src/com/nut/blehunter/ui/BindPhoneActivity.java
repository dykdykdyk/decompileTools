package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bingerz.android.countrycodepicker.CountryCode;
import com.bingerz.android.countrycodepicker.g;
import com.nut.blehunter.d.i;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.model.ValidCaptchaRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.ui.b.a.k;
import retrofit2.Call;

public class BindPhoneActivity extends b
  implements View.OnClickListener
{
  private int A;
  private String B;
  private String C;
  private String D;
  private String E;
  private String F;
  private int G = 0;
  CountDownTimer m = new s(this);
  CountDownTimer n = new t(this);
  private final String o = "BIND_MOBILE";
  private final String p = "NUT_RESET_PASSWORD";
  private final String q = "MODIFY_MOBILE_OLD";
  private final String r = "MODIFY_MOBILE_NEW";
  private TextView s;
  private EditText t;
  private EditText u;
  private TextView v;
  private EditText w;
  private EditText x;
  private TextView y;
  private Menu z;

  private void a(TextView paramTextView, EditText paramEditText)
  {
    if (!i.a(paramTextView, paramEditText))
    {
      e.b(this);
      return;
    }
    paramTextView = paramTextView.getText().toString().trim();
    paramEditText = paramEditText.getText().toString().trim();
    if (paramTextView.equals("+86"))
      e.c(this);
    while (true)
    {
      com.nut.blehunter.u.a("NTUIEventAuthCode", "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED");
      return;
      Intent localIntent = new Intent(this, SendMailActivity.class);
      localIntent.putExtra("country", paramTextView);
      localIntent.putExtra("mobile", paramEditText);
      startActivity(localIntent);
    }
  }

  private void b(String paramString1, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)))
      return;
    k.a(this);
    com.nut.blehunter.rxApi.a.a().getCaptcha("captcha", GetCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(paramString1, paramString2, paramString3)).enqueue(new n(this, paramString3));
  }

  private static boolean d(int paramInt)
  {
    return (paramInt == 100) || (paramInt == 102);
  }

  private void e(int paramInt)
  {
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131558810);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131558817);
    LinearLayout localLinearLayout3 = (LinearLayout)findViewById(2131558823);
    switch (paramInt)
    {
    default:
      return;
    case 0:
      localLinearLayout1.setVisibility(0);
      localLinearLayout2.setVisibility(8);
      localLinearLayout3.setVisibility(8);
      return;
    case 1:
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(0);
      localLinearLayout3.setVisibility(8);
      return;
    case 2:
    }
    localLinearLayout1.setVisibility(8);
    localLinearLayout2.setVisibility(8);
    localLinearLayout3.setVisibility(0);
    ((TextView)findViewById(2131558824)).setText(getString(2131099773, new Object[] { this.C }));
    this.m.start();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 604:
    }
    TextView localTextView2;
    do
    {
      do
      {
        do
          return;
        while (paramIntent == null);
        paramIntent = (CountryCode)paramIntent.getParcelableExtra(g.a);
      }
      while (paramIntent == null);
      TextView localTextView1 = (TextView)findViewById(2131558818);
      localTextView2 = (TextView)findViewById(2131558811);
      if (localTextView1 != null)
        localTextView1.setText(paramIntent.a());
    }
    while (localTextView2 == null);
    localTextView2.setText(paramIntent.a());
  }

  public void onBackPressed()
  {
    if (d(this.A));
    for (int i = 1; this.G > i; i = 0)
    {
      this.G -= 1;
      e(this.G);
      return;
    }
    if (this.A == 102)
      p();
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131558819:
    default:
    case 2131558815:
    case 2131558813:
    case 2131558821:
    case 2131558704:
      String str1;
      String str2;
      String str3;
      boolean bool;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if (!i.a(this.v, this.w))
              {
                e.b(this);
                return;
              }
              this.F = this.x.getText().toString();
            }
            while (TextUtils.isEmpty(this.F));
            this.D = this.v.getText().toString().trim();
            this.E = this.w.getText().toString().trim();
            str1 = this.D;
            str2 = this.E;
            str3 = this.F;
            bool = d(this.A);
          }
          while ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)));
          k.a(this);
          if (bool);
          for (paramView = "BIND_MOBILE"; ; paramView = "MODIFY_MOBILE_OLD")
          {
            com.nut.blehunter.rxApi.a.a().validCaptcha(ValidCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(str1, str2, paramView, str3)).enqueue(new o(this));
            return;
          }
          if (!i.a(this.v, this.w))
          {
            e.b(this);
            return;
          }
          this.D = this.v.getText().toString().trim();
          this.E = this.w.getText().toString().trim();
          paramView = m.a().b();
          if ((paramView != null) && (!this.E.equals(paramView.b())))
          {
            e.b(this);
            return;
          }
          this.n.cancel();
          b(this.D, this.E, "MODIFY_MOBILE_OLD");
          this.n.start();
          findViewById(2131558816).setVisibility(0);
          return;
          if (!i.a(this.s, this.t))
          {
            e.b(this);
            return;
          }
          if (d(this.A));
          for (paramView = "BIND_MOBILE"; ; paramView = "MODIFY_MOBILE_NEW")
          {
            this.B = this.s.getText().toString().trim();
            this.C = this.t.getText().toString().trim();
            b(this.B, this.C, paramView);
            return;
          }
          str1 = this.u.getText().toString();
        }
        while (TextUtils.isEmpty(str1));
        str2 = this.B;
        str3 = this.C;
        bool = d(this.A);
      }
      while ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)) || (TextUtils.isEmpty(str1)));
      k.a(this);
      if (bool);
      for (paramView = "BIND_MOBILE"; ; paramView = "MODIFY_MOBILE_NEW")
      {
        com.nut.blehunter.rxApi.a.a().validCaptcha(ValidCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(str2, str3, paramView, str1)).enqueue(new p(this, bool, str2, str3, str1));
        return;
      }
    case 2131558826:
      if (d(this.A));
      for (paramView = "BIND_MOBILE"; ; paramView = "MODIFY_MOBILE_NEW")
      {
        b(this.B, this.C, paramView);
        this.m.cancel();
        findViewById(2131558826).setEnabled(false);
        this.m.start();
        com.nut.blehunter.u.a("NTUIEventAuthCode", "RESEND_BUTTON_TAPPED");
        return;
      }
    case 2131558827:
      a(this.s, this.t);
      return;
    case 2131558816:
      a(this.v, this.w);
      return;
    case 2131558811:
    case 2131558818:
    }
    new g();
    g.a(this);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903075);
    this.A = getIntent().getIntExtra("bind_type", 100);
    if (this.A == 100)
    {
      this.G += 1;
      a(getString(2131100076));
    }
    while (true)
    {
      this.s = ((TextView)findViewById(2131558818));
      this.t = ((EditText)findViewById(2131558819));
      this.u = ((EditText)findViewById(2131558825));
      this.v = ((TextView)findViewById(2131558811));
      this.w = ((EditText)findViewById(2131558812));
      this.x = ((EditText)findViewById(2131558814));
      this.y = ((TextView)findViewById(2131558822));
      this.t.setOnClickListener(this);
      this.u.setOnClickListener(this);
      findViewById(2131558815).setOnClickListener(this);
      findViewById(2131558813).setOnClickListener(this);
      findViewById(2131558821).setOnClickListener(this);
      findViewById(2131558704).setOnClickListener(this);
      findViewById(2131558826).setOnClickListener(this);
      findViewById(2131558827).setOnClickListener(this);
      findViewById(2131558816).setOnClickListener(this);
      this.s.setText(i.b(this));
      this.s.setOnClickListener(this);
      this.v.setText(i.b(this));
      this.v.setOnClickListener(this);
      findViewById(2131558820).setVisibility(0);
      Object localObject = getString(2131099772);
      paramBundle = localObject.split("%1")[1];
      String str = localObject.split("%2")[1];
      localObject = ((String)localObject).replace("%1", "").replace("%2", "");
      int i = ((String)localObject).indexOf(paramBundle);
      int j = ((String)localObject).indexOf(str);
      localObject = new SpannableString((CharSequence)localObject);
      ((SpannableString)localObject).setSpan(new ForegroundColorSpan(getResources().getColor(2131427357)), i, paramBundle.length() + i, 33);
      ((SpannableString)localObject).setSpan(new ForegroundColorSpan(getResources().getColor(2131427357)), j, str.length() + j, 33);
      ((SpannableString)localObject).setSpan(new u(this, com.nut.blehunter.a.l), i, paramBundle.length() + i, 33);
      ((SpannableString)localObject).setSpan(new u(this, com.nut.blehunter.a.m), j, str.length() + j, 33);
      this.y.setText((CharSequence)localObject);
      this.y.setMovementMethod(LinkMovementMethod.getInstance());
      e(this.G);
      return;
      if (this.A == 101)
      {
        a(getString(2131100080));
      }
      else if (this.A == 102)
      {
        this.G += 1;
        a(getString(2131100076));
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.z = paramMenu;
    getMenuInflater().inflate(2131623947, paramMenu);
    if ((this.A != 102) && (this.z != null))
      this.z.findItem(2131558924).setVisible(false);
    return true;
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.m != null)
    {
      this.m.cancel();
      this.m = null;
    }
    if (this.n != null)
    {
      this.n.cancel();
      this.n = null;
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558924)
      finish();
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.BindPhoneActivity
 * JD-Core Version:    0.6.2
 */