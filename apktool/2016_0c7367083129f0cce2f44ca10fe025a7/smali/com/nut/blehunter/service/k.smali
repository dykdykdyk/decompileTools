.class final Lcom/nut/blehunter/service/k;
.super Lrx/t;
.source "NutTrackerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/t",
        "<",
        "Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/service/NutTrackerService;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/service/NutTrackerService;)V
    .locals 0

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/nut/blehunter/service/k;->a:Lcom/nut/blehunter/service/NutTrackerService;

    invoke-direct {p0}, Lrx/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 1485
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1490
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1481
    check-cast p1, Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;

    .line 2494
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->d()Lcom/nut/blehunter/rxApi/service/FriendsService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nut/blehunter/rxApi/service/FriendsService;->putFriend(Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/rxApi/e;

    invoke-direct {v1}, Lcom/nut/blehunter/rxApi/e;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1481
    return-void
.end method
