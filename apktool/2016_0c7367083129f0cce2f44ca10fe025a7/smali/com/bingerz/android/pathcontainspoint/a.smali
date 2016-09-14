.class public final Lcom/bingerz/android/pathcontainspoint/a;
.super Ljava/lang/Object;
.source "PathContainsPoint.java"


# direct methods
.method public static a(Landroid/content/Context;DD)Z
    .locals 11

    .prologue
    .line 13
    new-instance v2, Lcom/bingerz/android/pathcontainspoint/b;

    invoke-direct {v2}, Lcom/bingerz/android/pathcontainspoint/b;-><init>()V

    .line 1038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2019
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/bingerz/android/pathcontainspoint/R$array;->china_latitude:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bingerz/android/pathcontainspoint/a;->a([Ljava/lang/String;)[D

    move-result-object v3

    .line 2023
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/bingerz/android/pathcontainspoint/R$array;->china_longitude:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bingerz/android/pathcontainspoint/a;->a([Ljava/lang/String;)[D

    move-result-object v4

    .line 1041
    if-eqz v3, :cond_0

    array-length v0, v3

    if-lez v0, :cond_0

    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    array-length v0, v3

    array-length v5, v4

    if-eq v0, v5, :cond_1

    :cond_0
    move-object v0, v1

    .line 3015
    :goto_0
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 3016
    new-instance v3, Lcom/bingerz/android/pathcontainspoint/c;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/bingerz/android/pathcontainspoint/c;-><init>(DD)V

    .line 3017
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Ljava/util/ArrayList;D)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1045
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 1046
    new-instance v5, Lcom/bingerz/android/pathcontainspoint/c;

    aget-wide v6, v3, v0

    aget-wide v8, v4, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/bingerz/android/pathcontainspoint/c;-><init>(DD)V

    .line 1047
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 1049
    goto :goto_0

    .line 3017
    :cond_3
    const/4 v0, 0x0

    .line 15
    goto :goto_1
.end method

.method private static a([Ljava/lang/String;)[D
    .locals 4

    .prologue
    .line 27
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_1
    array-length v0, p0

    new-array v1, v0, [D

    .line 31
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 32
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 34
    goto :goto_0
.end method
