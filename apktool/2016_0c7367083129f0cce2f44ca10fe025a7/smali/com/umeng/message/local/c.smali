.class public Lcom/umeng/message/local/c;
.super Ljava/lang/Object;
.source "UmengLocalNotificationHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/umeng/message/local/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIII)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 225
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 228
    int-to-float v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v2, v4

    const-wide v4, 0x40133d70a3d70a3dL    # 4.81

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 229
    div-int/lit8 v0, v0, 0x4

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-04-0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lt p1, v6, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lt p2, v6, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lt p3, v6, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 234
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/message/local/b;)J
    .locals 18

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1126
    move-object/from16 v0, p1

    iget v3, v0, Lcom/umeng/message/local/b;->b:I

    .line 1134
    move-object/from16 v0, p1

    iget v9, v0, Lcom/umeng/message/local/b;->c:I

    .line 1142
    move-object/from16 v0, p1

    iget v8, v0, Lcom/umeng/message/local/b;->d:I

    .line 1150
    move-object/from16 v0, p1

    iget v5, v0, Lcom/umeng/message/local/b;->e:I

    .line 1158
    move-object/from16 v0, p1

    iget v6, v0, Lcom/umeng/message/local/b;->f:I

    .line 1166
    move-object/from16 v0, p1

    iget v7, v0, Lcom/umeng/message/local/b;->g:I

    .line 1174
    move-object/from16 v0, p1

    iget v2, v0, Lcom/umeng/message/local/b;->h:I

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 26
    const/4 v10, 0x1

    invoke-virtual {v4, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 27
    const/4 v10, 0x2

    add-int/lit8 v11, v9, -0x1

    invoke-virtual {v4, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 28
    const/4 v10, 0x5

    invoke-virtual {v4, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 29
    const/16 v10, 0xb

    invoke-virtual {v4, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 30
    const/16 v10, 0xc

    invoke-virtual {v4, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 31
    const/16 v10, 0xd

    invoke-virtual {v4, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 32
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1198
    move-object/from16 v0, p1

    iget v13, v0, Lcom/umeng/message/local/b;->k:I

    move v12, v2

    .line 35
    :goto_0
    const-wide/16 v16, 0x32

    add-long v16, v16, v14

    cmp-long v2, v10, v16

    if-gez v2, :cond_b

    if-lez v12, :cond_b

    .line 36
    if-eqz v13, :cond_9

    .line 2190
    move-object/from16 v0, p1

    iget v2, v0, Lcom/umeng/message/local/b;->j:I

    .line 37
    add-int/2addr v2, v3

    .line 40
    packed-switch v13, :pswitch_data_0

    :goto_1
    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 179
    :goto_2
    add-int/lit8 v10, v12, -0x1

    move v12, v10

    move-wide v10, v8

    move v9, v2

    move v8, v4

    goto :goto_0

    .line 42
    :pswitch_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-01-01 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v5, v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v6, v3, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v7, v3, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 47
    goto :goto_2

    .line 43
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 44
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 45
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 49
    :pswitch_1
    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/umeng/message/local/a;->a(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 50
    const/16 v3, 0xc

    :try_start_1
    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v10

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 52
    goto/16 :goto_2

    .line 54
    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 56
    goto/16 :goto_2

    .line 58
    :pswitch_3
    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 60
    goto/16 :goto_2

    .line 62
    :pswitch_4
    invoke-static {v2, v5, v6, v7}, Lcom/umeng/message/local/c;->a(IIII)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 63
    goto/16 :goto_2

    .line 65
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-05-01 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v5, v3, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v6, v3, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v7, v3, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 70
    goto/16 :goto_2

    .line 66
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 67
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 68
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 72
    :pswitch_6
    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 74
    goto/16 :goto_2

    .line 76
    :pswitch_7
    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 78
    goto/16 :goto_2

    .line 80
    :pswitch_8
    const/16 v3, 0x8

    const/16 v4, 0xf

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 82
    goto/16 :goto_2

    .line 84
    :pswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-10-01 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v5, v3, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_9
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v6, v3, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0xa

    if-lt v7, v3, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 89
    goto/16 :goto_2

    .line 85
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    .line 86
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    .line 87
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 91
    :pswitch_a
    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 93
    goto/16 :goto_2

    .line 95
    :pswitch_b
    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-static/range {v2 .. v7}, Lcom/umeng/message/local/c;->a(IIIIII)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/message/local/c;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v10

    goto/16 :goto_1

    .line 99
    :catch_0
    move-exception v3

    move v4, v8

    .line 100
    :goto_c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    sget-object v8, Lcom/umeng/message/local/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 103
    goto/16 :goto_2

    .line 3182
    :cond_9
    move-object/from16 v0, p1

    iget v2, v0, Lcom/umeng/message/local/b;->i:I

    .line 3190
    move-object/from16 v0, p1

    iget v4, v0, Lcom/umeng/message/local/b;->j:I

    .line 106
    packed-switch v2, :pswitch_data_1

    move v4, v8

    move v2, v9

    move-wide v8, v10

    goto/16 :goto_2

    .line 108
    :pswitch_c
    add-int v2, v3, v4

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/4 v4, 0x2

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v3, v4, v10}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v4, 0xd

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 116
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    move v4, v8

    move v3, v2

    move v2, v9

    move-wide v8, v10

    .line 117
    goto/16 :goto_2

    .line 119
    :pswitch_d
    add-int v2, v9, v4

    .line 120
    const/16 v4, 0xc

    if-le v2, v4, :cond_a

    .line 121
    div-int/lit8 v4, v2, 0xc

    add-int/2addr v3, v4

    .line 122
    rem-int/lit8 v2, v2, 0xc

    .line 124
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 125
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/4 v9, 0x2

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/4 v9, 0x5

    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v9, 0xb

    invoke-virtual {v4, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/16 v9, 0xc

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 130
    const/16 v9, 0xd

    invoke-virtual {v4, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    move v4, v8

    move-wide v8, v10

    .line 132
    goto/16 :goto_2

    .line 134
    :pswitch_e
    mul-int/lit8 v2, v4, 0x18

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v8, v10, v2

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 136
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 138
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 139
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 140
    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 141
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 142
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    goto/16 :goto_2

    .line 145
    :pswitch_f
    mul-int/lit8 v2, v4, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v8, v10, v2

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 147
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 149
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 150
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 151
    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 152
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 153
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    goto/16 :goto_2

    .line 156
    :pswitch_10
    mul-int/lit8 v2, v4, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long v8, v10, v2

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 158
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 160
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 161
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 162
    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 163
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 164
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    goto/16 :goto_2

    .line 167
    :pswitch_11
    mul-int/lit16 v2, v4, 0x3e8

    int-to-long v2, v2

    add-long v8, v10, v2

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 169
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 171
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 172
    const/4 v4, 0x5

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 173
    const/16 v5, 0xb

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 174
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 175
    const/16 v10, 0xd

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    goto/16 :goto_2

    .line 182
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 185
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 186
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 187
    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 188
    const/16 v7, 0xc

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 189
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 4130
    move-object/from16 v0, p1

    iput v3, v0, Lcom/umeng/message/local/b;->b:I

    .line 4138
    move-object/from16 v0, p1

    iput v4, v0, Lcom/umeng/message/local/b;->c:I

    .line 4146
    move-object/from16 v0, p1

    iput v5, v0, Lcom/umeng/message/local/b;->d:I

    .line 4154
    move-object/from16 v0, p1

    iput v6, v0, Lcom/umeng/message/local/b;->e:I

    .line 4162
    move-object/from16 v0, p1

    iput v7, v0, Lcom/umeng/message/local/b;->f:I

    .line 4170
    move-object/from16 v0, p1

    iput v2, v0, Lcom/umeng/message/local/b;->g:I

    .line 4178
    move-object/from16 v0, p1

    iput v12, v0, Lcom/umeng/message/local/b;->h:I

    .line 200
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/umeng/message/local/e;->a(Lcom/umeng/message/local/b;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 206
    :goto_d
    return-wide v10

    .line 201
    :catch_1
    move-exception v2

    .line 202
    sget-object v3, Lcom/umeng/message/local/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 99
    :catch_2
    move-exception v3

    goto/16 :goto_c

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 106
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 214
    return-wide v0
.end method

.method private static a(IIIIII)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 239
    const-string v0, ""

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    if-ge p1, v2, :cond_0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    if-ge p2, v2, :cond_1

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_1
    if-ge p3, v2, :cond_2

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_2
    if-ge p4, v2, :cond_3

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_3
    if-ge p5, v2, :cond_4

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_4
    return-object v0

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 248
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 252
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 256
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 260
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 220
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method
