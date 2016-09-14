.class public Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;
.super Ljava/lang/Object;
.source "DeleteSharedRequestBody.java"


# instance fields
.field public final articleUUID:Ljava/lang/String;

.field public final userUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;->articleUUID:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/DeleteSharedRequestBody;->userUUID:Ljava/lang/String;

    .line 15
    return-void
.end method
