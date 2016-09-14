.class public final Lcom/tencent/connect/b/j;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field a:Lcom/tencent/open/c/b;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/connect/b/p;

.field private d:Lcom/tencent/tauth/b;

.field private e:Landroid/os/Handler;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/ProgressBar;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Lcom/tencent/open/web/security/c;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 81
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->load lib success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->fail, because so is not exists:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string v1, "openSDK_LOG.AuthDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-->load lib error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_1
    :try_start_1
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->load lib fail, because context is null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;Lcom/tencent/connect/b/v;)V
    .locals 6

    .prologue
    .line 128
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/connect/b/j;->m:Z

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/connect/b/j;->q:J

    .line 124
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/tencent/connect/b/j;->r:J

    .line 129
    iput-object p1, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/tencent/connect/b/p;

    .line 1023
    iget-object v4, p5, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/b/p;-><init>(Lcom/tencent/connect/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/b;)V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->c:Lcom/tencent/connect/b/p;

    .line 132
    new-instance v0, Lcom/tencent/connect/b/q;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->c:Lcom/tencent/connect/b/p;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/connect/b/q;-><init>(Lcom/tencent/connect/b/j;Lcom/tencent/connect/b/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->e:Landroid/os/Handler;

    .line 133
    iput-object p4, p0, Lcom/tencent/connect/b/j;->d:Lcom/tencent/tauth/b;

    .line 134
    iput-object p2, p0, Lcom/tencent/connect/b/j;->j:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/tencent/open/web/security/c;

    invoke-direct {v0}, Lcom/tencent/open/web/security/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->l:Lcom/tencent/open/web/security/c;

    .line 137
    invoke-virtual {p0}, Lcom/tencent/connect/b/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/b/j;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/tencent/connect/b/j;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/connect/b/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/b/j;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/b/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2255
    iget-object v1, p0, Lcom/tencent/connect/b/j;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/b/j;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 2256
    iget-object v1, p0, Lcom/tencent/connect/b/j;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/connect/b/j;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2261
    const-string v2, "_u_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1639
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1640
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1642
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1647
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/connect/b/j;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tencent/connect/b/j;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/connect/b/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/connect/b/j;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/connect/b/j;)Z
    .locals 6

    .prologue
    .line 2620
    invoke-static {}, Lcom/tencent/connect/b/s;->a()Lcom/tencent/connect/b/s;

    move-result-object v0

    .line 2621
    invoke-static {}, Lcom/tencent/connect/b/s;->b()Ljava/lang/String;

    move-result-object v1

    .line 2622
    new-instance v2, Lcom/tencent/connect/b/t;

    invoke-direct {v2}, Lcom/tencent/connect/b/t;-><init>()V

    .line 2623
    iget-object v3, p0, Lcom/tencent/connect/b/j;->d:Lcom/tencent/tauth/b;

    iput-object v3, v2, Lcom/tencent/connect/b/t;->a:Lcom/tencent/tauth/b;

    .line 2624
    iput-object p0, v2, Lcom/tencent/connect/b/t;->b:Lcom/tencent/connect/b/j;

    .line 2625
    iput-object v1, v2, Lcom/tencent/connect/b/t;->c:Ljava/lang/String;

    .line 2626
    invoke-virtual {v0, v2}, Lcom/tencent/connect/b/s;->a(Lcom/tencent/connect/b/t;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    iget-object v2, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2628
    iget-object v3, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/open/utils/s;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2629
    const-string v4, "token_key"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-string v1, "serial"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    const-string v0, "browser"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/tencent/open/utils/s;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    .line 2633
    iget-object v0, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/open/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 61
    return v0
.end method

.method static synthetic c(Lcom/tencent/connect/b/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/connect/b/j;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/connect/b/j;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/connect/b/j;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/connect/b/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/connect/b/j;)Lcom/tencent/open/c/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/connect/b/j;)Lcom/tencent/connect/b/p;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->c:Lcom/tencent/connect/b/p;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/connect/b/j;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/connect/b/j;)Lcom/tencent/open/web/security/c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->l:Lcom/tencent/open/web/security/c;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/connect/b/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/connect/b/j;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/connect/b/j;->q:J

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/connect/b/j;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/connect/b/j;->n:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/connect/b/j;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/tencent/connect/b/j;->r:J

    return-wide v0
.end method

