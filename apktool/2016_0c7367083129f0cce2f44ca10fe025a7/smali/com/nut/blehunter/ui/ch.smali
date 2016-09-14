.class final Lcom/nut/blehunter/ui/ch;
.super Ljava/lang/Object;
.source "LookForShareActivity.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/k",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/LookForShareActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/nut/blehunter/ui/ch;->b:Lcom/nut/blehunter/ui/LookForShareActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ch;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 225
    check-cast p1, Ljava/lang/String;

    .line 1237
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/nut/blehunter/ui/ch;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_0

    .line 1241
    const-string v1, "downloadUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1243
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/ch;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ch;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 1251
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    goto :goto_0
.end method
