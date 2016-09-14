.class final Lcom/nut/blehunter/service/j;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

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
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/nut/blehunter/service/j;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1404
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1395
    check-cast p1, Ljava/lang/String;

    .line 2408
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2409
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2410
    if-eqz v0, :cond_4

    .line 2411
    const-string v1, "nutsOwn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2412
    const-string v2, "nutsSub"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2414
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v3

    .line 2415
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2416
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 2417
    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    iget-object v5, v0, Lcom/nut/blehunter/entity/Nut;->A:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 2418
    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nut/blehunter/provider/l;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v4

    .line 2420
    :try_start_0
    iget-object v5, v4, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v6, v5, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    iget-object v5, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iget-wide v8, v5, Lcom/nut/blehunter/entity/PositionRecord;->b:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 2421
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    iput-object v0, v4, Lcom/nut/blehunter/entity/Nut;->r:Lcom/nut/blehunter/entity/PositionRecord;

    .line 2422
    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2425
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2431
    :cond_1
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2432
    invoke-static {}, Lcom/nut/blehunter/provider/o;->b()Lcom/nut/blehunter/provider/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/o;->c()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 2433
    if-eqz v1, :cond_4

    .line 2434
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 2435
    iget-object v4, v1, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v0, v4, v10}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Ljava/lang/String;Z)V

    .line 2436
    iget-object v4, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nut/blehunter/provider/l;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2437
    invoke-virtual {v3, v0}, Lcom/nut/blehunter/provider/l;->d(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_1

    .line 2439
    :cond_2
    invoke-virtual {v3, v0}, Lcom/nut/blehunter/provider/l;->c(Lcom/nut/blehunter/entity/Nut;)V

    goto :goto_1

    .line 2446
    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    .line 2445
    :cond_4
    return-void
.end method
