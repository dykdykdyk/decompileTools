.class public final Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static d:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Ljava/io/File;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "yy.MM.dd.HH"

    .line 7079
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    sput-object v1, Lcom/tencent/open/a/b;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JLjava/lang/String;J)V
    .locals 3

    .prologue
    const v1, 0x7fffffff

    const/16 v2, 0xa

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/tencent/open/a/b;->a:Ljava/lang/String;

    .line 104
    iput v1, p0, Lcom/tencent/open/a/b;->e:I

    .line 105
    iput v1, p0, Lcom/tencent/open/a/b;->f:I

    .line 106
    const/16 v0, 0x1000

    iput v0, p0, Lcom/tencent/open/a/b;->b:I

    .line 107
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/open/a/b;->g:J

    .line 109
    iput v2, p0, Lcom/tencent/open/a/b;->c:I

    .line 110
    const-string v0, ".log"

    iput-object v0, p0, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/open/a/b;->j:J

    .line 1349
    iput-object p1, p0, Lcom/tencent/open/a/b;->h:Ljava/io/File;

    .line 2291
    iput p2, p0, Lcom/tencent/open/a/b;->f:I

    .line 3270
    iput p3, p0, Lcom/tencent/open/a/b;->e:I

    .line 3307
    iput p4, p0, Lcom/tencent/open/a/b;->b:I

    .line 4249
    iput-object p5, p0, Lcom/tencent/open/a/b;->a:Ljava/lang/String;

    .line 4328
    iput-wide p6, p0, Lcom/tencent/open/a/b;->g:J

    .line 4370
    iput v2, p0, Lcom/tencent/open/a/b;->c:I

    .line 4391
    iput-object p8, p0, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    .line 4411
    iput-wide p9, p0, Lcom/tencent/open/a/b;->j:J

    .line 160
    return-void
.end method


# virtual methods
.method final a(J)Ljava/io/File;
    .locals 5

    .prologue
    .line 181
    .line 5338
    iget-object v1, p0, Lcom/tencent/open/a/b;->h:Ljava/io/File;

    .line 5226
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6200
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6201
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yy.MM.dd.HH"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6202
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 6212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.tencent.mobileqq_connectSdk."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
