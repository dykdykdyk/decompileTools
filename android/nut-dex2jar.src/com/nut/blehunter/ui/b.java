package com.nut.blehunter.ui;

import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.b.j;
import android.support.v7.a.s;
import android.support.v7.a.u;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.ble.BLEService;
import com.nut.blehunter.service.NutTrackerService;

public class b extends s
{
  private Toolbar m;
  private Messenger n;
  private Messenger o;
  private Intent p;
  private String q;
  private ServiceConnection r = new c(this);

  public final void a(int paramInt, Bundle paramBundle)
  {
    try
    {
      Message localMessage = Message.obtain(null, paramInt);
      if (localMessage != null)
      {
        if (paramBundle != null)
          localMessage.setData(paramBundle);
        localMessage.replyTo = this.n;
        if (this.o != null)
          this.o.send(localMessage);
      }
      return;
    }
    catch (RemoteException paramBundle)
    {
      this.o = null;
    }
  }

  public void a(Message paramMessage)
  {
  }

  protected final void a(String paramString)
  {
    Toolbar localToolbar = l();
    if (localToolbar != null)
      ((TextView)localToolbar.findViewById(2131558517)).setText(paramString);
  }

  protected final void a(String paramString1, String paramString2, String paramString3)
  {
    com.nut.blehunter.ui.b.a.b localb = new com.nut.blehunter.ui.b.a.b(this);
    localb.a(paramString1);
    localb.b(paramString2);
    localb.a(paramString3, null);
    localb.a().a(this, "baseDialog");
  }

  public final void b(int paramInt)
  {
    a(getString(paramInt));
  }

  protected final void c(int paramInt)
  {
    Toolbar localToolbar = l();
    if (localToolbar != null)
      ((TextView)localToolbar.findViewById(2131558517)).setTextColor(paramInt);
  }

  public void f()
  {
  }

  public final void i()
  {
    this.n = new Messenger(new h(this));
    this.p = new Intent(this, BLEService.class);
  }

  public final void j()
  {
    bindService(this.p, this.r, 1);
  }

  public final void k()
  {
    if (this.o != null);
    try
    {
      Message localMessage = Message.obtain(null, 2);
      if (localMessage != null)
      {
        localMessage.replyTo = this.n;
        if (this.o != null)
          this.o.send(localMessage);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      this.o = null;
      return;
    }
    finally
    {
      unbindService(this.r);
    }
  }

  public final Toolbar l()
  {
    if (this.m == null)
    {
      this.m = ((Toolbar)findViewById(2131558516));
      if (this.m != null)
      {
        Object localObject = this.m;
        e().a((Toolbar)localObject);
        int i = m();
        if (i > 0)
          ((Toolbar)localObject).setNavigationIcon(i);
        while (true)
        {
          Drawable localDrawable = ((Toolbar)localObject).getNavigationIcon();
          if (localDrawable != null)
            localDrawable.clearColorFilter();
          ((Toolbar)localObject).setNavigationOnClickListener(new d(this));
          localObject = e().a();
          if (localObject != null)
            break;
          throw new RuntimeException("actionbar not found, have you called setSupportActionBar method");
          ((Toolbar)localObject).setNavigationIcon(null);
        }
        ((android.support.v7.a.a)localObject).a();
        ((android.support.v7.a.a)localObject).b();
      }
    }
    return this.m;
  }

  protected int m()
  {
    return 2130838061;
  }

  protected final boolean n()
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if ((localBluetoothAdapter == null) || (!localBluetoothAdapter.isEnabled()))
    {
      startActivity(new Intent("android.bluetooth.adapter.action.REQUEST_ENABLE"));
      return false;
    }
    return true;
  }

