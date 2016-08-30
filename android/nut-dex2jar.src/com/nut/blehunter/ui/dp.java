package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import com.nut.blehunter.d.i;

final class dp
  implements TextWatcher
{
  dp(do paramdo)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (i.a(ResetPasswordActivity.d(this.a.b), ResetPasswordActivity.e(this.a.b)))
    {
      ResetPasswordActivity.f(this.a.b);
      ResetPasswordActivity.g(this.a.b);
      if (this.a.b.n != null)
        this.a.b.n.cancel();
      ResetPasswordActivity.a(this.a.b).setText(2131099737);
      ResetPasswordActivity.a(this.a.b).setEnabled(true);
    }
    while (true)
    {
      ResetPasswordActivity.h(this.a.b);
      return;
      ResetPasswordActivity.a(this.a.b).setEnabled(false);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dp
 * JD-Core Version:    0.6.2
 */