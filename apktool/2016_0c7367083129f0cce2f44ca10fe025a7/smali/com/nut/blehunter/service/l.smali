.class final Lcom/nut/blehunter/service/l;
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
        "Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/nut/blehunter/service/l;->c:Lcom/nut/blehunter/service/NutTrackerService;

    iput-object p2, p0, Lcom/nut/blehunter/service/l;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nut/blehunter/service/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1456
    check-cast p1, Lrx/t;

    .line 2459
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2460
    invoke-static {}, Lcom/nut/blehunter/provider/j;->b()Lcom/nut/blehunter/provider/j;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/service/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/j;->b(Ljava/util/ArrayList;)V

    .line 2461
    new-instance v2, Lcom/nut/blehunter/rxApi/model/FriendPosition;

    invoke-direct {v2}, Lcom/nut/blehunter/rxApi/model/FriendPosition;-><init>()V

    .line 2462
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2463
    iget-object v0, p0, Lcom/nut/blehunter/service/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2464
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 2465
    iget-object v0, p0, Lcom/nut/blehunter/service/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 2466
    iget-object v5, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/nut/blehunter/service/l;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/nut/blehunter/service/l;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/nut/blehunter/rxApi/model/FriendPosition;->uuid:Ljava/lang/String;

    .line 2468
    iput v1, v2, Lcom/nut/blehunter/rxApi/model/FriendPosition;->index:I

    .line 2464
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2470
    :cond_0
    new-instance v5, Lcom/nut/blehunter/rxApi/model/FriendPosition;

    invoke-direct {v5}, Lcom/nut/blehunter/rxApi/model/FriendPosition;-><init>()V

    .line 2471
    iget-object v0, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    iput-object v0, v5, Lcom/nut/blehunter/rxApi/model/FriendPosition;->uuid:Ljava/lang/String;

    .line 2472
    iput v1, v5, Lcom/nut/blehunter/rxApi/model/FriendPosition;->index:I

    .line 2473
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2476
    :cond_1
    new-instance v0, Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;

    invoke-direct {v0, v2, v3}, Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;-><init>(Lcom/nut/blehunter/rxApi/model/FriendPosition;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lrx/t;->onNext(Ljava/lang/Object;)V

    .line 2479
    :cond_2
    invoke-virtual {p1}, Lrx/t;->onCompleted()V

    .line 1456
    return-void
.end method
