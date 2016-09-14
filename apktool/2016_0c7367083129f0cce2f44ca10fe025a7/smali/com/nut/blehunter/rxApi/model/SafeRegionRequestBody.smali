.class public Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;
.super Ljava/lang/Object;
.source "SafeRegionRequestBody.java"


# instance fields
.field public address:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public radius:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->uuid:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->name:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->latitude:D

    .line 26
    iput-wide p5, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->longitude:D

    .line 27
    iput p7, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->radius:I

    .line 28
    iput-object p8, p0, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;->address:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static createAddSafeRegionRequestBody(Lcom/nut/blehunter/entity/SafeRegion;)Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;
    .locals 10

    .prologue
    .line 32
    new-instance v1, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    iget-wide v6, p0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    iget v8, p0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    iget-object v9, p0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V

    return-object v1
.end method

.method public static createModifySafeRegionRequestBody(Lcom/nut/blehunter/entity/SafeRegion;)Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;
    .locals 10

    .prologue
    .line 36
    new-instance v1, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;

    iget-object v2, p0, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    iget-wide v6, p0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    iget v8, p0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    iget-object v9, p0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    invoke-direct/range {v1 .. v9}, Lcom/nut/blehunter/rxApi/model/SafeRegionRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;)V

    return-object v1
.end method
