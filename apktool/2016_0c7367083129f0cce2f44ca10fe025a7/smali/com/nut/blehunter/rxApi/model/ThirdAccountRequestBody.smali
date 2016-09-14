.class public Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;
.super Ljava/lang/Object;
.source "ThirdAccountRequestBody.java"


# static fields
.field public static final TYPE_WECHAT:I = 0x0

.field public static final TYPE_YIXIN:I = 0x1


# instance fields
.field public final data:Ljava/lang/String;

.field public final openId:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->type:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->data:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;->openId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static createBindThirdAccountRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createUnBindThirdAccountRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/nut/blehunter/rxApi/model/ThirdAccountRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
