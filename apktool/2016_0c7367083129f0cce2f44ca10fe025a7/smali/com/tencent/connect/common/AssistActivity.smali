.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 32
    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->d:Z

    .line 39
    new-instance v0, Lcom/tencent/connect/common/a;

    invoke-direct {v0, p0}, Lcom/tencent/connect/common/a;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    iput-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    const-string v2, "openSDK_LOG.AssistActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "--onActivityResult--requestCode: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | resultCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "data = null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    if-nez p1, :cond_1

    .line 206
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 191
    goto :goto_0

    .line 199
    :cond_1
    if-eqz p3, :cond_2

    .line 200
    const-string v0, "key_action"

    const-string v2, "action_login"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2210
    :cond_2
    if-nez p3, :cond_3

    .line 2211
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v2, "--setResultData--intent is null, setResult ACTIVITY_CANCEL"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    invoke-virtual {p0, v1, p3}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 205
    :goto_2
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_1

    .line 2218
    :cond_3
    :try_start_0
    const-string v0, "key_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2219
    const-string v1, "openSDK_LOG.AssistActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--setResultDataForLogin-- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2222
    const-string v0, "openid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2227
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--setResultData--openid and token not empty, setResult ACTIVITY_OK"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2247
    :catch_0
    move-exception v0

    .line 2248
    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "--setResultData--parse response failed"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2230
    :cond_4
    :try_start_1
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 2243
    :cond_5
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--setResultData--response is empty, setResult ACTIVITY_OK"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v6}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    .line 60
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onCreate--"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onCreate--getIntent() returns null"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 67
    if-nez v0, :cond_2

    move v1, v2

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "h5_share_data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 70
    if-eqz p1, :cond_1

    .line 71
    const-string v4, "RESTART_FLAG"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    .line 73
    :cond_1
    iget-boolean v4, p0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    if-nez v4, :cond_a

    .line 74
    if-nez v3, :cond_5

    .line 77
    if-eqz v0, :cond_4

    .line 78
    const-string v3, "openSDK_LOG.AssistActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--onCreate--activityIntent not null, will start activity, reqcode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 80
    iput-boolean v2, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 101
    :goto_1
    return-void

    .line 67
    :cond_2
    const-string v1, "key_request_code"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 83
    :cond_3
    iput-boolean v6, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    .line 84
    iput-boolean v2, p0, Lcom/tencent/connect/common/AssistActivity;->d:Z

    .line 85
    invoke-virtual {p0, v0}, Lcom/tencent/connect/common/AssistActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    :cond_4
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onCreate--activityIntent is null"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_1

    .line 94
    :cond_5
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onCreate--h5 bundle not null, will open browser"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const-string v0, "viaShareType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1259
    const-string v0, "callbackAction"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1260
    const-string v0, "url"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1261
    const-string v0, "openId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    const-string v1, "appId"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1264
    const-string v2, ""

    .line 1265
    const-string v3, ""

    .line 1266
    const-string v7, "shareToQQ"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1267
    const-string v2, "ANDROIDQQ.SHARETOQQ.XX"

    .line 1268
    const-string v3, "10"

    .line 1274
    :cond_6
    :goto_2
    invoke-static {p0, v5}, Lcom/tencent/open/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 1275
    if-nez v5, :cond_9

    .line 1276
    invoke-static {}, Lcom/tencent/connect/common/c;->a()Lcom/tencent/connect/common/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/connect/common/c;->a(Ljava/lang/String;)Lcom/tencent/tauth/b;

    move-result-object v4

    .line 1277
    if-eqz v4, :cond_7

    .line 1278
    new-instance v5, Lcom/tencent/tauth/d;

    const/4 v7, -0x6

    const-string v8, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/4 v9, 0x0

    invoke-direct {v5, v7, v8, v9}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 1281
    :cond_7
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const-string v4, "3"

    const-string v5, "1"

    const-string v7, "0"

    const-string v8, "2"

    const-string v9, "0"

    invoke-static/range {v0 .. v9}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 1290
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shareH5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1269
    :cond_8
    const-string v7, "shareToQzone"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1270
    const-string v2, "ANDROIDQQ.SHARETOQZ.XX"

    .line 1271
    const-string v3, "11"

    goto :goto_2

    .line 1286
    :cond_9
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const-string v4, "3"

    const-string v5, "0"

    const-string v7, "0"

    const-string v8, "2"

    const-string v9, "0"

    invoke-static/range {v0 .. v9}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 99
    :cond_a
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "is restart"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onNewIntent"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 172
    const-string v0, "key_action"

    const-string v1, "action_share"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onNewIntent--activity not finished, finish now"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 180
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onPause"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->d:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->d:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onResume"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    const-string v1, "is_login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v1, "is_qq_mobile_share"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    .line 132
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/connect/common/AssistActivity;->d:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/connect/common/AssistActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/tencent/connect/common/AssistActivity;->a:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 184
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "--onSaveInstanceState--"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "RESTART_FLAG"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStart"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "openSDK_LOG.AssistActivity"

    const-string v1, "-->onStop"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method
