.class public Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;
.super Ljava/lang/Object;
.source "FriendPositionRequestBody.java"


# instance fields
.field public final position:Lcom/nut/blehunter/entity/Position;

.field public final receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/entity/Position;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/entity/Position;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;->position:Lcom/nut/blehunter/entity/Position;

    .line 24
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;->receivers:Ljava/util/List;

    .line 25
    return-void
.end method

.method public static createRequestBody(Lcom/nut/blehunter/entity/CustomLatLng;Ljava/util/List;)Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Lcom/nut/blehunter/entity/Position;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 1048
    iget-wide v4, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 1052
    iget-wide v6, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/nut/blehunter/entity/Position;-><init>(JDD)V

    .line 19
    new-instance v0, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;

    invoke-direct {v0, v1, p1}, Lcom/nut/blehunter/rxApi/model/FriendPositionRequestBody;-><init>(Lcom/nut/blehunter/entity/Position;Ljava/util/List;)V

    return-object v0
.end method
