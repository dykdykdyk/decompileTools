.class public final Lcom/umeng/message/proguard/bk;
.super Ljava/lang/Object;
.source "UTHelper.java"


# static fields
.field private static volatile a:Z

.field private static volatile b:Lorg/android/agoo/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/proguard/bk;->a:Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    return-void
.end method

.method public static final a()V
    .locals 1

    .prologue
    .line 114
    :try_start_0
    sget-boolean v0, Lcom/umeng/message/proguard/bk;->a:Z

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/message/proguard/bk;->a:Z

    .line 118
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    sget-boolean v0, Lcom/umeng/message/proguard/bk;->a:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/android/agoo/f/b;->a(Landroid/content/Context;)Lorg/android/agoo/f/a;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/message/proguard/bk;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 164
    .line 1191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 166
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 167
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;JJ)V
    .locals 3

    .prologue
    .line 442
    .line 10191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 444
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public static final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 469
    const-wide/16 v0, 0x0

    .line 470
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 471
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 11191
    :cond_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 474
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 475
    sget-object v3, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v3, :cond_1

    .line 476
    sget-object v3, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 585
    .line 16191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 588
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v1, :cond_0

    .line 589
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 788
    :try_start_0
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 789
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 24191
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 791
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidVer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&AndroidSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&AgooVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    invoke-static {p0}, Lorg/android/a;->l(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&PullCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&Pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&EndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ExitCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&AliveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    const-string v0, "utdid_error"

    .line 131
    :try_start_0
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 132
    invoke-static {p0}, Lcom/c/a/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v0, "utdid_null"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 673
    .line 19191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 674
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 675
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 676
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 178
    .line 2191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 179
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 180
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 693
    .line 20191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 694
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 695
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 696
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 700
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doElectionLog error,exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 241
    .line 3191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 243
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 748
    if-nez p1, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 22191
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 752
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 753
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 754
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doConnectLog error,exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 277
    .line 4191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 278
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 279
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 771
    if-nez p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 23191
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 775
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 776
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 777
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doConnectLog error,exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 292
    .line 5191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 293
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 294
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 305
    .line 6191
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 307
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 312
    :cond_0
    return-void
.end method

.method public static final h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 357
    .line 7191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 358
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final i(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 402
    .line 8191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 403
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 404
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final j(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 421
    .line 9191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 422
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 423
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final k(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 502
    .line 12191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 503
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 504
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 505
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final l(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 530
    .line 13191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 531
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 532
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final m(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 558
    .line 14191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 559
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 560
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 561
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 571
    .line 15191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 573
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 574
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final o(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 599
    .line 17191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 600
    const-string v0, "AGOO_CONNECT"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    const-string v1, "AGOO_CONNECT_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    const-string v2, "AGOO_CONNECT_PORT"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 604
    const-string v2, "AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 606
    const-string v3, "agoo_connect_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    new-instance v2, Lcom/umeng/message/proguard/h;

    invoke-direct {v2, p0}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 17193
    iget-object v2, v2, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;

    .line 609
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 610
    sget-object v3, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v3, :cond_0

    .line 611
    sget-object v3, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ip="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "&port="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&netType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersion=20160215"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final p(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 621
    .line 18191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 622
    const-string v0, "AGOO_CONNECT"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 624
    const-string v1, "AGOO_CONNECT_HOST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    const-string v2, "AGOO_CONNECT_PORT"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 626
    const-string v0, "AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    const-string v3, "agoo_connect_type"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    new-instance v0, Lcom/umeng/message/proguard/h;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 18193
    iget-object v3, v0, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;

    .line 631
    invoke-static {p0}, Lorg/android/a;->q(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 632
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 633
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "ip="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&port="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 636
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&netType="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&sdkVersion=20160215&errorId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "errorId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "&url="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 639
    :cond_0
    invoke-static {p0}, Lorg/android/a;->r(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 640
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 641
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_1

    .line 642
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "ip="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersion=20160215&dnsErrorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "dnsErrorId"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dnsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "dnsUrl"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final q(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 653
    :try_start_0
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 654
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v0, :cond_0

    .line 655
    sget-object v0, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final r(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 707
    .line 21191
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 708
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 709
    new-instance v0, Lcom/umeng/message/proguard/h;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 21193
    iget-object v1, v0, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;

    .line 711
    sget-object v2, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    if-eqz v2, :cond_0

    .line 712
    sget-object v2, Lcom/umeng/message/proguard/bk;->b:Lorg/android/agoo/f/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "netType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&isWapNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22185
    iget-boolean v0, v0, Lcom/umeng/message/proguard/h;->d:Z

    .line 713
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdkVersion=20160215"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    const-string v1, "UTHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doElectionLog error,exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
