.class public Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;
.super Ljava/lang/Object;
.source "DeclareLosingRequestBody.java"


# instance fields
.field public final tagId:Ljava/lang/String;

.field public final traceRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;->tagId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/DeclareLosingRequestBody;->traceRegion:Ljava/lang/String;

    .line 15
    return-void
.end method
