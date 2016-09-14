.class public final Lcom/tencent/connect/b/a;
.super Lcom/tencent/connect/common/b;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# instance fields
.field c:Lcom/tencent/tauth/b;

.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 94
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v0, "libwbsafeedit_64"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 98
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm64-v8a architecture"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v0, "libwbsafeedit_x86"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 102
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86 architecture"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "libwbsafeedit_x86_64"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 106
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is x86_64 architecture"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 110
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "libwbsafeedit"

    sput-object v0, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/connect/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/b/a;->b:Ljava/lang/String;

    .line 115
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "is arm(default) architecture"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/tencent/connect/b/v;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/connect/common/b;-><init>(Lcom/tencent/connect/b/v;B)V

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/connect/b/a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/connect/b/a;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 10119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10120
    const-string v1, "appid"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 11023
    iget-object v2, v2, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 10120
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10121
    iget-object v1, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    invoke-virtual {v1}, Lcom/tencent/connect/b/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10122
    const-string v1, "keystr"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 11031
    iget-object v2, v2, Lcom/tencent/connect/b/v;->b:Ljava/lang/String;

    .line 10122
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10124
    const-string v1, "keytype"

    const-string v2, "0x80"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10126
    :cond_0
    iget-object v1, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 11045
    iget-object v1, v1, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 10127
    if-eqz v1, :cond_1

    .line 10128
    const-string v2, "hopenid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10130
    :cond_1
    const-string v1, "platform"

    const-string v2, "androidqz"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10132
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 10135
    sget-boolean v2, Lcom/tencent/connect/common/b;->j:Z

    if-eqz v2, :cond_2

    .line 10136
    const-string v1, "pf"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desktop_m_qq-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/connect/common/b;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/connect/common/b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/connect/common/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10142
    :goto_0
    const-string v1, "sdkv"

    const-string v2, "2.9.4.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10143
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object v0

    .line 10138
    :cond_2
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10139
    const-string v2, "pf"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10140
    const-string v1, "pf"

    const-string v2, "openmobile_android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/connect/b/a;)Lcom/tencent/connect/b/v;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I
    .locals 9

    .prologue
    const/16 v6, 0x2b5d

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 208
    iput-object p2, p0, Lcom/tencent/connect/b/a;->k:Ljava/lang/String;

    .line 209
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/tencent/connect/b/a;->d:Ljava/lang/ref/WeakReference;

    .line 210
    iput-object p3, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    .line 1305
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "startActionActivity() -- start"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v2, "com.tencent.open.agent.AgentActivity"

    .line 2217
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2218
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/s;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2220
    const-string v3, "com.tencent.minihd.qq"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2221
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 1310
    invoke-virtual {p0}, Lcom/tencent/connect/b/a;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 1314
    const-string v3, "scope"

    iget-object v4, p0, Lcom/tencent/connect/b/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const-string v3, "client_id"

    iget-object v4, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 3023
    iget-object v4, v4, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 1315
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    sget-boolean v3, Lcom/tencent/connect/b/a;->j:Z

    if-eqz v3, :cond_2

    .line 1318
    const-string v3, "pf"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "desktop_m_qq-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/tencent/connect/b/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-android-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/connect/b/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/connect/b/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    :goto_1
    const-string v3, "need_pay"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v3, "oauth_app_name"

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v4

    .line 3220
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 3221
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v3, "key_action"

    const-string v4, "action_login"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const-string v3, "key_params"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4197
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    .line 1327
    if-eqz v2, :cond_3

    .line 1329
    new-instance v2, Lcom/tencent/connect/b/d;

    iget-object v3, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    invoke-direct {v2, p0, v3}, Lcom/tencent/connect/b/d;-><init>(Lcom/tencent/connect/b/a;Lcom/tencent/tauth/b;)V

    .line 1330
    iput-object v2, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    .line 1332
    invoke-static {}, Lcom/tencent/connect/common/c;->a()Lcom/tencent/connect/common/c;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    invoke-virtual {v2, v6, v3}, Lcom/tencent/connect/common/c;->a(ILcom/tencent/tauth/b;)Ljava/lang/Object;

    .line 1337
    const-string v2, "openSDK_LOG.AuthAgent"

    const-string v3, "startAssitActivity activity"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-static {p1, v1, v6}, Lcom/tencent/connect/b/a;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1340
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "startActionActivity() -- end, found activity for loginIntent"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const-string v1, "LOGIN_CHECK_SDK"

    const-string v2, "1000"

    iget-object v3, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 6023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 1341
    const-string v4, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    move v0, v8

    .line 212
    :goto_2
    if-eqz v0, :cond_4

    .line 216
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 7045
    iget-object v0, v0, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 8023
    iget-object v1, v1, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 217
    const-string v2, "2"

    const-string v3, "310"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    invoke-static/range {v0 .. v7}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 228
    :goto_3
    return v0

    .line 2225
    :cond_1
    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2228
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/open/utils/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2232
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1320
    :cond_2
    const-string v3, "pf"

    const-string v4, "openmobile_android"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1346
    :cond_3
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    const-string v2, "LOGIN_CHECK_SDK"

    const-string v3, "1000"

    iget-object v1, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 7023
    iget-object v4, v1, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 1346
    const-string v5, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "startActionActivity fail"

    move v1, v8

    invoke-static/range {v1 .. v7}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 1348
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "startActionActivity() -- end, no target activity for loginIntent"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_4
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    iget-object v0, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 8045
    iget-object v0, v0, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 9023
    iget-object v1, v1, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 222
    const-string v2, "2"

    const-string v3, "310"

    const-string v4, "5"

    const-string v5, "1"

    const-string v6, "0"

    const-string v7, "0"

    invoke-static/range {v0 .. v7}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "doLogin startActivity fail show dialog."

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/tencent/connect/b/d;

    iget-object v1, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    invoke-direct {v0, p0, v1}, Lcom/tencent/connect/b/d;-><init>(Lcom/tencent/connect/b/a;Lcom/tencent/tauth/b;)V

    .line 227
    iput-object v0, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    .line 228
    iget-object v0, p0, Lcom/tencent/connect/b/a;->c:Lcom/tencent/tauth/b;

    .line 9239
    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "OpenUi, showDialog -- start"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9240
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 9242
    invoke-virtual {p0}, Lcom/tencent/connect/b/a;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 9246
    const-string v2, "scope"

    iget-object v3, p0, Lcom/tencent/connect/b/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9247
    const-string v2, "client_id"

    iget-object v3, p0, Lcom/tencent/connect/b/a;->f:Lcom/tencent/connect/b/v;

    .line 10023
    iget-object v3, v3, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 9247
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9248
    sget-boolean v2, Lcom/tencent/connect/b/a;->j:Z

    if-eqz v2, :cond_5

    .line 9249
    const-string v2, "pf"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "desktop_m_qq-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tencent/connect/b/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/connect/b/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/connect/b/a;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9255
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9256
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tencent/open/utils/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9257
    const-string v4, "sign"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9258
    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9261
    const-string v2, "display"

    const-string v3, "mobile"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9262
    const-string v2, "response_type"

    const-string v3, "token"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9263
    const-string v2, "redirect_uri"

    const-string v3, "auth://tauth.qq.com/"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9265
    const-string v2, "cancel_display"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9266
    const-string v2, "switch"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9268
    const-string v2, "status_userip"

    invoke-static {}, Lcom/tencent/open/utils/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9270
    invoke-static {}, Lcom/tencent/open/utils/n;->a()Lcom/tencent/open/utils/n;

    move-result-object v3

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "http://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {v3, v4, v5}, Lcom/tencent/open/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9271
    invoke-static {v1}, Lcom/tencent/open/utils/s;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9275
    new-instance v2, Lcom/tencent/connect/b/i;

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/tencent/connect/b/i;-><init>(Lcom/tencent/connect/b/a;Landroid/content/Context;Lcom/tencent/tauth/b;)V

    .line 9277
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v3, "OpenUi, showDialog TDialog"

    invoke-static {v0, v3}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9278
    new-instance v0, Lcom/tencent/connect/b/b;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/connect/b/b;-><init>(Lcom/tencent/connect/b/a;Ljava/lang/String;Lcom/tencent/tauth/b;)V

    invoke-static {v0}, Lcom/tencent/open/utils/p;->a(Ljava/lang/Runnable;)V

    .line 9300
    const-string v0, "openSDK_LOG.AuthAgent"

    const-string v1, "OpenUi, showDialog -- end"

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9301
    const/4 v0, 0x2

    .line 228
    goto/16 :goto_3

    .line 9251
    :cond_5
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
