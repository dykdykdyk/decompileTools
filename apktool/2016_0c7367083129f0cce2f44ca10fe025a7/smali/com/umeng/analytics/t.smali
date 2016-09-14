.class final Lcom/umeng/analytics/t;
.super Lcom/umeng/analytics/z;
.source "InternalAgent.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/s;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/s;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/umeng/analytics/t;->a:Lcom/umeng/analytics/s;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/analytics/t;->a:Lcom/umeng/analytics/s;

    .line 1034
    iget-object v0, v0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    .line 67
    new-instance v1, Lcom/umeng/analytics/u;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/u;-><init>(Lcom/umeng/analytics/t;)V

    .line 1148
    iget-boolean v2, v0, Lu/aly/ej;->c:Z

    if-nez v2, :cond_0

    .line 1151
    new-instance v2, Lu/aly/es;

    invoke-direct {v2, v0, v1}, Lu/aly/es;-><init>(Lu/aly/ej;Lu/aly/ef;)V

    invoke-static {v2}, Lcom/umeng/analytics/y;->b(Ljava/lang/Runnable;)V

    .line 73
    :cond_0
    return-void
.end method
