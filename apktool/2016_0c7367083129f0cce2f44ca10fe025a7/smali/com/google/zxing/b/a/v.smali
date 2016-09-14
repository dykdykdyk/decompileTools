.class public final Lcom/google/zxing/b/a/v;
.super Lcom/google/zxing/b/a/u;
.source "SMSMMSResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    const/16 v1, 0x3b

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 93
    if-gez v1, :cond_0

    .line 94
    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "via="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x1

    .line 41
    .line 1045
    invoke-static {p1}, Lcom/google/zxing/b/a/v;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    const-string v0, "sms:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMS:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms:"

    .line 1047
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MMS:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    :goto_0
    return-object v1

    .line 1052
    :cond_0
    invoke-static {v5}, Lcom/google/zxing/b/a/v;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1055
    const/4 v0, 0x0

    .line 1056
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1057
    const-string v0, "subject"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1058
    const-string v1, "body"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    move-object v4, v0

    move v0, v2

    .line 1063
    :goto_1
    const/16 v1, 0x3f

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1066
    if-ltz v1, :cond_1

    if-nez v0, :cond_2

    .line 1067
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1072
    :goto_2
    const/4 v1, -0x1

    .line 1074
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1075
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1076
    :goto_3
    const/16 v2, 0x2c

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-le v2, v1, :cond_3

    .line 1077
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-static {v5, v6, v1}, Lcom/google/zxing/b/a/v;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    move v1, v2

    .line 1080
    goto :goto_3

    .line 1069
    :cond_2
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1081
    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/google/zxing/b/a/v;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 1083
    new-instance v2, Lcom/google/zxing/b/a/w;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1084
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/zxing/b/a/w;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 41
    goto :goto_0

    :cond_4
    move-object v3, v1

    move-object v4, v1

    goto :goto_1
.end method
