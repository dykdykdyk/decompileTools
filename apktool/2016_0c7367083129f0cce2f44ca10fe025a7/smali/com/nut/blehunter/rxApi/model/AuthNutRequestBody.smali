.class public Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;
.super Ljava/lang/Object;
.source "AuthNutRequestBody.java"


# instance fields
.field public final device_id:Ljava/lang/String;

.field public final latitude:Ljava/lang/String;

.field public final longitude:Ljava/lang/String;

.field public final pid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;->latitude:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;->longitude:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;->pid:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/nut/blehunter/rxApi/model/AuthNutRequestBody;->device_id:Ljava/lang/String;

    .line 21
    return-void
.end method
