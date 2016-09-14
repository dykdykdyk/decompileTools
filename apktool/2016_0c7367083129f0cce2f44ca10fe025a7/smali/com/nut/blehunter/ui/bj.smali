.class final Lcom/nut/blehunter/ui/bj;
.super Ljava/lang/Object;
.source "LocationRecordActivity.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/k",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/nut/blehunter/entity/Position;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LocationRecordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LocationRecordActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nut/blehunter/ui/bj;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 188
    check-cast p1, Ljava/util/HashMap;

    .line 1201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/nut/blehunter/ui/bj;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/LocationRecordActivity;->a(Lcom/nut/blehunter/ui/LocationRecordActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1203
    iget-object v0, p0, Lcom/nut/blehunter/ui/bj;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->b(Lcom/nut/blehunter/ui/LocationRecordActivity;)Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->setDateAvailable(Ljava/util/Collection;)V

    .line 1204
    iget-object v0, p0, Lcom/nut/blehunter/ui/bj;->a:Lcom/nut/blehunter/ui/LocationRecordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LocationRecordActivity;->b(Lcom/nut/blehunter/ui/LocationRecordActivity;)Lcom/nut/blehunter/ui/widget/WeekDatePicker;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/bk;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/bk;-><init>(Lcom/nut/blehunter/ui/bj;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nut/blehunter/ui/widget/WeekDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :cond_0
    return-void
.end method
