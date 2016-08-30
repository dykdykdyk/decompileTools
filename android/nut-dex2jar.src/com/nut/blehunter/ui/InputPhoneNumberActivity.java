package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.bingerz.android.countrycodepicker.CountryCode;
import com.bingerz.android.countrycodepicker.g;
import com.nut.blehunter.d.i;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.k;
import retrofit2.Call;

public class InputPhoneNumberActivity extends b
  implements View.OnClickListener
{
  CountDownTimer m = new ap(this);
  private final String n = "LOSE_RECORD";
  private TextView o;
  private EditText p;
  private EditText q;
  private int r = 0;

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
    while (paramIntent == null);
    ((TextView)findViewById(2131558818)).setText(paramIntent.a());
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558813:
      if (!i.a(this.o, this.p))
      {
        e.b(this);
        return;
      }
      this.m.cancel();
      paramView = this.o.getText().toString().trim();
      String str = this.p.getText().toString().trim();
      if ((TextUtils.isEmpty(paramView)) || (TextUtils.isEmpty(str)) || (TextUtils.isEmpty("LOSE_RECORD")));
      while (true)
      {
        this.m.start();
        this.r += 1;
        if (this.r <= 1)
          break;
        u.a("NTUIEventAuthCode", "RESEND_BUTTON_TAPPED");
        return;
        k.a(this);
        a.a().getCaptcha("captcha", GetCaptchaRequestBody.createGetCaptchaRequestBodyWithMobile(paramView, str, "LOSE_RECORD")).enqueue(new aq(this));
      }
    case 2131558830:
      e.c(this);
      u.a("NTUIEventAuthCode", "CANNOT_RECEIVE_AUTHCODE_BUTTON_TAPPED");
      return;
    case 2131558818:
    }
    new g();
    g.a(this);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903082);
    if (!TextUtils.isEmpty(getIntent().getStringExtra("phone")))
      b(2131100080);
    while (true)
    {
      this.o = ((TextView)findViewById(2131558818));
      this.o.setOnClickListener(this);
      this.p = ((EditText)findViewById(2131558819));
      this.q = ((EditText)findViewById(2131558825));
      findViewById(2131558813).setOnClickListener(this);
      findViewById(2131558830).setOnClickListener(this);
      ((TextView)findViewById(2131558818)).setText(i.b(this));
      this.o.setOnTouchListener(new ao(this));
      return;
      b(2131100081);
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623939, paramMenu);
    return true;
  }

  public void onDestroy()
  {
    if (this.m != null)
    {
      this.m.cancel();
      this.m = null;
    }
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558917)
    {
      String str1 = this.o.getText().toString().trim();
      String str2 = this.p.getText().toString().trim();
      String str3 = this.q.getText().toString();
      if (TextUtils.isEmpty(this.p.getText().toString().trim()))
      {
        n.b(this, 2131099943);
        return false;
      }
      if (!i.a(this.o, this.p))
      {
        e.b(this);
        return false;
      }
      Intent localIntent = new Intent();
      localIntent.putExtra("country", str1);
      localIntent.putExtra("phone", str2);
      if (!TextUtils.isEmpty(str3))
        localIntent.putExtra("captcha", str3);
      setResult(-1, localIntent);
      finish();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.InputPhoneNumberActivity
 * JD-Core Version:    0.6.2
 */