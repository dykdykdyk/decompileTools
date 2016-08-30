package com.nut.blehunter.ui;

import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

final class u extends ClickableSpan
{
  private String b;

  u(BindPhoneActivity paramBindPhoneActivity, String paramString)
  {
    this.b = paramString;
  }

  public final void onClick(View paramView)
  {
    paramView = new Intent(this.a, JumpWebViewActivity.class);
    paramView.putExtra("URL", this.b);
    this.a.startActivity(paramView);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.u
 * JD-Core Version:    0.6.2
 */