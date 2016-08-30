package com.tencent.connect.b;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.open.a.h;
import com.tencent.tauth.b;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

final class d
  implements b
{
  b a;
  private final String c = "sendinstall";
  private final String d = "installwording";
  private final String e = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";

  public d(a parama, b paramb)
  {
    this.a = paramb;
  }

  // ERROR //
  private static Drawable a(String paramString, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 47	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: invokevirtual 51	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   7: astore_1
    //   8: aload_1
    //   9: aload_0
    //   10: invokevirtual 57	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +5 -> 20
    //   18: aconst_null
    //   19: areturn
    //   20: aload_0
    //   21: ldc 59
    //   23: invokevirtual 65	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   26: istore_2
    //   27: iload_2
    //   28: ifeq +61 -> 89
    //   31: aload_1
    //   32: invokestatic 71	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   35: astore_0
    //   36: aload_0
    //   37: ifnull +68 -> 105
    //   40: aload_0
    //   41: invokevirtual 77	android/graphics/Bitmap:getNinePatchChunk	()[B
    //   44: astore_1
    //   45: aload_1
    //   46: invokestatic 83	android/graphics/NinePatch:isNinePatchChunk	([B)Z
    //   49: pop
    //   50: new 85	android/graphics/drawable/NinePatchDrawable
    //   53: dup
    //   54: aload_0
    //   55: aload_1
    //   56: new 87	android/graphics/Rect
    //   59: dup
    //   60: invokespecial 88	android/graphics/Rect:<init>	()V
    //   63: aconst_null
    //   64: invokespecial 91	android/graphics/drawable/NinePatchDrawable:<init>	(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    //   67: astore_0
    //   68: aload_0
    //   69: areturn
    //   70: astore_1
    //   71: aconst_null
    //   72: astore_0
    //   73: aload_1
    //   74: invokevirtual 94	java/io/IOException:printStackTrace	()V
    //   77: aload_0
    //   78: areturn
    //   79: astore_0
    //   80: aload_0
    //   81: invokevirtual 95	java/lang/OutOfMemoryError:printStackTrace	()V
    //   84: aconst_null
    //   85: astore_0
    //   86: goto -50 -> 36
    //   89: aload_1
    //   90: aload_0
    //   91: invokestatic 101	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   94: astore_0
    //   95: aload_1
    //   96: invokevirtual 106	java/io/InputStream:close	()V
    //   99: aload_0
    //   100: areturn
    //   101: astore_1
    //   102: goto -29 -> 73
    //   105: aconst_null
    //   106: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	70	java/io/IOException
    //   20	27	70	java/io/IOException
    //   31	36	70	java/io/IOException
    //   40	68	70	java/io/IOException
    //   80	84	70	java/io/IOException
    //   89	95	70	java/io/IOException
    //   31	36	79	java/lang/OutOfMemoryError
    //   95	99	101	java/io/IOException
  }

  public final void a()
  {
    if (this.a != null)
      this.a.a();
  }

  public final void a(com.tencent.tauth.d paramd)
  {
    if (this.a != null)
      this.a.a(paramd);
  }

  public final void a(Object paramObject)
  {
    Object localObject1;
    int j;
    if (paramObject != null)
    {
      localObject1 = (JSONObject)paramObject;
      if (localObject1 != null)
        j = 0;
    }
    while (true)
    {
      try
      {
        if (((JSONObject)localObject1).getInt("sendinstall") == 1)
        {
          i = 1;
          j = i;
          localObject1 = ((JSONObject)localObject1).getString("installwording");
          localObject4 = URLDecoder.decode((String)localObject1);
          h.a("openSDK_LOG.AuthAgent", " WORDING = " + (String)localObject4 + "xx");
          if ((i == 0) || (TextUtils.isEmpty((CharSequence)localObject4)))
            continue;
          localb = this.a;
          localActivity = (Activity)a.e(this.b).get();
          if (localActivity != null)
          {
            localDialog = new Dialog(localActivity);
            localDialog.requestWindowFeature(1);
            localObject3 = localActivity.getPackageManager();
          }
        }
      }
      catch (JSONException localJSONException)
      {
        try
        {
          b localb;
          Activity localActivity;
          Dialog localDialog;
          localObject1 = ((PackageManager)localObject3).getPackageInfo(localActivity.getPackageName(), 0);
          if (localObject1 == null)
            break label1065;
          localObject1 = ((PackageInfo)localObject1).applicationInfo.loadIcon((PackageManager)localObject3);
          Object localObject5 = new e(this, localDialog, localb, paramObject);
          Object localObject6 = new f(this, localDialog, localb, paramObject);
          Object localObject3 = new ColorDrawable();
          ((ColorDrawable)localObject3).setAlpha(0);
          localDialog.getWindow().setBackgroundDrawable((Drawable)localObject3);
          localObject3 = new DisplayMetrics();
          ((WindowManager)localActivity.getSystemService("window")).getDefaultDisplay().getMetrics((DisplayMetrics)localObject3);
          float f = ((DisplayMetrics)localObject3).density;
          localObject3 = new RelativeLayout(localActivity);
          Object localObject7 = new ImageView(localActivity);
          ((ImageView)localObject7).setImageDrawable((Drawable)localObject1);
          ((ImageView)localObject7).setScaleType(ImageView.ScaleType.FIT_XY);
          ((ImageView)localObject7).setId(1);
          int i = (int)(60.0F * f);
          j = (int)(14.0F * f);
          int k = (int)(18.0F * f);
          int m = (int)(6.0F * f);
          localObject1 = new RelativeLayout.LayoutParams(i, i);
          ((RelativeLayout.LayoutParams)localObject1).addRule(9);
          ((RelativeLayout.LayoutParams)localObject1).setMargins(0, k, m, k);
          ((RelativeLayout)localObject3).addView((View)localObject7, (ViewGroup.LayoutParams)localObject1);
          localObject1 = new TextView(localActivity);
          ((TextView)localObject1).setText((CharSequence)localObject4);
          ((TextView)localObject1).setTextSize(14.0F);
          ((TextView)localObject1).setGravity(3);
          ((TextView)localObject1).setIncludeFontPadding(false);
          ((TextView)localObject1).setPadding(0, 0, 0, 0);
          ((TextView)localObject1).setLines(2);
          ((TextView)localObject1).setId(5);
          ((TextView)localObject1).setMinWidth((int)(185.0F * f));
          Object localObject4 = new RelativeLayout.LayoutParams(-2, -2);
          ((RelativeLayout.LayoutParams)localObject4).addRule(1, 1);
          ((RelativeLayout.LayoutParams)localObject4).addRule(6, 1);
          ((RelativeLayout.LayoutParams)localObject4).setMargins(0, 0, (int)(5.0F * f), 0);
          ((RelativeLayout)localObject3).addView((View)localObject1, (ViewGroup.LayoutParams)localObject4);
          localObject1 = new View(localActivity);
          ((View)localObject1).setBackgroundColor(Color.rgb(214, 214, 214));
          ((View)localObject1).setId(3);
          localObject4 = new RelativeLayout.LayoutParams(-2, 2);
          ((RelativeLayout.LayoutParams)localObject4).addRule(3, 1);
          ((RelativeLayout.LayoutParams)localObject4).addRule(5, 1);
          ((RelativeLayout.LayoutParams)localObject4).addRule(7, 5);
          ((RelativeLayout.LayoutParams)localObject4).setMargins(0, 0, 0, (int)(12.0F * f));
          ((RelativeLayout)localObject3).addView((View)localObject1, (ViewGroup.LayoutParams)localObject4);
          localObject1 = new LinearLayout(localActivity);
          localObject4 = new RelativeLayout.LayoutParams(-2, -2);
          ((RelativeLayout.LayoutParams)localObject4).addRule(5, 1);
          ((RelativeLayout.LayoutParams)localObject4).addRule(7, 5);
          ((RelativeLayout.LayoutParams)localObject4).addRule(3, 3);
          localObject7 = new Button(localActivity);
          ((Button)localObject7).setText("跳过");
          ((Button)localObject7).setBackgroundDrawable(a("buttonNegt.png", localActivity));
          ((Button)localObject7).setTextColor(Color.rgb(36, 97, 131));
          ((Button)localObject7).setTextSize(20.0F);
          ((Button)localObject7).setOnClickListener((View.OnClickListener)localObject6);
          ((Button)localObject7).setId(4);
          localObject6 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
          ((LinearLayout.LayoutParams)localObject6).rightMargin = j;
          ((LinearLayout.LayoutParams)localObject6).leftMargin = ((int)(4.0F * f));
          ((LinearLayout.LayoutParams)localObject6).weight = 1.0F;
          ((LinearLayout)localObject1).addView((View)localObject7, (ViewGroup.LayoutParams)localObject6);
          localObject6 = new Button(localActivity);
          ((Button)localObject6).setText("确定");
          ((Button)localObject6).setTextSize(20.0F);
          ((Button)localObject6).setTextColor(Color.rgb(255, 255, 255));
          ((Button)localObject6).setBackgroundDrawable(a("buttonPost.png", localActivity));
          ((Button)localObject6).setOnClickListener((View.OnClickListener)localObject5);
          localObject5 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
          ((LinearLayout.LayoutParams)localObject5).weight = 1.0F;
          ((LinearLayout.LayoutParams)localObject5).rightMargin = ((int)(4.0F * f));
          ((LinearLayout)localObject1).addView((View)localObject6, (ViewGroup.LayoutParams)localObject5);
          ((RelativeLayout)localObject3).addView((View)localObject1, (ViewGroup.LayoutParams)localObject4);
          localObject1 = new FrameLayout.LayoutParams((int)(279.0F * f), (int)(163.0F * f));
          ((RelativeLayout)localObject3).setPadding(j, 0, (int)(12.0F * f), (int)(12.0F * f));
          ((RelativeLayout)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject1);
          ((RelativeLayout)localObject3).setBackgroundColor(Color.rgb(247, 251, 247));
          localObject1 = new PaintDrawable(Color.rgb(247, 251, 247));
          ((PaintDrawable)localObject1).setCornerRadius(f * 5.0F);
          ((RelativeLayout)localObject3).setBackgroundDrawable((Drawable)localObject1);
          localDialog.setContentView((View)localObject3);
          localDialog.setOnCancelListener(new g(this, localb, paramObject));
          if ((localActivity != null) && (!localActivity.isFinishing()))
            localDialog.show();
          return;
          i = 0;
          continue;
          localJSONException = localJSONException;
          h.d("openSDK_LOG.AuthAgent", "FeedConfirmListener onComplete There is no value for sendinstall.");
          i = j;
          String str = "";
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localNameNotFoundException.printStackTrace();
          localObject2 = null;
          continue;
        }
        if (this.a == null)
          continue;
        this.a.a(paramObject);
        return;
      }
      label1065: Object localObject2 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.d
 * JD-Core Version:    0.6.2
 */