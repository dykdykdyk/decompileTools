package com.nut.blehunter.ui;

import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.nut.blehunter.a;
import com.umeng.analytics.b;

final class df extends ClickableSpan
{
  private String b;

  df(RegisterActivity paramRegisterActivity, String paramString)
  {
    this.b = paramString;
  }

  public final void onClick(View paramView)
  {
    paramView = new Intent(this.a, JumpWebViewActivity.class);
    paramView.putExtra("URL", this.b);
    this.a.startActivity(paramView);
    if (this.b.contains(a.l))
      b.a(this.a, "register_user_agreement");
    while (!this.b.contains(a.m))
      return;
    b.a(this.a, "register_privary_policy");
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.df
 * JD-Core Version:    0.6.2
 */