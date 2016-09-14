.class final Lcom/umeng/analytics/w;
.super Lcom/umeng/analytics/z;
.source "InternalAgent.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/s;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/s;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/umeng/analytics/w;->b:Lcom/umeng/analytics/s;

    iput-object p2, p0, Lcom/umeng/analytics/w;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/analytics/w;->b:Lcom/umeng/analytics/s;

    iget-object v1, p0, Lcom/umeng/analytics/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1034
    invoke-virtual {v0, v1}, Lcom/umeng/analytics/s;->b(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/umeng/analytics/w;->b:Lcom/umeng/analytics/s;

    .line 2034
    iget-object v0, v0, Lcom/umeng/analytics/s;->d:Lu/aly/ej;

    .line 2523
    invoke-virtual {v0}, Lu/aly/ej;->b()V

    .line 154
    return-void
.end method
