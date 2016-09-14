.class public final Lcom/sina/weibo/sdk/a/a/a;
.super Ljava/lang/Object;
.source "SsoHandler.java"


# instance fields
.field public a:Lcom/sina/weibo/sdk/a/a/d;

.field public b:Lcom/sina/weibo/sdk/a/c;

.field public c:Landroid/app/Activity;

.field public d:I

.field public e:Lcom/sina/weibo/sdk/c;

.field public f:Lcom/sina/weibo/sdk/a/a;

.field public g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/a/a;)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/sina/weibo/sdk/a/a/b;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/a/a/b;-><init>(Lcom/sina/weibo/sdk/a/a/a;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a/a;->g:Landroid/content/ServiceConnection;

    .line 128
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    .line 129
    iput-object p2, p0, Lcom/sina/weibo/sdk/a/a/a;->f:Lcom/sina/weibo/sdk/a/a;

    .line 130
    new-instance v0, Lcom/sina/weibo/sdk/a/a/d;

    invoke-direct {v0, p1, p2}, Lcom/sina/weibo/sdk/a/a/d;-><init>(Landroid/content/Context;Lcom/sina/weibo/sdk/a/a;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    .line 131
    invoke-static {p1}, Lcom/sina/weibo/sdk/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/b;->a()Lcom/sina/weibo/sdk/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/a/a/a;->e:Lcom/sina/weibo/sdk/c;

    .line 132
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/d/b;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/d/b;

    move-result-object v0

    .line 1036
    iget-object v1, p2, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/d/b;->a(Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 379
    const/4 v0, 0x1

    .line 380
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 382
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    iget-object v3, p0, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    .line 1054
    iget-object v3, v3, Lcom/sina/weibo/sdk/a/a/d;->a:Lcom/sina/weibo/sdk/a/a;

    .line 385
    invoke-virtual {v3}, Lcom/sina/weibo/sdk/a/a;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 388
    const-string v3, "_weibo_command_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 390
    const-string v4, "_weibo_transaction"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v4, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    const-string v5, "sso"

    .line 1446
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1447
    const-string v7, "other_app_action_start_time"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    :try_start_0
    invoke-static {v4, v5, v6}, Lcom/sina/weibo/sdk/c/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const-string v3, "aid"

    iget-object v4, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sina/weibo/sdk/a/a/a;->f:Lcom/sina/weibo/sdk/a/a;

    .line 2036
    iget-object v5, v5, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 395
    invoke-static {v4, v5}, Lcom/sina/weibo/sdk/d/p;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v3, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/sina/weibo/sdk/d/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    :goto_1
    return v1

    .line 1451
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sina/weibo/sdk/a/a/a;->f:Lcom/sina/weibo/sdk/a/a;

    .line 3036
    iget-object v4, v4, Lcom/sina/weibo/sdk/a/a;->a:Ljava/lang/String;

    .line 403
    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/d/p;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 405
    const-string v4, "aid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    iget v4, p0, Lcom/sina/weibo/sdk/a/a/a;->d:I

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v1, v0

    .line 417
    goto :goto_1

    .line 412
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2
.end method
