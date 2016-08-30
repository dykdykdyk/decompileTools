package com.nut.blehunter.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.a.s;
import android.text.TextUtils;
import android.widget.TextView;

public class ReportLogActivity extends s
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    paramBundle = getIntent().getStringExtra("log");
    if (!TextUtils.isEmpty(paramBundle))
      ((TextView)findViewById(2131558685)).setText(paramBundle);
    paramBundle = getIntent().getStringExtra("file_path");
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("plain/text");
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "alan@nutspace.com" });
    localIntent.putExtra("android.intent.extra.SUBJECT", "error log");
    localIntent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + paramBundle));
    localIntent.putExtra("android.intent.extra.TEXT", "Log file attached.");
    if (localIntent.resolveActivity(getPackageManager()) != null)
      startActivity(Intent.createChooser(localIntent, ""));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ReportLogActivity
 * JD-Core Version:    0.6.2
 */