package com.baidu.android.pushservice.richmedia;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class MediaViewActivity$2 extends WebViewClient
{
  MediaViewActivity$2(MediaViewActivity paramMediaViewActivity)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  // ERROR //
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: ldc 28
    //   3: invokevirtual 34	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   6: ifeq +109 -> 115
    //   9: new 36	android/content/Intent
    //   12: dup
    //   13: ldc 38
    //   15: invokespecial 41	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   18: astore 4
    //   20: aload 4
    //   22: aload_2
    //   23: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   26: invokevirtual 51	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   29: pop
    //   30: aload_0
    //   31: getfield 10	com/baidu/android/pushservice/richmedia/MediaViewActivity$2:a	Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;
    //   34: aload 4
    //   36: invokevirtual 57	com/baidu/android/pushservice/richmedia/MediaViewActivity:startActivity	(Landroid/content/Intent;)V
    //   39: getstatic 63	android/os/Build$VERSION:SDK_INT	I
    //   42: bipush 17
    //   44: if_icmple +454 -> 498
    //   47: new 36	android/content/Intent
    //   50: dup
    //   51: ldc 65
    //   53: invokespecial 41	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   56: astore_1
    //   57: aload_1
    //   58: aload_2
    //   59: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   62: invokevirtual 51	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   65: pop
    //   66: aload_0
    //   67: getfield 10	com/baidu/android/pushservice/richmedia/MediaViewActivity$2:a	Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;
    //   70: aload_1
    //   71: invokevirtual 57	com/baidu/android/pushservice/richmedia/MediaViewActivity:startActivity	(Landroid/content/Intent;)V
    //   74: iconst_1
    //   75: ireturn
    //   76: astore 4
    //   78: ldc 67
    //   80: new 69	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 71
    //   86: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload_2
    //   90: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc 78
    //   95: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: aload 4
    //   100: invokevirtual 82	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   103: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: invokestatic 89	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: goto -73 -> 39
    //   115: aload_2
    //   116: ldc 91
    //   118: invokevirtual 34	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   121: ifeq +75 -> 196
    //   124: new 36	android/content/Intent
    //   127: dup
    //   128: ldc 65
    //   130: invokespecial 41	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   133: astore 4
    //   135: aload 4
    //   137: aload_2
    //   138: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   141: invokevirtual 51	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   144: pop
    //   145: aload_0
    //   146: getfield 10	com/baidu/android/pushservice/richmedia/MediaViewActivity$2:a	Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;
    //   149: aload 4
    //   151: invokevirtual 57	com/baidu/android/pushservice/richmedia/MediaViewActivity:startActivity	(Landroid/content/Intent;)V
    //   154: goto -115 -> 39
    //   157: astore 4
    //   159: ldc 67
    //   161: new 69	java/lang/StringBuilder
    //   164: dup
    //   165: ldc 93
    //   167: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload_2
    //   171: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 78
    //   176: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 4
    //   181: invokevirtual 82	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   184: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 89	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   193: goto -154 -> 39
    //   196: aload_2
    //   197: ldc 95
    //   199: invokevirtual 34	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   202: ifeq +75 -> 277
    //   205: new 36	android/content/Intent
    //   208: dup
    //   209: ldc 65
    //   211: invokespecial 41	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   214: astore 4
    //   216: aload 4
    //   218: aload_2
    //   219: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   222: invokevirtual 51	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   225: pop
    //   226: aload_0
    //   227: getfield 10	com/baidu/android/pushservice/richmedia/MediaViewActivity$2:a	Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;
    //   230: aload 4
    //   232: invokevirtual 57	com/baidu/android/pushservice/richmedia/MediaViewActivity:startActivity	(Landroid/content/Intent;)V
    //   235: goto -196 -> 39
    //   238: astore 4
    //   240: ldc 67
    //   242: new 69	java/lang/StringBuilder
    //   245: dup
    //   246: ldc 97
    //   248: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload_2
    //   252: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc 78
    //   257: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload 4
    //   262: invokevirtual 82	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   265: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokestatic 89	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   274: goto -235 -> 39
    //   277: aload_2
    //   278: ldc 99
    //   280: invokevirtual 34	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   283: ifeq -244 -> 39
    //   286: new 36	android/content/Intent
    //   289: dup
    //   290: ldc 65
    //   292: invokespecial 41	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   295: astore 6
    //   297: aload_2
    //   298: bipush 63
    //   300: invokevirtual 103	java/lang/String:indexOf	(I)I
    //   303: istore_3
    //   304: iload_3
    //   305: iconst_m1
    //   306: if_icmpne +105 -> 411
    //   309: aload_2
    //   310: iconst_4
    //   311: invokevirtual 107	java/lang/String:substring	(I)Ljava/lang/String;
    //   314: astore 4
    //   316: aload 6
    //   318: new 69	java/lang/StringBuilder
    //   321: dup
    //   322: ldc 99
    //   324: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   327: aload 4
    //   329: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   338: invokevirtual 51	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   341: pop
    //   342: aload 6
    //   344: ldc 109
    //   346: aload 4
    //   348: invokevirtual 113	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   351: pop
    //   352: aload 6
    //   354: ldc 115
    //   356: invokevirtual 119	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   359: pop
    //   360: aload_0
    //   361: getfield 10	com/baidu/android/pushservice/richmedia/MediaViewActivity$2:a	Lcom/baidu/android/pushservice/richmedia/MediaViewActivity;
    //   364: aload 6
    //   366: invokevirtual 57	com/baidu/android/pushservice/richmedia/MediaViewActivity:startActivity	(Landroid/content/Intent;)V
    //   369: goto -330 -> 39
    //   372: astore 4
    //   374: ldc 67
    //   376: new 69	java/lang/StringBuilder
    //   379: dup
    //   380: ldc 121
    //   382: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload_2
    //   386: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: ldc 123
    //   391: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: aload 4
    //   396: invokevirtual 82	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   399: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokestatic 89	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   408: goto -369 -> 39
    //   411: aload_2
    //   412: iconst_4
    //   413: iload_3
    //   414: invokevirtual 126	java/lang/String:substring	(II)Ljava/lang/String;
    //   417: astore 5
    //   419: aload_2
    //   420: invokestatic 47	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   423: invokevirtual 129	android/net/Uri:getQuery	()Ljava/lang/String;
    //   426: astore 7
    //   428: aload 5
    //   430: astore 4
    //   432: aload 7
    //   434: ifnull -118 -> 316
    //   437: aload 5
    //   439: astore 4
    //   441: aload 7
    //   443: ldc 131
    //   445: invokevirtual 34	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   448: ifeq -132 -> 316
    //   451: aload 6
    //   453: ldc 133
    //   455: aload 7
    //   457: iconst_5
    //   458: invokevirtual 107	java/lang/String:substring	(I)Ljava/lang/String;
    //   461: invokevirtual 113	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   464: pop
    //   465: aload 5
    //   467: astore 4
    //   469: goto -153 -> 316
    //   472: astore_1
    //   473: ldc 67
    //   475: new 69	java/lang/StringBuilder
    //   478: dup
    //   479: ldc 135
    //   481: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   484: aload_2
    //   485: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   491: aload_1
    //   492: invokestatic 138	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   495: goto -421 -> 74
    //   498: aload_1
    //   499: aload_2
    //   500: invokevirtual 143	android/webkit/WebView:loadUrl	(Ljava/lang/String;)V
    //   503: goto -429 -> 74
    //
    // Exception table:
    //   from	to	target	type
    //   9	39	76	android/content/ActivityNotFoundException
    //   124	154	157	android/content/ActivityNotFoundException
    //   205	235	238	android/content/ActivityNotFoundException
    //   286	304	372	android/content/ActivityNotFoundException
    //   309	316	372	android/content/ActivityNotFoundException
    //   316	369	372	android/content/ActivityNotFoundException
    //   411	428	372	android/content/ActivityNotFoundException
    //   441	465	372	android/content/ActivityNotFoundException
    //   47	74	472	android/content/ActivityNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.MediaViewActivity.2
 * JD-Core Version:    0.6.2
 */