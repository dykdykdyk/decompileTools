.class public Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;
.super Ljava/lang/Object;
.source "CloudSearch.java"


# static fields
.field public static final DISTANCE:I = 0x1

.field public static final WEIGHT:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    .line 517
    iput p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    .line 518
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    .line 505
    iput-object p1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    .line 506
    iput-boolean p2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    .line 507
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    if-ne p0, p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 568
    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 570
    goto :goto_0

    .line 571
    :cond_3
    check-cast p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;

    .line 572
    iget-boolean v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    iget-boolean v3, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 573
    goto :goto_0

    .line 574
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 575
    iget-object v2, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 576
    goto :goto_0

    .line 577
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 578
    goto :goto_0

    .line 579
    :cond_6
    iget v2, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    iget v3, p1, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 580
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 552
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 553
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    add-int/2addr v0, v1

    .line 554
    return v0

    .line 551
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 527
    const-string v0, ""

    .line 528
    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    iget v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    if-nez v1, :cond_1

    .line 530
    const-string v0, "_weight"

    .line 541
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    iget v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 532
    const-string v0, "_distance"

    goto :goto_0

    .line 535
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->c:Z

    if-eqz v0, :cond_3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/services/cloud/CloudSearch$Sortingrules;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
