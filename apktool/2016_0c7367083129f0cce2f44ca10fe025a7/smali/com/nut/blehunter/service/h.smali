.class final Lcom/nut/blehunter/service/h;
.super Ljava/lang/Object;
.source "NutTrackerService.java"

# interfaces
.implements Lrx/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/i",
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
    .line 1321
    iput-object p1, p0, Lcom/nut/blehunter/service/h;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1321
    check-cast p1, Lrx/t;

    .line 2324
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/provider/l;->i()Ljava/util/List;

    move-result-object v0

    .line 2325
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 2328
    invoke-virtual {v0}, Lcom/nut/blehunter/entity/Nut;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2329
    invoke-static {}, Lcom/nut/blehunter/provider/m;->b()Lcom/nut/blehunter/provider/m;

    move-result-object v3

    iget v4, v0, Lcom/nut/blehunter/entity/Nut;->p:I

    invoke-virtual {v3, v4}, Lcom/nut/blehunter/provider/m;->a(I)Lcom/nut/blehunter/entity/t;

    move-result-object v3

    .line 2330
    iget-object v4, v3, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    if-eqz v4, :cond_0

    .line 2334
    :try_start_0
    iget-object v4, v3, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v4, v4, Lcom/nut/blehunter/entity/i;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2336
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2341
    if-le v4, v0, :cond_0

    iget-object v0, v3, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2343
    iget-object v0, v3, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    iget-object v0, v0, Lcom/nut/blehunter/entity/i;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2344
    iget-object v0, p0, Lcom/nut/blehunter/service/h;->a:Lcom/nut/blehunter/service/NutTrackerService;

    iget v4, v3, Lcom/nut/blehunter/entity/t;->a:I

    iget-object v3, v3, Lcom/nut/blehunter/entity/t;->c:Lcom/nut/blehunter/entity/i;

    invoke-static {v0, v4, v3}, Lcom/nut/blehunter/service/NutTrackerService;->a(Lcom/nut/blehunter/service/NutTrackerService;ILcom/nut/blehunter/entity/i;)V

    goto :goto_0

    .line 2338
    :catch_0
    move-exception v0

    const-string v3, "format firmware version exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, La/a/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2350
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2352
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 2353
    invoke-virtual {p1}, Lrx/t;->onCompleted()V

    .line 1321
    return-void
.end method
