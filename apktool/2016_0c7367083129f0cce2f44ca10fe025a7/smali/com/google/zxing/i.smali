.class public final Lcom/google/zxing/i;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/f;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/google/zxing/j;->a:[I

    invoke-virtual {p2}, Lcom/google/zxing/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No encoder available for format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    new-instance v0, Lcom/google/zxing/e/k;

    invoke-direct {v0}, Lcom/google/zxing/e/k;-><init>()V

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/q;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_1
    new-instance v0, Lcom/google/zxing/e/i;

    invoke-direct {v0}, Lcom/google/zxing/e/i;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Lcom/google/zxing/e/t;

    invoke-direct {v0}, Lcom/google/zxing/e/t;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_3
    new-instance v0, Lcom/google/zxing/g/b;

    invoke-direct {v0}, Lcom/google/zxing/g/b;-><init>()V

    goto :goto_0

    .line 71
    :pswitch_4
    new-instance v0, Lcom/google/zxing/e/f;

    invoke-direct {v0}, Lcom/google/zxing/e/f;-><init>()V

    goto :goto_0

    .line 74
    :pswitch_5
    new-instance v0, Lcom/google/zxing/e/d;

    invoke-direct {v0}, Lcom/google/zxing/e/d;-><init>()V

    goto :goto_0

    .line 77
    :pswitch_6
    new-instance v0, Lcom/google/zxing/e/n;

    invoke-direct {v0}, Lcom/google/zxing/e/n;-><init>()V

    goto :goto_0

    .line 80
    :pswitch_7
    new-instance v0, Lcom/google/zxing/f/d;

    invoke-direct {v0}, Lcom/google/zxing/f/d;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_8
    new-instance v0, Lcom/google/zxing/e/b;

    invoke-direct {v0}, Lcom/google/zxing/e/b;-><init>()V

    goto :goto_0

    .line 86
    :pswitch_9
    new-instance v0, Lcom/google/zxing/c/b;

    invoke-direct {v0}, Lcom/google/zxing/c/b;-><init>()V

    goto :goto_0

    .line 89
    :pswitch_a
    new-instance v0, Lcom/google/zxing/a/c;

    invoke-direct {v0}, Lcom/google/zxing/a/c;-><init>()V

    goto :goto_0

    .line 57
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
    .end packed-switch
.end method
