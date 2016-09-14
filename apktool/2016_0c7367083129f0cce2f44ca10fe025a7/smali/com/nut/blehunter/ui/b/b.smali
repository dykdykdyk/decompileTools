.class final Lcom/nut/blehunter/ui/b/b;
.super Ljava/lang/Object;
.source "AMapFragment.java"

# interfaces
.implements Lcom/amap/api/services/help/Inputtips$InputtipsListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/a;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/a;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/b;->a:Lcom/nut/blehunter/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetInputtips(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 346
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 347
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 349
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/help/Tip;

    invoke-virtual {v0}, Lcom/amap/api/services/help/Tip;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/b;->a:Lcom/nut/blehunter/ui/b/a;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a;->l:Lcom/nut/blehunter/ui/b/r;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/nut/blehunter/ui/b/b;->a:Lcom/nut/blehunter/ui/b/a;

    iget-object v0, v0, Lcom/nut/blehunter/ui/b/a;->l:Lcom/nut/blehunter/ui/b/r;

    invoke-interface {v0, v2}, Lcom/nut/blehunter/ui/b/r;->a(Ljava/util/List;)V

    .line 355
    :cond_1
    return-void
.end method
