.class final Lcom/nut/blehunter/ui/e;
.super Lcom/nut/blehunter/rxApi/j;
.source "BaseActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/nut/blehunter/ui/e;->a:Lcom/nut/blehunter/ui/b;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 382
    const-string v2, "versionName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    const-string v2, "versionCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/e;->a:Lcom/nut/blehunter/ui/b;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/nut/blehunter/ui/e;->a:Lcom/nut/blehunter/ui/b;

    invoke-virtual {v3}, Lcom/nut/blehunter/ui/b;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/nut/blehunter/ui/e;->a:Lcom/nut/blehunter/ui/b;

    const-string v1, "version_info"

    invoke-static {v0, v1, p1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/nut/blehunter/ui/e;->a:Lcom/nut/blehunter/ui/b;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/b;->o()V

    .line 395
    :cond_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
