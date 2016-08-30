package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.api.ImageObject;
import com.sina.weibo.sdk.api.MusicObject;
import com.sina.weibo.sdk.api.TextObject;
import com.sina.weibo.sdk.api.VideoObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.WebpageObject;
import com.sina.weibo.sdk.api.a.b;
import com.sina.weibo.sdk.api.h;
import com.sina.weibo.sdk.d.p;

public final class g extends e
{
  com.sina.weibo.sdk.a.c a;
  String b;
  String c;
  byte[] h;
  private String i;
  private String j;
  private String k;
  private b l;
  private String m;

  public g(Context paramContext)
  {
    super(paramContext);
    this.f = c.b;
  }

  static void a(Activity paramActivity, int paramInt, String paramString)
  {
    Bundle localBundle = paramActivity.getIntent().getExtras();
    if (localBundle == null)
      return;
    Intent localIntent = new Intent("com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY");
    localIntent.setFlags(131072);
    localIntent.setPackage(localBundle.getString("_weibo_appPackage"));
    localIntent.putExtras(localBundle);
    localIntent.putExtra("_weibo_appPackage", paramActivity.getPackageName());
    localIntent.putExtra("_weibo_resp_errcode", paramInt);
    localIntent.putExtra("_weibo_resp_errstr", paramString);
    try
    {
      paramActivity.startActivityForResult(localIntent, 765);
      return;
    }
    catch (ActivityNotFoundException paramActivity)
    {
    }
  }

