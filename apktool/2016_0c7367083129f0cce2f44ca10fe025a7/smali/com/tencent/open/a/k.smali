.class public abstract Lcom/tencent/open/a/k;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private volatile a:I

.field b:Lcom/tencent/open/a/j;

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Lcom/tencent/open/a/c;->a:I

    sget-object v1, Lcom/tencent/open/a/j;->a:Lcom/tencent/open/a/j;

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/a/k;-><init>(ILcom/tencent/open/a/j;)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILcom/tencent/open/a/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/tencent/open/a/c;->a:I

    iput v0, p0, Lcom/tencent/open/a/k;->a:I

    .line 18
    iput-boolean v1, p0, Lcom/tencent/open/a/k;->c:Z

    .line 20
    sget-object v0, Lcom/tencent/open/a/j;->a:Lcom/tencent/open/a/j;

    iput-object v0, p0, Lcom/tencent/open/a/k;->b:Lcom/tencent/open/a/j;

    .line 1157
    iput p1, p0, Lcom/tencent/open/a/k;->a:I

    .line 1180
    iput-boolean v1, p0, Lcom/tencent/open/a/k;->c:Z

    .line 1203
    iput-object p2, p0, Lcom/tencent/open/a/k;->b:Lcom/tencent/open/a/j;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public final b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    .line 2168
    iget-boolean v0, p0, Lcom/tencent/open/a/k;->c:Z

    .line 72
    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/tencent/open/a/k;->a:I

    invoke-static {v0, p1}, Lcom/tencent/open/a/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual/range {p0 .. p7}, Lcom/tencent/open/a/k;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_0
    return-void
.end method
