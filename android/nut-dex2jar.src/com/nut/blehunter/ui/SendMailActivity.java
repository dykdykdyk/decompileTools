package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.nut.blehunter.d.h;
import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.model.GetCaptchaRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import retrofit2.Call;

public class SendMailActivity extends b
  implements View.OnClickListener
{
  private String m;
  private String n;

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558704:
    }
    do
    {
      return;
      paramView = ((EditText)findViewById(2131558703)).getText().toString().trim();
      if (!h.b(paramView))
      {
        n.b(this, 2131100099);
        return;
      }
    }
    while (TextUtils.isEmpty(this.n));
    String str1 = this.m;
    String str2 = this.n;
    a.a().getCaptcha("mailCaptcha", GetCaptchaRequestBody.createGetCaptchaRequestBodyWithEmail(str1, str2, paramView)).enqueue(new ei(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
    b(2131100085);
    paramBundle = getIntent();
    this.m = paramBundle.getStringExtra("country");
    this.n = paramBundle.getStringExtra("mobile");
    findViewById(2131558704).setOnClickListener(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SendMailActivity
 * JD-Core Version:    0.6.2
 */