  // ERROR //
  private void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 103	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifne +87 -> 91
    //   7: new 105	java/io/File
    //   10: dup
    //   11: aload_1
    //   12: invokespecial 106	java/io/File:<init>	(Ljava/lang/String;)V
    //   15: astore_1
    //   16: aload_1
    //   17: invokevirtual 110	java/io/File:exists	()Z
    //   20: ifeq +71 -> 91
    //   23: aload_1
    //   24: invokevirtual 113	java/io/File:canRead	()Z
    //   27: ifeq +64 -> 91
    //   30: aload_1
    //   31: invokevirtual 117	java/io/File:length	()J
    //   34: lconst_0
    //   35: lcmp
    //   36: ifle +55 -> 91
    //   39: aload_1
    //   40: invokevirtual 117	java/io/File:length	()J
    //   43: l2i
    //   44: newarray byte
    //   46: astore 4
    //   48: aconst_null
    //   49: astore_3
    //   50: new 119	java/io/FileInputStream
    //   53: dup
    //   54: aload_1
    //   55: invokespecial 122	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   58: astore_1
    //   59: aload_1
    //   60: aload 4
    //   62: invokevirtual 126	java/io/FileInputStream:read	([B)I
    //   65: pop
    //   66: aload_0
    //   67: aload 4
    //   69: invokestatic 131	com/sina/weibo/sdk/d/h:b	([B)[B
    //   72: putfield 133	com/sina/weibo/sdk/component/g:h	[B
    //   75: aload_1
    //   76: invokevirtual 137	java/io/FileInputStream:close	()V
    //   79: return
    //   80: astore_1
    //   81: aconst_null
    //   82: astore_1
    //   83: aload_1
    //   84: ifnull +7 -> 91
    //   87: aload_1
    //   88: invokevirtual 137	java/io/FileInputStream:close	()V
    //   91: aload_2
    //   92: ifnull -13 -> 79
    //   95: aload_2
    //   96: arraylength
    //   97: ifle -18 -> 79
    //   100: aload_0
    //   101: aload_2
    //   102: invokestatic 131	com/sina/weibo/sdk/d/h:b	([B)[B
    //   105: putfield 133	com/sina/weibo/sdk/component/g:h	[B
    //   108: return
    //   109: astore_1
    //   110: aload_3
    //   111: ifnull +7 -> 118
    //   114: aload_3
    //   115: invokevirtual 137	java/io/FileInputStream:close	()V
    //   118: aload_1
    //   119: athrow
    //   120: astore_1
    //   121: goto -30 -> 91
    //   124: astore_1
    //   125: return
    //   126: astore_1
    //   127: goto -36 -> 91
    //   130: astore_3
    //   131: goto -13 -> 118
    //   134: astore 4
    //   136: aload_1
    //   137: astore_3
    //   138: aload 4
    //   140: astore_1
    //   141: goto -31 -> 110
    //   144: astore_3
    //   145: goto -62 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   50	59	80	java/io/IOException
    //   50	59	109	finally
    //   0	48	120	java/lang/SecurityException
    //   75	79	120	java/lang/SecurityException
    //   87	91	120	java/lang/SecurityException
    //   114	118	120	java/lang/SecurityException
    //   118	120	120	java/lang/SecurityException
    //   75	79	124	java/lang/Exception
    //   87	91	126	java/lang/Exception
    //   114	118	130	java/lang/Exception
    //   59	75	134	finally
    //   59	75	144	java/io/IOException
  }

  public static void b(Activity paramActivity)
  {
    a(paramActivity, 1, "send cancel!!!");
  }

  public final void a(Activity paramActivity)
  {
    b(paramActivity);
    WeiboSdkBrowser.a(paramActivity, this.b, null);
  }

  protected final void a(Bundle paramBundle)
  {
    this.c = paramBundle.getString("source");
    this.i = paramBundle.getString("packagename");
    this.k = paramBundle.getString("key_hash");
    this.j = paramBundle.getString("access_token");
    this.b = paramBundle.getString("key_listener");
    if (!TextUtils.isEmpty(this.b))
      this.a = j.a(this.d).a(this.b);
    Object localObject1 = new h();
    ((h)localObject1).b(paramBundle);
    paramBundle = new StringBuilder();
    if ((((h)localObject1).a instanceof TextObject))
      paramBundle.append(((h)localObject1).a.g);
    Object localObject2;
    if ((((h)localObject1).b instanceof ImageObject))
    {
      localObject2 = ((h)localObject1).b;
      a(((ImageObject)localObject2).h, ((ImageObject)localObject2).g);
    }
    if ((((h)localObject1).c instanceof TextObject))
      paramBundle.append(((TextObject)((h)localObject1).c).g);
    if ((((h)localObject1).c instanceof ImageObject))
    {
      localObject2 = (ImageObject)((h)localObject1).c;
      a(((ImageObject)localObject2).h, ((ImageObject)localObject2).g);
    }
    if ((((h)localObject1).c instanceof WebpageObject))
    {
      localObject2 = (WebpageObject)((h)localObject1).c;
      paramBundle.append(" ").append(((WebpageObject)localObject2).a);
    }
    if ((((h)localObject1).c instanceof MusicObject))
    {
      localObject2 = (MusicObject)((h)localObject1).c;
      paramBundle.append(" ").append(((MusicObject)localObject2).a);
    }
    if ((((h)localObject1).c instanceof VideoObject))
    {
      localObject2 = (VideoObject)((h)localObject1).c;
      paramBundle.append(" ").append(((VideoObject)localObject2).a);
    }
    if ((((h)localObject1).c instanceof VoiceObject))
    {
      localObject1 = (VoiceObject)((h)localObject1).c;
      paramBundle.append(" ").append(((VoiceObject)localObject1).a);
    }
    this.m = paramBundle.toString();
    this.e = c("");
  }

  public final void b(Bundle paramBundle)
  {
    if (this.l != null)
      this.l.a(paramBundle);
    if (!TextUtils.isEmpty(this.i))
      this.k = com.sina.weibo.sdk.d.j.a(p.a(this.d, this.i));
    paramBundle.putString("access_token", this.j);
    paramBundle.putString("source", this.c);
    paramBundle.putString("packagename", this.i);
    paramBundle.putString("key_hash", this.k);
    paramBundle.putString("_weibo_appPackage", this.i);
    paramBundle.putString("_weibo_appKey", this.c);
    paramBundle.putInt("_weibo_flag", 538116905);
    paramBundle.putString("_weibo_sign", this.k);
    if (this.a != null)
    {
      j localj = j.a(this.d);
      this.b = String.valueOf(System.currentTimeMillis());
      localj.a(this.b, this.a);
      paramBundle.putString("key_listener", this.b);
    }
  }

  public final String c(String paramString)
  {
    Uri.Builder localBuilder = Uri.parse("http://service.weibo.com/share/mobilesdk.php").buildUpon();
    localBuilder.appendQueryParameter("title", this.m);
    localBuilder.appendQueryParameter("version", "0031405000");
    if (!TextUtils.isEmpty(this.c))
      localBuilder.appendQueryParameter("source", this.c);
    if (!TextUtils.isEmpty(this.j))
      localBuilder.appendQueryParameter("access_token", this.j);
    String str = p.b(this.d, this.c);
    if (!TextUtils.isEmpty(str))
      localBuilder.appendQueryParameter("aid", str);
    if (!TextUtils.isEmpty(this.i))
      localBuilder.appendQueryParameter("packagename", this.i);
    if (!TextUtils.isEmpty(this.k))
      localBuilder.appendQueryParameter("key_hash", this.k);
    if (!TextUtils.isEmpty(paramString))
      localBuilder.appendQueryParameter("picinfo", paramString);
    return localBuilder.build().toString();
  }

  public final boolean e()
  {
    return (this.h != null) && (this.h.length > 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.g
 * JD-Core Version:    0.6.2
 */