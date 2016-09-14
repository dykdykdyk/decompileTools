.class final Lu/aly/i;
.super Lcom/umeng/analytics/z;
.source "CacheService.java"


# instance fields
.field final synthetic a:Lu/aly/o;

.field final synthetic b:Lu/aly/h;


# direct methods
.method constructor <init>(Lu/aly/h;Lu/aly/o;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lu/aly/i;->b:Lu/aly/h;

    iput-object p2, p0, Lu/aly/i;->a:Lu/aly/o;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lu/aly/i;->b:Lu/aly/h;

    .line 1015
    iget-object v0, v0, Lu/aly/h;->a:Lu/aly/n;

    .line 41
    iget-object v1, p0, Lu/aly/i;->a:Lu/aly/o;

    invoke-interface {v0, v1}, Lu/aly/n;->a(Lu/aly/o;)V

    .line 42
    return-void
.end method
