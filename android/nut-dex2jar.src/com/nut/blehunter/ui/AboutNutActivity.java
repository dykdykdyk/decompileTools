package com.nut.blehunter.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.ui.b.a.k;
import retrofit2.Call;

public class AboutNutActivity extends b
  implements View.OnClickListener
{
  private final int m = 20;
  private final int n = 21;

  private void d(int paramInt)
  {
    Intent localIntent = new Intent();
    switch (paramInt)
    {
    default:
    case 20:
    case 21:
    }
    while (true)
    {
      startActivity(localIntent);
      return;
      localIntent.setClass(this, JumpWebViewActivity.class);
      StringBuilder localStringBuilder = new StringBuilder().append(com.nut.blehunter.a.k);
      Object localObject = m.a().b();
      if ((localObject != null) && (!TextUtils.isEmpty(((User)localObject).i)));
      for (localObject = ((User)localObject).i; ; localObject = "")
      {
        localIntent.putExtra("URL", (String)localObject);
        break;
      }
      localIntent.setClass(this, JumpWebViewActivity.class);
      localIntent.putExtra("URL", com.nut.blehunter.a.q);
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558518:
      paramView = new Intent();
      paramView.setClass(this, JumpWebViewActivity.class);
      paramView.putExtra("URL", com.nut.blehunter.a.m);
      startActivity(paramView);
      return;
    case 2131558519:
      paramView = new Intent();
      paramView.setClass(this, JumpWebViewActivity.class);
      paramView.putExtra("URL", com.nut.blehunter.a.l);
      startActivity(paramView);
      return;
    case 2131558520:
      d(20);
      com.umeng.analytics.b.a(this, "app_settings_feedback");
      return;
    case 2131558521:
      d(21);
      return;
    case 2131558522:
    }
    k.a(this);
    com.nut.blehunter.rxApi.a.a().version().enqueue(new a(this));
    com.umeng.analytics.b.a(this, "new_version_check");
  }

  // ERROR //
  protected void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 139	com/nut/blehunter/ui/b:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: ldc 140
    //   8: invokevirtual 143	com/nut/blehunter/ui/AboutNutActivity:setContentView	(I)V
    //   11: aload_0
    //   12: ldc 144
    //   14: invokevirtual 146	com/nut/blehunter/ui/AboutNutActivity:b	(I)V
    //   17: aload_0
    //   18: ldc 147
    //   20: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   23: aload_0
    //   24: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   27: aload_0
    //   28: ldc 156
    //   30: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   33: aload_0
    //   34: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   37: aload_0
    //   38: ldc 157
    //   40: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   43: aload_0
    //   44: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   47: aload_0
    //   48: ldc 158
    //   50: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   53: aload_0
    //   54: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   57: aload_0
    //   58: ldc 159
    //   60: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   63: aload_0
    //   64: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   67: aload_0
    //   68: ldc 160
    //   70: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   73: aload_0
    //   74: invokevirtual 155	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   77: aload_0
    //   78: invokevirtual 164	com/nut/blehunter/ui/AboutNutActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   81: aload_0
    //   82: invokevirtual 167	com/nut/blehunter/ui/AboutNutActivity:getPackageName	()Ljava/lang/String;
    //   85: iconst_0
    //   86: invokevirtual 173	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   89: getfield 178	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   92: astore_3
    //   93: aload_3
    //   94: astore_1
    //   95: invokestatic 52	com/nut/blehunter/entity/m:a	()Lcom/nut/blehunter/entity/m;
    //   98: aload_0
    //   99: invokevirtual 181	com/nut/blehunter/entity/m:a	(Landroid/content/Context;)Z
    //   102: ifeq +48 -> 150
    //   105: aload_0
    //   106: invokevirtual 164	com/nut/blehunter/ui/AboutNutActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   109: aload_0
    //   110: invokevirtual 167	com/nut/blehunter/ui/AboutNutActivity:getPackageName	()Ljava/lang/String;
    //   113: iconst_0
    //   114: invokevirtual 173	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   117: getfield 184	android/content/pm/PackageInfo:versionCode	I
    //   120: istore_2
    //   121: new 35	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 36	java/lang/StringBuilder:<init>	()V
    //   128: aload_3
    //   129: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 186
    //   134: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: iload_2
    //   138: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   141: ldc 191
    //   143: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 73	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: astore_1
    //   150: aload_0
    //   151: ldc 192
    //   153: invokevirtual 151	com/nut/blehunter/ui/AboutNutActivity:findViewById	(I)Landroid/view/View;
    //   156: checkcast 194	android/widget/TextView
    //   159: aload_1
    //   160: invokevirtual 198	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   163: return
    //   164: astore_3
    //   165: ldc 79
    //   167: astore_1
    //   168: aload_3
    //   169: ldc 200
    //   171: iconst_0
    //   172: anewarray 202	java/lang/Object
    //   175: invokestatic 207	b/a/a:b	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   178: goto -28 -> 150
    //   181: astore 4
    //   183: aload_3
    //   184: astore_1
    //   185: aload 4
    //   187: astore_3
    //   188: goto -20 -> 168
    //
    // Exception table:
    //   from	to	target	type
    //   77	93	164	android/content/pm/PackageManager$NameNotFoundException
    //   95	150	181	android/content/pm/PackageManager$NameNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.AboutNutActivity
 * JD-Core Version:    0.6.2
 */