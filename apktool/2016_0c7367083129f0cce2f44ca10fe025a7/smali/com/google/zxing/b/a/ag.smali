.class public final Lcom/google/zxing/b/a/ag;
.super Lcom/google/zxing/b/a/u;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v2}, Lcom/google/zxing/b/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    if-eqz p0, :cond_1

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 116
    :cond_1
    return-object p0
.end method

.method private static d(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/g;
    .locals 14

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/zxing/b/a/ag;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v10

    .line 34
    const-string v0, "BEGIN:VEVENT"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 35
    if-gez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 88
    :goto_0
    return-object v1

    .line 39
    :cond_0
    const-string v0, "SUMMARY"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v0, "DTSTART"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    const/4 v1, 0x0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "DTEND"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v0, "DURATION"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v0, "LOCATION"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    const-string v0, "ORGANIZER"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    const-string v0, "ATTENDEE"

    .line 1100
    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-static {v0, v10, v1, v8}, Lcom/google/zxing/b/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v9

    .line 1101
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1102
    :cond_2
    const/4 v8, 0x0

    .line 50
    :cond_3
    if-eqz v8, :cond_5

    .line 51
    const/4 v0, 0x0

    :goto_1
    array-length v1, v8

    if-ge v0, v1, :cond_5

    .line 52
    aget-object v1, v8, v0

    invoke-static {v1}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1104
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1105
    new-array v8, v11, [Ljava/lang/String;

    .line 1106
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v11, :cond_3

    .line 1107
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v8, v1

    .line 1106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 55
    :cond_5
    const-string v0, "DESCRIPTION"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    const-string v0, "GEO"

    invoke-static {v0, v10}, Lcom/google/zxing/b/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_6

    .line 61
    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    .line 62
    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    .line 77
    :goto_3
    :try_start_0
    new-instance v1, Lcom/google/zxing/b/a/g;

    invoke-direct/range {v1 .. v13}, Lcom/google/zxing/b/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 88
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 64
    :cond_6
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 65
    if-gez v1, :cond_7

    .line 66
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 69
    :cond_7
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 70
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    goto :goto_3

    .line 72
    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 1

    .prologue
    .line 29
    invoke-static {p1}, Lcom/google/zxing/b/a/ag;->d(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/g;

    move-result-object v0

    return-object v0
.end method
