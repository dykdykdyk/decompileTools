.class final Lcom/nut/blehunter/ui/fj;
.super Ljava/lang/Object;
.source "SafeRegionManageActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SafeRegionManageActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/nut/blehunter/ui/fj;->a:Lcom/nut/blehunter/ui/SafeRegionManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 205
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 197
    check-cast p1, Ljava/lang/String;

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1213
    if-eqz v1, :cond_1

    .line 1214
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1215
    invoke-static {v1}, Lcom/nut/blehunter/e;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1216
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1219
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/n;->b()Lcom/nut/blehunter/provider/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/provider/n;->c()V

    .line 1220
    invoke-static {}, Lcom/nut/blehunter/provider/n;->b()Lcom/nut/blehunter/provider/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/provider/n;->a(Ljava/util/List;)V

    .line 197
    :cond_1
    return-void
.end method
