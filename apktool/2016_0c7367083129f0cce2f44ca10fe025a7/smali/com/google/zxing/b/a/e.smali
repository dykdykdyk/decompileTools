.class public final Lcom/google/zxing/b/a/e;
.super Lcom/google/zxing/b/a/a;
.source "BizcardResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/zxing/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 17

    .prologue
    .line 31
    .line 1039
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/b/a/e;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    const-string v0, "BIZCARD:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1043
    :cond_0
    const-string v0, "N:"

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1044
    const-string v0, "X:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1093
    if-nez v1, :cond_5

    move-object v1, v0

    .line 1046
    :cond_1
    :goto_1
    const-string v0, "T:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 1047
    const-string v0, "C:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 1048
    const-string v0, "A:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1049
    const-string v0, "B:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1050
    const-string v0, "M:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1051
    const-string v0, "F:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1052
    const-string v0, "E:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1054
    new-instance v0, Lcom/google/zxing/b/a/d;

    invoke-static {v1}, Lcom/google/zxing/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2075
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2076
    if-eqz v4, :cond_2

    .line 2077
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2079
    :cond_2
    if-eqz v5, :cond_3

    .line 2080
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    :cond_3
    if-eqz v6, :cond_4

    .line 2083
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 2086
    if-nez v4, :cond_6

    .line 2087
    const/4 v4, 0x0

    .line 1057
    :goto_2
    const/4 v5, 0x0

    .line 1059
    invoke-static {v7}, Lcom/google/zxing/b/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/google/zxing/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_5
    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 2089
    :cond_6
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_2
.end method
