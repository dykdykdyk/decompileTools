.class final Lrx/schedulers/d;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# instance fields
.field final a:J

.field final b:Lrx/b/a;

.field final c:Lrx/n;

.field final d:J


# direct methods
.method constructor <init>(Lrx/n;Lrx/b/a;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-wide v0, Lrx/schedulers/TestScheduler;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lrx/schedulers/TestScheduler;->c:J

    iput-wide v0, p0, Lrx/schedulers/d;->d:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/schedulers/d;->a:J

    .line 46
    iput-object p2, p0, Lrx/schedulers/d;->b:Lrx/b/a;

    .line 47
    iput-object p1, p0, Lrx/schedulers/d;->c:Lrx/n;

    .line 48
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 52
    const-string v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lrx/schedulers/d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/schedulers/d;->b:Lrx/b/a;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
