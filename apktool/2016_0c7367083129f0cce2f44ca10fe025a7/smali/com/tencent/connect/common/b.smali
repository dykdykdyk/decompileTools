.class public abstract Lcom/tencent/connect/common/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Z


# instance fields
.field protected e:Lcom/tencent/connect/b/u;

.field public f:Lcom/tencent/connect/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/tencent/connect/common/b;->g:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/tencent/connect/common/b;->h:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/tencent/connect/common/b;->i:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/common/b;->j:Z

    return-void
.end method

.method private constructor <init>(Lcom/tencent/connect/b/v;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/connect/common/b;->e:Lcom/tencent/connect/b/u;

    .line 68
    iput-object p1, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/b/v;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/b;-><init>(Lcom/tencent/connect/b/v;)V

    .line 73
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 181
    const-string v0, "key_request_code"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3150
    const-string v1, "is_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3151
    const-string v1, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "sdkv"

    const-string v2, "2.9.4.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    invoke-virtual {v1}, Lcom/tencent/connect/b/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 1031
    iget-object v2, v2, Lcom/tencent/connect/b/v;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "oauth_consumer_key"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 2023
    iget-object v2, v2, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "openid"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 2045
    iget-object v2, v2, Lcom/tencent/connect/b/v;->c:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "appid_for_getting_config"

    iget-object v2, p0, Lcom/tencent/connect/common/b;->f:Lcom/tencent/connect/b/v;

    .line 3023
    iget-object v2, v2, Lcom/tencent/connect/b/v;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pfStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    sget-boolean v2, Lcom/tencent/connect/common/b;->j:Z

    if-eqz v2, :cond_1

    .line 99
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

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_1
    const-string v2, "pf"

    const-string v3, "openmobile_android"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "pf"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
