.class public Lcom/nut/blehunter/rxApi/model/FindRequestBody;
.super Ljava/lang/Object;
.source "FindRequestBody.java"


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/FindRequestBody;->deviceId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/FindRequestBody;->longitude:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/FindRequestBody;->latitude:Ljava/lang/String;

    .line 18
    return-void
.end method
