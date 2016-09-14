.class final Lcom/umeng/analytics/ab;
.super Lu/aly/ef;
.source "StoreHelper.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/aa;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/aa;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/umeng/analytics/ab;->a:Lcom/umeng/analytics/aa;

    invoke-direct {p0}, Lu/aly/ef;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 264
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method
