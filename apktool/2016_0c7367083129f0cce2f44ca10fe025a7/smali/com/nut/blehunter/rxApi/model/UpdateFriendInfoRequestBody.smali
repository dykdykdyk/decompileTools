.class public Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;
.super Ljava/lang/Object;
.source "UpdateFriendInfoRequestBody.java"


# instance fields
.field public final alias:Ljava/lang/String;

.field public final safe_regions:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;->alias:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/UpdateFriendInfoRequestBody;->safe_regions:Ljava/util/List;

    .line 17
    return-void
.end method
