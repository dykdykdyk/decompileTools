.class final Lcom/nut/blehunter/qrcode/b/h;
.super Lcom/nut/blehunter/qrcode/b/a;
.source "VCardContactEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nut/blehunter/qrcode/b/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v2

    .line 83
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 86
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 88
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 91
    const-string v4, "TYPE"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {v0}, Lcom/nut/blehunter/qrcode/b/h;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 94
    if-nez v4, :cond_4

    .line 95
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1120
    sparse-switch v0, :sswitch_data_0

    move-object v0, v2

    .line 98
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1138
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v4, v2

    .line 99
    :goto_4
    if-eqz v0, :cond_5

    .line 100
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_5
    if-eqz v4, :cond_2

    .line 103
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1124
    :sswitch_0
    const-string v0, "fax"

    goto :goto_3

    .line 1127
    :sswitch_1
    const-string v0, "pager"

    goto :goto_3

    .line 1129
    :sswitch_2
    const-string v0, "textphone"

    goto :goto_3

    .line 1131
    :sswitch_3
    const-string v0, "text"

    goto :goto_3

    .line 1143
    :pswitch_1
    const-string v4, "home"

    goto :goto_4

    .line 1149
    :pswitch_2
    const-string v4, "work"

    goto :goto_4

    :cond_6
    move-object v2, v3

    .line 108
    goto :goto_0

    .line 1120
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xd -> :sswitch_0
        0x10 -> :sswitch_2
        0x12 -> :sswitch_1
        0x14 -> :sswitch_3
    .end sparse-switch

    .line 1138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 113
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    const-string v1, "BEGIN:VCARD\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "VERSION:3.0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    new-instance v6, Lcom/nut/blehunter/qrcode/b/i;

    invoke-direct {v6}, Lcom/nut/blehunter/qrcode/b/i;-><init>()V

    .line 55
    const-string v2, "N"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 57
    const-string v2, "ORG"

    const/16 v5, 0xa

    move-object/from16 v3, p2

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 59
    const-string v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 61
    invoke-static/range {p4 .. p5}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 62
    const-string v9, "TEL"

    const v11, 0x7fffffff

    new-instance v12, Lcom/nut/blehunter/qrcode/b/j;

    invoke-direct {v12, v2}, Lcom/nut/blehunter/qrcode/b/j;-><init>(Ljava/util/List;)V

    new-instance v13, Lcom/nut/blehunter/qrcode/b/i;

    invoke-direct {v13, v2}, Lcom/nut/blehunter/qrcode/b/i;-><init>(Ljava/util/List;)V

    const/16 v14, 0xa

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v10, p4

    invoke-static/range {v7 .. v14}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 66
    const-string v2, "EMAIL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v3, p6

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 69
    const-string v2, "URL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v3, p7

    invoke-static/range {v0 .. v7}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;ILcom/nut/blehunter/qrcode/b/b;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 72
    const-string v2, "NOTE"

    const/16 v5, 0xa

    move-object/from16 v3, p8

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/nut/blehunter/qrcode/b/h;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/qrcode/b/b;C)V

    .line 74
    const-string v2, "END:VCARD\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    return-object v2
.end method
