package android.support.v7.a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class aq extends Dialog
  implements t
{
  private u a;

  public aq(Context paramContext, int paramInt)
  {
    super(paramContext, i);
    a().a(null);
    a().i();
  }

  public final u a()
  {
    if (this.a == null)
      this.a = u.a(this, this);
    return this.a;
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().b(paramView, paramLayoutParams);
  }

  public View findViewById(int paramInt)
  {
    return a().a(paramInt);
  }

  public void invalidateOptionsMenu()
  {
    a().f();
  }

  protected void onCreate(Bundle paramBundle)
  {
    a().h();
    super.onCreate(paramBundle);
    a().a(paramBundle);
  }

  protected void onStop()
  {
    super.onStop();
    a().d();
  }

  public void setContentView(int paramInt)
  {
    a().b(paramInt);
  }

  public void setContentView(View paramView)
  {
    a().a(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().a(paramView, paramLayoutParams);
  }

  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    a().a(getContext().getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    a().a(paramCharSequence);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.a.aq
 * JD-Core Version:    0.6.2
 */