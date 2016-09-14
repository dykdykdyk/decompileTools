.class final Lcom/umeng/analytics/u;
.super Lu/aly/ef;
.source "InternalAgent.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/t;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/t;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/umeng/analytics/u;->a:Lcom/umeng/analytics/t;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/analytics/u;->a:Lcom/umeng/analytics/t;

    iget-object v0, v0, Lcom/umeng/analytics/t;->a:Lcom/umeng/analytics/s;

    .line 1034
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/umeng/analytics/s;->f:Z

    .line 71
    return-void
.end method
