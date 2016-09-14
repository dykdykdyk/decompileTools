.class public Lcom/nut/blehunter/ui/NotificationCenterActivity;
.super Lcom/nut/blehunter/ui/b;
.source "NotificationCenterActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/u;
.implements Lcom/sina/weibo/sdk/api/a/f;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/sina/weibo/sdk/api/a/g;

.field private f:Lcom/tencent/tauth/c;

.field private g:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->d:Ljava/lang/String;

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NotificationCenterActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/NotificationCenterActivity;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->g:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->g:Landroid/view/Menu;

    const v1, 0x7f0d0252

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 131
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/NotificationCenterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->e:Lcom/sina/weibo/sdk/api/a/g;

    invoke-interface {v1}, Lcom/sina/weibo/sdk/api/a/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 205
    :cond_0
    const-string v1, "http://c.Weibo.cn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    .line 17268
    :try_start_0
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 17269
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 17270
    if-eqz v4, :cond_1

    move v3, v2

    .line 17271
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 17272
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 17273
    const-string v5, "com.tencent.mobileqq"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 254
    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    .line 263
    :goto_2
    return v0

    .line 17271
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 17278
    goto :goto_1

    .line 257
    :cond_2
    const-string v0, "http://im.qq.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 260
    goto :goto_2

    .line 263
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/api/a/c;)V
    .locals 1

    .prologue
    .line 150
    iget v0, p1, Lcom/sina/weibo/sdk/api/a/c;->b:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    :pswitch_0
    return-void

    .line 152
    :pswitch_1
    const v0, 0x7f0601b7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 157
    :pswitch_2
    const v0, 0x7f0601b6

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final c(I)V
    .locals 12

    .prologue
    .line 164
    new-instance v0, Lcom/nut/blehunter/c/b;

    invoke-direct {v0}, Lcom/nut/blehunter/c/b;-><init>()V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nut/blehunter/c/b;->a(Landroid/content/Context;I)Lcom/nut/blehunter/c/g;

    move-result-object v0

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 6185
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/nut/blehunter/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/nut/blehunter/c/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 3186
    :pswitch_2
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->e:Lcom/sina/weibo/sdk/api/a/g;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/a/g;->b()Z

    .line 3191
    new-instance v0, Lcom/sina/weibo/sdk/api/h;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/h;-><init>()V

    .line 3216
    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    .line 4133
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3217
    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->c:Ljava/lang/String;

    .line 3218
    iget-object v2, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->d:Ljava/lang/String;

    .line 3219
    const-string v2, " "

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->e:Ljava/lang/String;

    .line 3220
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201fe

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sina/weibo/sdk/api/WebpageObject;->a(Landroid/graphics/Bitmap;)V

    .line 3221
    iget-object v2, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->a:Ljava/lang/String;

    .line 3222
    const v2, 0x7f06004f

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->g:Ljava/lang/String;

    .line 3192
    iput-object v1, v0, Lcom/sina/weibo/sdk/api/h;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 3194
    new-instance v1, Lcom/sina/weibo/sdk/api/a/i;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/a/i;-><init>()V

    .line 3195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/a/i;->a:Ljava/lang/String;

    .line 3196
    iput-object v0, v1, Lcom/sina/weibo/sdk/api/a/i;->b:Lcom/sina/weibo/sdk/api/h;

    .line 3197
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->e:Lcom/sina/weibo/sdk/api/a/g;

    invoke-interface {v0, p0, v1}, Lcom/sina/weibo/sdk/api/a/g;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/a/b;)Z

    goto/16 :goto_0

    .line 4227
    :pswitch_3
    invoke-direct {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4230
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4231
    const-string v0, "req_type"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4232
    const-string v0, "title"

    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    const-string v0, "targetUrl"

    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    const-string v0, "appName"

    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4235
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->f:Lcom/tencent/tauth/c;

    new-instance v5, Lcom/nut/blehunter/ui/dx;

    invoke-direct {v5, p0}, Lcom/nut/blehunter/ui/dx;-><init>(Lcom/nut/blehunter/ui/NotificationCenterActivity;)V

    .line 4337
    const-string v1, "openSDK_LOG.Tencent"

    const-string v3, "shareToQQ()"

    invoke-static {v1, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    new-instance v6, Lcom/tencent/connect/c/a;

    iget-object v0, v0, Lcom/tencent/tauth/c;->a:Lcom/tencent/connect/b/u;

    .line 5288
    iget-object v0, v0, Lcom/tencent/connect/b/u;->a:Lcom/tencent/connect/b/v;

    .line 4338
    invoke-direct {v6, v0}, Lcom/tencent/connect/c/a;-><init>(Lcom/tencent/connect/b/v;)V

    .line 6075
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ() -- start."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6076
    const-string v0, "imageUrl"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6077
    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6078
    const-string v0, "summary"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6079
    const-string v0, "targetUrl"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6080
    const-string v7, "imageLocalUrl"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6081
    const-string v8, "req_type"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 6082
    const-string v9, "openSDK_LOG.QQShare"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "shareToQQ -- type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6083
    packed-switch v8, :pswitch_data_1

    .line 6098
    :goto_1
    :pswitch_4
    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    .line 6100
    const-string v0, "5.0.0"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 6101
    new-instance v0, Lcom/tencent/tauth/d;

    const/16 v1, -0xf

    const-string v2, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6102
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, app share is not support below qq5.0."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6103
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 7023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6103
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ, app share is not support below qq5.0."

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6085
    :pswitch_5
    const-string v9, "1"

    iput-object v9, v6, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    goto :goto_1

    .line 6088
    :pswitch_6
    const-string v9, "3"

    iput-object v9, v6, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    goto :goto_1

    .line 6091
    :pswitch_7
    const-string v9, "2"

    iput-object v9, v6, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    goto :goto_1

    .line 6094
    :pswitch_8
    const-string v9, "4"

    iput-object v9, v6, Lcom/tencent/connect/c/a;->a:Ljava/lang/String;

    goto :goto_1

    .line 6108
    :cond_1
    const-string v0, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 8023
    iget-object v11, v11, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6108
    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mqq"

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6109
    const-string v9, "targetUrl"

    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6116
    :cond_2
    invoke-static {}, Lcom/tencent/open/utils/s;->b()Z

    move-result v9

    if-nez v9, :cond_3

    .line 6117
    const-string v9, "4.5.0"

    invoke-static {p0, v9}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_3

    .line 6118
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6119
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ sdcard is null--end"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 9023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6120
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ sdcard is null"

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6128
    :cond_3
    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    .line 6130
    const-string v9, "4.3.0"

    invoke-static {p0, v9}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_4

    .line 6131
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u4f4e\u7248\u672c\u624bQ\u4e0d\u652f\u6301\u8be5\u9879\u529f\u80fd!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6133
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, version below 4.3 is not support."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6134
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 10023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6134
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ, version below 4.3 is not support."

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6140
    :cond_4
    invoke-static {v7}, Lcom/tencent/open/utils/s;->g(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 6141
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6143
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ -- error: \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6144
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 11023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6144
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6151
    :cond_5
    const/4 v7, 0x5

    if-eq v8, v7, :cond_8

    .line 6153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "http://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "https://"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 6154
    :cond_6
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6156
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, targetUrl is empty or illegal.."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6157
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 12023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6157
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ, targetUrl is empty or illegal.."

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6162
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6163
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6165
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, title is empty."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6166
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 13023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6166
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ, title is empty."

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6174
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 6176
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6177
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6179
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 6181
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, image url is emprty or illegal."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 14023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 6182
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "shareToQQ, image url is emprty or illegal."

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6189
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2d

    if-le v0, v1, :cond_a

    .line 6191
    const/16 v0, 0x2d

    invoke-static {v3, v0}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6192
    const-string v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6194
    :cond_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_b

    .line 6196
    const/16 v0, 0x3c

    invoke-static {v4, v0}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6197
    const-string v1, "summary"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6200
    :cond_b
    invoke-static {p0}, Lcom/tencent/open/utils/s;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6201
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, support share"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14223
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ() -- start."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14224
    const-string v0, "imageUrl"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14225
    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14226
    const-string v0, "summary"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14227
    const-string v0, "openSDK_LOG.QQShare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "shareToMobileQQ -- imageUrl: "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14230
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 14231
    invoke-static {v7}, Lcom/tencent/open/utils/s;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14233
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 14235
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 14237
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14239
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const/4 v0, 0x1

    const-string v1, "SHARE_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    .line 15023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 14239
    const-string v4, "0"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 6216
    :goto_2
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ() -- end."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14244
    :cond_c
    const-string v0, "4.3.0"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    .line 14249
    new-instance v8, Lcom/tencent/open/utils/c;

    invoke-direct {v8, p0}, Lcom/tencent/open/utils/c;-><init>(Landroid/app/Activity;)V

    .line 14250
    new-instance v0, Lcom/tencent/connect/c/b;

    move-object v1, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/c/b;-><init>(Lcom/tencent/connect/c/a;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;Landroid/app/Activity;)V

    .line 15060
    const-string v1, "AsynLoadImg"

    const-string v2, "--save---"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15061
    if-eqz v7, :cond_d

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 15062
    :cond_d
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/open/utils/f;->a(ILjava/lang/String;)V

    .line 14326
    :goto_3
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ() -- end"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 15065
    :cond_e
    invoke-static {}, Lcom/tencent/open/utils/s;->b()Z

    move-result v1

    if-nez v1, :cond_f

    .line 15066
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/open/utils/f;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 15069
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/open/utils/c;->c:Ljava/lang/String;

    .line 15071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/tencent/open/utils/c;->d:J

    .line 15073
    iput-object v7, v8, Lcom/tencent/open/utils/c;->a:Ljava/lang/String;

    .line 15074
    iput-object v0, v8, Lcom/tencent/open/utils/c;->b:Lcom/tencent/open/utils/f;

    .line 15075
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, v8, Lcom/tencent/open/utils/c;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 14283
    :cond_10
    const-string v0, "imageUrl"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14284
    const-string v0, "4.3.0"

    invoke-static {p0, v0}, Lcom/tencent/open/utils/o;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_12

    .line 14287
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ -- QQ Version is < 4.3.0 "

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14324
    :cond_11
    invoke-virtual {v6, p0, v2, v5}, Lcom/tencent/connect/c/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/b;)V

    goto :goto_3

    .line 14292
    :cond_12
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToMobileQQ -- QQ Version is > 4.3.0 "

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14293
    new-instance v0, Lcom/tencent/connect/c/c;

    move-object v1, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/connect/c/c;-><init>(Lcom/tencent/connect/c/a;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;Landroid/app/Activity;)V

    .line 16047
    const-string v1, "openSDK_LOG.AsynScaleCompressImage"

    const-string v2, "scaleCompressImage"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16048
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 16050
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/open/utils/f;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 16053
    :cond_13
    invoke-static {}, Lcom/tencent/open/utils/s;->b()Z

    move-result v1

    if-nez v1, :cond_14

    .line 16055
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/open/utils/f;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 16058
    :cond_14
    new-instance v1, Lcom/tencent/connect/c/e;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/connect/c/e;-><init>(Landroid/os/Looper;Lcom/tencent/open/utils/f;)V

    .line 16076
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/connect/c/f;

    invoke-direct {v2, v7, v1}, Lcom/tencent/connect/c/f;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .line 6205
    :cond_15
    :try_start_0
    const-string v0, "openSDK_LOG.QQShare"

    const-string v1, "shareToQQ, don\'t support share, will show download dialog"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6207
    new-instance v0, Lcom/tencent/open/a;

    const-string v1, ""

    const-string v2, ""

    .line 17108
    invoke-virtual {v6}, Lcom/tencent/connect/common/b;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 17109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 17111
    const-string v7, "need_version"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17113
    :cond_16
    const-string v2, "http://openmobile.qq.com/oauth2.0/m_jump_by_version?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17114
    invoke-static {v3}, Lcom/tencent/open/utils/s;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6207
    iget-object v3, v6, Lcom/tencent/connect/c/a;->f:Lcom/tencent/connect/b/v;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tencent/open/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/connect/b/v;)V

    invoke-virtual {v0}, Lcom/tencent/open/a;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 6208
    :catch_0
    move-exception v0

    .line 6209
    const-string v1, "openSDK_LOG.QQShare"

    const-string v2, " shareToQQ, TDialog.show not in main thread"

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6210
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 6211
    new-instance v0, Lcom/tencent/tauth/d;

    const/4 v1, -0x6

    const-string v2, "\u6ca1\u6709\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\uff01"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_2

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 6083
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/nut/blehunter/ui/b;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f060171

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(I)V

    .line 74
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->c:Ljava/lang/String;

    .line 1081
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nut/blehunter/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->d:Ljava/lang/String;

    .line 1084
    iput v3, v0, Lcom/nut/blehunter/entity/User;->q:I

    .line 1085
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 1088
    :cond_0
    const v0, 0x7f0d00cd

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    .line 1089
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->b:Landroid/widget/ProgressBar;

    .line 1090
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1091
    new-instance v0, Lcom/umeng/analytics/d;

    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/analytics/d;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V

    .line 1093
    iget-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nut/blehunter/ui/dy;

    invoke-direct {v1, p0, v3}, Lcom/nut/blehunter/ui/dy;-><init>(Lcom/nut/blehunter/ui/NotificationCenterActivity;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1095
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1100
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 1101
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v1, :cond_2

    .line 1102
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1106
    :cond_2
    const v0, 0x7f060254

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3039
    new-instance v1, Lcom/sina/weibo/sdk/api/a/n;

    invoke-direct {v1, p0, v0}, Lcom/sina/weibo/sdk/api/a/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1106
    iput-object v1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->e:Lcom/sina/weibo/sdk/api/a/g;

    .line 1108
    const v0, 0x7f060250

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->f:Lcom/tencent/tauth/c;

    .line 78
    return-void

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    iput-object p1, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->g:Landroid/view/Menu;

    .line 114
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    invoke-direct {p0, v2}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->a(Z)V

    .line 116
    return v2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Lcom/nut/blehunter/ui/NotificationCenterActivity;->e:Lcom/sina/weibo/sdk/api/a/g;

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/a/g;->a(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/a/f;)Z

    .line 139
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0252

    if-ne v0, v1, :cond_0

    .line 122
    invoke-static {}, Lcom/nut/blehunter/ui/b/a/t;->a()Lcom/nut/blehunter/ui/b/a/t;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/NotificationCenterActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "notification_share"

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/ui/b/a/t;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