.method static synthetic m(Lcom/tencent/connect/b/j;)I
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/connect/b/j;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/connect/b/j;->n:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/connect/b/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/connect/b/j;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    .line 3467
    iget-object v0, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3468
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3469
    const-string v1, "openSDK_LOG.AuthDialog"

    const-string v2, "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method static synthetic p(Lcom/tencent/connect/b/j;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/connect/b/j;->s:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lcom/tencent/connect/b/j;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 659
    iget-object v0, p0, Lcom/tencent/connect/b/j;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Lcom/tencent/connect/b/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->destroy()V

    .line 665
    iput-object v1, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    .line 667
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/tencent/connect/b/j;->m:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tencent/connect/b/j;->c:Lcom/tencent/connect/b/p;

    invoke-virtual {v0}, Lcom/tencent/connect/b/p;->a()V

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 156
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 142
    invoke-virtual {p0, v7}, Lcom/tencent/connect/b/j;->requestWindowFeature(I)Z

    .line 143
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1492
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->i:Landroid/widget/ProgressBar;

    .line 1493
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1496
    iget-object v1, p0, Lcom/tencent/connect/b/j;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1497
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->g:Landroid/widget/LinearLayout;

    .line 1498
    const/4 v0, 0x0

    .line 1499
    iget-object v1, p0, Lcom/tencent/connect/b/j;->j:Ljava/lang/String;

    const-string v2, "action_login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1500
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1503
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1504
    const/4 v0, 0x5

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1505
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1507
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1508
    const-string v2, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1512
    :goto_0
    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1513
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1514
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1517
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1520
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1521
    iget-object v2, p0, Lcom/tencent/connect/b/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1522
    iget-object v1, p0, Lcom/tencent/connect/b/j;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/connect/b/j;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1523
    if-eqz v0, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/tencent/connect/b/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1526
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    .line 1527
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1530
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1531
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1532
    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1533
    const/16 v1, 0x28

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1534
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1535
    iget-object v1, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1536
    iget-object v0, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    const/high16 v1, 0x1080000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1537
    iget-object v0, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1475
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1478
    new-instance v1, Lcom/tencent/open/c/b;

    iget-object v2, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    .line 1479
    iget-object v1, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v1, v0}, Lcom/tencent/open/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1481
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/connect/b/j;->f:Landroid/widget/FrameLayout;

    .line 1482
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1483
    iget-object v1, p0, Lcom/tencent/connect/b/j;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1485
    iget-object v0, p0, Lcom/tencent/connect/b/j;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1486
    iget-object v0, p0, Lcom/tencent/connect/b/j;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1488
    iget-object v0, p0, Lcom/tencent/connect/b/j;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/connect/b/j;->setContentView(Landroid/view/View;)V

    .line 1545
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v5}, Lcom/tencent/open/c/b;->setVerticalScrollBarEnabled(Z)V

    .line 1546
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0, v5}, Lcom/tencent/open/c/b;->setHorizontalScrollBarEnabled(Z)V

    .line 1547
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    new-instance v1, Lcom/tencent/connect/b/n;

    invoke-direct {v1, p0, v5}, Lcom/tencent/connect/b/n;-><init>(Lcom/tencent/connect/b/j;B)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1548
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1549
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->clearFormData()V

    .line 1552
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->clearSslPreferences()V

    .line 1553
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    new-instance v1, Lcom/tencent/connect/b/k;

    invoke-direct {v1, p0}, Lcom/tencent/connect/b/k;-><init>(Lcom/tencent/connect/b/j;)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1561
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    new-instance v1, Lcom/tencent/connect/b/l;

    invoke-direct {v1, p0}, Lcom/tencent/connect/b/l;-><init>(Lcom/tencent/connect/b/j;)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1578
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1579
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1580
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1582
    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1585
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 1586
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1587
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1589
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1590
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1592
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1593
    iget-object v1, p0, Lcom/tencent/connect/b/j;->k:Landroid/content/Context;

    const-string v2, "databases"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1597
    const-string v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-->mUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/connect/b/j;->o:Ljava/lang/String;

    .line 1599
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    iget-object v1, p0, Lcom/tencent/connect/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->loadUrl(Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/open/c/b;->setVisibility(I)V

    .line 1601
    iget-object v0, p0, Lcom/tencent/connect/b/j;->a:Lcom/tencent/open/c/b;

    invoke-virtual {v0}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1603
    iget-object v0, p0, Lcom/tencent/connect/b/j;->l:Lcom/tencent/open/web/security/c;

    new-instance v1, Lcom/tencent/open/web/security/a;

    invoke-direct {v1}, Lcom/tencent/open/web/security/a;-><init>()V

    const-string v2, "SecureJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/open/web/security/c;->a(Lcom/tencent/open/h;Ljava/lang/String;)V

    .line 1605
    sput-boolean v5, Lcom/tencent/open/web/security/a;->a:Z

    .line 1607
    new-instance v0, Lcom/tencent/connect/b/m;

    invoke-direct {v0, p0}, Lcom/tencent/connect/b/m;-><init>(Lcom/tencent/connect/b/j;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/connect/b/j;->s:Ljava/util/HashMap;

    .line 148
    return-void

    .line 1510
    :cond_2
    const-string v2, "Logging in..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected final onStop()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 162
    return-void
.end method
