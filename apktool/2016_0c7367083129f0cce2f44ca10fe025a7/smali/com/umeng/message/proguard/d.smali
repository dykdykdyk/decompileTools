.class public Lcom/umeng/message/proguard/d;
.super Lcom/umeng/message/proguard/br;
.source "NewMessagePush.java"


# static fields
.field private static C:I

.field private static final E:Ljava/util/Random;

.field private static final j:Ljava/lang/String;


# instance fields
.field private A:Lorg/android/agoo/d/b/i;

.field private B:Ljava/lang/String;

.field private final D:Lorg/android/agoo/d/b/p;

.field a:Lorg/android/agoo/d/b/g;

.field public b:Z

.field public c:Z

.field private volatile k:J

.field private volatile l:J

.field private volatile m:J

.field private volatile n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Lorg/android/agoo/d/b/d;

.field private x:Lcom/umeng/message/proguard/c;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/umeng/message/proguard/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    sput v0, Lcom/umeng/message/proguard/d;->C:I

    .line 788
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/d;->E:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/message/proguard/bv;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v0, -0x1

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/proguard/br;-><init>(Landroid/content/Context;Lcom/umeng/message/proguard/bv;)V

    .line 85
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    .line 100
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->r:J

    .line 101
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->s:J

    .line 102
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->t:J

    .line 103
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->u:J

    .line 104
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->v:J

    .line 105
    iput-object v4, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    .line 106
    iput-object v4, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    .line 108
    iput-object v4, p0, Lcom/umeng/message/proguard/d;->y:Ljava/lang/String;

    .line 110
    iput-boolean v5, p0, Lcom/umeng/message/proguard/d;->z:Z

    .line 111
    iput-boolean v5, p0, Lcom/umeng/message/proguard/d;->b:Z

    .line 112
    iput-boolean v5, p0, Lcom/umeng/message/proguard/d;->c:Z

    .line 114
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    .line 116
    iput-object v4, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    .line 485
    new-instance v0, Lcom/umeng/message/proguard/e;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/e;-><init>(Lcom/umeng/message/proguard/d;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->D:Lorg/android/agoo/d/b/p;

    .line 125
    new-instance v0, Lcom/umeng/message/proguard/c;

    invoke-static {p1}, Lorg/android/agoo/e;->p(Landroid/content/Context;)Z

    move-result v1

    .line 2092
    iget-object v4, p0, Lcom/umeng/message/proguard/br;->d:Ljava/lang/String;

    .line 126
    invoke-direct {v0, v1, v4}, Lcom/umeng/message/proguard/c;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 127
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 3031
    iget-boolean v0, v0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_0

    .line 3032
    const-wide/16 v0, 0x3e8

    .line 127
    :goto_0
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    .line 128
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 3059
    iget-object v0, v0, Lcom/umeng/message/proguard/c;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/umeng/message/proguard/r;->a(JLjava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 3060
    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 129
    :goto_1
    iput-wide v2, p0, Lcom/umeng/message/proguard/d;->n:J

    .line 130
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    .line 131
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 3081
    iget-boolean v0, v0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_1

    .line 3082
    const-wide/32 v0, 0x927c0

    .line 131
    :goto_2
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->m:J

    .line 133
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 4024
    iget-boolean v0, v0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_2

    .line 4025
    const-wide/16 v0, 0x4e20

    .line 133
    :goto_3
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->q:J

    .line 134
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 4088
    iget-boolean v0, v0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_3

    .line 4089
    const-wide/16 v0, 0x7530

    .line 134
    :goto_4
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->o:J

    .line 135
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    .line 136
    invoke-static {p1}, Lorg/android/agoo/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->y:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    .line 138
    iput-boolean v5, p0, Lcom/umeng/message/proguard/d;->c:Z

    .line 139
    return-void

    :cond_0
    move-wide v0, v2

    .line 3034
    goto :goto_0

    .line 3084
    :cond_1
    const-wide/32 v0, 0x1b7740

    goto :goto_2

    .line 4027
    :cond_2
    const-wide/32 v0, 0x1d4c0

    goto :goto_3

    .line 4091
    :cond_3
    const-wide/32 v0, 0xea60

    goto :goto_4

    :cond_4
    move-wide v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/message/proguard/d;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->s:J

    return-wide v0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/d;J)J
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/umeng/message/proguard/d;->r:J

    return-wide p1
.end method

.method private static a(J)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v3, 0x8

    const/16 v6, 0x31

    .line 1087
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1089
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_3

    array-length v2, v1

    if-gt v3, v2, :cond_3

    .line 1092
    array-length v2, v1

    if-gt v3, v2, :cond_1

    .line 1093
    const-string v2, "encrypted"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 1096
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1093
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const/4 v2, 0x6

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_0

    .line 1099
    const-string v2, "report"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_0
    const/4 v2, 0x7

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_1

    .line 1102
    const-string v2, "notify"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_1
    array-length v2, v1

    if-gt v7, v2, :cond_2

    .line 1107
    const/16 v2, 0x8

    aget-char v2, v1, v2

    if-ne v2, v6, :cond_2

    .line 1108
    const-string v2, "has_test"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_2
    const/16 v2, 0xa

    array-length v3, v1

    if-gt v2, v3, :cond_3

    .line 1113
    const/16 v2, 0x9

    aget-char v1, v1, v2

    if-ne v1, v6, :cond_3

    .line 1114
    const-string v1, "duplicate"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private final a(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 792
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;ZZI)V

    .line 793
    return-void
.end method

.method private final a(JLjava/lang/String;ZZI)V
    .locals 9

    .prologue
    .line 809
    :try_start_0
    const-string v0, "%s_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/umeng/message/proguard/d;->E:Ljava/util/Random;

    const/16 v4, 0x2710

    .line 810
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 809
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 815
    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->v:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 816
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reConnect[mLastConnectTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/umeng/message/proguard/d;->v:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]<[currentTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/umeng/message/proguard/d;->v:J

    .line 823
    :cond_0
    add-long/2addr v2, p1

    .line 824
    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->v:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->v:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 825
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reConnect[interval:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]>["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->v:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_0
    return-void

    .line 833
    :cond_1
    if-eqz p5, :cond_3

    .line 834
    iget-boolean v0, p0, Lcom/umeng/message/proguard/d;->z:Z

    if-eqz v0, :cond_2

    .line 836
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryConnect[interval:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][connectContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][connnectLock:true]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v2, "reConnect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 841
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/umeng/message/proguard/d;->z:Z

    .line 842
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tryConnect[interval:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][connectContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v0, "action_connect_unlock"

    int-to-long v4, p6

    invoke-virtual {p0, v0, v4, v5}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;J)V

    .line 850
    :goto_1
    iput-wide v2, p0, Lcom/umeng/message/proguard/d;->v:J

    .line 852
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_5

    .line 855
    sget-object v2, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-ne v0, v2, :cond_4

    .line 856
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reConnect[connectContext:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][connecting]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    :cond_3
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "forceConnect[interval:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][connectContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 860
    :cond_4
    sget-object v2, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v2, :cond_5

    .line 861
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect[connectContext:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 13510
    :try_start_2
    iget-object v2, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v2, :cond_5

    .line 13511
    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v2

    sget-object v3, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v2, v3, :cond_5

    .line 13512
    iget-object v0, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v0}, Lorg/android/agoo/d/b/n;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 867
    :cond_5
    :goto_2
    :try_start_3
    const-string v0, "agoo_action_heart"

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/d;->e(Ljava/lang/String;)V

    .line 868
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 869
    const-string v2, "CONNECT_REFRESH_HOST"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 870
    const-string v2, "CONNECT_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v1, "agoo_action_re_connect"

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Landroid/os/Bundle;J)V

    goto/16 :goto_0

    .line 13514
    :catch_1
    move-exception v0

    .line 13515
    const-string v2, "ChannelManager"

    const-string v3, "disconnect"

    invoke-static {v2, v3, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->r:J

    sub-long v2, v0, v2

    .line 360
    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->u:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 361
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->s:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;JJ)V

    .line 362
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->j()J

    move-result-wide v0

    .line 363
    sget-object v4, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onHandlerHeart-->["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]timeout["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v2, "heart_connect_timeout"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-object v2, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onHandlerHeart-->[currentTime\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][mLastSendDataTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->t:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][checkHeartInterval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->q:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v2, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v2}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v2

    .line 372
    sget-object v3, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v2, v3, :cond_0

    .line 373
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v2

    .line 374
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->t:J

    .line 375
    sget-object v0, Lcom/umeng/message/proguard/g;->a:[I

    invoke-virtual {v2}, Lorg/android/agoo/d/b/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerHeart-->[send heart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/d;->b(Landroid/content/Context;)V

    .line 379
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->d()J

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    goto :goto_0

    .line 382
    :pswitch_1
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerHeart-->[check heart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    .line 953
    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_1

    .line 954
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 956
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 957
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    sget-object v3, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "path["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "][data==null]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    :cond_1
    return-void

    .line 961
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 962
    if-eqz v3, :cond_0

    .line 965
    array-length v4, v3

    const/16 v5, 0x80

    if-lt v4, v5, :cond_3

    .line 966
    sget-object v4, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">=128]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 971
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 972
    sget-object v5, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "path["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 976
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    new-instance v5, Lcom/umeng/message/proguard/f;

    invoke-direct {v5, p0}, Lcom/umeng/message/proguard/f;-><init>(Lcom/umeng/message/proguard/d;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 23247
    :try_start_3
    iget-object v6, v4, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v6, :cond_0

    .line 23248
    iget-object v4, v4, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v4, v0, v3, v5}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 23250
    :catch_1
    move-exception v0

    .line 23251
    :try_start_4
    const-string v3, "ChannelManager"

    const-string v4, "send"

    invoke-static {v3, v4, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 991
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/message/proguard/d;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 23759
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23761
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23762
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 23763
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 23769
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->o:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 23770
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->q:J

    .line 23771
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->u:J

    .line 23781
    :goto_1
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "heart[onh"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]heart--->[start checktime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->q:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->u:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23784
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->t:J

    .line 23785
    const-string v0, "agoo_action_heart"

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->q:J

    .line 25134
    invoke-virtual {p0, v0, v2, v3}, Lcom/umeng/message/proguard/br;->b(Ljava/lang/String;J)V

    .line 52
    return-void

    .line 23765
    :catch_0
    move-exception v0

    .line 23766
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startHeart("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 23773
    :cond_1
    new-instance v0, Lcom/umeng/message/proguard/h;

    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 24185
    iget-boolean v0, v0, Lcom/umeng/message/proguard/h;->d:Z

    .line 23774
    if-eqz v0, :cond_2

    .line 23775
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->q:J

    .line 23779
    :goto_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    long-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->u:J

    goto :goto_1

    .line 23777
    :cond_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->p:J

    long-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->q:J

    goto :goto_2
.end method

.method static synthetic a(Lcom/umeng/message/proguard/d;Ljava/lang/Object;Lorg/android/agoo/d/b/b;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 52
    .line 25658
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    if-nez v0, :cond_1

    .line 25710
    :cond_0
    :goto_0
    return-void

    .line 26638
    :cond_1
    if-eqz p1, :cond_2

    .line 26639
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26641
    :cond_2
    if-eqz p2, :cond_3

    .line 26642
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27065
    iget v2, p2, Lorg/android/agoo/d/b/b;->A:I

    .line 26642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26644
    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 26645
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26647
    :cond_4
    if-eqz p4, :cond_5

    .line 26648
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError"

    invoke-static {v0, v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26650
    :cond_5
    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->s:J

    const-string v4, "onError"

    if-nez p2, :cond_6

    const-string v0, ""

    :goto_1
    invoke-static {v1, v2, v3, v4, v0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 29061
    iget-object v0, p2, Lorg/android/agoo/d/b/b;->B:Lorg/android/agoo/d/b/c;

    .line 25663
    const-string v1, "agoo_action_re_connect"

    invoke-virtual {p0, v1}, Lcom/umeng/message/proguard/d;->e(Ljava/lang/String;)V

    .line 25664
    const-string v1, "agoo_action_heart"

    invoke-virtual {p0, v1}, Lcom/umeng/message/proguard/d;->e(Ljava/lang/String;)V

    .line 25666
    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/bk;->p(Landroid/content/Context;)V

    .line 25667
    sget-object v1, Lcom/umeng/message/proguard/g;->b:[I

    invoke-virtual {v0}, Lorg/android/agoo/d/b/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 25669
    :pswitch_0
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[sign error]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25670
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->e:Lcom/umeng/message/proguard/bv;

    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-interface {v0, v1}, Lcom/umeng/message/proguard/bv;->onHandleError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 25708
    :catch_0
    move-exception v0

    .line 25709
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v2, "handlerError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 26650
    :cond_6
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28065
    iget v5, p2, Lorg/android/agoo/d/b/b;->A:I

    .line 26651
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 25673
    :pswitch_1
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[connect pause]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 25676
    :pswitch_2
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[force_chunked]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25677
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bk;->m(Landroid/content/Context;)V

    .line 25678
    sget-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    .line 25679
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    sget-object v1, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/g;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;

    .line 25680
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 25683
    :pswitch_3
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[spdy_reload]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29151
    invoke-static {}, Lorg/android/agoo/d/b/d;->i()Z

    .line 30146
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 25686
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 25689
    :pswitch_4
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[clear_x_token]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25690
    const-string v0, "x-at"

    .line 30195
    invoke-static {}, Lorg/android/agoo/d/b/d;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31146
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 25692
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 25695
    :pswitch_5
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[refresh_host]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32146
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 25697
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->j()J

    move-result-wide v0

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 25700
    :pswitch_6
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[only_reconnect]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25701
    invoke-direct {p0}, Lcom/umeng/message/proguard/d;->j()J

    move-result-wide v0

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 25704
    :pswitch_7
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "handlerError[unnecessary]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 25667
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
    .end packed-switch
.end method

.method static synthetic b(Lcom/umeng/message/proguard/d;J)J
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/umeng/message/proguard/d;->s:J

    return-wide p1
.end method

.method static synthetic b(Lcom/umeng/message/proguard/d;)Lorg/android/agoo/d/b/g;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    return-object v0
.end method

.method private final b(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 797
    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0xea60

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;ZZI)V

    .line 798
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 395
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/message/proguard/d;)J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->r:J

    return-wide v0
.end method

.method static synthetic c(Lcom/umeng/message/proguard/d;J)J
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/umeng/message/proguard/d;->t:J

    return-wide p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/umeng/message/proguard/d;->C:I

    return v0
.end method

.method static synthetic d(Lcom/umeng/message/proguard/d;)Lorg/android/agoo/d/b/d;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    return-object v0
.end method

.method static synthetic e()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/umeng/message/proguard/d;->C:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/umeng/message/proguard/d;->C:I

    return v0
.end method

.method static synthetic e(Lcom/umeng/message/proguard/d;)Lorg/android/agoo/d/b/i;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    return-object v0
.end method

.method private j()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    .line 720
    .line 722
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->s:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->s:J

    sub-long/2addr v0, v2

    .line 724
    iput-wide v4, p0, Lcom/umeng/message/proguard/d;->s:J

    move-wide v2, v0

    .line 728
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 729
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    .line 742
    :goto_1
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->m:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->m:J

    :goto_2
    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    .line 745
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "nextErrorInterval [connectInterval:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][nextConnectInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    return-wide v0

    .line 730
    :cond_0
    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 733
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    goto :goto_1

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 737
    invoke-virtual {v0}, Lcom/umeng/message/proguard/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    goto :goto_1

    .line 742
    :cond_2
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->l:J

    goto :goto_2

    :cond_3
    move-wide v2, v4

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 905
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/d;->c:Z

    if-nez v0, :cond_2

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/d;->c:Z

    .line 907
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "MessagePush [starting]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14143
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "agoo_action_re_connect"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "agoo_action_heart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "action_get_his_message"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "action_ping"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "action_connect_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "action_ping_unlock"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.intent.action.USER_PRESENT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/message/proguard/d;->a([Ljava/lang/String;)V

    .line 14149
    new-instance v0, Lorg/android/agoo/d/b/g;

    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/umeng/message/proguard/d;->g()Ljava/lang/String;

    move-result-object v2

    .line 15092
    iget-object v3, p0, Lcom/umeng/message/proguard/br;->d:Ljava/lang/String;

    .line 14150
    invoke-direct {v0, v1, v2, v3}, Lorg/android/agoo/d/b/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    .line 14151
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    .line 16067
    iget-boolean v0, v0, Lcom/umeng/message/proguard/c;->a:Z

    if-eqz v0, :cond_3

    .line 16068
    const-wide/16 v0, 0x1388

    .line 16142
    :goto_0
    invoke-static {v0, v1}, Lorg/android/agoo/d/b/d;->a(J)J

    .line 14152
    const-string v0, "m"

    .line 17132
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 14153
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->D:Lorg/android/agoo/d/b/p;

    .line 18111
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/p;)Lorg/android/agoo/d/b/p;

    .line 14154
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v0

    .line 14155
    sget-object v1, Lorg/android/agoo/f;->c:Lorg/android/agoo/f;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/android/agoo/f;->b:Lorg/android/agoo/f;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    if-ne v0, v1, :cond_1

    .line 14157
    :cond_0
    invoke-virtual {v0}, Lorg/android/agoo/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/android/agoo/f;->a()I

    .line 18127
    invoke-static {}, Lorg/android/agoo/d/b/d;->h()Lorg/android/agoo/d/b/j;

    move-result-object v2

    .line 19107
    iput-object v1, v2, Lorg/android/agoo/d/b/j;->d:Ljava/lang/String;

    .line 19108
    const/16 v1, 0x50

    iput v1, v2, Lorg/android/agoo/d/b/j;->h:I

    .line 14159
    :cond_1
    invoke-virtual {v0}, Lorg/android/agoo/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 19116
    invoke-static {}, Lorg/android/agoo/d/b/d;->h()Lorg/android/agoo/d/b/j;

    move-result-object v1

    invoke-static {}, Lorg/android/agoo/d/b/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/android/agoo/d/b/d;->g()Ljava/lang/String;

    move-result-object v3

    .line 20092
    iput-object v0, v1, Lorg/android/agoo/d/b/j;->c:Ljava/lang/String;

    .line 20093
    iput-object v2, v1, Lorg/android/agoo/d/b/j;->a:Ljava/lang/String;

    .line 20094
    iput-object v3, v1, Lorg/android/agoo/d/b/j;->b:Ljava/lang/String;

    .line 20095
    const-wide/32 v2, 0x1339ed7

    iput-wide v2, v1, Lorg/android/agoo/d/b/j;->i:J

    .line 14161
    invoke-virtual {p0}, Lcom/umeng/message/proguard/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 20137
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 14162
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    sget-object v1, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/g;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;

    .line 14164
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/message/proguard/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 21121
    invoke-static {}, Lorg/android/agoo/d/b/d;->h()Lorg/android/agoo/d/b/j;

    move-result-object v3

    .line 22100
    iput-object v0, v3, Lorg/android/agoo/d/b/j;->e:Ljava/lang/String;

    .line 22101
    iput-object v1, v3, Lorg/android/agoo/d/b/j;->f:Ljava/lang/String;

    .line 22102
    iput-object v2, v3, Lorg/android/agoo/d/b/j;->g:Ljava/lang/String;

    .line 14165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/d;->z:Z

    .line 14166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/d;->b:Z

    .line 909
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "init_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :cond_2
    :goto_1
    return-void

    .line 16070
    :cond_3
    const-wide/32 v0, 0x9c40

    goto/16 :goto_0

    .line 914
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13244
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v2, "action_ping"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4880
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_0

    .line 4881
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    sget-object v1, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    if-eq v0, v1, :cond_2

    .line 4882
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    sget-object v1, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/g;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;

    .line 4883
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "ping_channge_channle_type_reconnect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4888
    :cond_2
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 4889
    sget-object v1, Lcom/umeng/message/proguard/g;->c:[I

    invoke-virtual {v0}, Lorg/android/agoo/d/b/h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4895
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/d;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 4891
    :pswitch_0
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->n:J

    const-string v2, "ping_reconnect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :cond_3
    const-string v2, "action_ping_unlock"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    iput-boolean v8, p0, Lcom/umeng/message/proguard/d;->b:Z

    goto :goto_0

    .line 185
    :cond_4
    const-string v2, "agoo_action_re_connect"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5407
    const-string v1, "CONNECT_STATE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5408
    const-string v2, "CONNECT_REFRESH_HOST"

    invoke-virtual {p2, v2, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5411
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandlerConnect["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5415
    :cond_5
    invoke-static {p1}, Lorg/android/a;->o(Landroid/content/Context;)I

    move-result v3

    .line 5416
    invoke-static {p1}, Lorg/android/a;->n(Landroid/content/Context;)I

    move-result v4

    .line 5417
    sget-object v5, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onHandlerConnect spdyCount="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",httpCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6225
    new-instance v5, Lorg/android/agoo/d/b/d;

    invoke-direct {v5, v8}, Lorg/android/agoo/d/b/d;-><init>(B)V

    .line 5418
    iput-object v5, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    .line 5420
    iget-object v5, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v5, :cond_6

    .line 5421
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v0

    .line 5433
    :cond_6
    const/4 v5, 0x6

    if-le v3, v5, :cond_7

    if-eqz v0, :cond_7

    sget-object v3, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v3}, Lorg/android/agoo/d/b/i;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5434
    invoke-static {p1, v8}, Lorg/android/a;->b(Landroid/content/Context;I)V

    .line 5436
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->r(Landroid/content/Context;)V

    .line 5437
    sget-object v0, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    .line 5438
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    sget-object v1, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/g;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;

    .line 5439
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 5441
    :cond_7
    if-le v4, v9, :cond_8

    if-eqz v0, :cond_8

    sget-object v3, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v3}, Lorg/android/agoo/d/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5442
    invoke-static {p1, v8}, Lorg/android/a;->a(Landroid/content/Context;I)V

    .line 5443
    sget-object v0, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    .line 5444
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    sget-object v1, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/g;->a(Lorg/android/agoo/d/b/i;)Lorg/android/agoo/d/b/g;

    .line 5445
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 6622
    :cond_8
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->x:Lcom/umeng/message/proguard/c;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/c;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/umeng/message/proguard/d;->p:J

    .line 6623
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->a:Lorg/android/agoo/d/b/g;

    const-string v3, "hb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/umeng/message/proguard/d;->p:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/android/agoo/d/b/g;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/android/agoo/d/b/g;

    .line 6624
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->y:Ljava/lang/String;

    const/16 v3, 0x72

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v0

    if-eq v0, v10, :cond_a

    .line 6625
    sget-object v0, Lorg/android/agoo/d/b/r;->a:Lorg/android/agoo/d/b/r;

    .line 7175
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/r;)Lorg/android/agoo/d/b/r;

    .line 8632
    :goto_1
    sget-object v0, Lorg/android/agoo/d/b/a;->a:Lorg/android/agoo/d/b/a;

    .line 9180
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/a;)Lorg/android/agoo/d/b/a;

    .line 5458
    if-eqz v2, :cond_9

    .line 10146
    invoke-static {v11}, Lorg/android/agoo/d/b/d;->a(Z)Z

    .line 5461
    :cond_9
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onHandlerConnect refreshhost["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][threadName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5463
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5461
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 5465
    sget-object v2, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-ne v0, v2, :cond_b

    .line 5466
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerConnect[connecting]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6627
    :cond_a
    sget-object v0, Lorg/android/agoo/d/b/r;->b:Lorg/android/agoo/d/b/r;

    .line 8175
    invoke-static {v0}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/r;)Lorg/android/agoo/d/b/r;

    goto :goto_1

    .line 5469
    :cond_b
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    .line 5471
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    sget-object v2, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v2}, Lorg/android/agoo/d/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5472
    invoke-static {p1, v10}, Lorg/android/a;->b(Landroid/content/Context;I)V

    .line 5476
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    .line 10389
    iput-object v1, v0, Lorg/android/agoo/d/b/d;->i:Ljava/lang/Object;

    .line 5477
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->c()V

    goto/16 :goto_0

    .line 5473
    :cond_d
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->A:Lorg/android/agoo/d/b/i;

    sget-object v2, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    invoke-virtual {v0, v2}, Lorg/android/agoo/d/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5474
    invoke-static {p1, v10}, Lorg/android/a;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 189
    :cond_e
    const-string v0, "action_connect_unlock"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 190
    iput-boolean v8, p0, Lcom/umeng/message/proguard/d;->z:Z

    goto/16 :goto_0

    .line 193
    :cond_f
    const-string v0, "agoo_action_heart"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 194
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/d;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 197
    :cond_10
    const-string v0, "action_get_his_message"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 11249
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_0

    .line 11250
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 11251
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v1

    .line 11252
    sget-object v2, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_0

    .line 11254
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerHisMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11255
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 12257
    :try_start_2
    iget-object v1, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    .line 12258
    invoke-interface {v1}, Lorg/android/agoo/d/b/n;->e()Lorg/android/agoo/d/b/h;

    move-result-object v1

    sget-object v2, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v1, v2, :cond_11

    .line 12259
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12260
    sget-object v2, Lorg/android/agoo/d/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12261
    invoke-static {}, Lorg/android/agoo/d/b/d;->e()I

    move-result v2

    .line 12262
    const-string v3, "http://%s:%d/%s/%s/%d/%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/android/agoo/d/b/d;->f:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Lorg/android/agoo/d/b/d;->g:I

    .line 12263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "h"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x5

    sget-object v5, Lorg/android/agoo/d/b/d;->c:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 12262
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 12265
    sget-object v3, Lorg/android/agoo/d/b/d;->b:Landroid/content/Context;

    sget-object v3, Lorg/android/agoo/d/b/d;->d:Ljava/lang/String;

    sget-object v3, Lorg/android/agoo/d/b/d;->e:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lorg/android/agoo/d/b/q;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12267
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 12268
    const-string v1, "ChannelManager"

    const-string v2, "hisMessage[sgin==null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12269
    sget-object v1, Lorg/android/agoo/d/b/b;->v:Lorg/android/agoo/d/b/b;

    invoke-virtual {v0, v1}, Lorg/android/agoo/d/b/d;->a(Lorg/android/agoo/d/b/b;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 11256
    :cond_11
    :goto_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/message/proguard/d;->t:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 11259
    :catch_1
    move-exception v0

    .line 11260
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandlerHisMessage error,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12272
    :cond_12
    :try_start_4
    invoke-static {v2, v1, v3}, Lorg/android/agoo/d/b/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12273
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 12274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12275
    const-string v2, "ChannelManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hisMessage url ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12276
    iget-object v0, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/android/agoo/d/b/n;->a(Ljava/lang/String;[BLorg/android/agoo/d/b/o;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 12278
    :catch_2
    move-exception v0

    .line 12279
    :try_start_5
    const-string v1, "ChannelManager"

    const-string v2, "send"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 201
    :cond_13
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 203
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "NewMessagePush connect is change.....current connect=android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p1, v8}, Lorg/android/a;->b(Landroid/content/Context;I)V

    .line 207
    invoke-static {p1, v8}, Lorg/android/a;->a(Landroid/content/Context;I)V

    .line 208
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "[network connected success]state[isconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->n:J

    const-string v2, "network_error_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 213
    :cond_14
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 214
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12306
    :cond_15
    :try_start_6
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_0

    .line 12311
    invoke-static {p1}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 12312
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "[onHandlerScreenOnOrUserPresent][network connected failed]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 12317
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12318
    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->r:J

    sub-long/2addr v0, v2

    .line 12319
    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->u:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_17

    .line 12320
    sget-object v2, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onHandlerScreenOnOrUserPresent-->timeout["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12322
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "screen_on_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->b(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 12326
    :cond_17
    invoke-direct {p0, p1}, Lcom/umeng/message/proguard/d;->b(Landroid/content/Context;)V

    .line 12327
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 12328
    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-eq v0, v1, :cond_18

    sget-object v1, Lorg/android/agoo/d/b/h;->a:Lorg/android/agoo/d/b/h;

    if-eq v0, v1, :cond_18

    .line 12330
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandlerScreenOn-->state["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12331
    iget-wide v0, p0, Lcom/umeng/message/proguard/d;->k:J

    const-string v2, "screen_on_connect"

    invoke-direct {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->b(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 12335
    :cond_18
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v0

    .line 12336
    sget-object v1, Lcom/umeng/message/proguard/g;->a:[I

    invoke-virtual {v0}, Lorg/android/agoo/d/b/i;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 12338
    :pswitch_1
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerScreenOnOrUserPresent-->[send heart]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12340
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->d()J

    goto/16 :goto_0

    .line 12343
    :pswitch_2
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "onHandlerScreenOnOrUserPresent-->[connect successfully]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 218
    :cond_19
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->B:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 219
    invoke-direct {p0, p2}, Lcom/umeng/message/proguard/d;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    :cond_1a
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p1, v8}, Lorg/android/a;->b(Landroid/content/Context;I)V

    .line 225
    invoke-static {p1, v8}, Lorg/android/a;->a(Landroid/content/Context;I)V

    .line 13236
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 13237
    if-eqz v0, :cond_0

    .line 13238
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 13239
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandlerAirplaneMode["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 227
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .line 4889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 12336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 14

    .prologue
    .line 1008
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1011
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1016
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_8

    .line 1020
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1021
    if-eqz v6, :cond_2

    .line 1024
    const-string v7, "p"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1025
    const-string v8, "i"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1026
    const-string v9, "b"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1027
    const-string v10, "f"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1028
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    add-int/lit8 v12, v2, -0x1

    if-ge v0, v12, :cond_1

    .line 1030
    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1033
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "11"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1037
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "12"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/bk;->e(Landroid/content/Context;)V

    .line 1082
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v2, "handlerMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1040
    :cond_4
    const-wide/16 v12, -0x1

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    .line 1041
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "13"

    invoke-virtual {p0, v6, v7, v8}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1045
    :cond_5
    iget-object v12, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/umeng/message/proguard/bi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1046
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v6, v2, -0x1

    if-ge v0, v6, :cond_2

    .line 1048
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1052
    :cond_6
    const-string v12, "id"

    invoke-virtual {v3, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v12, "body"

    invoke-virtual {v3, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-static {v10, v11}, Lcom/umeng/message/proguard/d;->a(J)Landroid/os/Bundle;

    move-result-object v9

    .line 1056
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1059
    :try_start_2
    const-string v9, "t"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1060
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1061
    const-string v9, "time"

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1066
    :cond_7
    :goto_3
    :try_start_3
    const-string v6, "trace"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v6, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1068
    new-instance v6, Lorg/android/agoo/d/a/n;

    iget-object v9, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-direct {v6}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 1069
    iget-object v6, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v6}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 1070
    const-string v9, "messageId"

    invoke-virtual {v6, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-virtual {p0, v7, v3}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 1075
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 1076
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/d/b/d;->b()Lorg/android/agoo/d/b/h;

    move-result-object v0

    .line 269
    invoke-static {}, Lorg/android/agoo/d/b/d;->a()Lorg/android/agoo/d/b/i;

    move-result-object v1

    .line 270
    sget-object v2, Lorg/android/agoo/d/b/i;->b:Lorg/android/agoo/d/b/i;

    if-ne v1, v2, :cond_0

    sget-object v2, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    invoke-virtual {v2, p1, p2, p3}, Lorg/android/agoo/d/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/message/proguard/d;->t:J

    .line 274
    sget-object v2, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handlerACKMessage,mLastHeartTime--->["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/umeng/message/proguard/d;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    sget-object v2, Lorg/android/agoo/d/b/i;->a:Lorg/android/agoo/d/b/i;

    if-ne v1, v2, :cond_3

    sget-object v1, Lorg/android/agoo/d/b/h;->b:Lorg/android/agoo/d/b/h;

    if-ne v0, v1, :cond_3

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 280
    if-eqz v10, :cond_2

    array-length v0, v10

    if-lez v0, :cond_2

    .line 281
    array-length v11, v10

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v1, v10, v9

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "1"

    const-string v4, "apoll"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "5"

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Lorg/android/agoo/d/a/n;

    iget-object v1, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 292
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/s;->g(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 293
    const-string v1, "msgIds"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerACKMessage,CHUNKED,mLastHeartTime--->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/umeng/message/proguard/d;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_3
    :goto_1
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v2, "handlerReportMessages"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 933
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/message/proguard/d;->c:Z

    if-eqz v0, :cond_2

    .line 934
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/d;->c:Z

    .line 935
    invoke-super {p0}, Lcom/umeng/message/proguard/br;->h()V

    .line 936
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "[destroying]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 22522
    :try_start_1
    iget-object v1, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    if-eqz v1, :cond_0

    .line 22523
    iget-object v0, v0, Lorg/android/agoo/d/b/d;->h:Lorg/android/agoo/d/b/n;

    invoke-interface {v0}, Lorg/android/agoo/d/b/n;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 939
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/umeng/message/proguard/d;->w:Lorg/android/agoo/d/b/d;

    .line 941
    :cond_1
    sget-object v0, Lcom/umeng/message/proguard/d;->j:Ljava/lang/String;

    const-string v1, "[destroyed]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_2
    :goto_1
    return-void

    .line 22525
    :catch_0
    move-exception v0

    .line 22526
    const-string v1, "ChannelManager"

    const-string v2, "shutdown"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 948
    :catch_1
    move-exception v0

    goto :goto_1
.end method
