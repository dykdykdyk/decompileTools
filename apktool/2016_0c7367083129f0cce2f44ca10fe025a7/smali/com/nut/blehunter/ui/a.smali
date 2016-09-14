.class final Lcom/nut/blehunter/ui/a;
.super Lcom/nut/blehunter/rxApi/j;
.source "AboutNutActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/AboutNutActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/AboutNutActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 133
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 111
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 112
    const-string v2, "versionName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "versionCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-virtual {v4}, Lcom/nut/blehunter/ui/AboutNutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v0, :cond_0

    .line 122
    const-string v0, "versionName is %s Code is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v0, v4}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    const-string v1, "version_info"

    invoke-static {v0, v1, p1}, Lcom/nut/blehunter/d/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/AboutNutActivity;->o()V

    .line 128
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a;->a:Lcom/nut/blehunter/ui/AboutNutActivity;

    const v1, 0x7f06013f

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method
