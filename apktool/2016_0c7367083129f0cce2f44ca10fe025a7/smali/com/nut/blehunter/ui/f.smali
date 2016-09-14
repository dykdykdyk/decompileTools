.class final Lcom/nut/blehunter/ui/f;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nut/blehunter/ui/b;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/nut/blehunter/ui/f;->b:Lcom/nut/blehunter/ui/b;

    iput-object p2, p0, Lcom/nut/blehunter/ui/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/f;->a:Landroid/content/Context;

    const-string v1, "version_info"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lcom/nut/blehunter/c;

    iget-object v2, p0, Lcom/nut/blehunter/ui/f;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/nut/blehunter/c;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "downloadUrl"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    const-string v1, "dialog download new version"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, La/a/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
