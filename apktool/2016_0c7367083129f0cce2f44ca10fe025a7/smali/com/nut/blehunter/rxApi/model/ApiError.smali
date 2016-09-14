.class public Lcom/nut/blehunter/rxApi/model/ApiError;
.super Ljava/lang/Object;
.source "ApiError.java"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    .line 12
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    .line 13
    return-void
.end method