  public final void o()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    View localView = getCurrentFocus();
    if (localView == null)
      return;
    localInputMethodManager.hideSoftInputFromWindow(localView.getWindowToken(), 2);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.analytics.b.a(this);
    if (!TextUtils.isEmpty(this.q))
      com.umeng.analytics.b.b(this.q);
  }

  public void onResume()
  {
    super.onResume();
    com.umeng.analytics.b.b(this);
    if (!TextUtils.isEmpty(this.q))
      com.umeng.analytics.b.a(this.q);
  }

  public void onStart()
  {
    super.onStart();
    b.a.a.b("app is in background %s", new Object[] { Boolean.valueOf(NutTrackerApplication.b) });
    if (NutTrackerApplication.b)
    {
      NutTrackerApplication.b = false;
      j.a(this).a(new Intent("com.nutspace.action.app.foreground"));
      n();
    }
  }

  protected final void p()
  {
    Intent localIntent = new Intent(this, NutTrackerService.class);
    localIntent.setAction("com.nutspace.action.logout");
    startService(localIntent);
    q();
  }

  protected final void q()
  {
    Intent localIntent = new Intent(this, MainActivity.class);
    localIntent.setAction("com.nutspace.action.logout");
    startActivity(localIntent);
  }

  protected final void r()
  {
    j.a(this).a(new Intent("com.nutspace.action.restart.schedule.scan"));
  }

  // ERROR //
  protected final void s()
  {
    // Byte code:
    //   0: new 76	com/nut/blehunter/ui/b/a/b
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 79	com/nut/blehunter/ui/b/a/b:<init>	(Landroid/content/Context;)V
    //   8: astore 4
    //   10: aload_0
    //   11: ldc_w 317
    //   14: ldc_w 319
    //   17: invokestatic 324	com/nut/blehunter/d/k:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   20: astore_1
    //   21: ldc_w 319
    //   24: astore_3
    //   25: new 326	org/json/JSONObject
    //   28: dup
    //   29: aload_1
    //   30: invokespecial 327	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   33: astore_2
    //   34: aload_2
    //   35: ldc_w 329
    //   38: invokevirtual 332	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_1
    //   42: aload_2
    //   43: ldc_w 334
    //   46: invokevirtual 332	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   49: astore_2
    //   50: aload_1
    //   51: invokestatic 251	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   54: ifne +10 -> 64
    //   57: aload_2
    //   58: invokestatic 251	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   61: ifeq +35 -> 96
    //   64: ldc_w 336
    //   67: iconst_0
    //   68: anewarray 266	java/lang/Object
    //   71: invokestatic 339	b/a/a:d	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   74: return
    //   75: astore_2
    //   76: ldc_w 319
    //   79: astore_1
    //   80: aload_2
    //   81: ldc_w 341
    //   84: iconst_0
    //   85: anewarray 266	java/lang/Object
    //   88: invokestatic 344	b/a/a:b	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   91: aload_3
    //   92: astore_2
    //   93: goto -43 -> 50
    //   96: aload_0
    //   97: ldc_w 345
    //   100: invokevirtual 103	com/nut/blehunter/ui/b:getString	(I)Ljava/lang/String;
    //   103: astore_3
    //   104: aload 4
    //   106: new 347	java/lang/StringBuilder
    //   109: dup
    //   110: invokespecial 348	java/lang/StringBuilder:<init>	()V
    //   113: aload_3
    //   114: invokevirtual 352	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: aload_1
    //   118: invokevirtual 352	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 356	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokevirtual 82	com/nut/blehunter/ui/b/a/b:a	(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;
    //   127: pop
    //   128: aload 4
    //   130: aload_2
    //   131: invokevirtual 85	com/nut/blehunter/ui/b/a/b:b	(Ljava/lang/String;)Lcom/nut/blehunter/ui/b/a/b;
    //   134: pop
    //   135: aload 4
    //   137: ldc_w 357
    //   140: new 359	com/nut/blehunter/ui/f
    //   143: dup
    //   144: aload_0
    //   145: aload_0
    //   146: invokespecial 362	com/nut/blehunter/ui/f:<init>	(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V
    //   149: invokevirtual 365	com/nut/blehunter/ui/b/a/b:a	(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    //   152: pop
    //   153: aload 4
    //   155: ldc_w 366
    //   158: new 368	com/nut/blehunter/ui/g
    //   161: dup
    //   162: aload_0
    //   163: aload_0
    //   164: invokespecial 369	com/nut/blehunter/ui/g:<init>	(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V
    //   167: invokevirtual 371	com/nut/blehunter/ui/b/a/b:b	(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;
    //   170: pop
    //   171: aload 4
    //   173: invokevirtual 91	com/nut/blehunter/ui/b/a/b:a	()Lcom/nut/blehunter/ui/b/a/a;
    //   176: aload_0
    //   177: ldc 93
    //   179: invokevirtual 98	com/nut/blehunter/ui/b/a/a:a	(Landroid/support/v4/app/v;Ljava/lang/String;)V
    //   182: return
    //   183: astore_2
    //   184: goto -104 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   25	42	75	org/json/JSONException
    //   42	50	183	org/json/JSONException
  }

  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    l();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b
 * JD-Core Version:    0.6.2
 */