.class final Lcom/umeng/message/proguard/bh;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/umeng/message/proguard/bh;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/bh;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/umeng/message/proguard/bg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/umeng/message/proguard/bg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "com.huawei.android.pushagent"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/umeng/message/proguard/bh;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/bk;->l(Landroid/content/Context;)V

    .line 45
    :cond_0
    invoke-static {}, Lcom/umeng/message/proguard/bg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/umeng/message/proguard/bg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x69

    if-lt v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/umeng/message/proguard/bh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bk;->l(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
