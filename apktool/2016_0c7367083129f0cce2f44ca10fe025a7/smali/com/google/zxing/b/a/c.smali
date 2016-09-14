.class public final Lcom/google/zxing/b/a/c;
.super Lcom/google/zxing/b/a/a;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/b/a/q;
    .locals 17

    .prologue
    .line 36
    .line 1040
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/b/a/c;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    const-string v0, "MECARD:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    .line 1046
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    const-string v0, "N:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1045
    if-nez v0, :cond_1

    .line 1046
    const/4 v0, 0x0

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1084
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1085
    if-ltz v1, :cond_3

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1049
    :goto_1
    const-string v0, "SOUND:"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1050
    const-string v0, "TEL:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1051
    const-string v0, "EMAIL:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1052
    const-string v0, "NOTE:"

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 1053
    const-string v0, "ADR:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1054
    const-string v0, "BDAY:"

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 1055
    const/16 v0, 0x8

    invoke-static {v13, v0}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1057
    const/4 v13, 0x0

    .line 1059
    :cond_2
    const-string v0, "URL:"

    invoke-static {v0, v2}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1063
    const-string v0, "ORG:"

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/google/zxing/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 1065
    new-instance v0, Lcom/google/zxing/b/a/d;

    invoke-static {v1}, Lcom/google/zxing/b/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/google/zxing/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    .line 1089
    goto :goto_1
.end method
