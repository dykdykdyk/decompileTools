.class public final Lcom/nut/blehunter/c/h;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 38
    const-string v0, ""

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v3, ""

    .line 43
    :try_start_0
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    const-class v4, Lcom/nut/blehunter/entity/MapRegion;

    .line 1049
    invoke-static {v0, v4}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/nut/blehunter/entity/MapRegion;

    .line 44
    if-nez v0, :cond_2

    .line 45
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/g;->a(Ljava/lang/String;)Lcom/nut/blehunter/entity/MapRegion;

    move-result-object v0

    .line 47
    :cond_2
    iget-object v3, v0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move-object v5, v3

    move v3, v0

    move-object v0, v5

    .line 52
    :goto_2
    if-eqz v3, :cond_0

    .line 53
    const v3, 0x7f0601bb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 48
    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v3

    move v3, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/nut/blehunter/entity/Nut;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string v0, ""

    .line 87
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    sget-object v0, Lcom/nut/blehunter/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "scan?userName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v0, "&articleName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    const-class v2, Lcom/nut/blehunter/entity/MapRegion;

    .line 2049
    invoke-static {v0, v2}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Lcom/nut/blehunter/entity/MapRegion;

    .line 73
    if-nez v0, :cond_1

    .line 74
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->o:Lcom/nut/blehunter/entity/LosingRecord;

    iget-object v0, v0, Lcom/nut/blehunter/entity/LosingRecord;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/nut/blehunter/d/g;->a(Ljava/lang/String;)Lcom/nut/blehunter/entity/MapRegion;

    move-result-object v0

    .line 76
    :cond_1
    iget-object v0, v0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    const-string v2, "&address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_2
    :goto_1
    const-string v0, "&deviceId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    iget-object v0, p1, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
