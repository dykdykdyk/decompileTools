.class public Lcom/sina/weibo/sdk/api/a/n;
.super Ljava/lang/Object;
.source "WeiboShareAPIImpl.java"

# interfaces
.implements Lcom/sina/weibo/sdk/api/a/g;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/sina/weibo/sdk/c;

.field private e:Z

.field private f:Lcom/sina/weibo/sdk/api/a/d;

.field private g:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sina/weibo/sdk/api/a/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/a/n;->e:Z

    .line 80
    iput-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    .line 89
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/sina/weibo/sdk/api/a/n;->c:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/a/n;->e:Z

    .line 94
    invoke-static {p1}, Lcom/sina/weibo/sdk/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b;->a()Lcom/sina/weibo/sdk/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    .line 95
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-static {p1}, Lcom/sina/weibo/sdk/d/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/d/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sina/weibo/sdk/d/b;->a(Ljava/lang/String;)V

    .line 101
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v1, "WeiboInfo is null"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 532
    if-eqz p0, :cond_0

    .line 533
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "launchWeiboActivity fail, invalid arguments"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_0
    return v0

    .line 540
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 541
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 545
    const-string v3, "_weibo_sdkVersion"

    const-string v4, "0031405000"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v3, "_weibo_appPackage"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v3, "_weibo_appKey"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v3, "_weibo_flag"

    const v4, 0x20130329

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    const-string v3, "_weibo_sign"

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sina/weibo/sdk/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 552
    const-string v3, "_weibo_transaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7599
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7600
    const-string v4, "other_app_action_start_time"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7602
    :try_start_0
    invoke-static {p0, p5, v3}, Lcom/sina/weibo/sdk/c/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_1
    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 562
    :try_start_1
    sget-object v2, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchWeiboActivity intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const/16 v2, 0x2fd

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 569
    const/4 v0, 0x1

    goto :goto_0

    .line 7604
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 564
    :catch_1
    move-exception v1

    .line 565
    sget-object v2, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/a/b;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    :try_start_0
    iget-boolean v2, p0, Lcom/sina/weibo/sdk/api/a/n;->e:Z

    .line 2425
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/a/n;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2426
    if-eqz v2, :cond_4

    .line 2427
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    if-nez v1, :cond_3

    .line 2428
    iget-object v5, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/sina/weibo/sdk/api/a/n;->f:Lcom/sina/weibo/sdk/api/a/d;

    .line 3056
    const-string v4, "\u63d0\u793a"

    .line 3057
    const-string v3, "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

    .line 3058
    const-string v2, "\u73b0\u5728\u4e0b\u8f7d"

    .line 3059
    const-string v1, "\u4ee5\u540e\u518d\u8bf4"

    .line 3061
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sina/weibo/sdk/d/p;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3062
    const-string v4, "Notice"

    .line 3063
    const-string v3, "Sina Weibo client is not installed, download now?"

    .line 3064
    const-string v2, "Download Now"

    .line 3065
    const-string v1, "Download Later"

    .line 3068
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3069
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3070
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3071
    new-instance v4, Lcom/sina/weibo/sdk/api/a/l;

    invoke-direct {v4, v5}, Lcom/sina/weibo/sdk/api/a/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 3076
    new-instance v3, Lcom/sina/weibo/sdk/api/a/m;

    invoke-direct {v3, v6}, Lcom/sina/weibo/sdk/api/a/m;-><init>(Lcom/sina/weibo/sdk/api/a/d;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 3083
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2428
    iput-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    .line 2429
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    move v1, v0

    .line 296
    :cond_2
    if-nez v1, :cond_a

    .line 312
    :goto_1
    return v0

    .line 2431
    :cond_3
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2432
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    sget-object v2, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2437
    :cond_4
    :try_start_1
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v2, "Weibo is not installed!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4112
    :cond_5
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/c;->a()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v2, -0x1

    .line 3132
    :goto_2
    const/16 v3, 0x286e

    if-lt v2, v3, :cond_8

    move v2, v1

    .line 2441
    :goto_3
    if-nez v2, :cond_9

    .line 2442
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v2, "Weibo do not support share api!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4112
    :cond_7
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    .line 5052
    iget v2, v2, Lcom/sina/weibo/sdk/c;->b:I

    goto :goto_2

    :cond_8
    move v2, v0

    .line 3132
    goto :goto_3

    .line 2445
    :cond_9
    iget-object v2, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    .line 6046
    iget-object v3, v3, Lcom/sina/weibo/sdk/c;->a:Ljava/lang/String;

    .line 2445
    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2446
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboShareException;

    const-string v2, "Weibo signature is incorrect!"

    invoke-direct {v1, v2}, Lcom/sina/weibo/sdk/exception/WeiboShareException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    :cond_a
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    new-instance v2, Lcom/sina/weibo/sdk/api/a/j;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/a/j;-><init>()V

    invoke-virtual {p2, v1}, Lcom/sina/weibo/sdk/api/a/b;->a(Lcom/sina/weibo/sdk/c;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 305
    sget-object v1, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "sendRequest faild request check faild"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_b
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/a/n;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/b/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b/i;->a()V

    .line 310
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 311
    invoke-virtual {p2, v4}, Lcom/sina/weibo/sdk/api/a/b;->a(Landroid/os/Bundle;)V

    .line 312
    const-string v1, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->d:Lcom/sina/weibo/sdk/c;

    .line 7046
    iget-object v2, v0, Lcom/sina/weibo/sdk/c;->a:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/a/n;->c:Ljava/lang/String;

    const-string v5, "share"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/a/n;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/a/f;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 180
    const-string v0, "_weibo_appPackage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v0, "_weibo_transaction"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "handleWeiboResponse faild appPackage is null"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 213
    :goto_0
    return v0

    .line 187
    :cond_0
    instance-of v0, p2, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 188
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "handleWeiboResponse faild handler is not Activity"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 189
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 192
    check-cast v0, Landroid/app/Activity;

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    .line 194
    sget-object v5, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handleWeiboResponse getCallingPackage : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "handleWeiboResponse faild intent _weibo_transaction is null"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 198
    goto :goto_0

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    sget-object v0, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    const-string v2, "handleWeiboResponse faild appPackage validateSign faild"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/d/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_3
    new-instance v0, Lcom/sina/weibo/sdk/api/a/h;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/api/a/h;-><init>(Landroid/os/Bundle;)V

    .line 212
    invoke-interface {p2, v0}, Lcom/sina/weibo/sdk/api/a/f;->a(Lcom/sina/weibo/sdk/api/a/c;)V

    .line 213
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 160
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a/n;->b:Landroid/content/Context;

    const-string v1, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    iget-object v2, p0, Lcom/sina/weibo/sdk/api/a/n;->c:Ljava/lang/String;

    .line 1573
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1575
    const-string v4, "_weibo_sdkVersion"

    const-string v5, "0031405000"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1576
    const-string v4, "_weibo_appPackage"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    const-string v4, "_weibo_appKey"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const-string v2, "_weibo_flag"

    const v4, 0x20130329

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    const-string v2, "_weibo_sign"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/weibo/sdk/d/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1581
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1582
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    :cond_0
    sget-object v1, Lcom/sina/weibo/sdk/api/a/n;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "intent="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", extra="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/d/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v1, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method
