.class public final Lorg/threeten/bp/b/c;
.super Ljava/lang/Object;
.source "Jdk8Methods.java"


# direct methods
.method public static a(I)I
    .locals 3

    .prologue
    .line 181
    add-int/lit8 v0, p0, -0x1

    .line 183
    xor-int v1, p0, v0

    if-gez v1, :cond_0

    xor-int/lit8 v1, p0, 0x1

    if-gez v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subtraction overflows an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return v0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 110
    if-ge p0, p1, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 116
    :goto_0
    return v0

    .line 113
    :cond_0
    if-le p0, p1, :cond_1

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)I
    .locals 4

    .prologue
    .line 284
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculation overflows an int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method public static a(JJ)I
    .locals 2

    .prologue
    .line 127
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 128
    const/4 v0, -0x1

    .line 133
    :goto_0
    return v0

    .line 130
    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JI)J
    .locals 4

    .prologue
    .line 232
    packed-switch p2, :pswitch_data_0

    .line 243
    int-to-long v0, p2

    mul-long/2addr v0, p0

    .line 244
    int-to-long v2, p2

    div-long v2, v0, v2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_1

    .line 245
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiplication overflows a long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiplication overflows a long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    neg-long p0, p0

    .line 247
    :goto_0
    :pswitch_1
    return-wide p0

    .line 239
    :pswitch_2
    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    move-wide p0, v0

    .line 247
    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 94
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(JI)I
    .locals 4

    .prologue
    .line 341
    int-to-long v0, p2

    rem-long v0, p0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    int-to-long v2, p2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static b(JJ)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 163
    add-long v0, p0, p2

    .line 165
    xor-long v2, p0, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 166
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Addition overflows a long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-wide v0
.end method

.method public static c(JJ)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 198
    sub-long v0, p0, p2

    .line 200
    xor-long v2, p0, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 201
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subtraction overflows a long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    return-wide v0
.end method

.method public static d(JJ)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, -0x1

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v0, 0x0

    .line 259
    cmp-long v2, p2, v8

    if-nez v2, :cond_0

    .line 272
    :goto_0
    return-wide p0

    .line 262
    :cond_0
    cmp-long v2, p0, v8

    if-nez v2, :cond_1

    move-wide p0, p2

    .line 263
    goto :goto_0

    .line 265
    :cond_1
    cmp-long v2, p0, v0

    if-eqz v2, :cond_2

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    :cond_2
    move-wide p0, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_3
    mul-long v0, p0, p2

    .line 269
    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_5

    cmp-long v2, p0, v4

    if-nez v2, :cond_4

    cmp-long v2, p2, v6

    if-eqz v2, :cond_5

    :cond_4
    cmp-long v2, p2, v4

    if-nez v2, :cond_6

    cmp-long v2, p0, v6

    if-nez v2, :cond_6

    .line 270
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiplication overflows a long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide p0, v0

    .line 272
    goto :goto_0
.end method

.method public static e(JJ)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method
