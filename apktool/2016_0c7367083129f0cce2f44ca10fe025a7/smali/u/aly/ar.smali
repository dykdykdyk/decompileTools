.class public final Lu/aly/ar;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lu/aly/t;


# static fields
.field private static l:Lu/aly/ar;


# instance fields
.field a:Lcom/umeng/analytics/aa;

.field b:Lu/aly/x;

.field c:J

.field d:I

.field e:J

.field f:J

.field g:Landroid/content/Context;

.field private final h:J

.field private final i:J

.field private final j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lu/aly/ar;->l:Lu/aly/ar;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lu/aly/x;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x4d3f6400

    const-wide/16 v4, 0x0

    const/16 v2, 0x2710

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v6, p0, Lu/aly/ar;->h:J

    .line 16
    const-wide/32 v0, 0x7b98a00

    iput-wide v0, p0, Lu/aly/ar;->i:J

    .line 17
    const v0, 0x1b7740

    iput v0, p0, Lu/aly/ar;->j:I

    .line 18
    iput v2, p0, Lu/aly/ar;->k:I

    .line 23
    iput-wide v6, p0, Lu/aly/ar;->c:J

    .line 24
    iput v2, p0, Lu/aly/ar;->d:I

    .line 26
    iput-wide v4, p0, Lu/aly/ar;->e:J

    .line 27
    iput-wide v4, p0, Lu/aly/ar;->f:J

    .line 41
    iput-object p1, p0, Lu/aly/ar;->g:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/umeng/analytics/aa;->a(Landroid/content/Context;)Lcom/umeng/analytics/aa;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ar;->a:Lcom/umeng/analytics/aa;

    .line 43
    iput-object p2, p0, Lu/aly/ar;->b:Lu/aly/x;

    .line 44
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lu/aly/x;)Lu/aly/ar;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lu/aly/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ar;->l:Lu/aly/ar;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0, p1}, Lu/aly/ar;-><init>(Landroid/content/Context;Lu/aly/x;)V

    .line 35
    sput-object v0, Lu/aly/ar;->l:Lu/aly/ar;

    invoke-static {p0}, Lu/aly/fj;->a(Landroid/content/Context;)Lu/aly/fj;

    move-result-object v2

    .line 1212
    iget-object v2, v2, Lu/aly/fj;->b:Lu/aly/fk;

    .line 35
    invoke-virtual {v0, v2}, Lu/aly/ar;->a(Lu/aly/fk;)V

    .line 37
    :cond_0
    sget-object v0, Lu/aly/ar;->l:Lu/aly/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lu/aly/fk;)V
    .locals 7

    .prologue
    const-wide/32 v0, 0x4d3f6400

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 88
    .line 1462
    iget v3, p1, Lu/aly/fk;->f:I

    if-ne v3, v6, :cond_2

    .line 88
    :cond_0
    :goto_0
    iput-wide v0, p0, Lu/aly/ar;->c:J

    .line 2370
    iget v0, p1, Lu/aly/fk;->a:I

    if-ne v0, v6, :cond_3

    move v0, v2

    .line 91
    :goto_1
    if-nez v0, :cond_7

    .line 92
    sget v0, Lcom/umeng/analytics/a;->k:I

    if-lez v0, :cond_1

    sget v0, Lcom/umeng/analytics/a;->k:I

    const v1, 0x1b7740

    if-le v0, v1, :cond_6

    .line 93
    :cond_1
    const/16 v0, 0x2710

    iput v0, p0, Lu/aly/ar;->d:I

    .line 100
    :goto_2
    return-void

    .line 1466
    :cond_2
    iget v3, p1, Lu/aly/fk;->f:I

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    .line 1470
    const-wide/32 v0, 0x36ee80

    iget v3, p1, Lu/aly/fk;->f:I

    int-to-long v4, v3

    mul-long/2addr v0, v4

    goto :goto_0

    .line 2374
    :cond_3
    iget v0, p1, Lu/aly/fk;->a:I

    if-ltz v0, :cond_4

    iget v0, p1, Lu/aly/fk;->a:I

    const/16 v1, 0x708

    if-le v0, v1, :cond_5

    :cond_4
    move v0, v2

    .line 2375
    goto :goto_1

    .line 2378
    :cond_5
    iget v0, p1, Lu/aly/fk;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 95
    :cond_6
    sget v0, Lcom/umeng/analytics/a;->k:I

    iput v0, p0, Lu/aly/ar;->d:I

    goto :goto_2

    .line 98
    :cond_7
    iput v0, p0, Lu/aly/ar;->d:I

    goto :goto_2
.end method
