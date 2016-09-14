.class public Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;
.super Ljava/lang/Object;
.source "ModifyProfileRequestBody.java"


# instance fields
.field public final deviceToken:Ljava/lang/String;

.field public final pushTokenType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;->deviceToken:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;->pushTokenType:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static createModifyProfileRequestBody(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/rxApi/model/ModifyProfileRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
