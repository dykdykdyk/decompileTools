.class public Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;
.super Ljava/lang/Object;
.source "UpdateFriendPositionRequestBody.java"


# instance fields
.field public final friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/rxApi/model/FriendPosition;",
            ">;"
        }
    .end annotation
.end field

.field public final user:Lcom/nut/blehunter/rxApi/model/FriendPosition;


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/rxApi/model/FriendPosition;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/rxApi/model/FriendPosition;",
            "Ljava/util/List",
            "<",
            "Lcom/nut/blehunter/rxApi/model/FriendPosition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;->user:Lcom/nut/blehunter/rxApi/model/FriendPosition;

    .line 16
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/UpdateFriendPositionRequestBody;->friends:Ljava/util/List;

    .line 17
    return-void
.end method
